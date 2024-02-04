<div align="center">
<h2>WTTR</h2>

![WTTR](https://github.com/so0ng0970/WTTR/assets/108356773/e63da288-ca66-47fe-9778-a30286463788)

</div>

## 프로젝트 만든 계기

공공 날씨 API를 활용해 현재 날씨에 따른 변화를 조사하고 실시간 날씨 데이터를 제공하는 프로젝트를 만들고 싶어서 제작하게 되었습니다.
<br>

## 프로젝트 소개

- 'WTTR'은 'openWeather' API를 활용한 애플리케이션입니다.
- 현재 날씨에 따라 9가지 다른 UI를 제공합니다.
- 애플리케이션 실행 시 스플래시 화면과 로딩 화면이 표시됩니다. 
- 처음 실행 시 위치 권한 요청이 나타나며, 허용하면 사용자의 현재 위치의 날씨 정보를 제공합니다.

<br>

## 프로젝트 구현

- 날씨 API를 활용하는 네트워크 요청에서 'Dio' 라이브러리를 사용함으로써 복잡성을 줄였습니다.
- 모델 클래스와 @JsonSerializable() annotation를 사용해 JSON 코드를 자동 생성하며, API 응답 관리를 효율적이게 만들었습니다.

더 자세한 구현 내용을 볼려면 ➡️
[Notion](https://animated-tractor-257.notion.site/WTTR-38f5d147dbaa471fa39e2edc435af805)
<br>

## 1. 개요

- 프로젝트 이름: WTTR ☀️ 
- 프로젝트 기간: 2024.2.2-2.4
- 개발 언어: Dart
- 개발자: 김승원
  <br>

## 2. 개발 환경

- Front-end : Flutter, json_annotation, dio, geolocator


<br>

## 3. 페이지별 기능

<br>

### [전체 화면 & 로딩 화면 ]

- 앱을 시작하면 몇 초 동안 Splash Screen이 표시되며, 첫 실행 시에는 위치 권한에 대한 알림창이 뜹니다.
- 날씨 데이터를 불러오는 동안에는 AnimatedBuilder를 사용하여 제작한 로딩 화면이 보입니다.
- 화면에는 사용자의 현재 위치에 따른 지역의 날씨 정보가 표시됩니다.
- 앱에서는 총 9가지 날씨 상태(sunny, misty, few cloudy, cloudy, broken cloudy, showers, rainy, thunderstorm, snowy)에 따른 다양한 화면을 제공합니다.


| 전체 화면 & 로딩 화면 |
| ----------------- |

| project | splash |
|----------|----------|
|![project](https://github.com/so0ng0970/WTTR/assets/108356773/338ad933-36d0-4fa4-87b5-bc9c815967b3)|![splash](https://github.com/so0ng0970/WTTR/assets/108356773/ab7c2026-d4f0-4f41-b5c7-89923fc81f71)|

| sunny | misty |
|----------|----------|
|![1](https://github.com/so0ng0970/WTTR/assets/108356773/443b4006-5e83-4abe-8e48-f7c6e63ce470)|![2](https://github.com/so0ng0970/WTTR/assets/108356773/2b7a9ee7-5d83-4e48-b869-f7d26ba07214)|

| few cloudy | cloudy |
|----------|----------|
|![3](https://github.com/so0ng0970/WTTR/assets/108356773/305b106b-3642-4d01-bd50-e9135dd3ab3a)|![4](https://github.com/so0ng0970/WTTR/assets/108356773/d6285f6e-c514-41ef-ab06-6faaffa44bdb)|

| broken cloudy | showers |
|----------|----------|
|![5](https://github.com/so0ng0970/WTTR/assets/108356773/da6fa85b-aaa7-4ce5-8aba-56cdd79b1d2a)|![6](https://github.com/so0ng0970/WTTR/assets/108356773/89d9e42e-4648-414d-b78f-11ef69d42688)|

| rainy | thunderstorm |
|----------|----------|
|![7](https://github.com/so0ng0970/WTTR/assets/108356773/f4f51481-af84-43b1-bd2d-2182f5c2a4c4)|![8](https://github.com/so0ng0970/WTTR/assets/108356773/15849233-a4fc-40eb-a1d8-23d93b4634a9)|

| snowy |
|----------|
|![9](https://github.com/so0ng0970/WTTR/assets/108356773/1138e61c-2ec5-4271-b039-7ae5dec6603e)|

