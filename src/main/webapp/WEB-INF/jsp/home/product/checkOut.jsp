 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <style>
 .btn-custom-blue {
    color: #fff;
    background-color: rgba(54, 108, 243, 1);
    border: 1px solid rgba(54, 108, 243, 0.4);
}
.kt-login__actions > button {
    display: inline-block;
    height: 50px;
    padding-left: 2.5rem;
    padding-right: 2.5rem;
}
.btn-custom-blue:hover {
    color: #fff;
    background-color: rgba(54, 108, 243, 0.8);
    border: 1px solid rgba(54, 108, 243, 0.8);
    box-shadow: 0px 9px 16px 0px rgba(54, 108, 243, 0.25);
}
.kt-login__actions {
    margin-top: 7%;
    text-align: right;
    font-size: 0;
}
.form-control {
    border-radius:0 !important;
}
textarea.form-control {margin-bottom:40px !important;}
.form-control:focus {
    border-color: #66afe9;
    outline: 0;
}

 </style>

        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(/web/images/thumbnail/11401a6f6d7be1a45fcdda8cd95d2bf1ac4f2b96pbf47176d1ew76924c77104q.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">구매 페이지</h2>
                                <nav class="bradcaump-inner">
                                  <span class="breadcrumb-item active">Checkout</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
                <!-- Start Checkout Area -->
        <section class="our-checkout-area ptb--100 bg__white">
            <div class="container">
                <div class="row">
             	   <div class="col-md-4 col-lg-4">
                        <div class="checkout-right-sidebar">
                            <div class="our-important-note">
                                <h2 class="section-title-3">구매목록</h2>
<!--                                 <p class="note-desc">Lorem ipsum dolor sit amet, consectetur adipisici elit, sed do eiusmod tempor incididunt ut laborekf et dolore magna aliqua.</p> -->
                                <ul class="important-note" id = "myOrderList">
                                </ul>
                            </div>
<!--                             <div class="puick-contact-area mt--60">
                                <h2 class="section-title-3">총 금액</h2>
                                <a href="#">00,000원 </a>
                            </div> -->
                        </div>
                    </div>

                    <div class="col-md-8 col-lg-8">
                        <div class="ckeckout-left-sidebar">
                            <!-- Start Checkbox Area -->
                            <div class="checkout-form">
                                <h2 class="section-title-3">사용자 정보</h2>
                                <div class="checkout-form-inner">

                                	 <div class="col-md-6 col-lg-6">

	                                    <div class="single-checkout-box">
	                                        <label>이름</label><input type="text" id="name" readonly>
	                                    </div>
	                                    <div class="single-checkout-box">
	                                        <label>회원구분</label><input type="text" id="divisionname" readonly>
	                                    </div>
	                                  </div>
	                                  <div class="col-md-6 col-lg-6">
	                                    <div class="single-checkout-box">
	                                        <label>이메일</label><input type="text" id="email" readonly>
	                                    </div>
	                                    <div class="single-checkout-box">
	                                        <label>핸드폰번호</label><input type="text" id="phone" readonly>
	                                    </div>
	                                  </div>

	                                <div class="single-checkout-box address">
                                    	<label>주소</label>
                                        <input type="text" id="sample6_postcode" readonly>
                                        <input type="text" id="sample6_extraAddress" readonly>
                                        <input type="text" id="sample6_address" readonly>
                                        <input type="text" id="sample6_detailAddress" readonly>
                                    </div>

                                    <div class="single-checkout-box">
                                        <label>배송메세지</label><textarea class="form-control" name="message" placeholder="메세지 입력"></textarea>
                                    </div>



                                </div>
                            </div>
                            <!-- End Checkbox Area -->
                            <!-- Start Payment Way -->
                            <div class="kt-login__actions">
                            	<button type="button" class="btn btn-custom-blue btn-elevate kt-login__btn-primary" onclick="payRequest()">결제하기</button>
                            </div>
                            <!-- End Payment Way -->
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- End Checkout Area -->

        <script src="/web/js/home/checkOut/checkOut.js"></script>
        <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>

		<script>
			var IMP = window.IMP;
// 			console.log(IMP)

			var param = {
				"pay_method" : "card",
				"escrow" : false,
				"merchant_uid" : "merchant_1591106929761",
				"name" : "PLAN B 상품 구매",
				"amount" : 1200,
				"buyer_email" : "iciaPlanb@gmail.com",
				"buyer_name" : "PlanB",
				"buyer_tel" : "010-6291-7715",
				"buyer_addr" : "인천 광역시 미추홀구 주안동",
				"buyer_postcode" : "172-123",
				"vbank_due" : "20200604",
// 				"m_redirect_url" : "https://www.iamport.kr/demo",
				"niceMobileV2" : true,
				"kcpProducts" : [ {
					"orderNumber" : "xxxx",
					"name" : "상품A",
					"quantity" : 3,
					"amount" : 1000
				}, {
					"orderNumber" : "yyyy",
					"name" : "상품B",
					"quantity" : 2,
					"amount" : 3000
				} ],
				"naverProducts" : [ {
					"id" : "singleProduct",
					"name" : "네이버페이 상품1",
					"basePrice" : 1000,
					"taxType" : "FREE",
					"quantity" : 2,
					"infoUrl" : "http://www.naver.com",
					"imageUrl" : "http://www.naver.com",
					"shipping" : {
						"groupId" : "",
						"method" : "DELIVERY",
						"baseFee" : 0,
						"feeType" : "FREE",
						"feePayType" : "FREE"
					}
				}, {
					"id" : "optionProduct",
					"name" : "네이버페이 상품2",
					"basePrice" : 1000,
					"taxType" : "FREE",
					"quantity" : 2,
					"infoUrl" : "http://www.naver.com",
					"imageUrl" : "http://www.naver.com",
					"option" : {
						"optionPrice" : 200,
						"selectionCode" : "R_L",
						"selections" : [ {
							"code" : "RED",
							"label" : "색상",
							"value" : "빨강"
						}, {
							"code" : "180",
							"label" : "사이즈",
							"value" : "180"
						} ]
					},
					"shipping" : {
						"groupId" : "",
						"method" : "DELIVERY",
						"baseFee" : 0,
						"feeType" : "FREE",
						"feePayType" : "FREE"
					}
				} ]
			}

			function payRequest() {

				param.buyer_email = $('#email').val();
				param.buyer_name = $('#name').val();
				param.buyer_tel = $('#phone').val();
				param.buyer_addr = $('#sample6_address').val();
				param.buyer_postcode = $('#sample6_postcode').val();


				IMP.init("imp68124833"); // // imp10391932 (카카오)
				IMP.request_pay(param, function(rsp) {
					console.log(rsp)

// 					var msg = '결제가 완료되었습니다.\n';
// 					msg += '고유ID : ' + rsp.imp_uid + '\n';
// 					msg += '상점 거래ID : ' + rsp.merchant_uid + '\n';
// 					msg += '결제 금액 : ' + rsp.paid_amount + '\n';

// 					if (rsp.pay_method === 'card') {
// 						msg += '카드 승인번호 : ' + rsp.apply_num + '\n';
// 					} else if (rsp.pay_method === 'vbank') {
// 						msg += '가상계좌 번호 : ' + rsp.vbank_num + '\n';
// 						msg += '가상계좌 은행 : ' + rsp.vbank_name + '\n';
// 						msg += '가상계좌 예금주 : ' + rsp.vbank_holder + '\n';
// 						msg += '가상계좌 입금기한 : ' + rsp.vbank_date + '\n';
// 					}

					if((rsp.error_msg).indexOf('F0004') !== -1){

						$.ajax({
							type : 'post',
							url : '/rest/home/orders/ordersAdd',
							data : $('productno').serialize(),
							success : function(result) {
								console.log(result);
								$(".numBox").val("1");
								purchaseHistory()
							},
							error : function() {
								alert("에러 ...");
							}
						})


					var sumPrice = $('#totalPrice').text();
					if(!sumPrice) sumPrice = 1;
						swal.fire({
				             title: '결제 완료',
				             html: "</br> 해당 상품의 주문이 완료되었습니다. </br>" + "결제 금액 : "  + sumPrice + "<br>카드 승인 번호 : " + rsp.imp_uid ,
				             type: 'success',
				             showCancelButton: false,
				             confirmButtonText: '메인으로'
				         }).then(function(result) {
				             if (result.value) {
								location.href = "/"
				             }
				         });
					} else {
						return;
					}

// 					else {
// 						var msg = '결제에 실패하였습니다.' + '\n';
// 						msg += '에러내용 : ' + rsp.error_msg + '\n';
// 					}

					//             $scope.$apply(function() {
					//                 $scope.is_response = true;
					//                 $scope.response = msg;
					//             });

					//             $timeout(function(){
					//                 $scope.is_response = false;
					//                 $window.location.reload();
					//             }, 10000, true);
				});
			}
		</script>