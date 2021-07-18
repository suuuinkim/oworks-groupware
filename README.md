# :office: Project_oworks 그룹웨어/ 2021.05.11 ~ 

![image](https://user-images.githubusercontent.com/78335072/125545355-b0e36a30-aacf-470f-a1e5-5eb2d8ec1d0e.png)


# :office: 주제
* 조직구성원의 전자결재 및 근태관리 등 업무의 효율성을 높여주는 간결하고 직관적인 플랫폼

# :office: 개발환경
개발도구
* Eclipse - JEE - Mars - 2
* Oracle
언어
* Java
* Spring MVC
* OracleDB
* Mybatis
* HTML5/CSS3
* JavaScript/Jquery
* Bootstrap3
* Maven
* STS3

서버
* Apache Tomcat v8.5

커뮤니티
* Github

# :office: 개요

## OWORKS 소개
* 조직 구성원들의 업무효율을 높이기 위한 그룹웨어 서비스


## 참여인원 : 3명

## 역할
* 공지사항 게시판
* 전자결재
* 테이블 및 제약조건 쿼리문 생성
* 데이터 모델링 - 유스케이스 다이어그램

## 기능구현
* 공지사항 게시판 CRUD
* 게시글 검색기능
* 게시글 좋아요 기능
* 게시글 공유 기능
* 문서기안하기
* 문서상세조회
* 결재문서 진행 상태별 리스트 조회
* 결재코멘트 작성(댓글)기능
* 결재문서 검색하기
* 결재문서 다중삭제, 다중복구

## DB구성 - UseCase Diagram
![image](https://user-images.githubusercontent.com/78335072/125544203-4e8c60af-e526-4624-b4bf-9db2dd3c5715.png)

## DB구성 - ER Diagram
![image](https://user-images.githubusercontent.com/78335072/125544262-caaf2fea-9171-4ecc-8bfa-d6a0b3419545.png)

## :small_orange_diamond: 공지사항 게시판
### :sunflower: 공지사항 작성하기
<img width = "80%" src = "https://user-images.githubusercontent.com/78335072/126030691-67db435e-cd63-48ae-9ac3-f52ecb940cb8.gif">

### :sunflower: 공지사항 수정 및 삭제하기
<img width = "80%" src = "https://user-images.githubusercontent.com/78335072/125725752-61370b16-8adb-44b7-b550-aeaedc7e0134.gif">

### :sunflower: 공지사항 검색하기
<img width = "80%" src = "https://user-images.githubusercontent.com/78335072/125725752-61370b16-8adb-44b7-b550-aeaedc7e0134.gif">

## :small_orange_diamond: 공지사항 좋아요 및 공유 기능
### :sunflower: 좋아요 및 공유하기
<img width = "80%" src = "https://user-images.githubusercontent.com/78335072/126030606-dd69277c-6926-4165-98f2-be1020e1dc3a.gif">

## :small_orange_diamond: 전자결재
### :sunflower: 기안서 작성하기
<img width = "80%" src = "https://user-images.githubusercontent.com/78335072/125728844-e7791eb4-9b79-4c8e-9c50-5c965d794b02.gif">

### :sunflower: 기안서 상세보기, 코멘트 작성
#### :pushpin: 승인하는 경우
<img width = "80%" src = "https://user-images.githubusercontent.com/78335072/125729556-65c457b1-1725-4088-b7bd-9809b9921ad0.gif">

#### :pushpin: 반려하는 경우
<img width = "80%" src = "https://user-images.githubusercontent.com/78335072/125730210-a1acea3f-e3f4-4ceb-b8e1-80104a119fdf.gif">

### :sunflower: 기안서 진행 상태별 각각 다른 결재함에서 확인 가능
#### :pushpin: 대기 - 본인의 결재가 필요한 상태
#### :pushpin: 진행 - 본인의 결재는 완료되고 마지막 결재자의 결재를 기다리는 상태
#### :pushpin: 완료 - 최종결재자까지 결재가 완료된 상태, 중간결재자가 반려를 한 상태
<img width = "80%" src = "https://user-images.githubusercontent.com/78335072/125731965-e00f2209-8f10-48e8-b895-ac770d2c1747.gif">

### :sunflower: 전자결재 다중삭제 및 다중 복구
<img width = "80%" src = "https://user-images.githubusercontent.com/78335072/126030768-8bcd4e93-5df3-419b-95b0-f144216f992e.gif">
