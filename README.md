# buyTrip(여행을 통해서)
### Spring Framework를 기반 직구 C2C플랫폼
---
+ 개발기간/참여인원 : 2018.06.01 ~ 2018.06.26(3주) / 6명
+ 개발환경 <br>
  ① Operating System : Windows 8.1 Utimate 64bit <br>
  ➁ Development Language : JAVA 8,Spring 4, Servlet & JSP, HTML5, Javascript, JQuery, Ajax <br>
  ➂ Development Tool : Eclipse JDK JEE,  GitHub , Bootstrap ,Toomcat8.5 , Trello <br>
  ➃ Libraries : ojdbc 6.jar <br>
  ➅ Server / Database Tool ; Apache Tomcat 8.5, MyBatis,  <br>  
   +Trello Link : https://trello.com/b/mNXCkmHc/%EC%98%A4%EB%B0%80%EC%A1%B0%EB%B0%80%EC%A1%B0
  
---
### 주요기능
 ![image](https://user-images.githubusercontent.com/38036329/182615904-b6823061-7100-41ba-b3f2-53cbb7d146e3.png)
1. 제품 상세페이지 ( 나라별 환율 출력) -환율API(한국수출은행),Spring Scheduler
      한국 수출입은행이 제공하는 환율 정보를 Spring Scheduler를 이용하여 매일 아침 9시 15분에 자동 환율 데이터 자동 업데이트 <br>
      상품별 직구를 원하는 나라의 환율 데이터를 출력처리.
 
2. 사용자와 관리자 1:1 실시간 Q&A 채팅 -webSocket,jackson
    Spring WebSocket을 이용하여 Server Handler를 이용하여 소켓통신을 이용하여 채팅 구현.
    
3. 자동 상품 등록 - jsoup, Apache Commons FileUpload, Ajax
    직구자가 해외 직구 사이트인 ebay, Alibaba의 상품Url을 입력하면 해당 페이지를 파싱하고, selector API로 상품이름과 이미지를 <br>
    Ajax로 화면에 노출 시켜준다. Apache Commons FileUpload 적용한 다중 이미지 파일 업로드 구현.
    
