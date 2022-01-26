<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/menu.jsp"%>
<link rel="stylesheet" type="text/css" href="resources/css/board.css">
<body>
	<div class="mypageContainer">
		<div class="navarea">
			<nav>
				<h2>고객센터</h2>
				<div>
					<ul>
						<li onclick="location.href='about'"style="cursor: pointer;">회사소개</li>
						<li onclick="location.href='board'" style="cursor: pointer">공지사항</li>
						<li onclick="location.href='faq'"style="cursor: pointer; color: black; font-weight: bold;">자주 묻는 질문</li>
						<li onclick="location.href='qna'" style="cursor: pointer">QnA</li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="notice_wrap">
			<h2>자주 묻는 질문</h2>
			<div class="prdBox">
				<div class="faq-content">
					<button class="question" id="que-1">
						<span id="que-1-toggle">+</span><span>홈페이지와 다른 마켓 판매금액이 왜
							다른가요.</span>
					</button>
					<div class="answer" id="ans-1">
						입점 된 마켓마다 수수료 및 프로모션이 각각 진행되므로 가격이 다를 수 밖에 없습니다.<br> 또한, 병행수입
						특성상 동일 상품이라 하더라도 시즌 및 환율, 현지업체의 사정에 따라서 가격 변동이 생깁니다.
					</div>
				</div>

				<div class="faq-content">
					<button class="question" id="que-2">
						<span id="que-2-toggle">+</span><span>품절이 된 상품의 경우 어떻게 되나요.</span>
					</button>
					<div class="answer" id="ans-2">
						상품 입고는 업체 사정에 따라서 유동적이므로 정확한 재고입고시기는 알 수 없습니다.<br> 재고 품절시
						부득이하게 주문해주신 상품 취소처리 진행하는 점 양해부탁드립니다.<br> (재고 품절시 고객님께 직접
						연락드립니다.)
					</div>
				</div>

				<div class="faq-content">
					<button class="question" id="que-3">
						<span id="que-3-toggle">+</span><span>부분취소가 가능한가요.</span>
					</button>
					<div class="answer" id="ans-3">
						한 개의 주문건에 여러가지 상품을 같이 결제하시고, 상품을 수령하신 후 전체가 아닌 한 개 이상의 제품을 반품하실 경우<br>
						<br> <strong>계좌결제 하신 경우</strong> : 부분 환불이 가능하며 일부 상품 반품 요청
						하시면서 환불 받고자 하는 계좌번호를 남겨 주시면 해당 하는 계좌로 환불됩니다.<br>
						<br> <strong>카드로 결제하신 경우</strong> : 부분 반품 금액을 카드 부분 취소로
						도와드립니다.<br> 카드사와 할부 개월수에 따라 부분취소가 불가한 카드는, 반품하실 상품 금액을 제외한
						나머지 금액을 개인결제창을 만들어 드리며<br> 재결재 확인 후 이전 주문건 전체취소로 도와드리겠습니다.<br>
						<br> <strong>실시간 계좌이체의 경우</strong> : 부분취소가 불가능합니다.<br> 이
						또한 요청하신 부분에 대해 개인결제창을 통해 재결제를 해주셔야 합니다.<br> 재결제 하신 후, 꼭 Q&A로
						연락을 주시면 확인 후에 전체 실시간 계좌이체 취소처리 해드립니다.<br>
					</div>
				</div>

				<div class="faq-content">
					<button class="question" id="que-4">
						<span id="que-4-toggle">+</span><span>핸드폰 결제취소는 가능한가요.</span>
					</button>
					<div class="answer" id="ans-4">
						핸드폰 결제 승인취소는 이통사 정책으로 결제 당월 1일~31일까지 한해서만 취소처리가 가능합니다.<br>
						결제월이 지나 취소할 경우 계좌로 환불됩니다.
					</div>
				</div>

				<div class="faq-content">
					<button class="question" id="que-5">
						<span id="que-5-toggle">+</span><span>실시간 계좌이체 취소를 하였는데
							입금확인이 되지 않아요.</span>
					</button>
					<div class="answer" id="ans-5">
						실시간 계좌이체의 경우 실시간 계좌이체 취소처리만 가능하오며,<br> 고객님께서 계좌번호로 알려주셔도
						무통장으로 바로 입금환불 처리는 안됩니다.<br>
						<br> 실시간 계좌이체는 카드시스템과 비슷하여 취소된 날로부터 보통 3~7일이내에 처리되지만 추가적으로
						소요될 수 있습니다.
					</div>
				</div>

				<div class="faq-content">
					<button class="question" id="que-6">
						<span id="que-6-toggle">+</span><span>체크카드취소를 했는데 취소 확인이
							안되요.</span>
					</button>
					<div class="answer" id="ans-6">
						체크카드는 일반 신용카드와 동일하게 취소가 되며,<br> 취소일로부터 환불완료시까지 처리기간이 보통 7일정도
						소요 되지만 최대 14일까지도 소요될 수 있습니다.<br>
						<br> 신용카드, 체크카드, 실시간계좌이체 취소는 모두 동일한 방식으로 처리됩니다.<br> (단,
						신용카드는 결제일에 대금이 청구될 수 있으며 이 경우 익월 신용카드 대금청구시 카드사에서 환급처리 됩니다)
					</div>
				</div>

				<div class="faq-content">
					<button class="question" id="que-7">
						<span id="que-7-toggle">+</span><span>카드취소를 했는데 카드사에서 취소가
							되지 않았어요.</span>
					</button>
					<div class="answer" id="ans-7">
						<strong>배송전 상품의 주문취소일 경우</strong> : 취소가능 하오며 [마이페이지]에 가시면 주문내역이
						나옵니다.<br> 취소버튼을 누르시면 카드취소 진행을 할 수 있으며, 카드취소된 내역의 확인은 카드사로
						넘어가는 기간이 3~5일 정도 소요되어, 이후 카드사 측에서 확인되십니다.<br>
						<br> <strong>배송중(당사출고/택배사 운송중)인 상품</strong> : 고객님께서 물품수령 후
						반품신청 하셔야합니다.<br> 상품 반품주소지로 보내주시면 상품 입고시 담당자가 확인하여 순차적으로
						카드취소처리 진행합니다..<br> (단, 온라인의 특성상 고객님께서 직접 물품을 가지고 오실수가 없으므로
						택배비를 부담하여 물품을 보내주셔야합니다. 양해부탁드립니다.)<br> ※ 모든 반품의 경우는 텍부착, 미착용
						제품이어야 가능합니다.
					</div>
				</div>

				<div class="faq-content">
					<button class="question" id="que-8">
						<span id="que-8-toggle">+</span><span>입금 후, 주문을 취소하고 싶어요.</span>
					</button>
					<div class="answer" id="ans-8">
						송장 출력 전 입금확인 단계에서는 마이페이지를 통해 취소 가능합니다.<br> 배송준비중의 경우는 출고작업
						진행단계이므로 배송중으로 보고 있으며, 상품 변경 및 취소가 불가하오니 양해 부탁드립니다.<br> 발송이 된
						상품은 수령 후 반품하시는 왕복 택배비는 고객님께서 부담하셔야 합니다.<br>
						<br> <strong>배송전 상품의 주문취소일 경우</strong> : 취소가능하며 [마이페이지]에 가시면
						주문내역이 나옵니다. 취소버튼을 누르시면 됩니다.<br> <strong>배송중
							(당사출고/택배사 운송중)인 상품</strong> : 고객님께서 물품 수령후 반품신청 하셔야합니다.<br> (단, 온라인의
						특성상 고객님께서 직접 물품을 가지고 오실수가 없으므로 택배비를 부담하여 물품을 보내주셔야합니다. 양해부탁드립니다.)<br>
						모든 반품의 경우는 텍부착, 미착용 제품이어야 가능합니다.
					</div>
				</div>

				<div class="faq-content">
					<button class="question" id="que-9">
						<span id="que-9-toggle">+</span><span>상품 AS는 어떻게 진행되나요.</span>
					</button>
					<div class="answer" id="ans-9">
						제품 수령 시 확인 되는 초기하자의 경우 슈즈샵에서 교환/환불 가능합니다. (수령 후 7일 이내 미사용 상품에 한함)<br>
						사용 중 발생한 제품 훼손 및 하자의 경우 유상AS 받으실 수 있습니다.
					</div>
				</div>

				<div class="faq-content">
					<button class="question" id="que-10">
						<span id="que-10-toggle">+</span><span>교환&반품 처리는 얼마나 걸리나요.</span>
					</button>
					<div class="answer" id="ans-10">
						발송하신 교환&반품 상품이 우체국 물류센터에 도착 후 슈즈샵으로 전달됩니다.<br> 검수과정 및 추가적인
						처리에 기간이 소요되며<br>
						<br> - <strong>실시간계좌이체/ 무통장입금</strong> : 반품완료 + 2영업일<br>
						- <strong>신용카드/ 체크카드</strong> : 반품완료 + 7영업일<br> (카드 결제는 해당
						카드사와 데이터 전산 중계 업체간의 확인절차로 인해 현금 결제 보다 환불기간이 더 소요됩니다.)<br>
						<br> 교환 받고자 하신다면, 미리 교환접수 부탁드립니다.<br> 상품 입고 시 교환 재고 품절 시
						자동 반품처리 진행되오니 참고 부탁드립니다.<br>
					</div>
				</div>

				<div class="faq-content">
					<button class="question" id="que-11">
						<span id="que-11-toggle">+</span><span>교환&반품 배송료는 얼마인가요</span>
					</button>
					<div class="answer" id="ans-11">
						1. 교환/반품 배송비는 고객 부담입니다.<br> - <strong>단순변심(색상,사이즈
							등)인 경우</strong> : 왕복 배송료 7000원 부담해주셔야 합니다.(최초 무료배송료 3,500원 + 반송 운송료
						3,500원)<br> - CJ대한통운(고객반송료 부담)시 3500원(배송료) 고객부담<br> - 타
						택배 선불시 3500원 고객부담 (타 택배 착불시 추가비용 고객부담)<br>
						<br> * 합포장으로 받은 상품은 교환/반품 요청시 왕복택배비 7000원 발생됩니다.<br>
						개별포장으로 받은 상품을 교환/반품 요청시 합포장하여 보내주시면 각각 상품의 배송비가 포함되어 7000원보다 추가
						발생될 수 있습니다.<br>
						<br> 2. 교환/반품시 배송비는 당사 계좌로 입금 부탁드립니다.<br> 배송비 동봉시 분실 위험이
						있으므로 되도록 자제 부탁드립니다.<br> (배송비 분실시 고객님의 과실로 인정되며, 이중 부담될 수
						있습니다.)<br>
						<br> 3. 하자, 오배송 받은 경우에도 타택배로 보내신 경우 고객 부담이오니<br> 꼭
						CJ대한통운 착불로만 보내주셔서 피해가 없도록 주의하시기 바랍니다.<br>
						<br> - 반품환불시 환불금액에서 차감 요청해주시면 배송비 입금없이 빠른 환불처리 가능합니다.<br>
						무통장환불시 예금주, 은행, 계좌번호를 꼭 기재해 주셔야지 빠른 환불처리 가능합니다.<br> (미기재시 처리
						지연될 수 있습니다.)
					</div>
				</div>

				<div class="faq-content">
					<button class="question" id="que-12">
						<span id="que-12-toggle">+</span><span>교환&반품 방법을 알고 싶어요.</span>
					</button>
					<div class="answer" id="ans-12">
						1. 수령하신 후 7일 이내에 문의 게시판(답변 확인 필요) 또는 고객센터를 통해 사전 접수합니다.<br>
						(사이즈 교환은 1회만 가능하며, 2회부터 교환 불가 반품만 가능합니다. 교환 요청 시 신중하게 결정 후 접수
						부탁드립니다.)<br> 교환 및 반품 미접수시 처리 지연 및 처리 불가할 수도 있다는 점 유의 바랍니다.<br>
						<br> 2. 택배사 사정으로 픽업 지연으로 지연된 경우를 제외하고 빠른 시일 내에 보내주시기 바랍니다.<br>
						<br> 3. 간단하게 교환/ 반품 사유와 처리 내용, 보내주시는 분 성함 및 연락처 등을 반품 교환 용지에
						기재하셔서<br> 보내주시면 보다 빠르게 확인하여 처리해드리도록 하겠습니다.<br>
						<br> 4. 배송비를 입금해주신 후 CJ대한통운 착불로 보내주시기 바랍니다.<br> (부득이하게
						동봉하신다면, 봉투에 밀봉하셔서 분실하지 않도록 주의하여 보내주시기 바랍니다.)<br> 택배 발송시에는 되도록
						CJ대한통운 택배 이용을 부탁드리며, 타 택배 착불 이용 시 배송비용이 증가됩니다.<br> 타 택배 이용
						시에는 반드시 보내주실 때에 선불요금으로 보내주시기 바랍니다.<br>
						<br> 5. 택배 기사님이 오시면 반품 상품을 전달하여 주시면 됩니다.<br> (상품 받으셨던
						그대로 전달 부탁드립니다. 구성품 및 정품 케이스, 정품 폴리백 누락시 반품/교환처리 어려울 수 있습니다.)
					</div>
				</div>


			</div>
		</div>
	</div>
	<script>
  const items = document.querySelectorAll('.question');

  function openCloseAnswer() {
    const answerId = this.id.replace('que', 'ans');

    if(document.getElementById(answerId).style.display === 'block') {
      document.getElementById(answerId).style.display = 'none';
      document.getElementById(this.id + '-toggle').textContent = '+';
    } else {
      document.getElementById(answerId).style.display = 'block';
      document.getElementById(this.id + '-toggle').textContent = '-';
    }
  }

  items.forEach(item => item.addEventListener('click', openCloseAnswer));
</script>
</body>
<%@ include file="../include/csinfo.jsp"%>
</html>
