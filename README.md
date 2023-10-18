# 📎 건강정보를 입력받아 필터링을 통한 식품 알레르기 피해 예방 수단 (팀명 : Helpu)
![image]()


## 👀 서비스 소개
* 서비스명:  알레르기 필터링 웹사이트
* 서비스설명: 사용자의 건강정보 데이터를 입력받아 사용자가 원하는 상품을 검색 시 사용자의 정보와 일치하는 성분을 상품에 표기, 직관적이고 편리한 UI를 통해 정보를 제공하는 웹사이트
<br>

## 📅 프로젝트 기간
2023.09.11 ~ 2023.10.19 (6주)
<br>

## ⭐ 주요 기능
* 기능1 회원관리
  * 회원 가입 시 회원의 건강정보를 DB에 저장
  * 마이페이지를 통해 회원의 정보를 DB에서 불러와 수정 가능
  * 상품에 즐겨찾기 버튼 생성하여 버튼 클릭 시 사용자 정보에 즐겨찾기 정보 추가

* 기능2 상품 관리
  * e-커머스 사이트에서 식품 성분 데이터를 추출하여 DB에 저장
  * e-커머스 사이트에서 상품 정보를 추출하여 DB에 저장
    
* 기능3 성분 필터링 기능 & 상품 리뷰
  * 알레르기 대표 성분 22가지를 분류하여 사용자가 간편하게 성분을 파악할 수 있도록 함
  * 상품에 해당하는 알레르기 성분이 포함되어 있을 경우, 해당하는 내용을 표기
  * 상품 페이지에 리뷰 탭을 추가하여 리뷰 중 추천 수가 가장 많은 리뷰를 상품 페이지 상단에 출력
    
* 기능4 배너 기능
  * 캐시 데이터를 활용해 최근에 본 상품 3~5개를 배너에 나타날 수 있게 구현
  * 클릭 시 페이지 최상단, 최하단으로 이동할 수 있는 버튼 생성
  * 사용자의 건강정보 데이터를 바로 수정할 수 있는 버튼을 생성
    
* 기능5 세부 영양성분 표기 그래프
  * 상품페이지로 이동시 상품의 영양정보를 직관적으로 표기할 수 있는 그래프 생성
  * 성인 하루 평균 영양소 권장량과 비교해줄 수 있도록 구현
<br>

## ⛏ 기술스택
<table>
    <tr>
        <th>구분</th>
        <th>내용</th>
    </tr>
    <tr>
        <td>사용언어</td>
        <td>
            <img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=java&logoColor=white"/>
            <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=white"/>
            <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=CSS3&logoColor=white"/>
            <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white"/>
            <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=Python&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>라이브러리</td>
        <td>
            <img src="https://img.shields.io/badge/chart.js-FF6384?style=for-the-badge&logo=chart.js&logoColor=white"/>
            <img src="https://img.shields.io/badge/apachemaven-C71A36?style=for-the-badge&logo=apachemaven&logoColor=white"/>
            <img src="https://img.shields.io/badge/jstl-007054?style=for-the-badge&logo=jstl&logoColor=white"/>
            <img src="https://img.shields.io/badge/lombok-4285F4?style=for-the-badge&logo=lombok&logoColor=white"/>
            <img src="https://img.shields.io/badge/mybatis-ECD53F?style=for-the-badge&logo=mybatis&logoColor=white"/>
            <img src="https://img.shields.io/badge/cos-55C2E1?style=for-the-badge&logo=cos&logoColor=white"/>
            <img src="https://img.shields.io/badge/gson-000000?style=for-the-badge&logo=gson&logoColor=white"/>
            <img src="https://img.shields.io/badge/IAMPORT REST API-BE95FF?style=for-the-badge&logo=IAMPORT REST API&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>개발도구</td>
        <td>
            <img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=Eclipse&logoColor=white"/>
            <img src="https://img.shields.io/badge/VSCode-007ACC?style=for-the-badge&logo=VisualStudioCode&logoColor=white"/>
            <img src="https://img.shields.io/badge/Anaconda-44A833?style=for-the-badge&logo=Anaconda&logoColor=white"/>
            <img src="https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=Jupyter&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>서버환경</td>
        <td>
            <img src="https://img.shields.io/badge/Apache Tomcat 9.0-D22128?style=for-the-badge&logo=Apache Tomcat&logoColor=white"/> 
        </td>
    </tr>
    <tr>
        <td>데이터베이스</td>
        <td>
            <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=MySQL&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>협업도구</td>
        <td>
            <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white"/> 
            <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white"/>
        </td>
    </tr>
