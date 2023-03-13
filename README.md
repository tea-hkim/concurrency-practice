# Concurrency Practice
### [원티드 프리온보딩 iOS 챌린지 사전 과제](https://yagomacademy.notion.site/iOS-2-3f670cc9788f4384b000bfe940447d59)

### 구현 기능
- Load 버튼 탭 시 Unsplash 사진 다운로드
    ```swift
        func getImage(with urlString: String) async throws -> UIImage? {Cancel changes
            guard let url = URL(string: urlString) else { return nil }
            let request = URLRequest(url: url)
            let (data, _) = try await URLSession.shared.data(for: request)
            guard let image = UIImage(data: data) else { throw FetchError.downloadFail }
            return image   
        }
    ```
    
   
### 구현
- UIKit Storyboard
- Async await



![Simulator Screen Recording - iPhone 13 - 2023-03-02 at 01 05 31](https://user-images.githubusercontent.com/81206228/222195468-ad068f35-eabd-450e-835e-b69255e246c9.gif)
