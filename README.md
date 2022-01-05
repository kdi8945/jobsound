## jobsound
1. **jobsound**는 **JSP**를 통해 만든 취업커뮤니티 입니다.
2. jobsound의 회원 권한으로는 공지사항조회, 스터디모집 및 신청, 커뮤니티 작성 및 조회, 취업기사조회, 마이페이지 조회 등을 할 수 있습니다.
3. jobsound는 관리자 권한으로는 공지사항 작성, 각 게시글 및 댓글 삭제, 취업기사 작성, 관리자페이지 조회 등을 할 수 있습니다.

## 개발환경 및 셋팅
### 백앤드
>1. Language: Java JDK-11
>2. Database : Oracle 11g
>3. IDE Tool : Eclipse Version: 2019-12 (4.14.0)

### 프론트앤드
>1. JavaScript
>2. jQuery

### Oracle 설정
>1. IP : localhost 
>1. Port : 8181
>2. User : J20210903_3
>3. Password : tiger
>5. jobsoundDB.sql 파일에 적혀있는 <u>쿼리를 실행</u>해주세요.

## 프로젝트 제공기능
#### 각 이미지와 설명을 한번에 보시려면 <u>jobsound.pdf</u>를 실행해주세요.
### 1. 페이지레이아웃
 - 헤더 : 게시판 전체검색, 각 게시판 및 페이지 이동
 - 왼쪽 사이드바 : 각 게시판별 하위 카테고리 이동
 - 오른쪽 사이드바 : 로그인상태 표시, (비로그인) 로그인, 회원가입, ID/PW찾기, (로그인) 마이페이지 이동, 로그아웃
 - TOP 키 : 현재 페이지 최상단 이동
### 2. 메인페이지
 - 취업기사(최신작성순 4개), 공지사항(최신작성순 5개), 스터디모집(최신작성순 5개), 커뮤니티(최신작성순 5개) 게시물 조회 및 각 게시판 이동
### 3. 회원가입 및 ID/PW 찾기
 - 회원가입 : ID 중복체크, 비밀번호 일치여부 체크
 - ID 찾기 : 이름, 이메일로 아이디 조회
 - PW 찾기 : 아이디, 이름, 이메일로 비밀번호 조회
### 4. 관리자페이지
 - 가입일자 순 회원정보 조회
 - 전체게시판 게시글 및 댓글 최신 작성일 순 전체 조회 및 강제삭제
 - 문의사항 조회 및 답글 작성
### 5. 마이페이지
 - 개인정보 조회 및 수정
 - 모집중인 스터디 현황 조회 및 신청자 상태 변경
 - 작성한 게시글 및 댓글 최신작성일 순 조회 및 다중 선택삭제
 - 작성한 문의사항 및 답변여부 최신작성일 순 조회 및 다중 선택삭제
 - 신청한 스터디 상태 조회 및 다중 선택취소
 - 회원탈퇴
### 6.게시판 공통기능(공지사항, 취업기사, 커뮤니티, 스터디모집)
 - 게시글 최신작성일 순 10, 15, 20, 30개 단위 선택 조회
 - 해당 게시판 작성자, 글 제목, 글 내용 검색 조회
 - 해당 게시판 게시글 및 댓글, 답글 최신 작성일 순 전체 조회
 - 댓글 및 답글 작성(회원 및 관리자)
 - 댓글 및 답글 수정(해당 작성자)
 - 댓글 및 답글 삭제(해당 작성자 및 관리자)
### 공지사항, 취업기사 게시판
 - 게시글 작성 및 수정, 삭제(관리자)
### 스터디모집 게시판
 - 게시글 작성 및 수정, 스터디 일정 설정 및 수정(회원)
 - 스터디 신청 및 취소(회원)
 - 게시글 삭제(해당 작성자, 관리자)
### 커뮤니티 게시판
 - 게시글 작성 및 수정(회원)
 - 게시글 삭제(해당 작성자 및 관리자)
