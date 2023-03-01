# Conccurency Practice
### [원티드 프리온보딩 iOS 챌린지 사전 과제](https://yagomacademy.notion.site/iOS-2-3f670cc9788f4384b000bfe940447d59)

### 구현 기능
- Load 버튼 탭 시 Unsplash 사진 다운로드
    - 랜덤 사진 다운이라 다운받은 사진이 전부 다르게 나옵니다.
    - 단, 2초 이내의 요청은 같은 사진을 받습니다.
   
### 구현 과정
- UIKit Storyboard
    - 5개의 똑같은 Stack View와 1개의 최하단 버튼으로 구성
    - 각각의 Load 버튼을 하나의 IBAction으로 연결
- Async await 사용
    - 네트워킹 작업


![Simulator Screen Recording - iPhone 13 - 2023-03-02 at 01 05 31](https://user-images.githubusercontent.com/81206228/222195468-ad068f35-eabd-450e-835e-b69255e246c9.gif)
