# AmazeMarket: Spring boot/React를 활용한 반응형 쇼핑몰
## Blue Dragon Team
### 리더: 장은학
- 아키텍처, 인터페이스 설계
- DevOps(배치, 배포)
- SQL mapper 구성/작업
- Use case, Class, ER Diagram 구성/작성
- Spring boot REST api 작성
- 리액트 화면 디자인 구성/구현

### 팀원: 김종찬
- Spring boot REST api 작성
- ERD/Class/Use case Diagram 구성
- Mybatis Mapper 작성
- SQL mapping 작업

### 팀원: 정수민
- Spring boot REST api 작성
- ERD/Class/Use case Diagram 구성
- Mybatis Mapper 작성
- Spring Security 작성
- SQL mapping 작업


## 활용 모듈
### Back-end: Spring
- Spring Dependencies: Boot, Security, Devtools, Mybatis, Batch
### Front-end: React.js
- React Expansion: Redux, React-router
### Network
- Sock.js(Web Socket)
- Axios(Async HttpRequest and response)
- Vanilla Ajax
### Texteditor: CKEditor5
### Database: Oracle 11g (XE)
### SQL Mapper: Mybatis


# UseCase Diagram
![usecase.png](./diagrams/usecase.png)

# ERD
![](https://github.com/bashpound/spring-react/blob/master/src/main/resources/table/%ED%85%8C%EC%9D%B4%EB%B8%94%20ERD.JPG)

**회원: member**
* 컬럼 : 고객아이디, 이메일주소, 암호, 성별, 생일, 연락처, 가입일, 판매자여부, 등급, 탈퇴여부, 권한, 탈퇴일
* username, email_address, password, gender, birth, phone, *enrollDate, *is_seller, *levels, *delFlag, *Role, *deleteDate

**배송지: delivery**
* 필요컬럼: 식별용PK, 고객아이디, 배송지이름, 우편번호, 동, 상세주소, 주배송지
* *delivery_id, *delivery_username, zipcode, name_of_delivery, address1, address2, *is_main_address

**관리자: admin**
* 필요컬럼: 관리자아이디, 비밀번호, 이름, 등급
* *id, username, password, name, levels

**고객불만신고: complain**
* 필요컬럼: 식별용PK, 고객아이디, 제목, 내용, 신고일, 답변, 답변일
* *complain_id, *complain_username, subject, complain_content, *complain_regdate, answer, *ansDate

## 상품정보
**Product**
* 필요컬럼: 상품번호 , 상품명, 썸네일명, 판매자, 등록일, 재고량, 가격, 옵션
* *prod_id, prod_name, *prod__thumb_nail, member_username, *prod_reg_date, stock, price, options

**m_purchase_prod**
* 필요컬럼: 상품번호, 주문번호, 수량
* *mpp_product_id, mpp_purchase_id, quantity

**Purchase**
* 필요컬럼 : 주문번호, 유저이름, 구매일, 도착여부, 결제여부
* *purchase_id, purchase_username, *purchase_date, *arrive, *is_purchased

**Review**
* 필요컬럼: 리뷰번호, 상품번호, 작성자이름, 썸네일명, 점수, 게시일, 내용
* *review_id, review_prod_id, review_username, *review_thumb_nail, score, *review_reg_date, review_content

**shipping_information**
* 필요 컬럼: 식별용PK, 주문번호, 운송사, 송장번호, 배송상태
* *shipping_id, *shipping_purchase_id, *Courier, *parcel_number, *delivery_state

