# IOS 엔터프라이즈 게시 샘플

## 개요
iOS 엔터프라이즈 배포는, 
엔터프라이즈 계정으로 서명된 ipa 파일을 웹에서 받을 수 있다.  

웹에서 받기위한 규격이 있고, 
mime 타입 설정도 필요하여 웹서버까지 필요하다보니, 
Docker로 예시를 만들어두고자 한다.

## 설정 방법
- app.ipa 대신 배포할 엔터프라이즈 서명 된 ipa 두기
- index.html에 온라인에서 접근 가능한 manifest.plist 경로 입력
- manifest.plist에 온라인에서 접근 가능한 도메인 지정
- manifest.plist에 앱 기본정보 입력

## 유의 사항
- 도메인은 public해야하며, https여야함
- ipa, plist확장자에 대해 정해진 mime 타입이 필요하므로, nginx 설정에 유의

## 빌드 방법
```
    dodcker build . -t ios-dist
```

## 실행 방법
```
    docker -it -d -p 3000:80 ios-dist
```