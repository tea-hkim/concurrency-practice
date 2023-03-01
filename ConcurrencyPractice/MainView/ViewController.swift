//
//  ViewController.swift
//  ConcurrencyPractice
//
//  Created by 김태호 on 2023/03/01.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - properties
    private let urlString =  "https://source.unsplash.com/random"
    
    @IBOutlet weak var superStackView: UIStackView!
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - UI Function

    @IBAction func loadButtonTapped(_ sender: UIButton) {
        guard let imageView = sender.superview?.subviews[0] as? UIImageView  else { return }
        imageView.image = UIImage(systemName: "photo")
        Task { @MainActor in
            imageView.image = try await getImage(with: urlString)
        }
    }
    
    @IBAction func loadAllButtonTapped(_ sender: UIButton) {
        superStackView.subviews.forEach { stackView in
            guard let imageView = stackView.subviews[0] as? UIImageView  else { return }
            imageView.image = UIImage(systemName: "photo")
            Task {
                imageView.image = try await getImage(with: urlString)
            }
        }
    }
    
    //MARK: - Data Method
    
    func getImage(with urlString: String) async throws -> UIImage? {
        guard let url = URL(string: urlString) else { return nil }
        let request = URLRequest(url: url)
        let (data, _) = try await URLSession.shared.data(for: request)
        guard let image = UIImage(data: data) else { throw FetchError.downloadFail }
        return image
        
    }
    
}

fileprivate enum FetchError: Error {
    case requestFail
    case downloadFail
}
