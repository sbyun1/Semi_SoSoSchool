<p align="center">
  <img width="500" alt="soso" src="https://user-images.githubusercontent.com/86010657/154974933-cdd2b6f4-2220-4af6-9866-8907ffe7d72a.png">
</p>


# SoSo School 소소스쿨
프로젝트 기간: 2021.09 ~ 2021.11 <br>

## <목차>
### 1. [기획 의도 및 목표](#1️⃣-기획-의도-및-목표)
### 2. [구성원](#2️⃣-구성원)
### 3. [기술스택](#3️⃣-기술스택)
### 4. [설계](#4️⃣-설계)
### 5. [담당 구현 기능](#5️⃣-담당구현기능)
            
> 1) [결제하기](#결제하기)
> 2) [마이페이지](#마이페이지)
> 3) [문의하기](#문의하기)
> 4) [관리자페이지](#관리자페이지)

___
### 1️⃣ 기획 의도 및 목표

📝 코로나 시대에 함께 모여서 공부할 수 없는 초등학생들을 대상으로 온라인 학습뿐만 아니라 오프라인에서도 소규모로 모여 함께 공부할 수 있는 기회를 제공한다.

📝 초등학교 저학년을 대상으로 동영상, 음성파일 등을 이용하여 국어/영어/수학을 학습할수있도록 제공하는 웹사이트 구축
___
### 2️⃣ 구성원
🧑🏻‍💻박예진
👩🏻‍💻변수빈
🧑🏻‍💻서창윤
🧑🏻‍💻윤영근
🧑🏻‍💻이진우
____
### 3️⃣ 기술스택
* **Front-End** :  HTML/CSS/javascript, jQuery
<img width="336" alt="front" src="https://user-images.githubusercontent.com/86010657/151784014-e63dd168-780e-4855-87fa-e32cf68fb71a.png">


* **Back-End** :  Java, Servlet, Apache TomCat

* **Database** : Oracle
<img width="164" alt="oracle" src="https://user-images.githubusercontent.com/86010657/151784761-60050fb8-65b6-4373-86e8-0ee735ebc362.png">

___
### 4️⃣ 설계 
* DB 테이블 명세서
<img width="604" alt="db_table" src="https://user-images.githubusercontent.com/86010657/154974973-1a9805ee-1586-4de3-b7ff-d0ded1cdfbc6.png">

### 5️⃣ 담당구현기능    
* ## 결제하기
    * iAmPort API 사용 카카오페이, KG이니시스 결제구현
    * 결제완료시 웹사이트의 핵심기능인 문제풀기, 소그룹모임 등 이용가능 하도록 구독여부 변경
    </br></br> 

* ## 마이페이지 
    * 학부모 이름, 자녀이름, 아이디 등은 readonly속성을 주어 회원이 임의로 변경 할수 없도록 함. 관리자 문의를 통해 변경 가능.
    * 전화번호, 학년, 이메일, 지약, 주소 등은 회원이 직접 수정가능
    * 비밀번호는 현재 비밀번호 입력 후, 일치할 시에만 재설정이 가능하도록 구현.
    * 회원탈퇴 버튼을 통한 회원탈퇴 기능. 
    </br></br>  

* ## 문의하기
    
    * 다른 회원이 올린 문의도 볼 수 있도록 구현 단, 세션정보를 확인하여 본인 일 경우에만 수정,삭제 가능하도록 함.
    * 문의시 글쓴이는 세션을 정보를 통해 로그인한 회원의 아이디로 자동으로 등록되도록 구현. 
</br></br>  

* ## 관리자페이지
    * 회원의 기본 정보를 관리하고 변경할 수 있도록 함.
    * 문의하기에 답변 달기, 수정 및 삭제 기능
    * 공지사항 CRUD 기능