</table>


<br>

## ⚙ 시스템 아키텍처(구조) 예시 
![서비스 아키텍처](https://user-images.githubusercontent.com/25995055/169925538-15867bd9-aa0b-42fc-a39b-88981e926e51.png)
<br>

## 📌 SW유스케이스
![image](https://user-images.githubusercontent.com/25995055/178401023-9a015e66-aa6e-4d74-8564-9b1f9d306649.png)
<br>

## 📌 서비스 흐름도
![image](https://user-images.githubusercontent.com/25995055/178401048-d6484bda-a2d7-40e1-998b-2bd195cd9f89.png)
<br>

## 📌 ER다이어그램
![image](https://user-images.githubusercontent.com/25995055/169925318-102784c2-893f-4fd7-bec9-a54c44b669d4.png)
<br>

## 🖥 화면 구성

### 로그인/회원가입/회원괸리/회원수정/회원탈퇴
![image](https://user-images.githubusercontent.com/25995055/178401098-95f15a0e-a2de-415e-83d5-883bb4cb0656.png)
<br>

### 옷 정보/코디 추천(날씨, 팁, 오늘의 코디, 참고할 수 있는 코디)
![image](https://user-images.githubusercontent.com/25995055/178401127-287e6de2-4396-49fc-a107-59c4d5cd55c7.png)
<br>

### 일정/고객센터
![image](https://user-images.githubusercontent.com/25995055/178401150-861f0e93-0f40-4fae-98c1-2099bf513c8d.png)
<br>

## 👨‍👩‍👦‍👦 팀원 역할
<table>
  <tr>
    <td align="center"><img src="https://item.kakaocdn.net/do/fd49574de6581aa2a91d82ff6adb6c0115b3f4e3c2033bfd702a321ec6eda72c" width="100" height="100"/></td>
    <td align="center"><img src="https://mb.ntdtv.kr/assets/uploads/2019/01/Screen-Shot-2019-01-08-at-4.31.55-PM-e1546932545978.png" width="100" height="100"/></td>
    <td align="center"><img src="https://mblogthumb-phinf.pstatic.net/20160127_177/krazymouse_1453865104404DjQIi_PNG/%C4%AB%C4%AB%BF%C0%C7%C1%B7%BB%C1%EE_%B6%F3%C0%CC%BE%F0.png?type=w2" width="100" height="100"/></td>
    <td align="center"><img src="https://i.pinimg.com/236x/ed/bb/53/edbb53d4f6dd710431c1140551404af9.jpg" width="100" height="100"/></td>
    <td align="center"><img src="https://pbs.twimg.com/media/B-n6uPYUUAAZSUx.png" width="100" height="100"/></td>
  </tr>
  <tr>
    <td align="center"><strong>양회진</strong></td>
    <td align="center"><strong>오장렬</strong></td>
    <td align="center"><strong>박재영</strong></td>
    <td align="center"><strong>안진성</strong></td>
    <td align="center"><strong>이동우</strong></td>
  </tr>
  <tr>
    <td align="center"><b>프로젝트 총괄(PM), DB 설계, UI 구성, 기획</b></td>
    <td align="center"><b>Back-end, DB 설계, 크롤링</b></td>
    <td align="center"><b>Back-end, 크롤링</b></td>
    <td align="center"><b>Fron-end, UI 설계</b></td>
    <td align="center"><b>Fron-end</b></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/자신의username작성해주세요" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/자신의username작성해주세요" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/자신의username작성해주세요" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/자신의username작성해주세요" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/자신의username작성해주세요" target='_blank'>github</a></td>
  </tr>
</table>

## 🤾‍♂️ 트러블슈팅
개념: 문제 해결을 위해 문제의 원인을 논리적이고 체계적으로 찾는 일이며 제품이나 프로세스의 운영을 재개
프로젝트 진행하는 동안 발생했던 이슈 중 가장 기억에 남았던 문제와 해결 프로세스 나열(2~5가지 정도)
  
* 문제1<br>
 문제점 설명 및 해결방안
 
* 문제2<br>
 문제점 설명 및 해결방안
