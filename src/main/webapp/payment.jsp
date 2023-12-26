<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payment.jsp</title>
<link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/carousel/">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@2.0/nanumsquare.css">
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="index" name="current"/>
	</jsp:include>
	<div id="header">
		<h1 class="xans-element- xans-layout xans-layout-logotop">
			<a href="index.jsp">MAIN PAGE</a>
		</h1>
		
		<div class="headerMenu-Left">
			<a href="">BEFORE PAGE</a> <%--선택된 제품 페이지로 이동 --%>
		</div>
		
		<div class="headerMenu-Right">
			<a href="">CART PAGE</a>
			<a href="">INFO PAGE</a>
		</div>
		
		<div class="titleArea">
			<h1>주문 및 결제</h1>
		</div>
	</div>
	
	<div id="mainArea" class="mainArea">
		<form id="frm_order_act" name ="frm_order_act" action method="post" target="_self" enctype="multipart.form-data">
			<input id="move_order_after" name="move_order_after" value="/order/order_result.html" type="hidden">
			<input id="orderform_id" name="orderform_id" value="O-20231225-03511268ae99dab1" type="hidden">
			<input id="use_join_privacy_policy_required" name="use_join_privacy_policy_required" value="T" type="hidden">
			<input id="order_agreement_member_use_flag" name="order_agreement_member_use_flag" value="F" type="hidden">
			<input id="order_agreement_nonmember_use_flag" name="order_agreement_nonmember_use_flag" value="T" type="hidden">
			<input id="is_crowd_funding" name="is_crowd_funding" value="F" type="hidden">
			<input id="member_group_price" name="member_group_price" value="0" type="hidden">
			<input id="mileage_generate3" name="mileage_generate3" value="0" type="hidden">
			<input id="total_group_dc" name="total_group_dc" value="" type="hidden">
			<input id="basket_type" name="basket_type" value="A0000" type="hidden">
			<input id="productPeriod" name="productPeriod" value="" type="hidden">
			<input id="member_id" name="member_id" value="" type="hidden">
			<input id="delvType" name="delvType" value="A" type="hidden">
			<input id="isUpdateMemberEmailOrder" name="isUpdateMemberEmailOrder" value="F" type="hidden">
			<input id="isSimplyOrderForm" name="isSimplyOrderForm" value="F" type="hidden">
			<input id="__ocountry" name="__ocountry" value="" type="hidden">
			<input id="__oaddr1" name="__oaddr1" value="" type="hidden">
			<input id="__ocity" name="__ocity" value="" type="hidden">
			<input id="__ostate" name="__ostate" value="" type="hidden">
			<input id="sSinameZhAreaWord" name="sSinameZhAreaWord" value="省/市" type="hidden">
			<input id="sSinameTwAreaWord" name="sSinameTwAreaWord" value="市/縣" type="hidden">
			<input id="sGunameZhAreaWord" name="sGunameZhAreaWord" value="区" type="hidden">
			<input id="sGunameTwAreaWord" name="sGunameTwAreaWord" value="區/市" type="hidden">
			<input id="__addr1" name="__addr1" value="" type="hidden">
			<input id="__city_name" name="__city_name" value="" type="hidden">
			<input id="__state_name" name="__state_name" value="" type="hidden">
			<input id="__isRuleBasedAddrForm" name="__isRuleBasedAddrForm" value="T" type="hidden">
			<input id="message_autosave" name="message_autosave" value="F" type="hidden">
			<input id="hope_date" name="hope_date" value="" type="hidden">
			<input id="hope_ship_begin_time" name="hope_ship_begin_time" value="" type="hidden">
			<input id="hope_ship_end_time" name="hope_ship_end_time" value="" type="hidden">
			<input id="is_fast_shipping_time" name="is_fast_shipping_time" value="" type="hidden">
			<input id="eguarantee_id" name="eguarantee_id" value="F" type="hidden">
			<input id="is_hope_shipping" name="is_hope_shipping" value="F" type="hidden">
			<input id="is_fast_shipping" name="is_fast_shipping" value="" type="hidden">
			<input id="fCountryCd" name="fCountryCd" value="" type="hidden">
			<input id="sCpnPrd" name="sCpnPrd" value="0" type="hidden">
			<input id="sCpnOrd" name="sCpnOrd" value="0" type="hidden">
			<input id="coupon_saving" name="coupon_saving" value="0" type="hidden">
			<input id="coupon_discount" name="coupon_discount" value="0" type="hidden">
			<input id="coupon_shipfee" name="coupon_shipfee" value="0" type="hidden">
			<input id="is_used_with_mileage" name="is_used_with_mileage" value="F" type="hidden">
			<input id="is_used_with_member_discount" name="is_used_with_member_discount" value="F" type="hidden">
			<input id="is_used_with_coupon" name="is_used_with_coupon" value="F" type="hidden">
			<input id="is_no_ozipcode" name="is_no_ozipcode" value="F" type="hidden">
			<input id="is_no_rzipcode" name="is_no_rzipcode" value="F" type="hidden">
			<input id="is_cashreceipt_displayed_on_screen" name="is_cashreceipt_displayed_on_screen" value="F" type="hidden">
			<input id="is_taxrequest_displayed_on_screen" name="is_taxrequest_displayed_on_screen" value="F" type="hidden">
			<input id="app_scheme" name="app_scheme" value="" type="hidden">
			<input id="is_store" name="is_store" value="" type="hidden">
			<input id="defer_commission" name="defer_commission" value="0" type="hidden">
			<input id="order_form_simple_type" name="order_form_simple_type" value="F" type="hidden">
			<input id="information_agreement_check_val" name="information_agreement_check_val" value="F" type="hidden">
			<input id="consignment_agreement_check_val" name="consignment_agreement_check_val" value="F" type="hidden">
			<input id="basket_sync_flag" name="basket_sync_flag" value="F" type="hidden">
			<input id="gift_selected_item" name="gift_selected_item" value="" type="hidden">
			<input id="app_discount_data" name="app_discount_data" value="" type="hidden">
			<input id="is_shipping_address_readonly_by_app" name="is_shipping_address_readonly_by_app" value="" type="hidden">
			<input id="is_app_delivery" name="is_app_delivery" value="F" type="hidden">
			<input id="app_delivery_data" name="app_delivery_data" value="" type="hidden">
			<input id="is_available_shipping_company_by_app" name="is_available_shipping_company_by_app" value="" type="hidden">
			<input id="is_multi_delivery" name="is_multi_delivery" value="F" type="hidden">
			<input id="is_no_shipping_required" name="is_no_shipping_required" value="F" type="hidden">
			<input id="use_shipping_manager" name="use_shipping_manager" value="F" type="hidden">
			<input id="shipping_manager_data" name="shipping_manager_data" value="{&quot;reason_for_not_calculating_shipping_fee&quot;:null,&quot;shipping_manager_shipping_fees&quot;:null,&quot;selected_shipping_manager_shipping_fees&quot;:null,&quot;shipping_manager_shipping_fees_response&quot;:null,&quot;shipping_manager_shipping_fee_detail&quot;:null}" type="hidden">
			<input id="selected_shipping_manager_data" name="selected_shipping_manager_data" value="null" type="hidden">
			<input id="ex_mileage" name="ex_mileage" value="" type="hidden">
			<input id="pagetype" name="pagetype" value="" type="hidden">
			<input id="is_direct_buy" name="is_direct_buy" value="F" type="hidden">
			<input id="is_subscription_invoice" name="is_subscription_invoice" value="F" type="hidden">
			<input id="order_enable" name="order_enable" value="" type="hidden">
			<input id="use_tax_manager" name="use_tax_manager" value="F" type="hidden">
			<input id="use_external_tax_app" name="use_external_tax_app" value="NA" type="hidden">
			<input id="app_tax_data" name="app_tax_data" value="" type="hidden">
			<input id="include_tax_in_prices" name="include_tax_in_prices" value="T" type="hidden">
			<input id="total_tax_raw" name="total_tax_raw" value="0" type="hidden">
			<input id="jwt" name="jwt" value="" type="hidden">
			<input id="service_code" name="service_code" value="" type="hidden">
			<input id="used_card" name="used_card" value="" type="hidden">
			<input id="sEleID" name="sEleID" value="total_price||productPeriod||ophone1_1||ophone1_2||ophone1_3||ophone2_1||ophone2_2||ophone2_3||ophone1_ex1||ophone1_ex2||ophone2_ex1||ophone2_ex2||basket_type||oname||oname2||english_oname||english_name||english_name2||input_mile||input_deposit||hope_date||hope_ship_begin_time||hope_ship_end_time||is_fast_shipping_time||fname||fname2||paymethod||eguarantee_flag||eguarantee_ssn1||eguarantee_ssn2||eguarantee_year||eguarantee_month||eguarantee_day||eguarantee_user_gender||eguarantee_personal_agreement||question||question_passwd||delvType||f_country||fzipcode||faddress||fphone1_1||fphone1_2||fphone1_3||fphone1_4||fphone1_ex1||fphone1_ex2||fphone2_ex1||fphone2_ex2||fphone2||fmessage||fmessage_select||rname||rzipcode1||rzipcode2||raddr1||raddr2||rphone1_1||rphone1_2||rphone1_3||rphone2_1||rphone2_2||rphone2_3||omessage||omessage_select||ozipcode1||ozipcode2||oaddr1||oaddr2||oemail||oemail1||oemail2||ocity||ostate||ozipcode||eguarantee_id||coupon_discount||coupon_saving||order_password||is_fast_shipping||fCountryCd||message_autosave||oa_content||gift_use_flag||pname||bankaccount||regno1||regno2||escrow_agreement0||addr_paymethod||member_group_price||chk_purchase_agreement||total_plusapp_mileage_price||mileage_generate3||is_hope_shipping||sCpnPrd||sCpnOrd||coupon_shipfee||np_req_tx_id||np_save_rate||np_save_rate_add||np_use_amt||np_mileage_use_amount||np_cash_use_amount||np_total_use_amount||np_balance_amt||np_use||np_sig||flagEscrowUse||flagEscrowIcashUse||add_ship_fee||total_group_dc||pron_name||pron_name2||pron_oname||faddress2||si_gun_dosi||ju_do||is_set_product||basket_prd_no||move_order_after||is_no_ozipcode||is_no_rzipcode||__ocountry||__oaddr1||__ocity||__ostate||__addr1||__city_name||__state_name||__isRuleBasedAddrForm||sSinameZhAreaWord||sSinameTwAreaWord||sGunameZhAreaWord||sGunameTwAreaWord||delivcompany||is_store||cashreceipt_user_type||cashreceipt_user_type2||cashreceipt_regist||cashreceipt_user_mobile1||cashreceipt_user_mobile2||cashreceipt_user_mobile3||cashreceipt_reg_no||is_cashreceipt_displayed_on_screen||tax_request_regist||tax_request_name||tax_request_phone1||tax_request_phone2||tax_request_phone3||tax_request_email1||tax_request_email2||tax_request_company_type||tax_request_company_regno||tax_request_company_name||tax_request_president_name||tax_request_zipcode||tax_request_address1||tax_request_address2||tax_request_company_condition||tax_request_company_line||is_taxrequest_displayed_on_screen||isSimplyOrderForm||use_safe_phone||app_scheme||isUpdateMemberEmailOrder||defer_commission||defer_p_name||order_form_simple_type||gmo_order_id||gmo_transaction_id||receiver_id_card_key||receiver_id_card_type||simple_join_is_check||simple_join_agree_use_info||etc_subparam_member_id||etc_subparam_email1||etc_subparam_passwd||etc_subparam_user_passwd_confirm||etc_subparam_passwd_type||etc_subparam_is_sms||etc_subparam_is_news_mail||information_agreement_check_val||consignment_agreement_check_val||remind_id||remind_code||shipping_additional_fee_show||shipping_additional_fee_hide||shipping_additional_fee_name_show||save_paymethod||allat_account_nm||basket_sync_flag||member_id||input_pointfy||set_main_address0||app_discount_data||is_shipping_address_readonly_by_app||is_app_delivery||app_delivery_data||is_available_shipping_company_by_app||is_direct_buy||is_subscription_invoice||subscription_start_date||order_enable||is_crowd_funding||is_multi_delivery||is_no_shipping_required||use_tax_manager||use_external_tax_app||app_tax_data||include_tax_in_prices||total_tax_raw||pagetype||jwt||service_code||used_card||use_shipping_manager||shipping_manager_data||selected_shipping_manager_data||hope_shipping_date||ex_mileage||orderform_id||gift_selected_item||use_join_privacy_policy_required||order_agreement_member_use_flag||order_agreement_nonmember_use_flag||is_used_with_mileage||is_used_with_member_discount||is_used_with_coupon" type="hidden">
			
			<div id="mCafe24Order" class="xans-element- xans-order xans-order-form typeHeader xans-record-"><!-- 이값은 지우면 안되는 값입니다. ($move_order_after 주문완료페이지 주소 / $move_basket 장바구니페이지 주소)
            $move_order_after=/order/order_result.html
            $move_basket=/order/basket.html
            $paymethod_selector = textButton
            $email_type=emailcompact
            $product_weight_display=F
        -->
<!-- [바로구매 주문상품] -->
<!--
        이 파일은 원터치 주문서의 읽기 전용 파일입니다.
        이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
        원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
-->
<div id="ec-jigsaw-area-productdetail">
    </div>
<!-- [주문배송정보] 주문자정보, 배송지정보, 배송정보 -->
<!--
        이 파일은 원터치 주문서의 읽기 전용 파일입니다.
        이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
        원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
-->
<!-- 이값은 지우면 안되는 값입니다.
    $delivery_list_type=embeded
    $isRuleBasedAddrForm = T
    $isOneTouch = T
-->
<div class="billingNshipping">
    <!-- 주문자정보 -->
    <div id="ec-jigsaw-area-billingInfo" class="ec-base-fold eToggle selected">
        <div id="ec-jigsaw-title-billingInfo" class="title">
            <h2>주문 정보</h2>
            <span id="ec-jigsaw-heading-billingInfo" class="txtEm gRight" style="display: none;"></span>
        </div>
        <div class="contents ec-shop-ordererForm">
            <div class="ec-base-table typeWrite">
                <table border="1">
<caption>주문자 정보 입력</caption>
                    <colgroup>
<col style="width:102px">
<col style="width:auto">
</colgroup>
<!-- 국내/해외 주문자 정보 --><tbody class="address_form ">
<tr>
<th scope="row">주문자 <span class="icoRequired">필수</span>
</th>
                        <td><input id="oname" name="oname" fw-filter="isFill" fw-label="주문자 성명" fw-msg="" class="inputTypeText" placeholder="" size="15" value="" type="text"></td>
                    </tr>
<tr class="ec-orderform-emailRow ">
<th scope="row">이메일 <span class="icoRequired icon_order_email" style="">필수</span>
</th>
                        <td>
                            <div class="ec-base-mail">
            <input id="oemail1" name="oemail1" fw-filter="isFill" fw-label="주문자 이메일" fw-alone="N" fw-msg="" class="mailId" value="" type="text">@
            <span class="mailAddress">
            <select id="oemail3" fw-filter="isFill" fw-label="주문자 이메일" fw-alone="N" fw-msg="">
<option value="" selected="selected">-이메일 선택-</option>
<option value="naver.com">naver.com</option>
<option value="daum.net">daum.net</option>
<option value="nate.com">nate.com</option>
<option value="hotmail.com">hotmail.com</option>
<option value="yahoo.com">yahoo.com</option>
<option value="empas.com">empas.com</option>
<option value="korea.com">korea.com</option>
<option value="dreamwiz.com">dreamwiz.com</option>
<option value="gmail.com">gmail.com</option>
<option value="etc">직접입력</option>
</select>
            <span class="directInput ec-compact-etc"><input id="oemail2" name="oemail2" fw-filter="isFill" fw-label="주문자 이메일" fw-alone="N" fw-msg="" placeholder="직접입력" value="" type="text"></span>
            </span>
        </div>
                        </td>
                    </tr>
<tr class="">
<th scope="row">일반전화 <span class="displaynone"><span class="icoRequired">필수</span></span>
</th>
                        <td><div class="ec-base-mail"><select id="ophone1_1" name="ophone1_[]" fw-filter="isNumber" fw-label="주문자 전화번호" fw-alone="N" fw-msg="">
<option value="02">02</option>
<option value="031">031</option>
<option value="032">032</option>
<option value="033">033</option>
<option value="041">041</option>
<option value="042">042</option>
<option value="043">043</option>
<option value="044">044</option>
<option value="051">051</option>
<option value="052">052</option>
<option value="053">053</option>
<option value="054">054</option>
<option value="055">055</option>
<option value="061">061</option>
<option value="062">062</option>
<option value="063">063</option>
<option value="064">064</option>
<option value="0502">0502</option>
<option value="0503">0503</option>
<option value="0504">0504</option>
<option value="0505">0505</option>
<option value="0506">0506</option>
<option value="0507">0507</option>
<option value="070">070</option>
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
<option value="0508">0508</option>
</select>-<input id="ophone1_2" name="ophone1_[]" maxlength="4" fw-filter="isNumber" fw-label="주문자 전화번호" fw-alone="N" fw-msg="" size="4" value="" type="text">-<input id="ophone1_3" name="ophone1_[]" maxlength="4" fw-filter="isNumber" fw-label="주문자 전화번호" fw-alone="N" fw-msg="" size="4" value="" type="text"></div></td>
                    </tr>
<tr class="">
<th scope="row">휴대전화 <span class=""><span class="icoRequired">필수</span></span>
</th>
                        <td><div class="ec-base-mail"><select id="ophone2_1" name="ophone2_[]" fw-filter="isNumber&amp;isFill" fw-label="주문자 핸드폰번호" fw-alone="N" fw-msg="">
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
</select>-<input id="ophone2_2" name="ophone2_[]" maxlength="4" fw-filter="isNumber&amp;isFill" fw-label="주문자 핸드폰번호" fw-alone="N" fw-msg="" placeholder="" size="4" value="" type="text">-<input id="ophone2_3" name="ophone2_[]" maxlength="4" fw-filter="isNumber&amp;isFill" fw-label="주문자 핸드폰번호" fw-alone="N" fw-msg="" placeholder="" size="4" value="" type="text"></div></td>
                    </tr>
<tr id="ec-orderer-address">
<th scope="row">주소 <span class=""><span class="icoRequired">필수</span></span>
</th>
                        <td>
                            <ul class="ec-address">
            <li id="orderer_country_wrap" class="displaynone" style="display: none;">
                <select id="" name="" class="displaynone gCheckbox60" disabled=""><option value="">국가를 선택해주세요.</option><option value="GH">가나(GHANA)</option><option value="GA">가봉(GABON)</option><option value="GY">가이아나(GUYANA)</option><option value="GM">감비아(GAMBIA)</option><option value="GT">과테말라(GUATEMALA)</option><option value="GD">그레나다(GRENADA)</option><option value="GE">그루지야(GEORGIA)</option><option value="GR">그리스(GREECE)</option><option value="GN">기니(GUINEA)</option><option value="GW">기니비소(GUINEA-BISSAU)</option><option value="NA">나미비아(NAMIBIA)</option><option value="NG">나이지리아(NIGERIA)</option><option value="ZA">남아프리카공화국(SOUTH AFRICA)</option><option value="AN">네덜란드(네덜란드령앤틸리스)(NETHERLANDS(ANTILLES))</option><option value="NL">네덜란드(네델란드)(NETHERLANDS)</option><option value="AW">네덜란드(아루바섬)(ARUBA)</option><option value="NP">네팔(NEPAL)</option><option value="NO">노르웨이(NORWAY)</option><option value="NZ">뉴질란드(NEW ZEALAND)</option><option value="NE">니제르(NIGER)</option><option value="NI">니카라과(NICARAGUA)</option><option value="KR" selected="">대한민국(KOREA (REP OF,))</option><option value="DK">덴마크(DENMARK)</option><option value="GL">덴마크(그린란드)(GREENLAND)</option><option value="FO">덴마크(페로즈제도)(FAROE ISLANDS)</option><option value="DO">도미니카공화국(DOMINICAN REPUBLIC)</option><option value="DM">도미니카연방(DOMINICA)</option><option value="DE">독일(GERMANY)</option><option value="TL">동티모르(TIMOR-LESTE)</option><option value="LA">라오스(LAO PEOPLE'S DEM REP)</option><option value="LR">라이베리아(LIBERIA)</option><option value="LV">라트비아(LATVIA)</option><option value="RU">러시아(RUSSIAN FEDERATION)</option><option value="LB">레바논(LEBANON)</option><option value="LS">레소토(LESOTHO)</option><option value="RO">루마니아(ROMANIA)</option><option value="LU">룩셈부르크(LUXEMBOURG)</option><option value="RW">르완다(RWANDA)</option><option value="LY">리비아(LIBYAN ARAB JAMAHIRIYA)</option><option value="LI">리첸쉬테인(LIECHTENSTEIN)</option><option value="LT">리투아니아(LITHUANIA)</option><option value="MG">마다가스카르(MADAGASCAR)</option><option value="MK">마케도니아(MACEDONIA)</option><option value="MW">말라위(MALAWI)</option><option value="MY">말레이지아(MALAYSIA)</option><option value="ML">말리(MALI)</option><option value="MX">멕시코(MEXICO)</option><option value="MC">모나코(MONACO)</option><option value="MA">모로코(MOROCCO)</option><option value="MU">모리셔스(MAURITIUS)</option><option value="MR">모리타니(MAURITANIA)</option><option value="MZ">모잠비크(MOZAMBIQUE)</option><option value="ME">몬테네그로(MONTENEGRO)</option><option value="MD">몰도바(MOLDOVA, REPUBLIC OF)</option><option value="MV">몰디브(MALDIVES)</option><option value="MT">몰타(MALTA)</option><option value="MN">몽고(MONGOLIA)</option><option value="US">미국(U.S.A)</option><option value="GU">미국(괌)(GUAM)</option><option value="MH">미국(마아샬제도)(MARSHALL ISLANDS)</option><option value="VI">미국(버진제도)(VIRGIN ISLANDS U.S.)</option><option value="WS">미국(사모아, 구 서사모아)(SAMOA)</option><option value="AS">미국(사모아제도)(AMERICAN SAMOA)</option><option value="MP">미국(사이판)(NORTHERN MARIANA ISLANDS)</option><option value="PW">미국(팔라우섬)(PALAU)</option><option value="PR">미국(푸에르토리코섬)(PUERTO RICO)</option><option value="MM">미얀마(MYANMAR)</option><option value="FM">미크로네시아(마이크로네시아)(MICRONESIA)</option><option value="VU">바누아투(VANUATU)</option><option value="BH">바레인(BAHRAIN)</option><option value="BB">바베이도스(BARBADOS)</option><option value="BS">바하마(BAHAMAS)</option><option value="BD">방글라데시(BANGLADESH)</option><option value="VE">베네수엘라(VENEZUELA)</option><option value="BJ">베넹(BENIN)</option><option value="VN">베트남(VIET NAM)</option><option value="BE">벨기에(BELGIUM)</option><option value="BY">벨라루스(BELARUS)</option><option value="BZ">벨리세(BELIZE)</option><option value="BA">보스니아헤르체코비나(Bosnia and Herzegovina)</option><option value="BW">보츠와나(BOTSWANA)</option><option value="BO">볼리비아(BOLIVIA)</option><option value="BF">부르키나파소(BURKINA FASO)</option><option value="BT">부탄(BHUTAN)</option><option value="BG">불가리아(BULGARIA(REP))</option><option value="BR">브라질(BRAZIL)</option><option value="BN">브루네이(나이)(BRUNEI DARUSSALAM)</option><option value="BI">브룬디(BURUNDI)</option><option value="SA">사우디아라비아(SAUDI ARABIA)</option><option value="CY">사이프러스(CYPRUS)</option><option value="SM">산마리노(SAN MARINO)</option><option value="SN">세네갈(SENEGAL)</option><option value="RS">세르비아/코소보(SERBIA/KOSOVO)</option><option value="SC">세이셸(SEYCHELLES)</option><option value="LC">세인트 루시아(SAINT LUCIA)</option><option value="VC">세인트빈센트그레나딘(SAINT VINCENT AND THE GRENADINES)</option><option value="KN">세인트키츠네비스(SAINT KITTS AND NEVIS)</option><option value="SB">솔로몬아일란드(SOLOMON ISLANDS)</option><option value="SR">수리남(SURINAME)</option><option value="LK">스리랑카(SRI LANKA)</option><option value="SZ">스와질랜드(SWAZILAND)</option><option value="SE">스웨덴(SWEDEN)</option><option value="CH">스위스(SWITZERLAND)</option><option value="ES">스페인(에스파니아)(SPAIN)</option><option value="SK">슬로바키아(SLOVAKIA)</option><option value="SI">슬로베니아(SLOVENIA)</option><option value="SL">시에라리온(SIERRA LEONE)</option><option value="SG">싱가포르(SINGAPORE)</option><option value="AE">아랍에미레이트연합국(UNITED ARAB EMIRATES)</option><option value="AM">아르메니아(ARMENIA)</option><option value="AR">아르헨티나(ARGENTINA)</option><option value="IS">아이슬란드(ICELAND)</option><option value="HT">아이티(HAITI)</option><option value="IE">아일란드(에이레)(IRELAND)</option><option value="AZ">아제르바이잔(AZERBAIJAN)</option><option value="AF">아프가니스탄(AFGHANISTAN)</option><option value="AD">안도라(ANDORRA)</option><option value="AL">알바니아(ALBANIA)</option><option value="DZ">알제리(ALGERIA)</option><option value="AO">앙골라(ANGOLA)</option><option value="AG">앤티과바부다(ANTIGUA AND BARBUDA)</option><option value="ER">에리트리아(ERITREA)</option><option value="EE">에스토니아(ESTONIA)</option><option value="EC">에콰도르(ECUADOR)</option><option value="SV">엘살바도르(EL SALVADOR)</option><option value="GB">영국(UNITED KINGDOM)</option><option value="MS">영국(몽세라)(MONTSERRAT)</option><option value="BM">영국(버뮤다섬)(BERMUDA)</option><option value="VG">영국(버진제도)(VIRGIN ISLANDS BRITISH)</option><option value="AI">영국(안귈라섬)(ANGUILLA)</option><option value="GI">영국(지브롤터)(GIBRALTAR)</option><option value="KY">영국(케이만제도)(CAYMAN ISLANDS)</option><option value="TC">영국(터크스케이코스제도)(TURKS AND CAICOS ISLANDS)</option><option value="YE">예멘(YEMEN)</option><option value="OM">오만(OMAN)</option><option value="NF">오스트레일리아(노퍽섬)(NORFOLK ISLAND)</option><option value="AU">오스트레일리아(호주)(AUSTRALIA)</option><option value="AT">오스트리아(AUSTRIA)</option><option value="HN">온두라스(HONDURAS)</option><option value="JO">요르단(JORDAN)</option><option value="UG">우간다(UGANDA)</option><option value="UY">우루과이(URUGUAY)</option><option value="UZ">우즈베크(UZBEKISTAN)</option><option value="UA">우크라이나(UKRAINE)</option><option value="ET">이디오피아(ETHIOPIA)</option><option value="IQ">이라크(IRAQ)</option><option value="IR">이란(IRAN(ISLAMIC REP))</option><option value="IL">이스라엘(ISRAEL)</option><option value="EG">이집트(EGYPT)</option><option value="IT">이탈리아(이태리)(ITALY)</option><option value="IN">인도(INDIA)</option><option value="ID">인도네시아(INDONESIA)</option><option value="JP">일본(JAPAN)</option><option value="JM">자메이카(JAMAICA)</option><option value="ZM">잠비아(ZAMBIA)</option><option value="CN">중국(CHINA(PEOPLE'S REP))</option><option value="MO">중국(마카오)(MACAU)</option><option value="HK">중국(홍콩)(HONG KONG)</option><option value="CF">중앙 아프리카(CENTRAL AFRICAN REPUBLIC)</option><option value="DJ">지부티(DJIBOUTI)</option><option value="ZW">짐바브웨(ZIMBABWE)</option><option value="TD">차드(CHAD)</option><option value="CZ">체코(CZECH REP)</option><option value="CL">칠레(CHILE)</option><option value="CM">카메룬(CAMEROON)</option><option value="CV">카보베르데(CAPE VERDE)</option><option value="KZ">카자흐(KAZAKHSTAN)</option><option value="QA">카타르(QATAR)</option><option value="KH">캄보디아(CAMBODIA)</option><option value="CA">캐나다(CANADA)</option><option value="KE">케냐(KENYA)</option><option value="CR">코스타리카(COSTA RICA)</option><option value="CI">코트디봐르(COTE D IVOIRE)</option><option value="CO">콜롬비아(COLOMBIA)</option><option value="CG">콩고(CONGO)</option><option value="CU">쿠바(CUBA)</option><option value="KW">쿠웨이트(KUWAIT)</option><option value="HR">크로아티아(CROATIA)</option><option value="KG">키르키즈스탄(KYRGYZSTAN)</option><option value="KI">키리바티(KIRIBATI)</option><option value="TH">타이(태국)(THAILAND)</option><option value="TW">타이완(대만)(TAIWAN)</option><option value="TJ">타지키스탄(TAJIKISTAN)</option><option value="TZ">탄자니아(TANZANIA(UNITED REP))</option><option value="TR">터키(TURKEY)</option><option value="TG">토고(TOGO)</option><option value="TO">통가(TONGA)</option><option value="TM">투르크메니스탄(TURKMENISTAN)</option><option value="TV">투발루(TUVALU)</option><option value="TN">튀니지(TUNISIA)</option><option value="TT">트리니다드토바고(TRINIDAD AND TOBAGO)</option><option value="PA">파나마(PANAMA(REP))</option><option value="PY">파라과이(PARAGUAY)</option><option value="PK">파키스탄(PAKISTAN)</option><option value="PG">파푸아뉴기니(PAPUA NEW GUINEA)</option><option value="PE">페루(PERU)</option><option value="PT">포르투갈(PORTUGAL)</option><option value="PL">폴란드(POLAND(REP))</option><option value="FR">프랑스(FRANCE)</option><option value="GP">프랑스(과데루프섬)(GUADELOUPE)</option><option value="GF">프랑스(기아나)(FRENCH GUIANA)</option><option value="NC">프랑스(뉴칼레도니아섬)(NEW CALEDONIA)</option><option value="RE">프랑스(레위니옹섬)(REUNION)</option><option value="MQ">프랑스(마르티니크섬)(MARTINIQUE)</option><option value="PF">프랑스(폴리네시아)(FRENCH POLYNESIA)</option><option value="FJ">피지(FIJI)</option><option value="FI">필란드(FINLAND)</option><option value="PH">필리핀(PHILIPPINES)</option><option value="HU">헝가리(HUNGARY(REP))</option></select>
                <span id="orderer_directInputCheck_wrap" class="ec-base-label">
                                    <input id="orderer_directInputCheck" name="orderer_directInputCheck" type="checkbox" disabled="">
                                    <label id="orderer_directInputCheckLabel" for="orderer_directInputCheckLabel">직접입력</label>
                                  </span>
            </li>
        
           
        
            
        
            <li id="orderer_state_wrap" class="displaynone" style="display: none;">
                <select id="ju_do_us_o" name="ju_do_us_o" class="displaynone" disabled="" fw-filter="" style="display: none;">
                            <option value="">주/도를 선택해주세요</option>
                        </select><select id="ju_do_ca_o" name="ju_do_ca_o" class="displaynone" disabled="" style="display: none;" fw-filter="">
                            <option value="">주/도를 선택해주세요</option>
                        </select><input id="ostate" name="ostate" placeholder="주/도" fw-filter="" class="inputTypeText displaynone" type="text" size="30" maxlength="50" disabled="" style="display: none;">
            </li>
        
            <li id="orderer_city_wrap" class="displaynone" style="display: none;">
                <input id="ocity" name="ocity" placeholder="시/군/도시" fw-filter="" class="inputTypeText displaynone" type="text" size="30" maxlength="50" disabled="" style="display: none;">
            </li>
        
            <li id="orderer_street_wrap" class="displaynone">
                <input id="ostreet" name="ostreet" placeholder="ADDR.COMMON.FORMATSTREET.KR" fw-filter="" class="inputTypeText displaynone" type="text" size="30" maxlength="50" disabled="" style="display: none;">
            </li>
        
            <li id="orderer_area_wrap" class="ec-address-area displaynone" style="display: none;">
                <select id="si_name_o" name="si_name_o" class="displaynone" disabled="" fw-filter="" style="display: none;">
                                <option value="">ADDR.COMMON.FORMATSELECT.STATE.KR</option>
                            </select><select id="ci_name_o" name="ci_name_o" class="displaynone" disabled="" style="display: none;" fw-filter="">
                            <option value="">ADDR.COMMON.FORMATSELECT.CITY.KR</option>
                        </select><select id="gu_name_o" name="gu_name_o" class="displaynone" disabled="" style="display: none;" fw-filter="">
                            <option value="">ADDR.COMMON.FORMATSELECT.STREET.KR</option>
                        </select>
            </li>
        
            <li id="orderer_zipcode_wrap" class="ec-address-zipcode" style="">
                <input id="ozipcode1" name="ozipcode1" placeholder="우편번호" fw-filter="isLengthRange[1][14]" class="inputTypeText" type="text" maxlength="14" readonly="" fw-label="우편번호" style=""> <button id="btn_search_ozipcode" class="btnBasic" type="button" style="cursor: pointer;">주소검색</button><span class="ec-base-label">
                                        <input id="no_ozipcode0" name="no_ozipcode0" class="displaynone" type="checkbox" disabled="" fw-filter="" style="display: none; cursor: unset;">
                                        <label id="orderer_zipcode_check_label" for="no_ozipcode0" class="displaynone" disabled="" style="display: none;" fw-filter="">우편번호 없음</label>
                                    </span><span id="orderer_zipcodeNotFoundMsg_wrap" class="ec-base-label displaynone">
                                    우편번호가 정확하지 않습니다. 다시 확인해 주세요.
                                  </span>
            </li><li id="orderer_baseAddr_wrap" class="" style="">
                <input id="oaddr1" name="oaddr1" placeholder="기본주소" fw-filter="isFill" class="inputTypeText" type="text" size="60" maxlength="100" readonly="" fw-label="기본주소" style="">
            </li><li id="orderer_detailAddr_wrap" class="" style="">
                <input id="oaddr2" name="oaddr2" placeholder="나머지 주소" fw-filter="isFill" class="inputTypeText" type="text" size="60" maxlength="255" fw-label="나머지 주소" style="">
            </li>
        </ul>                        </td>
                    </tr>
</tbody>
</table>
</div>
        </div>
    </div>

    <!-- 배송정보  -->
    <div id="lShippingCompanyLists" class="ec-area-shipping-companies ec-base-fold eToggle selected displaynone">
        <div class="title">
            <h2>상품 수령</h2>
        </div>
        <div class="contents">
            <div class="segment">
                <!-- 배송업체(방식) 선택 -->
                                <p class="ec-base-help displaynone">스토어픽업을 사용할 수 없는 상품이 포함되어 있어 일반 배송사만 선택 가능합니다.</p>
                 <span class="ec-base-label" id="delivery_app_list"></span>                  <ul class="ec-base-help " id="deliv_info_view">
<li class="txtEm ">배송비 : <span id="deliv_company_price_custom_type">0</span></li>
                    <li class="displaynone">
                        <div class="ec-shop-shipping_additional_fee_show displaynone">
                            <span class="txtEm">배송비 : <span id="f_addr_total_ship_fee_id"></span></span>
                            = 해외배송비 <span id="f_addr_delv_price_id"></span>                            + 보험료 <span id="f_addr_insurance_price_id"></span>                            <span class="ec-shop-shipping_additional_fee_name_show">+ <span id="f_addr_shipping_additional_fee_name_id"></span> <span id="f_addr_shipping_additional_fee_id"></span></span>
                            <p class="ec-base-help typeDash gIndent10">보험료는 배송과정에서 발생하는 분실, 도난, 파손 등으로 인한 손해에 대하여 규정에 따라 배상해 드리는 서비스입니다.</p>
                        </div>
                        <div class="ec-shop-shipping_additional_fee_hide ">
                            <span class="txtEm">배송비 : <span id="f_addr_total_ship_fee_id"></span></span>
                            = 해외배송비 <span id="f_addr_delv_price_id"></span>                            + 보험료 <span id="f_addr_insurance_price_id"></span>                            <ul class="ec-base-help typeDash gIndent10">
<li>배송비에는 관세 및 세금 등의 각종 비용은 포함되어 있지 않습니다. 상품수령 시 고객님이 추가로 지불하셔야 합니다.</li>
                                <li>보험료는 배송과정에서 발생하는 분실, 도난, 파손 등으로 인한 손해에 대하여 규정에 따라 배상해 드리는 서비스입니다.</li>
                            </ul>
</div>
                    </li>
                    <li class="ec-deliv-company-shipping-info">배송안내 : <span id="deliv_company_shipping_info"></span></li>
                    <li>배송소요기간 : <span id="deliv_company_period_custom_type"></span></li>
                    <li class="displaynone" id="ordertime">주문가능 시간 : <span id="deliv_company_ordertime_custom_type"></span></li>
                    <li class="displaynone" id="areaname">
<div>배송가능 지역 : <span id="deliv_company_areaname_custom_type"></span></div>
<div class="ec-base-button"><button type="button" id="" class="btnNormal mini">배송가능지역</button></div>
</li>
                    <li></li>
                </ul>
<ul class="ec-base-help displaynone" id="store_info_view">
<li class="txtEm"><span id="store_receive_period"></span></li>
                    <li><span id="store_receive_addr"></span></li>
                    <li>영업시간 : <span id="store_office_hour"></span></li>
                    <li><span id="store_receive_map"></span> </li>
                    <li><div class="ec-base-button"><button type="button" id="btnStoreListOpen" class="btnNormal mini">수령지 안내</button></div></li>
                </ul>
<ul class="ec-base-help" id="delivery_app_info">
<li class="txtEm" id="delivery_app_shipfee_div">배송비 : <span id="delivery_app_shipfee"></span></li>
                    <li id="delivery_app_description_div">배송안내 : <span id="delivery_app_description"></span></li>
                </ul>
</div>
        </div>
    </div>

    <!-- 수령자 정보   -->
    <div id="ec-jigsaw-area-shippingInfo" class="ec-base-fold eToggle selected">
        <div id="ec-jigsaw-title-shippingInfo" class="title">
            <h2>배송지</h2>
        </div>
        <div class="contents">
            <!-- app tag -->
            <div id="ec-orderform-billingNshipping-head"></div>
            <!-- 국내배송 정보 -->
            <div class="">
                <div id="ec-jigsaw-tab-shippingInfo" class="ec-base-tab displaynone">
                    <ul>
<li id="ec-jigsaw-tab-shippingInfo-recentAddress" class=""><a href="#none">최근 배송지</a></li>
                        <li id="ec-jigsaw-tab-shippingInfo-newAddress" class="selected"><a href="#none">직접입력</a></li>
                    </ul>
</div>
                <!-- 최근배송지 -->
                <div id="ec-shippingInfo-recentAddress" class="tabCont recentShipArea " style="display: none;">
                    <div id="ec-shippingInfo-recentAddressText" class="segment">
                        <div class="ec-shop-deliveryInfoText recent">
                            <strong class="name"><span class="txtEm" id="ec-shop-deliveryInfoMainLabel"></span><span id="ec-shop-deliveryInfoName"></span></strong>
                            <p class="address gBlank10">[<span id="ec-shop-deliveryInfoZipcode"></span>] <span id="ec-shop-deliveryInfoAddress"> </span></p>
                            <dl class="contact">
<dt class="">휴대전화</dt>
                                <dd class="" id="ec-shop-deliveryInfoCell">010</dd>
                                <dt class="">일반전화</dt>
                                <dd class="" id="ec-shop-deliveryInfoTel">02</dd>
                            </dl>
</div>
                        <span class="sideRight"><button type="button" id="ec-shippingInfo-showRecentAddressList" class="btnNormal mini">배송지 목록</button></span>
                    </div>

                    <div id="ec-shippingInfo-recentAddressList" class="segment" style="display:none;">
                        <ul class="shippingList"><li class="xans-element- xans-order xans-order-deliverylist "><strong class="name"><span id="ec-shippingInfo-recentAddressList-mainLabel-" class="txtEm"></span> </strong>
<div class="description">
                                    <span class="choice"><input type="radio" id="ec-shippingInfo-recentAddressList-choice-select-" name="ec-shippingInfo-recentAddressList-choice" value="" class="fRadio" autocomplete="off"></span>
                                    <p class="address gBlank10">[<span class="ec-shippingInfo-recentAddressList-zipcode-"></span>] <span class="ec-shippingInfo-recentAddressList-addr1-"></span><br><span class="ec-shippingInfo-recentAddressList-addr2-"></span>
                                    </p>
                                    <dl class="contact">
<dt>휴대전화</dt>
                                        <dd></dd>
                                        <dt>일반전화</dt>
                                        <dd></dd>
                                    </dl>
</div>
<span class="button">
                                        <button type="button" id="ec-shippingInfo-recentAddressList-choice-modify-" class="btnText">수정</button>
                                    </span>
</li>
                        </ul>
<span class="sideRight"><button type="button" id="ec-shippingInfo-closeRecentAddressList" class="btnBase mini">닫기</button></span>
                    </div>
                </div>

                <!-- 새 배송지 -->
                <div id="ec-shippingInfo-newAddress" class="tabCont newShipArea ">
                    <div class="segment ec-shippingInfo-sameaddr ">
                        <input id="sameaddr0" name="sameaddr" fw-filter="" fw-label="1" fw-msg="" value="T" type="radio" autocomplete="off"><label for="sameaddr0">주문자 정보와 동일</label>
<input id="sameaddr1" name="sameaddr" fw-filter="" fw-label="1" fw-msg="" value="F" type="radio" checked="checked" autocomplete="off"><label for="sameaddr1">새로운 배송지</label>                    </div>
                    <div class="ec-base-table typeWrite">
                        <table border="1">
<caption>배송 정보 입력</caption>
                            <colgroup>
<col style="width:102px">
<col style="width:auto">
</colgroup>
<tbody>
<tr class="ec-shippingInfo-newAddress-name">
<th scope="row">받는사람 <span class="icoRequired">필수</span>
</th>
                                <td><input id="rname" name="rname" fw-filter="isFill" fw-label="수취자 성명" fw-msg="" class="inputTypeText" placeholder="" size="15" value="" type="text" data-gtm-form-interact-field-id="1"></td>
                            </tr>
<tr id="ec-receiver-address">
<th scope="row">주소 <span class=""><span class="icoRequired">필수</span></span>
</th>
                                <td>
                                    <ul class="ec-address">
            <li id="receiver_country_wrap" class="displaynone" style="display: none;">
                <select id="" name="" class="displaynone gCheckbox60" disabled=""><option value="">국가를 선택해주세요.</option><option value="GH">가나(GHANA)</option><option value="GA">가봉(GABON)</option><option value="GY">가이아나(GUYANA)</option><option value="GM">감비아(GAMBIA)</option><option value="GT">과테말라(GUATEMALA)</option><option value="GD">그레나다(GRENADA)</option><option value="GE">그루지야(GEORGIA)</option><option value="GR">그리스(GREECE)</option><option value="GN">기니(GUINEA)</option><option value="GW">기니비소(GUINEA-BISSAU)</option><option value="NA">나미비아(NAMIBIA)</option><option value="NG">나이지리아(NIGERIA)</option><option value="ZA">남아프리카공화국(SOUTH AFRICA)</option><option value="AN">네덜란드(네덜란드령앤틸리스)(NETHERLANDS(ANTILLES))</option><option value="NL">네덜란드(네델란드)(NETHERLANDS)</option><option value="AW">네덜란드(아루바섬)(ARUBA)</option><option value="NP">네팔(NEPAL)</option><option value="NO">노르웨이(NORWAY)</option><option value="NZ">뉴질란드(NEW ZEALAND)</option><option value="NE">니제르(NIGER)</option><option value="NI">니카라과(NICARAGUA)</option><option value="KR" selected="">대한민국(KOREA (REP OF,))</option><option value="DK">덴마크(DENMARK)</option><option value="GL">덴마크(그린란드)(GREENLAND)</option><option value="FO">덴마크(페로즈제도)(FAROE ISLANDS)</option><option value="DO">도미니카공화국(DOMINICAN REPUBLIC)</option><option value="DM">도미니카연방(DOMINICA)</option><option value="DE">독일(GERMANY)</option><option value="TL">동티모르(TIMOR-LESTE)</option><option value="LA">라오스(LAO PEOPLE'S DEM REP)</option><option value="LR">라이베리아(LIBERIA)</option><option value="LV">라트비아(LATVIA)</option><option value="RU">러시아(RUSSIAN FEDERATION)</option><option value="LB">레바논(LEBANON)</option><option value="LS">레소토(LESOTHO)</option><option value="RO">루마니아(ROMANIA)</option><option value="LU">룩셈부르크(LUXEMBOURG)</option><option value="RW">르완다(RWANDA)</option><option value="LY">리비아(LIBYAN ARAB JAMAHIRIYA)</option><option value="LI">리첸쉬테인(LIECHTENSTEIN)</option><option value="LT">리투아니아(LITHUANIA)</option><option value="MG">마다가스카르(MADAGASCAR)</option><option value="MK">마케도니아(MACEDONIA)</option><option value="MW">말라위(MALAWI)</option><option value="MY">말레이지아(MALAYSIA)</option><option value="ML">말리(MALI)</option><option value="MX">멕시코(MEXICO)</option><option value="MC">모나코(MONACO)</option><option value="MA">모로코(MOROCCO)</option><option value="MU">모리셔스(MAURITIUS)</option><option value="MR">모리타니(MAURITANIA)</option><option value="MZ">모잠비크(MOZAMBIQUE)</option><option value="ME">몬테네그로(MONTENEGRO)</option><option value="MD">몰도바(MOLDOVA, REPUBLIC OF)</option><option value="MV">몰디브(MALDIVES)</option><option value="MT">몰타(MALTA)</option><option value="MN">몽고(MONGOLIA)</option><option value="US">미국(U.S.A)</option><option value="GU">미국(괌)(GUAM)</option><option value="MH">미국(마아샬제도)(MARSHALL ISLANDS)</option><option value="VI">미국(버진제도)(VIRGIN ISLANDS U.S.)</option><option value="WS">미국(사모아, 구 서사모아)(SAMOA)</option><option value="AS">미국(사모아제도)(AMERICAN SAMOA)</option><option value="MP">미국(사이판)(NORTHERN MARIANA ISLANDS)</option><option value="PW">미국(팔라우섬)(PALAU)</option><option value="PR">미국(푸에르토리코섬)(PUERTO RICO)</option><option value="MM">미얀마(MYANMAR)</option><option value="FM">미크로네시아(마이크로네시아)(MICRONESIA)</option><option value="VU">바누아투(VANUATU)</option><option value="BH">바레인(BAHRAIN)</option><option value="BB">바베이도스(BARBADOS)</option><option value="BS">바하마(BAHAMAS)</option><option value="BD">방글라데시(BANGLADESH)</option><option value="VE">베네수엘라(VENEZUELA)</option><option value="BJ">베넹(BENIN)</option><option value="VN">베트남(VIET NAM)</option><option value="BE">벨기에(BELGIUM)</option><option value="BY">벨라루스(BELARUS)</option><option value="BZ">벨리세(BELIZE)</option><option value="BA">보스니아헤르체코비나(Bosnia and Herzegovina)</option><option value="BW">보츠와나(BOTSWANA)</option><option value="BO">볼리비아(BOLIVIA)</option><option value="BF">부르키나파소(BURKINA FASO)</option><option value="BT">부탄(BHUTAN)</option><option value="BG">불가리아(BULGARIA(REP))</option><option value="BR">브라질(BRAZIL)</option><option value="BN">브루네이(나이)(BRUNEI DARUSSALAM)</option><option value="BI">브룬디(BURUNDI)</option><option value="SA">사우디아라비아(SAUDI ARABIA)</option><option value="CY">사이프러스(CYPRUS)</option><option value="SM">산마리노(SAN MARINO)</option><option value="SN">세네갈(SENEGAL)</option><option value="RS">세르비아/코소보(SERBIA/KOSOVO)</option><option value="SC">세이셸(SEYCHELLES)</option><option value="LC">세인트 루시아(SAINT LUCIA)</option><option value="VC">세인트빈센트그레나딘(SAINT VINCENT AND THE GRENADINES)</option><option value="KN">세인트키츠네비스(SAINT KITTS AND NEVIS)</option><option value="SB">솔로몬아일란드(SOLOMON ISLANDS)</option><option value="SR">수리남(SURINAME)</option><option value="LK">스리랑카(SRI LANKA)</option><option value="SZ">스와질랜드(SWAZILAND)</option><option value="SE">스웨덴(SWEDEN)</option><option value="CH">스위스(SWITZERLAND)</option><option value="ES">스페인(에스파니아)(SPAIN)</option><option value="SK">슬로바키아(SLOVAKIA)</option><option value="SI">슬로베니아(SLOVENIA)</option><option value="SL">시에라리온(SIERRA LEONE)</option><option value="SG">싱가포르(SINGAPORE)</option><option value="AE">아랍에미레이트연합국(UNITED ARAB EMIRATES)</option><option value="AM">아르메니아(ARMENIA)</option><option value="AR">아르헨티나(ARGENTINA)</option><option value="IS">아이슬란드(ICELAND)</option><option value="HT">아이티(HAITI)</option><option value="IE">아일란드(에이레)(IRELAND)</option><option value="AZ">아제르바이잔(AZERBAIJAN)</option><option value="AF">아프가니스탄(AFGHANISTAN)</option><option value="AD">안도라(ANDORRA)</option><option value="AL">알바니아(ALBANIA)</option><option value="DZ">알제리(ALGERIA)</option><option value="AO">앙골라(ANGOLA)</option><option value="AG">앤티과바부다(ANTIGUA AND BARBUDA)</option><option value="ER">에리트리아(ERITREA)</option><option value="EE">에스토니아(ESTONIA)</option><option value="EC">에콰도르(ECUADOR)</option><option value="SV">엘살바도르(EL SALVADOR)</option><option value="GB">영국(UNITED KINGDOM)</option><option value="MS">영국(몽세라)(MONTSERRAT)</option><option value="BM">영국(버뮤다섬)(BERMUDA)</option><option value="VG">영국(버진제도)(VIRGIN ISLANDS BRITISH)</option><option value="AI">영국(안귈라섬)(ANGUILLA)</option><option value="GI">영국(지브롤터)(GIBRALTAR)</option><option value="KY">영국(케이만제도)(CAYMAN ISLANDS)</option><option value="TC">영국(터크스케이코스제도)(TURKS AND CAICOS ISLANDS)</option><option value="YE">예멘(YEMEN)</option><option value="OM">오만(OMAN)</option><option value="NF">오스트레일리아(노퍽섬)(NORFOLK ISLAND)</option><option value="AU">오스트레일리아(호주)(AUSTRALIA)</option><option value="AT">오스트리아(AUSTRIA)</option><option value="HN">온두라스(HONDURAS)</option><option value="JO">요르단(JORDAN)</option><option value="UG">우간다(UGANDA)</option><option value="UY">우루과이(URUGUAY)</option><option value="UZ">우즈베크(UZBEKISTAN)</option><option value="UA">우크라이나(UKRAINE)</option><option value="ET">이디오피아(ETHIOPIA)</option><option value="IQ">이라크(IRAQ)</option><option value="IR">이란(IRAN(ISLAMIC REP))</option><option value="IL">이스라엘(ISRAEL)</option><option value="EG">이집트(EGYPT)</option><option value="IT">이탈리아(이태리)(ITALY)</option><option value="IN">인도(INDIA)</option><option value="ID">인도네시아(INDONESIA)</option><option value="JP">일본(JAPAN)</option><option value="JM">자메이카(JAMAICA)</option><option value="ZM">잠비아(ZAMBIA)</option><option value="CN">중국(CHINA(PEOPLE'S REP))</option><option value="MO">중국(마카오)(MACAU)</option><option value="HK">중국(홍콩)(HONG KONG)</option><option value="CF">중앙 아프리카(CENTRAL AFRICAN REPUBLIC)</option><option value="DJ">지부티(DJIBOUTI)</option><option value="ZW">짐바브웨(ZIMBABWE)</option><option value="TD">차드(CHAD)</option><option value="CZ">체코(CZECH REP)</option><option value="CL">칠레(CHILE)</option><option value="CM">카메룬(CAMEROON)</option><option value="CV">카보베르데(CAPE VERDE)</option><option value="KZ">카자흐(KAZAKHSTAN)</option><option value="QA">카타르(QATAR)</option><option value="KH">캄보디아(CAMBODIA)</option><option value="CA">캐나다(CANADA)</option><option value="KE">케냐(KENYA)</option><option value="CR">코스타리카(COSTA RICA)</option><option value="CI">코트디봐르(COTE D IVOIRE)</option><option value="CO">콜롬비아(COLOMBIA)</option><option value="CG">콩고(CONGO)</option><option value="CU">쿠바(CUBA)</option><option value="KW">쿠웨이트(KUWAIT)</option><option value="HR">크로아티아(CROATIA)</option><option value="KG">키르키즈스탄(KYRGYZSTAN)</option><option value="KI">키리바티(KIRIBATI)</option><option value="TH">타이(태국)(THAILAND)</option><option value="TW">타이완(대만)(TAIWAN)</option><option value="TJ">타지키스탄(TAJIKISTAN)</option><option value="TZ">탄자니아(TANZANIA(UNITED REP))</option><option value="TR">터키(TURKEY)</option><option value="TG">토고(TOGO)</option><option value="TO">통가(TONGA)</option><option value="TM">투르크메니스탄(TURKMENISTAN)</option><option value="TV">투발루(TUVALU)</option><option value="TN">튀니지(TUNISIA)</option><option value="TT">트리니다드토바고(TRINIDAD AND TOBAGO)</option><option value="PA">파나마(PANAMA(REP))</option><option value="PY">파라과이(PARAGUAY)</option><option value="PK">파키스탄(PAKISTAN)</option><option value="PG">파푸아뉴기니(PAPUA NEW GUINEA)</option><option value="PE">페루(PERU)</option><option value="PT">포르투갈(PORTUGAL)</option><option value="PL">폴란드(POLAND(REP))</option><option value="FR">프랑스(FRANCE)</option><option value="GP">프랑스(과데루프섬)(GUADELOUPE)</option><option value="GF">프랑스(기아나)(FRENCH GUIANA)</option><option value="NC">프랑스(뉴칼레도니아섬)(NEW CALEDONIA)</option><option value="RE">프랑스(레위니옹섬)(REUNION)</option><option value="MQ">프랑스(마르티니크섬)(MARTINIQUE)</option><option value="PF">프랑스(폴리네시아)(FRENCH POLYNESIA)</option><option value="FJ">피지(FIJI)</option><option value="FI">필란드(FINLAND)</option><option value="PH">필리핀(PHILIPPINES)</option><option value="HU">헝가리(HUNGARY(REP))</option></select>
                <span id="receiver_directInputCheck_wrap" class="ec-base-label">
                                    <input id="receiver_directInputCheck" name="receiver_directInputCheck" type="checkbox" disabled="">
                                    <label id="receiver_directInputCheckLabel" for="receiver_directInputCheckLabel">직접입력</label>
                                  </span>
            </li>
        
           
        
            
        
            <li id="receiver_state_wrap" class="displaynone" style="display: none;">
                <select id="ju_do_us_r" name="ju_do_us_r" class="displaynone" disabled="" fw-filter="" style="display: none;">
                            <option value="">주/도를 선택해주세요</option>
                        </select><select id="ju_do_ca_r" name="ju_do_ca_r" class="displaynone" disabled="" style="display: none;" fw-filter="">
                            <option value="">주/도를 선택해주세요</option>
                        </select><input id="ju_do_r" name="ju_do_r" placeholder="주/도" fw-filter="" class="inputTypeText displaynone" type="text" size="30" maxlength="50" disabled="" style="display: none;">
            </li>
        
            <li id="receiver_city_wrap" class="displaynone" style="display: none;">
                <input id="si_gun_dosi_r" name="si_gun_dosi_r" placeholder="시/군/도시" fw-filter="" class="inputTypeText displaynone" type="text" size="30" maxlength="50" disabled="" style="display: none;">
            </li>
        
            <li id="receiver_street_wrap" class="displaynone">
                <input id="gu_name_addr_r" name="gu_name_addr_r" placeholder="ADDR.COMMON.FORMATSTREET.KR" fw-filter="" class="inputTypeText displaynone" type="text" size="30" maxlength="50" disabled="" style="display: none;">
            </li>
        
            <li id="receiver_area_wrap" class="ec-address-area displaynone" style="display: none;">
                <select id="si_name_r" name="si_name_r" class="displaynone" disabled="" fw-filter="" style="display: none;">
                                <option value="">ADDR.COMMON.FORMATSELECT.STATE.KR</option>
                            </select><select id="ci_name_r" name="ci_name_r" class="displaynone" disabled="" style="display: none;" fw-filter="">
                            <option value="">ADDR.COMMON.FORMATSELECT.CITY.KR</option>
                        </select><select id="gu_name_r" name="gu_name_r" class="displaynone" disabled="" style="display: none;" fw-filter="">
                            <option value="">ADDR.COMMON.FORMATSELECT.STREET.KR</option>
                        </select>
            </li>
        
            <li id="receiver_zipcode_wrap" class="ec-address-zipcode" style="">
                <input id="rzipcode1" name="rzipcode1" placeholder="우편번호" fw-filter="isLengthRange[1][14]" class="inputTypeText" type="text" maxlength="14" readonly="" fw-label="우편번호" style=""> <button id="btn_search_rzipcode" class="btnBasic" type="button" style="cursor: pointer;">주소검색</button><span class="ec-base-label">
                                        <input id="no_rzipcode0" name="no_rzipcode0" class="displaynone" type="checkbox" disabled="" fw-filter="" style="display: none; cursor: unset;">
                                        <label id="receiver_zipcode_check_label" for="no_rzipcode0" class="displaynone" disabled="" style="display: none;" fw-filter="">우편번호 없음</label>
                                    </span><span id="receiver_zipcodeNotFoundMsg_wrap" class="ec-base-label displaynone">
                                    우편번호가 정확하지 않습니다. 다시 확인해 주세요.
                                  </span>
            </li><li id="receiver_baseAddr_wrap" class="" style="">
                <input id="raddr1" name="raddr1" placeholder="기본주소" fw-filter="isFill" class="inputTypeText" type="text" size="60" maxlength="100" readonly="" fw-label="기본주소" style="">
            </li><li id="receiver_detailAddr_wrap" class="" style="">
                <input id="raddr2" name="raddr2" placeholder="나머지 주소" fw-filter="isFill" class="inputTypeText" type="text" size="60" maxlength="255" fw-label="나머지 주소" style="">
            </li>
        </ul>                                </td>
                            </tr>
<tr class="ec-shippingInfo-receiverPhone ">
<th scope="row">일반전화 <span class="displaynone"><span class="icoRequired">필수</span></span>
</th>
                                <td><div class="ec-base-mail"><select id="rphone1_1" name="rphone1_[]" fw-filter="isNumber" fw-label="수취자 전화번호" fw-alone="N" fw-msg="">
<option value="02">02</option>
<option value="031">031</option>
<option value="032">032</option>
<option value="033">033</option>
<option value="041">041</option>
<option value="042">042</option>
<option value="043">043</option>
<option value="044">044</option>
<option value="051">051</option>
<option value="052">052</option>
<option value="053">053</option>
<option value="054">054</option>
<option value="055">055</option>
<option value="061">061</option>
<option value="062">062</option>
<option value="063">063</option>
<option value="064">064</option>
<option value="0502">0502</option>
<option value="0503">0503</option>
<option value="0504">0504</option>
<option value="0505">0505</option>
<option value="0506">0506</option>
<option value="0507">0507</option>
<option value="070">070</option>
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
<option value="0508">0508</option>
</select>-<input id="rphone1_2" name="rphone1_[]" maxlength="4" fw-filter="isNumber" fw-label="수취자 전화번호" fw-alone="N" fw-msg="" size="4" value="" type="text">-<input id="rphone1_3" name="rphone1_[]" maxlength="4" fw-filter="isNumber" fw-label="수취자 전화번호" fw-alone="N" fw-msg="" size="4" value="" type="text"></div></td>
                            </tr>
<tr class="ec-shippingInfo-receiverCell ">
<th scope="row">휴대전화 <span class=""><span class="icoRequired">필수</span></span>
</th>
                                <td><div class="ec-base-mail"><select id="rphone2_1" name="rphone2_[]" fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호" fw-alone="N" fw-msg="">
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
</select>-<input id="rphone2_2" name="rphone2_[]" maxlength="4" fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호" fw-alone="N" fw-msg="" placeholder="" size="4" value="" type="text">-<input id="rphone2_3" name="rphone2_[]" maxlength="4" fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호" fw-alone="N" fw-msg="" placeholder="" size="4" value="" type="text"></div></td>
                            </tr>

</tbody>
</table>
</div>
                </div>
                <!-- 안심번호 서비스 사용 -->
                <div class="ec-shippingInfo-safePhone segment unique displaynone">
                    <div class="safePhone">
                        <span class="useCheck"></span>
                        <a href="/order/ec_orderform/popup/safePhone.html" target="_blank" class="txtLink">안내</a>
                    </div>
                </div>
            </div>

            <!-- 해외배송 정보 -->
            <div id="ec-shippingInfo-overseaAddress" class="displaynone">
                <div class="ec-base-table typeWrite">
                    <table border="1">
<caption>배송 정보 입력</caption>
                        <colgroup>
<col style="width:102px">
<col style="width:auto">
</colgroup>
<tbody>
<tr class="ec-shippingInfo-newAddress-name">
<th scope="row">받는사람 <span class="icoRequired">필수</span>
</th>
                            <td>
                                                                <p class="ec-base-help">해외배송인 경우 영문으로 작성해 주세요.</p>
                            </td>
                        </tr>
<tr id="ec-freceiver-address">
<th scope="row">주소 <span class="displaynone"><span class="icoRequired">필수</span></span>
</th>
                            <td>
                                                            </td>
                        </tr>
<tr class="ec-shippingInfo-receiverPhone ">
<th scope="row">일반전화 <span class="icoRequired">필수</span>
</th>
                            <td><div class="ec-base-mail"></div></td>
                        </tr>
<tr class="ec-shippingInfo-receiverCell ">
<th scope="row">휴대전화 <span class="icoRequired">필수</span>
</th>
                            <td><div class="ec-base-mail"></div></td>
                        </tr>

<tr id="ec-shop-receiver_id_card_key" class="displaynone">
<th scope="row">통관정보 <span class="icoRequired">필수</span>
</th>
                            <td>
                                                                <span class="gBlank10"></span>
                                <p id="ec-shop-receiver_id_card_type_msg" class="ec-base-help"></p>
                            </td>
                        </tr>
<tr class="ec-shop-overseaShippingFee shippingPrice ">
<th scope="row">배송비 <span class="icoRequired">필수</span>
</th>
                            <td>
                                <div class="ec-shop-shipping_additional_fee_show displaynone">
                                    <p class="gBreak5"><span class="txtEm"><span id="f_addr_total_ship_fee_id"></span></span></p>
                                    <div class="ec-base-table gCellNarrow">
                                        <table border="1">
<caption>배송비 상세</caption>
                                            <colgroup>
<col style="width:113px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">해외배송비</th>
                                                <td class="right"><span id="f_addr_delv_price_id"></span></td>
                                            </tr>
<tr class="displaynone">
<th scope="row">보험료</th>
                                                <td class="right">+<span id="f_addr_insurance_price_id"></span></td>
                                            </tr>
<tr class="ec-shop-shipping_additional_fee_name_show">
<th scope="row"><span id="f_addr_shipping_additional_fee_name_id"></span></th>
                                                <td class="right">+<span id="f_addr_shipping_additional_fee_id"></span></td>
                                            </tr>
</tbody>
</table>
</div>
                                    <p class="ec-base-help typeDash displaynone">보험료는 배송과정에서 발생하는 분실, 도난, 파손 등으로 인한 손해에 대하여 규정에 따라 배상해 드리는 서비스입니다.</p>
                                </div>
                                <div class="ec-shop-shipping_additional_fee_hide ">
                                    <p class="gBreak5"><span class="txtEm"><span id="f_addr_total_ship_fee_id"></span></span></p>
                                    <div class="ec-base-table gCellNarrow">
                                        <table border="1">
<caption>배송비 상세</caption>
                                            <colgroup>
<col style="width:113px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">해외배송비</th>
                                                <td class="right"><span id="f_addr_delv_price_id"></span></td>
                                            </tr>
<tr class="displaynone">
<th scope="row">보험료</th>
                                                <td class="right">+<span id="f_addr_insurance_price_id"></span></td>
                                            </tr>
</tbody>
</table>
</div>
                                    <ul class="ec-base-help typeDash">
<li>배송비에는 관세 및 세금 등의 각종 비용은 포함되어 있지 않습니다. 상품수령 시 고객님이 추가로 지불하셔야 합니다.</li>
                                        <li class="displaynone">보험료는 배송과정에서 발생하는 분실, 도난, 파손 등으로 인한 손해에 대하여 규정에 따라 배상해 드리는 서비스입니다.</li>
                                    </ul>
</div>
                            </td>
                        </tr>
</tbody>
</table>
</div>
            </div>

            <!-- app 배송지정보 -->
            <div id="ec-appshippingInfo" style="display: none;">
            </div>

            <!-- 국내배송 메시지 -->
            <div class="ec-shippingInfo-shippingMessage segment unique  ">
                <select id="omessage_select" name="omessage_select" fw-filter="" fw-label="배송 메세지" fw-msg="">
<option value="oMessage-0" selected="selected">-- 메시지 선택 (선택사항) --</option>
<option value="oMessage-1">배송 전에 미리 연락바랍니다.</option>
<option value="oMessage-2">부재 시 경비실에 맡겨주세요.</option>
<option value="oMessage-3">부재 시 문 앞에 놓아주세요.</option>
<option value="oMessage-4">빠른 배송 부탁드립니다.</option>
<option value="oMessage-5">택배함에 보관해 주세요.</option>
<option value="oMessage-input">직접 입력</option>
</select>                <div class="ec-shippingInfo-omessageInput gBlank10" style="display:none;">
                    <textarea id="omessage" name="omessage" fw-filter="" fw-label="배송 메세지" fw-msg="" maxlength="255" cols="70"></textarea>                    <div class="gBlank10 displaynone">
                        <label><input id="omessage_autosave0" name="omessage_autosave[]" fw-filter="" fw-label="배송 메세지 저장" fw-msg="" value="T" type="checkbox" disabled=""><label for="omessage_autosave0"></label>[]에 자동 저장</label>
                        <ul class="ec-base-help">
<li>게시글은 비밀글로 저장되며 비밀번호는 주문번호 뒷자리로 자동 지정됩니다.</li>
                        </ul>
</div>
                </div>
            </div>

            <!-- 해외배송 메시지 -->
            <div class="ec-shippingInfo-shippingMessage segment unique displaynone ">
                                <div class="ec-shippingInfo-omessageInput gBlank10" style="display:none;">
                                        <div class="gBlank10 displaynone">
                        <label>[]에 자동 저장</label>
                        <ul class="ec-base-help">
<li>게시글은 비밀글로 저장되며 비밀번호는 주문번호 뒷자리로 자동 지정됩니다.</li>
                        </ul>
</div>
                </div>
            </div>

            <!-- 국내배송 기본 배송지 사용 -->
            <div class="ec-shippingInfo-newAddress-setMain segment displaynone" style="display: block;">
                <input id="set_main_address0" name="set_main_address[]" fw-filter="" fw-label="기본 배송지로 저장" fw-msg="" value="T" type="checkbox" disabled=""><label for="set_main_address0">기본 배송지로 저장</label>            </div>

            <!-- app tag -->
            <div id="ec-orderform-billingNshipping-tail"></div>

            <!-- [비회원주문] 간편 회원가입, 비회원 비밀번호 입력 -->
            <ec-jigsaw id="guest"><ec-jigsawpiece id="simpleJoinByOrderForm"><!--
                이 파일은 원터치 주문서의 읽기 전용 파일입니다.
                이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
                원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
        --><!-- 주문서 간편 회원가입 -->
    </ec-jigsawpiece><ec-jigsawpiece print="always"><!-- app tag --><div id="ec-orderform-guest-head"></div>

        <!-- 비회원 주문조회 -->
        <div class="pannelArea ec-orderform-NoMemberPasswdRow ">
            <div class="title">
                <h2>비회원 주문조회 비밀번호</h2>
            </div>
            <div class="contents">
                <div class="ec-base-table typeWrite">
                    <table border="1">
<caption>비회원 주문조회</caption>
                        <colgroup>
<col style="width:122px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">비밀번호</th>
                            <td>
                                <input id="order_password" name="order_password" fw-filter="isFill" fw-label="비회원결제 비밀번호" fw-msg="" size="7" maxlength="16" value="" type="password" data-gtm-form-interact-field-id="0">                                <span id="order_password_alert" class="ec-base-help txtWarn gBlank5">사용할 수 없는 비밀번호입니다.</span>
                                <span id="order_password_msg" class="ec-base-help gBlank5"> (영문대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</span>
                            </td>
                        </tr>
<tr>
<th scope="row">비밀번호 확인</th>
                            <td>
                                <input id="order_password_confirm" name="order_password_confirm" fw-filter="isFill&amp;isMatch[order_password]" fw-label="비회원결제 비밀번호 확인" fw-msg="" size="7" maxlength="16" value="" type="password">                                <span id="order_password_confirm_alert" class="ec-base-help txtWarn gBlank5">비밀번호가 일치하지 않습니다.</span>
                            </td>
                        </tr>
</tbody>
</table>
</div>
            </div>
        </div>

        <!-- app tag -->
        <div id="ec-orderform-guest-tail"></div>
    </ec-jigsawpiece></ec-jigsaw>
</div>
    </div>

    <!-- 정기배송 -->
    <div id="ec-jigsaw-area-subscriptionStartDate" class="ec-base-fold eToggle displaynone selected">
        <div id="ec-jigsaw-title-subscriptionStartDate" class="title">
            <h2>정기배송시작일</h2>
            <span id="ec-jigsaw-heading-subscriptionStartDate" class="txtStrong gRight" style="display: none;">
                    <span id="ec-subscriptionStartDate-date">
                        <span id="ec-subscriptionStartDate"></span> <span id=""></span>요일
                    </span>
                </span>
        </div>
        <div class="contents">
            <div class="deliveryDate">
                <strong class="heading">배송시작일 <span class="txtEm">*</span></strong>
                                <p class="ec-base-help txtEm">(결제일 : 주기별 배송시작일의 1일 전)</p>
            </div>
        </div>
    </div>

    <!-- 희망배송일   -->
    <div id="ec-jigsaw-area-hopeShippingDate" class="ec-base-fold eToggle displaynone">
        <div id="ec-jigsaw-title-hopeShippingDate" class="title">
            <h2>희망배송일</h2>
            <span id="ec-jigsaw-heading-hopeShippingDate" class="txtStrong gRight">
                <span id="ec-hopeShippingDate-date">
                    <span id="ec-hopeShippingDate"></span> <span id="ec-hopeShippingDay"></span>요일
                </span>
                <span id="ec-hopeShippingDate-fast"></span>
            </span>
        </div>
        <div class="contents">
            <!-- 국내배송 희망배송일 -->
            <div class="segment ">
                <div class="hopeDeliveryDate">
                                    </div>
                <p class="ec-base-help"><span class="txtEm"> 이후로 선택 가능합니다.</span></p>
                <span class="gBlank20"></span>
            </div>
            <!-- 해외배송 희망배송일 -->
            <div class="segment displaynone">
                <div class="hopeDeliveryDate">
                                     </div>
                <p class="ec-base-help"><span class="txtEm"> 이후로 선택 가능합니다.</span></p>
                <span class="gBlank20"></span>
            </div>
        </div>
    </div>

    <!-- 희망배송시간  -->
    <div id="ec-jigsaw-area-hopeShippingTime" class="ec-base-fold eToggle displaynone">
        <div id="ec-jigsaw-title-hopeShippingTime" class="title">
            <h2>희망배송시간</h2>
            <span id="ec-jigsaw-heading-hopeShippingTime" class="txtStrong gRight"></span>
        </div>
        <div class="contents">
            <!-- 국내배송 희망배송시간 -->
            <div class="segment ">
                                <span class="gBlank20"></span>
            </div>
            <!-- 해외배송 희망배송시간 -->
            <div class="segment displaynone">
                                <span class="gBlank20"></span>
            </div>
        </div>
    </div>

    <!-- 배송MSA_APP 배송 방법 -->
    <div class="ec-base-fold eToggle selected appShippingMethod displaynone">
        <div class="title">
            <h2>배송 방법</h2>
        </div>
        <div class="contents info shipping_method_message">
            <p><span id="shipping_method_message"></span></p>
        </div>
        <div class="contents" style="display:none;">
            <div class="segment split shipping_method_select_template">
                <label class="gStretch"><input id="app_shipping_method" name="app_shipping_method" type="radio" autocomplete="off" disabled=""></label>
                <strong class="price"></strong>
            </div>
        </div>
        <div class="contents shipping_method_select" id="shipping_method_select">
        </div>
    </div>
</div>
<!-- [추가정보입력] 추가입력, 기타문의사항 -->
<!--
        이 파일은 원터치 주문서의 읽기 전용 파일입니다.
        이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
        원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
-->
<div id="ec-jigsaw-area-additionalInput" class="ec-base-fold eToggle selected displaynone">
    <div id="ec-jigsaw-title-additionalInput" class="title">
        <h2>추가입력</h2>
    </div>
    <div class="contents">
        <!-- app tag -->
        <div id="ec-orderform-additionalInput-head"></div>
        <!-- 추가입력 -->
        <div class="addArea displaynone">
            <div class="ec-base-table typeWrite">
                <table border="1">
<caption>추가입력</caption>
                    <colgroup>
<col style="width:115px">
<col style="width:auto">
</colgroup><tbody class="xans-element- xans-order xans-order-ordadd"><tr class="">
<th scope="row"> <span class=""></span>
</th>
                        <td></td>
                    </tr>
</tbody>
</table>
</div>
        </div>
        <!-- 기타 문의사항 -->
        <div class="questionArea displaynone">
            <div class="ec-base-table typeWrite">
                <table border="1">
<caption>기타 문의사항</caption>
                    <colgroup>
<col style="width:115px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">기타 문의사항</th>
                        <td>
                            <textarea id="question" name="question" fw-filter="" fw-label="기타문의사항" fw-msg="" maxlength="255" cols="70"></textarea>                            <p class="ec-base-help"><a href="/board/product/list.html?board_no=6" target="_blank">상품 Q&amp;A</a>에 자동 저장됩니다.</p>
                        </td>
                    </tr>
<tr>
<th scope="row">비밀번호</th>
                        <td><input id="question_passwd" name="question_passwd" fw-filter="" fw-label="기타문의사항 비밀번호" fw-msg="" value="" type="password" disabled=""> <p class="ec-base-help displaynone">영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자</p>
</td>
                    </tr>
</tbody>
</table>
</div>
        </div>
        <!-- app tag -->
        <div id="ec-orderform-additionalInput-tail"></div>
    </div>
</div>
<!-- [주문상품] -->
<!--
        이 파일은 원터치 주문서의 읽기 전용 파일입니다.
        이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
        원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
-->
<div id="ec-jigsaw-area-orderProduct" class="ec-base-fold eToggle selected">
    <div id="ec-jigsaw-title-orderProduct" class="title">
        <h2>주문상품</h2>
        <span id="ec-jigsaw-heading-orderProduct" class="txtStrong gRight" style="display: none;">1개</span>
    </div>
    <div class="contents">
        <!-- app tag -->
        <div id="ec-orderform-orderProduct-head"></div>

        <!-- 국내배송상품 주문내역 -->
        <div class="orderArea ">
            <!-- 기본배송 -->
            <div class="xans-element- xans-order xans-order-normallist"><!-- 참고: 상품반복 -->
<div class="ec-base-prdInfo xans-record-">
                    <div class="prdBox">
                        <div class="displaynone"><input id="chk_order_cancel_list0" name="chk_order_cancel_list_basic0" value="670:000C:F:865491" type="checkbox" disabled=""></div>
                        <div class="thumbnail"><a href="/product/detail.html?product_no=670&amp;cate_no=278"><img src="//okdoctordog.com/web/product/tiny/202303/b0595d4b07b3ac6366d1cd95717a4046.jpg" alt="" width="90" height="90"></a></div>
                        <div class="description">
                            <strong class="prdName" title="상품명"> <a href="/product/닥터독-그레인프리-참치-사료-16kg/670/category/278/" class="ec-product-name">닥터독 그레인프리 참치 사료 1.6kg</a></strong>
                            <ul class="info">
<li class="displaynone">무이자할부 상품</li>
                                <li title="유효기간" class="displaynone"> 내 사용</li>
                                <li title="옵션">
                                    <p class="option ">[옵션: 그레인프리 연어 1.6kg (+26,500)]</p>
                                    </li>
                                <li>수량: 1개</li>
                                <li id="" class="displaynone">
                                    할인금액: <span class="txtWarn">-<span id="">0</span> </span>
                                    <span class="txtWarn displaynone">()</span>
                                </li>
                                <li class="displaynone" title="배송">[무료] / 기본배송 </li>
                                <li class="displaynone" title="배송주기">배송주기 : <span class="txtEm"></span>
</li>
                                <li id="product_mileage0" class="mileage displaynone" title="적립금">-</li>
                                <li class="displaynone">상품중량 : 1.00kg * 1개 = 1.00kg</li>
                            </ul>
<div class="proPrice">
                                <span class="displaynone">55,500</span>
                                <span class="displaynone"></span>
                                <span class="display">
                                    <span id="">55,500 </span>
                                    <span class="displaynone">()</span>
                                </span>
                            </div>
                        </div>
                        <button type="button" class="btnRemove " id="btn_product_one_delete_id0" prd="670:000C:F:865491" set_prd_type="">삭제</button>
                    </div>
                </div>
<!-- //참고 -->
<!-- 참고: 상품반복 -->
<!-- //참고 -->
</div>
            <div class="totalPrice ">
                <div class="title">
                    <h3>배송비</h3>
                    <span class="deliveryFee"><span id="domestic_ship_fee">0 (무료)</span></span>
                </div>
            </div>

            <!-- 업체기본배송 -->
                        <div class="totalPrice displaynone">
                <div class="title">
                    <h3>배송비</h3>
                    <span class="deliveryFee"><span id=""></span></span>
                </div>
            </div>

            <!-- 개별배송 -->
                        <div class="totalPrice displaynone">
                <div class="title">
                    <h3>배송비</h3>
                    <span class="deliveryFee"><span id=""></span></span>
                </div>
            </div>
        </div>

        <!-- 해외배송상품 주문내역 -->
        <div class="orderArea displaynone">
                        <div class="totalPrice ">
                <div class="title">
                    <h3>배송비</h3>
                    <span class="deliveryFee"><span id="f_list_total_delv_price_id"></span></span>
                </div>
            </div>
        </div>
        <div class="totalWeight displaynone">전체 상품중량 : <span>1.00kg</span>
</div>

        <!-- app tag -->
        <div id="ec-orderform-orderProduct-tail"></div>
    </div>
    <div id="ec-shop-directbuy-order-product-info" class="displaynone"></div>
</div>
<!-- [사은품] -->
<div id="ec-shop-gift_orderform">
<script>(function(i, s, o, g, r) {
    var a = s.createElement(o);
    var m = s.getElementsByTagName(o)[0];
    a.src = g;
    a.onload = function() {
        if (i[r].init) {
            i[r].init('https://js-error-tracer-api.cafe24.com', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodWNoZXVtLmNhZmUyNC5jb20iLCJhdWQiOiJqcy1lcnJvci10cmFjZXItYXBpLmNhZmUyNC5jb20iLCJtYWxsX2lkIjoiaHVjaGV1bSIsInNob3Bfbm8iOjEsInBhdGhfcm9sZSI6IkVUQyIsImxhbmd1YWdlX2NvZGUiOiJrb19LUiIsImNvdW50cnlfY29kZSI6IktSIiwib3JpZ2luIjoiaHR0cHM6XC9cL29rZG9jdG9yZG9nLmNvbSIsImlzX2NvbnRhaW5lciI6ZmFsc2UsImhvc3RuYW1lIjoidXhlMDMyOCJ9.Yi7Y2aAtQMeq406fbZwgDdnSe5ePBt0VN-9EwKnU530', {"errors":{"path":"\/api\/v1\/store","collectWindowErrors":true,"preventDuplicateReports":true,"storageKeyPrefix":"EC_JET.ETC","samplingEnabled":true,"samplingRate":0.5},"vitals":{"path":"\/api\/v1\/vitals","samplingEnabled":true,"samplingRate":0.1},"resources":{"path":"\/api\/v1\/resources","samplingEnabled":true,"samplingRate":0.5,"durationThreshold":2000}});
        }
    };
    m.parentNode.insertBefore(a, m);
}(window, document, 'script', '//optimizer.poxo.com/jet/jet.js', 'EC_JET'));</script>
<script type="text/javascript">window.CAFE24 = window.CAFE24 || {};CAFE24.ROUTE = {"is_mobile":false,"is_need_route":false,"language_code":"ZZ","path":{"origin":"\/order\/ec_orderform\/gift.html","result":"\/order\/ec_orderform\/gift.html","prefix":""},"shop_no":0,"skin_code":"default","support_language_list":{"ar":"ar_EG","ar-EG":"ar_EG","de":"de_DE","de-DE":"de_DE","en":"en_US","en-IN":"en_IN","en-PH":"en_PH","en-US":"en_US","es":"es_ES","es-ES":"es_ES","hi":"hi_IN","hi-IN":"hi_IN","id":"id_ID","id-ID":"id_ID","it":"it_IT","it-IT":"it_IT","ja":"ja_JP","ja-JP":"ja_JP","ko":"ko_KR","ko-KR":"ko_KR","ms":"ms_MY","ms-MY":"ms_MY","pt":"pt_PT","pt-PT":"pt_PT","ru":"ru_RU","ru-RU":"ru_RU","th":"th_TH","th-TH":"th_TH","tr":"tr_TR","tr-TR":"tr_TR","vi":"vi_VN","vi-VN":"vi_VN","zh":"zh_CN","zh-CN":"zh_CN","zh-HK":"zh_HK","zh-MO":"zh_MO","zh-SG":"zh_SG","zh-TW":"zh_TW"}};</script><script type="text/javascript">if (typeof EC_ROUTE === "undefined") {
    /**
     * 프론트용 라우트 플러그인
     * @type {{bInit: boolean, init: EC_ROUTE.init}}
     * CAFE24.ROUTE 참조
     */
    var EC_ROUTE = {
        EC_DOMAIN_PATH_INFO: 'EC_DOMAIN_PATH_INFO',
        bInit: false,
        aFromList: [],
        aToList: [],
        aCleanFilter: null,
        init: function () {
            if (this.bInit || typeof CAFE24.ROUTE === 'undefined') {
                return;
            }
            this.bInit = true;
            this.aCleanFilter = [
                /^shop[1-9][0-9]*$/,
                /^(m|p)$/,
                new RegExp('^(' + Object.keys(CAFE24.ROUTE.support_language_list).join('|')  + ')$'),
                /^skin-(base|skin[1-9][0-9]*|mobile[0-9]*)$/,
            ];
        },
        isNeedRoute: function ()
        {
            return CAFE24.ROUTE.is_need_route;
        },
        /**
         *
         * @param iShopNo
         * @param bMobile
         * @param sFrontLanguage
         * @param sSkinCode
         * @returns {*|string}
         */
        getUrlDomain: function (iShopNo, bMobile, sFrontLanguage, sSkinCode)
        {
            var oRouteConfig = {};
            if (typeof iShopNo == 'undefined') {
                oRouteConfig.shop_no = CAFE24.SDE_SHOP_NUM;
            } else {
                oRouteConfig.shop_no = iShopNo;
            }
            if (typeof bMobile == 'undefined') {
                oRouteConfig.is_mobile = false;
            } else {
                oRouteConfig.is_mobile = bMobile;
            }
            if (typeof sFrontLanguage == 'undefined') {
                oRouteConfig.language_code = '';
            }else {
                oRouteConfig.language_code = sFrontLanguage; // 내부에서 로직으로 동작할땐 언어_지역 형태의 로케일 형태를 따른다.
            }
            if (typeof sSkinCode == 'undefined') {
                oRouteConfig.skin_code = '';
            }else {
                oRouteConfig.skin_code = sSkinCode;
            }

            var sDomain = '';
            if (oRouteConfig.shop_no != CAFE24.SDE_SHOP_NUM) {
                // 접근된 다른 멀티샵 도메인 정보는 primary domain 를 조회해야함으로 ajax 를 통해 정보를 얻는다.
                sDomain = this._getUrlDomainMultishop(oRouteConfig);
            } else {
                // 샵이 동일할 경우에는 접근된 domain 에 path 정보만 정리하여 반환함.
                sDomain = this._getUrlDomain(oRouteConfig);
            }
            return sDomain;
        },
        _getUrlDomainMultishop: function (oRouteConfig)
        {
            var sDomain = '';
            EC$.ajax({
                type: 'GET',
                url: '/exec/front/Shop/Domain',
                data: {
                    '_shop_no' : oRouteConfig.shop_no,
                    'is_mobile' : oRouteConfig.is_mobile,
                    'language_code' : oRouteConfig.language_code,
                    'skin_code' : oRouteConfig.skin_code,
                },
                async: false,
                dataType: 'json',
                cache: true,
                success: function(oResult) {
                    switch (oResult.code) {
                        case '0000' :
                            sDomain = oResult.data;
                            break;
                        default :
                            break;
                    }
                    return false;
                }
            });
            return sDomain;
        },
        _getUrlDomain: function (oRouteConfig)
        {
            oRouteConfig.domain = this._getCreateHost(oRouteConfig);
            return location.protocol + '//' + oRouteConfig.domain + this._getCreateUri(oRouteConfig);
        },
        _getCreateHost : function (oRouteConfig)
        {
            var sHost = location.host;
            var aHost = sHost.split('.');
            if (this.isBaseDomain(sHost)) {
                if (aHost.length > 3) {
                    aHost[0] = '';
                }
            } else if (oRouteConfig.is_mobile) {
                if (this.isMobileDomain()) {
                    oRouteConfig.is_mobile = false;
                }
            }
            return aHost.filter(Boolean).join('.');
        },
        _getCreateUri: function (oRouteInfo)
        {
            var aUrl = [];
            if (this.isBaseDomain() && oRouteInfo.shop_no > 1) {
                aUrl.push('shop' + oRouteInfo.shop_no);
            }
            if (oRouteInfo.is_mobile) {
                aUrl.push('m');
            }
            if (oRouteInfo.language_code != 'ZZ' && oRouteInfo.language_code != '') {
                var iIndex = Object.values(CAFE24.ROUTE.support_language_list).indexOf(oRouteInfo.language_code);
                if (iIndex !== -1) {
                    aUrl.push(Object.keys(CAFE24.ROUTE.support_language_list)[iIndex]);
                }
            }
            if (this.isBaseDomain() && oRouteInfo.skin_code != 'default' && oRouteInfo.skin_code != '') {
                aUrl.push('skin-' + oRouteInfo.skin_code);
            }
            var sUrl= '/';
            if (aUrl.length > 0) {
                sUrl= '/' + aUrl.join('/');
                sUrl = this.rtrim(sUrl, '/');
            }
            return sUrl;
        },
        /**
         * en, en-US => en_US
         */
        convertValidLanguageCode: function (sUrlLanguageCode)
        {
            if (typeof CAFE24.ROUTE.support_language_list[sUrlLanguageCode] != 'undefined') {
                return CAFE24.ROUTE.support_language_list[sUrlLanguageCode];
            }
            return false;
        },
        isMobileDomain: function (sHost)
        {
            if (typeof sHost == 'undefined') {
                sHost = location.host;
            }
            var aMatched = sHost.match(/^(m|mobile|skin\-mobile|skin\-mobile[0-9]+[\-]{2}shop[0-9]+|skin\-mobile[0-9]+|mobile[\-]{2}shop[0-9]+)\./i);
            return aMatched != null;
        },
        isBaseDomain: function (sHost)
        {
            if (typeof sHost == 'undefined') {
                sHost = location.host;
            }
            return sHost.indexOf(CAFE24.GLOBAL_INFO.getRootDomain()) !== -1;
        },
        removePrefixUrl: function (sUrl)
        {
            if (this.isNeedRoute()) {
                sUrl = sUrl.replace(this.getPrefixUrl('/'), '/'); // 자동으로  prefix 붙은 영역을 제거해준다.
            }
            return sUrl;
        },
        getPrefixUrl: function (sUrl)
        {
            if (this.isNeedRoute() === false) {
                return sUrl;
            }
            if (sUrl.indexOf('/') !== 0) {
                return sUrl;
            }
            if (sUrl.match(/^\/{2,}/) !== null) {
                return sUrl;
            }

            var iCachedPosition = this.aFromList.indexOf(sUrl);
            if (iCachedPosition > -1) {
                return this.aToList[iCachedPosition];
            }

            var bTailSlash = (sCleanUrl !== '/' && sUrl.substr(-1) === '/');
            var sCleanUrl = this.getCleanUrl(sUrl);
            var aPrefixPart = CAFE24.ROUTE.path.prefix.split('/');
            var aUrlPart = sCleanUrl.split('/');
            var bMatched = true;
            var sReturnUrl = sCleanUrl;
            if (aUrlPart.length < aPrefixPart.length) {
                bMatched = false;
            } else {
                for (var i = 0; i < aPrefixPart.length ; i++) {
                    if (aPrefixPart[i] != aUrlPart[i]) {
                        bMatched = false;
                        break;
                    }
                }
            }
            if (bMatched === false) {
                if (sCleanUrl == '/') {
                    sReturnUrl = CAFE24.ROUTE.path.prefix;
                } else {
                    sReturnUrl = CAFE24.ROUTE.path.prefix +  sCleanUrl;
                }
                sReturnUrl = bTailSlash ? sReturnUrl : this.rtrim(sReturnUrl, '/')
                this.aFromList.push(sUrl);
                this.aToList.push(sReturnUrl);
            }
            return sReturnUrl;
        },
        /**
         * document.location.pathname 이 필요할 경우 사용한다.
         * @returns {*}
         */
        getPathName: function()
        {
            if (typeof CAFE24.ROUTE.path.result == 'undefined') {
                return document.location.pathname;
            }
            return CAFE24.ROUTE.path.result;
        },
        rtrim: function (str, chr)
        {
            var rgxtrim = (!chr) ? new RegExp('\\s+$') : new RegExp(chr+'+$');
            return str.replace(rgxtrim, '');
        },
        getShopNo: function ()
        {
            return CAFE24.ROUTE.shop_no;
        },
        getSkinCode: function ()
        {
            return CAFE24.ROUTE.skin_code;
        },
        getLanguageCode: function ()
        {
            return CAFE24.ROUTE.language_code;
        },
        getMobile: function ()
        {
            return CAFE24.ROUTE.is_mobile;
        },
        getIsMobile: function ()
        {
            return CAFE24.ROUTE.is_mobile || CAFE24.ROUTE.skin_code.match(/^mobile[0-9]*$/);
        },
        getCleanUrl: function (sUrl)
        {
            if (sUrl === '/') {
                return sUrl;
            }

            var aUrl = sUrl.split('/');
            aUrl.shift();

            if (aUrl.length < 1) {
                return sUrl;
            }

            // 현재 4 depth 까지 미리보기 기능이 구현되어있음
            var iPos = 0;
            var bFind = false;
            for (var i = 0; i < aUrl.length ; i++) {
                bFind = false;
                for (var iSub = iPos, iSubCount = this.aCleanFilter.length; iSub < iSubCount ; iSub++) {
                    if (aUrl[i].match(this.aCleanFilter[iSub]) !== null) {
                        bFind = true;
                        iPos = iSub + 1;
                        aUrl.splice(i, 1);
                        i--; // aUrl 을 삭제해 주었으니 검색 조건을 -1 제거하여 초기화 한다. 다음 for i++ 로 증감 조회됨.
                        break;
                    }
                }
                if (bFind === false) {
                    break;
                }
            }
            return '/' + aUrl.join('/');
        },
        getIsEasyUrl : function ()
        {
            return !window.location.pathname.match(/^[\w\/\-\.]+(php|html|htm)$/i);
        }
    };
    EC_ROUTE.init();
}
</script>
<meta name="path_role" content="ETC">
<meta name="author" content="검증된 강아지사료 닥터독!">
<meta name="description" content="닥터독은 육류 · 다양한 과채류 및 제약회사에서 사용중인 기능성 원료를 결합한 최상의 영양설계 강아지 사료 입니다.">
<meta name="keywords" content="강아지사료, 애견사료, 강아지간식, 강아지수제간식, 애견용품, 강아지샴푸, 애견샴푸, 강아지패드, 뉴질랜드천연간식, 소간파우더, 천연영양파우더, 펫푸드, 배변패드"><meta http-equiv="Content-Type" content="text/html; charset=utf-8"><!--
        이 파일은 원터치 주문서의 읽기 전용 파일입니다.
        이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
        원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
--><!-- 이값은 지우면 안되는 값입니다.
    $easyform_gift=T
-->
<meta name="naver-site-verification" content="2d77e9cc61a8d1359f9b4eb03d5db3c32f6d7fa7">
<meta name="facebook-domain-verification" content="4r9nbonuw44jgzfsdxgcje449n7n0u">
<!-- 1908012 스크립트 작업 시작 / 수정 이동 문의 (스크립트 설치 전문 개밥그릇 - 카카오 : https://open.kakao.com/o/smDtHyX )
※※※※※※※※※※※※※※※※ 주의사항 ※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※
페이지별 / 각 사이트별 (다른사이트 포함) 코드들이 달라질 수 있기 때문에 절대로 복사 붙여넣기 또는 코드 수정을 하지 마세요.
사이트 오작동의 원인이 될 수 있습니다. -->



<!-- Global site tag (gtag.js) - Google Ads: 760023225 -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=AW-760023225"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-760023225');
</script>


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-127736990-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-127736990-1');
</script>

<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
	kakaoPixel('7177609319066782856').pageView();
</script>

<meta name="google-site-verification" content="NZx5QDEhUDB-OeNWlWTXQrm3WkbGLEmot5iPWm_Kt14">
<meta name="naver-site-verification" content="dc2f7f3a7d886ac12115fbd8975ffc6e5c53c327">


<!-- Google Channel Site Verification -->
<meta name="google-site-verification" content="hid2ILljH6Rb6zRoMHo5cqxgLPdVeMewUgpkiGx8L4c">
<!-- Google Channel Site Verification -->
<link rel="canonical" href="https://okdoctordog.com/order/ec_orderform/gift.html">
<link rel="alternate" href="https://m.okdoctordog.com/order/ec_orderform/gift.html">
<meta property="og:url" content="https://okdoctordog.com/order/ec_orderform/gift.html">
<meta property="og:title" content="가족이지만 말 못하는 그들을 위해, 닥터독">
<meta property="og:description" content="검증된 강아지사료 닥터독!">
<meta property="og:site_name" content="닥터독">
<meta property="og:type" content="website">
<meta name="google-site-verification" content="VcuuZoo3OV4j7Y9gUKKtFYyrc3CG54WmhbAhbGD2ZOs">
<link rel="shortcut icon" href="/web/upload/favicon_20160412113807.ico">
<script type="text/javascript" src="/app/Eclog/js/cid.generate.js?vs=14527c224ae347ef978a2f8d5f586ca7&amp;u=hucheum.1"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">var CAFE24API = { instance : [], MALL_ID : 'hucheum', SHOP_NO : 1, init : function (appInfo) { if (typeof appInfo == 'object') { if (appInfo.hasOwnProperty('client_id')) { var appKey = appInfo.client_id; } } else { var appKey = appInfo; } if (appKey) { if (!this.instance[appKey]) { CAFE24API.clientId = appKey; if (appInfo.hasOwnProperty('version')) { CAFE24API.version = appInfo.version; } else { if (CAFE24API.hasOwnProperty('version')) { delete CAFE24API.version; } } var copyObject = CAFE24API.constructor(); for (var attr in CAFE24API) { if (CAFE24API.hasOwnProperty(attr)) { copyObject[attr] = CAFE24API[attr]; } } this.instance[appKey] = copyObject; } return this.instance[appKey]; } }, initializeXhr : function () { try { return new XMLHttpRequest(); } catch (error) { return new window.ActiveXObject('Microsoft.XMLHTTP'); } }, fullPath: function (url) { return 'https://hucheum.cafe24api.com' + url; }, getLoginProvider: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'customer')) { return; } callback({'login': CAPP_ASYNC_METHODS.AppCommon.getLoginProvider()}); }, getCustomerProvider: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'customer')) { return; } callback({'login': CAPP_ASYNC_METHODS.AppCommon.getCustomerProvider()}); }, getMemberID: function (callback) { if (!CAPP_ASYNC_METHODS.IS_LOGIN) { callback(null); } else { callback(CAPP_ASYNC_METHODS.AppCommon.getMemberID()); } }, getEncryptedMemberId: function (client_id, callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'customer')) { return; } callback(null, CAPP_ASYNC_METHODS.AppCommon.getEncryptedMemberId(client_id)); }, getMemberInfo: function (callback) { callback({'id': CAPP_ASYNC_METHODS.AppCommon.getMemberInfo()}); }, getCustomerIDInfo: function (callback) { if (!CAFE24API.__scopeErr(callback, 'application')) { return; } callback(null, {'id': CAPP_ASYNC_METHODS.AppCommon.getCustomerIDInfo()}); }, getCustomerInfo: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'customer')) { return; } callback(null, {'customer': CAPP_ASYNC_METHODS.AppCommon.getCustomerInfo()}); }, getMileageInfo: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'customer')) { return; } callback(null, {'mileage': CAPP_ASYNC_METHODS.AppCommon.getMileageInfo()}); }, getPointInfo: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'customer')) { return; } callback(null, {'point': CAPP_ASYNC_METHODS.AppCommon.getPointInfo()}); }, getDepositInfo: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'customer')) { return; } callback(null, {'deposit': CAPP_ASYNC_METHODS.AppCommon.getDepositInfo()}); }, getCreditInfo: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'customer')) { return; } callback(null, {'credit': CAPP_ASYNC_METHODS.AppCommon.getCreditInfo()}); }, getCartList: function (callback) { if (!CAFE24API.__scopeErr(callback, 'personal')) { return; } CAPP_ASYNC_METHODS.AppCommon.getCartList().then(function(data){ callback(null, {'carts': data}); }); }, getCartInfo: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'personal')) { return; } callback(null, {'cart': CAPP_ASYNC_METHODS.AppCommon.getCartInfo()}); }, getCartItemList: function (callback) { if (!CAFE24API.__scopeErr(callback, 'order')) { return; } callback(null, {'items': CAPP_ASYNC_METHODS.AppCommon.getCartItemList()}); }, getCartCount: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'personal')) { return; } callback(null, CAPP_ASYNC_METHODS.AppCommon.getCartCount()); }, getCouponCount: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'promotion')) { return; } callback(null, CAPP_ASYNC_METHODS.AppCommon.getCouponCount()); }, getWishCount: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'personal')) { return; } callback(null, CAPP_ASYNC_METHODS.AppCommon.getWishCount()); }, getShopInfo: function (callback) { if (!CAFE24API.__scopeErr(callback, 'store')) { return; } callback(null, {'shop': CAPP_ASYNC_METHODS.AppCommon.getShopInfo()}); }, addCurrentProductToCart: function (mall_id, time, app_key, member_id, hmac, callback) { if (!CAFE24API.__scopeErr(callback, 'order')) { return; } CAPP_ASYNC_METHODS.AppCommon.addCurrentProductToCart(mall_id, time, app_key, member_id, hmac).then(function(data){ callback(null, {'cart': data}); }).catch(function (data) { if (data) { callback(new Error('422'), {'error': {code: data.code, message: data.message}}); } else { callback(new Error('422'), {'error': {code: 422, message: 'This sdk is not available on the current page'}}); } }); }, precreateOrder: function (mall_id, time, app_key, member_id, hmac, callback) { if (!CAFE24API.__scopeErr(callback, 'order')) { return; } CAPP_ASYNC_METHODS.AppCommon.precreateOrder(mall_id, time, app_key, member_id, hmac).then(function(data){ callback(null, {'order': data}); }).catch(function (data) { if (data) { callback(new Error('422'), {'error': {code: data.code, message: data.message}}); } else { callback(new Error('422'), {'error': {code: 422, message: 'This sdk is not available on the current page'}}); } }); }, getOrderItemList: function (start_date, end_date, order_status, page, count, order_id, callback) { if (!CAFE24API.__scopeErr(callback, 'order')) { return; } CAPP_ASYNC_METHODS.AppCommon.getOrderItemList(start_date, end_date, order_status, page, count, order_id).then(function(data){ callback(null, {'items': data}); }).catch(function (data) { if (data) { callback(new Error('422'), {'error': {code: data.code, message: data.message}}); } else { callback(new Error(422), { 'error': { code: 422, message: 'This sdk is not available on the current page' } }); } }); }, getOrderDetailInfo: function (shop_no, order_id, callback) { if (!CAFE24API.__scopeErr(callback, 'order')) { return; } CAPP_ASYNC_METHODS.AppCommon.getOrderDetailInfo(shop_no, order_id).then(function(data){ callback(null, {'orders': data}); }).catch(function (data) { if (data) { callback(new Error('422'), {'error': {code: data.code, message: data.message}}); } else { callback(new Error(422), { 'error': { code: 422, message: 'This sdk is not available on the current page' } }); } }); }, getClaimableItemList: function (order_id, customer_service_type, callback) { if (!CAFE24API.__scopeErr(callback, 'order')) { return; } CAPP_ASYNC_METHODS.AppCommon.getClaimableItemList(order_id, customer_service_type).then(function(data){ callback(null, {'items': data}); }).catch(function (data) { if (data) { callback(new Error('422'), {'error': {code: data.code, message: data.message}}); } else { callback(new Error(422), { 'error': { code: 422, message: 'This sdk is not available on the current page' } }); } }); }, emptyCart: function (basket_shipping_type, callback) { if (!CAFE24API.__scopeErr(callback, 'personal')) { return; } CAPP_ASYNC_METHODS.AppCommon.emptyCart(basket_shipping_type).then(function (data) { callback(null, {'result': data}); }).catch(function (data) { if (data) { callback(new Error('422'), {'error': {code: data.code, message: data.message}}); } else { callback(new Error(422), { 'error': { code: 422, message: 'This sdk is not available on the current page' } }); } }) ; }, deleteCartItems: function (basket_shipping_type, product_list, callback) { if (!CAFE24API.__scopeErr(callback, 'personal')) { return; } CAPP_ASYNC_METHODS.AppCommon.deleteCartItems(basket_shipping_type, product_list).then(function (data) { callback(null, {'result': data}); }).catch(function (data) { if (data) { callback(new Error('422'), {'error': {code: data.code, message: data.message}}); } else { callback(new Error(422), { 'error': { code: 422, message: 'This sdk is not available on the current page' } }); } }) ; }, addCart: function (basket_type, prepaid_shipping_fee, product_list, callback) { if (!CAFE24API.__scopeErr(callback, 'personal')) { return; } CAPP_ASYNC_METHODS.AppCommon.addCart(basket_type, prepaid_shipping_fee, product_list).then(function (data) { callback(null, data); }).catch(function (data) { if (data) { callback(new Error('422'), {'error': {code: data.code, message: data.message}}); } else { callback(new Error(422), { 'error': { code: 422, message: 'This sdk is not available on the current page' } }); } }) }, addBundleProductsCart: function (basket_type, prepaid_shipping_fee, product_list, callback) { if (!CAFE24API.__scopeErr(callback, 'personal')) { return; } CAPP_ASYNC_METHODS.AppCommon.addBundleProductsCart(basket_type, prepaid_shipping_fee, product_list).then(function (data) { callback(null, data); }).catch(function (data) { if (data) { callback(new Error('422'), {'error': {code: data.code, message: data.message}}); } else { callback(new Error(422), { 'error': { code: 422, message: 'This sdk is not available on the current page' } }); } }) }, get : function(url, callback) { return CAFE24API.complete('GET', url, this, null, callback); }, post : function(url, params, callback) { return CAFE24API.complete('POST', url, this, params, callback); }, put : function(url, params, callback) { return CAFE24API.complete('PUT', url, this, params, callback); }, delete : function(url, callback) { return CAFE24API.complete('DELETE', url, this, null, callback); }, complete : function(method, url, obj, params, callback) { var xhr = CAFE24API.sendXhr(method, url, obj, params, callback); xhr.onreadystatechange = function () { if (xhr.readyState === XMLHttpRequest.DONE) { if (xhr.status >= 200 && xhr.status <= 208) { callback(null, JSON.parse(xhr.responseText)); } else { callback(new Error(xhr.status), JSON.parse(xhr.responseText)); } } }; }, sendXhr : function (method, url, obj, params, callback) { if (method !== 'POST') { var url = obj.fullPath(url); } var xhr = obj.initializeXhr(); var queryVars = {}; if (obj.clientId) queryVars['cafe24_app_key'] = obj.clientId; if (obj.version) queryVars['cafe24_api_version'] = obj.version; if (params === null) { var seperator = url.indexOf('?') == -1 ? '?' : '&'; var queryString = []; for (var key in queryVars) { queryString.push(key + '=' + queryVars[key]); } if (queryString.length > 0) { url = url + seperator + queryString.join('&'); } } xhr.open(method, url, true); if (typeof params == 'object' && params !== null) { xhr.setRequestHeader('Content-type','application/x-www-form-urlencoded; charset=utf-8'); for (var key in queryVars) { params[key] = queryVars[key]; } params = 'formData=' + JSON.stringify(params); } xhr.send(params || null); return xhr; }, __sessionErr: function (callback) { callback(new Error(403), {'error': {code: 403, message: 'Failed to get session. Only available when log in.'}}); }, __scopeErr: function (callback, scope) { if (typeof CAFE24.APPSCRIPT_SDK_DATA != "undefined" && jQuery.inArray(scope, CAFE24.APPSCRIPT_SDK_DATA ) > -1 ) { return true; } callback(new Error(403), {'error': {code: 403, message: 'You do not have the necessary authority(scope) to use the SDK.'}}); }, __chkValidSessionScope: function (callback, scope) { if (!CAPP_ASYNC_METHODS.IS_LOGIN) { CAFE24API.__sessionErr(callback); return false; } if (!CAFE24API.__scopeErr(callback, scope)) { return false; } return true; } }; </script>
<script type="text/javascript">
window.CAFE24 = window.CAFE24 || {};
CAFE24.MANIFEST_CACHE_REVISION = '2312201271';
CAFE24.getDeprecatedNamespace = function(sDeprecatedNamespace, sSupersededNamespace) {
var sNamespace = sSupersededNamespace 
? sSupersededNamespace 
: sDeprecatedNamespace.replace(/^EC_/, '');
return CAFE24[sNamespace];
}
CAFE24.FRONT_LANGUAGE_CODE = "ko_KR";
CAFE24.MOBILE = false;
CAFE24.MOBILE_DEVICE = false;
CAFE24.MOBILE_USE = true;
var EC_MOBILE = CAFE24.MOBILE;
var EC_MOBILE_DEVICE = CAFE24.MOBILE_DEVICE;
var EC_MOBILE_USE = CAFE24.MOBILE_USE;
CAFE24.SKIN_CODE = "skin48";
CAFE24.FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA = {"common_member_id_crypt":""};
var EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA = CAFE24.getDeprecatedNamespace('EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA');
CAFE24.SDE_SHOP_NUM = 1;CAFE24.SHOP = {getLanguage : function() { return "ko_KR"; },getCurrency : function() { return "KRW"; },getFlagCode : function() { return "KR"; },getTimezone: function() { return "Asia/Seoul" },getDateFormat: function() { return "Y-m-d" },isMultiShop : function() { return false; },isDefaultShop : function() { return true; },isDefaultLanguageShop : function(sLanguageCode) { return SHOP.isDefaultShop() && SHOP.isLanguageShop(sLanguageCode); },isKR : function() { return true; },isUS : function() { return false; },isJP : function() { return false; },isCN : function() { return false; },isTW : function() { return false; },isES : function() { return false; },isPT : function() { return false; },isVN : function() { return false; },isPH : function() { return false; },getCountryAndLangMap : function() { return {
"KR": "ko_KR",
"US": "en_US",
"JP": "ja_JP",
"CN": "zh_CN",
"TW": "zh_TW",
"VN": "vi_VN",
"PH": "en_PH"
}},isLanguageShop : function(sLanguageCode) { return sLanguageCode === "ko_KR"; },getDefaultShopNo : function() { return 1; },getProductVer : function() { return 2; },isSDE : function() { return true; },isMode : function() {return false; },getModeName : function() {return false; },isMobileAdmin : function() {return false; },isNewProMode : function() {return true; },isExperienceMall : function() { return false; },isDcollection : function() {return false; },getAdminID : function() {return ''},getMallID : function() {return 'hucheum'},getCurrencyFormat : function(sPriceTxt, bIsNumberFormat) { 
sPriceTxt = String(sPriceTxt);
var aCurrencySymbol = ["","\uc6d0",false];
if (typeof CAFE24.SHOP_PRICE !== 'undefined' && isNaN(sPriceTxt.replace(/[,]/gi, '')) === false && bIsNumberFormat === true) {
// bIsNumberFormat 사용하려면 Ui(':libUipackCurrency')->plugin('Currency') 화폐 라이브러리 추가 필요
sPriceTxt = CAFE24.SHOP_PRICE.toShopPrice(sPriceTxt.replace(/[,]/gi, ''), true, CAFE24.SDE_SHOP_NUM);
}
try {
var sPlusMinusSign = (sPriceTxt.toString()).substr(0, 1);
if (sPlusMinusSign === '-' || sPlusMinusSign === '+') {
sPriceTxt = (sPriceTxt.toString()).substr(1);
return sPlusMinusSign + aCurrencySymbol[0] + sPriceTxt + aCurrencySymbol[1];
} else {
return aCurrencySymbol[0] + sPriceTxt + aCurrencySymbol[1];
}
} catch (e) {
return aCurrencySymbol[0] + sPriceTxt + aCurrencySymbol[1];
}
}};CAFE24.CURRENCY_INFO = {getOriginReferenceCurrency : function() {return 'USD'},getCurrencyList : function(sCurrencyCode) { var aCurrencyList = {"JPY":{"currency_symbol":"&yen;","decimal_place":0,"round_method_type":"F"},"VND":{"currency_symbol":"&#8363;","decimal_place":0,"round_method_type":"F"},"PHP":{"currency_symbol":"&#8369;","decimal_place":2,"round_method_type":"R"},"USD":{"currency_symbol":"$","decimal_place":2,"round_method_type":"R"},"CNY":{"currency_symbol":"&yen;","decimal_place":2,"round_method_type":"R"},"TWD":{"currency_symbol":"NT$","decimal_place":0,"round_method_type":"F"},"EUR":{"currency_symbol":"\u20ac","decimal_place":2,"round_method_type":"R"},"BRL":{"currency_symbol":"R$","decimal_place":2,"round_method_type":"R"},"AUD":{"currency_symbol":"A$","decimal_place":2,"round_method_type":"R"},"BHD":{"currency_symbol":".&#1583;.&#1576;","decimal_place":3,"round_method_type":"R"},"BDT":{"currency_symbol":"&#2547;","decimal_place":2,"round_method_type":"R"},"GBP":{"currency_symbol":"&pound;","decimal_place":2,"round_method_type":"R"},"CAD":{"currency_symbol":"C$","decimal_place":2,"round_method_type":"R"},"CZK":{"currency_symbol":"K&#269;","decimal_place":2,"round_method_type":"R"},"DKK":{"currency_symbol":"kr","decimal_place":2,"round_method_type":"R"},"HKD":{"currency_symbol":"HK$","decimal_place":2,"round_method_type":"R"},"HUF":{"currency_symbol":"Ft","decimal_place":2,"round_method_type":"R"},"INR":{"currency_symbol":"&#8377;","decimal_place":2,"round_method_type":"R"},"IDR":{"currency_symbol":"Rp","decimal_place":0,"round_method_type":"F"},"ILS":{"currency_symbol":"&#8362;","decimal_place":2,"round_method_type":"R"},"JOD":{"currency_symbol":" &#1583;&#1610;&#1606;&#1575;&#1585;","decimal_place":3,"round_method_type":"R"},"KWD":{"currency_symbol":"&#1583;&#1610;&#1606;&#1575;&#1585;","decimal_place":3,"round_method_type":"R"},"MYR":{"currency_symbol":"RM","decimal_place":2,"round_method_type":"R"},"MXN":{"currency_symbol":"Mex$","decimal_place":2,"round_method_type":"R"},"NZD":{"currency_symbol":"NZ$","decimal_place":2,"round_method_type":"R"},"NOK":{"currency_symbol":"kr","decimal_place":2,"round_method_type":"R"},"PKR":{"currency_symbol":"&#8360;","decimal_place":2,"round_method_type":"R"},"PLN":{"currency_symbol":"z\u0142","decimal_place":2,"round_method_type":"R"},"RUB":{"currency_symbol":"\u0440\u0443\u0431","decimal_place":2,"round_method_type":"R"},"SAR":{"currency_symbol":"&#65020;","decimal_place":2,"round_method_type":"R"},"SGD":{"currency_symbol":"S$","decimal_place":2,"round_method_type":"R"},"ZAR":{"currency_symbol":"R","decimal_place":2,"round_method_type":"R"},"SEK":{"currency_symbol":"kr","decimal_place":2,"round_method_type":"R"},"CHF":{"currency_symbol":"Fr","decimal_place":2,"round_method_type":"R"},"THB":{"currency_symbol":"&#3647;","decimal_place":2,"round_method_type":"R"},"TRY":{"currency_symbol":"TL","decimal_place":2,"round_method_type":"R"},"AED":{"currency_symbol":"&#1601;&#1604;&#1587;","decimal_place":2,"round_method_type":"R"}}; return aCurrencyList[sCurrencyCode] },isUseReferenceCurrency : function() {return false }};CAFE24.COMMON_UTIL = {convertSslForString : function(sString) { return sString.replace(/http:/gi, '');},convertSslForHtml : function(sHtml) { return sHtml.replace(/((?:src|href)\s*=\s*['"])http:(\/\/(?:[a-z0-9\-_\.]+)\/)/ig, '$1$2');},getProtocol : function() { return 'https'; },moveSsl : function() { if (CAFE24.COMMON_UTIL.getProtocol() === 'http') { var oLocation = jQuery(window.location); var sUrl = 'https://' + oLocation.attr('host') + oLocation.attr('pathname') + oLocation.attr('search'); window.location.replace(sUrl); } },setEcCookie : function(sKey, sValue, iExpire) {var exdate = new Date();exdate.setDate(exdate.getDate() + iExpire);var setValue = escape(sValue) + "; domain=." + CAFE24.GLOBAL_INFO.getBaseDomain() + "; path=/;expires=" + exdate.toUTCString();document.cookie = sKey + "=" + setValue;}};CAFE24.SHOP_LIB_INFO = {getBankInfo : function() { 
var oBankInfo = "";
$.ajax({
type: "GET",
url: "/exec/front/Shop/Bankinfo",
dataType: "json",
async: false,
success: function(oResponse) {
oBankInfo = oResponse;
}
});
return oBankInfo; }};            var EC_SDE_SHOP_NUM = CAFE24.SDE_SHOP_NUM;
var SHOP = CAFE24.getDeprecatedNamespace('SHOP');
var EC_COMMON_UTIL = CAFE24.getDeprecatedNamespace('EC_COMMON_UTIL');
var EC_SHOP_LIB_INFO = CAFE24.getDeprecatedNamespace('EC_SHOP_LIB_INFO');
var EC_CURRENCY_INFO = CAFE24.getDeprecatedNamespace('EC_CURRENCY_INFO');
CAFE24.ROOT_DOMAIN = "cafe24.com";
CAFE24.API_DOMAIN = "cafe24api.com";
CAFE24.TRANSLATE_LOG_STATUS = "F";
CAFE24.GLOBAL_INFO = (function() {
var oData = {"base_domain":"hucheum.cafe24.com","root_domain":"cafe24.com","api_domain":"cafe24api.com","is_global":false,"is_global_standard":false,"country_code":"KR","language_code":"ko_KR","admin_language_code":"ko_KR"};
return {
getBaseDomain: function() {
return oData['base_domain'];
},
getRootDomain: function() {
return oData['root_domain'];
},
getApiDomain: function() {
return oData['api_domain'];
},
isGlobal: function() {
return oData['is_global'];
},
isGlobalStandard: function() {
return oData['is_global_standard'];
},
getCountryCode: function() {
return oData['country_code'];
},
getLanguageCode: function() {
return oData['language_code'];
},
getAdminLanguageCode: function() {
return oData['admin_language_code'];
}
};
})();
var EC_ROOT_DOMAIN = CAFE24.ROOT_DOMAIN;
var EC_API_DOMAIN = CAFE24.API_DOMAIN;
var EC_TRANSLATE_LOG_STATUS = CAFE24.TRANSLATE_LOG_STATUS;
var EC_GLOBAL_INFO = CAFE24.getDeprecatedNamespace('EC_GLOBAL_INFO');
CAFE24.AVAILABLE_LANGUAGE = ["ko_KR","zh_CN","en_US","zh_TW","es_ES","pt_PT","vi_VN","ja_JP","en_PH"];
CAFE24.AVAILABLE_LANGUAGE_CODES = {"ko_KR":"KOR","zh_CN":"CHN","en_US":"ENG","zh_TW":"TWN","es_ES":"ESP","pt_PT":"PRT","vi_VN":"VNM","ja_JP":"JPN","en_PH":"PHL"};
var EC_AVAILABLE_LANGUAGE = CAFE24.AVAILABLE_LANGUAGE;
var EC_AVAILABLE_LANGUAGE_CODES = CAFE24.AVAILABLE_LANGUAGE_CODES;
CAFE24.GLOBAL_PRODUCT_LANGUAGE_CODES = {  
sClearanceCategoryCode: '',
sManualLink: '//support.cafe24.com/hc/ko/articles/7739013909529',
sHsCodePopupLink: 'https://www.wcotradetools.org/en/harmonized-system',
aCustomRegex: '"PHL" : "^[0-9]{8}[A-Z]?$"',
sCountryCodeData: 'kor',
sEnglishExampleURlForGlobal: '',
aReverseAddressCountryCode: ["VNM","PHL"],
aSizeGuideCountryAlign: '["US","UK","EU","KR","JP","CN"]',
aIsSupportTran: ["ja_JP","zh_CN","zh_TW","en_US","vi_VN","en_PH","pt_PT","es_ES"]
};
var EC_GLOBAL_PRODUCT_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_PRODUCT_LANGUAGE_CODES');
CAFE24.GLOBAL_ORDER_LANGUAGE_CODES = {
aModifyOrderLanguage: {"KR":"ko_KR","JP":"ja_JP","CN":"zh_CN","TW":"zh_TW","VN":"vi_VN","PH":"en_PH"},
aUseIdCardKeyCountry: ["CN","TW"],
aLanguageWithCountryCode: {"zh_CN":["CN","CHN","HK","HNK"],"ja_JP":["JP","JPN"],"zh_TW":["TW","TWN"],"ko_KR":["KR","KOR"],"vi_VN":["VN","VNM"],"en_PH":["PH","PHL"]},
aCheckDisplayRequiredIcon: ["ja_JP","zh_CN","zh_TW","en_US","vi_VN","en_PH"],
aSetReceiverName: {"zh_CN":{"sCountry":"CN","bUseLastName":true},"zh_TW":{"sCountry":"TW","bUseLastName":false},"ja_JP":{"sCountry":"JP","bUseLastName":true}},
aSetDeferPaymethodLanguage: {"ja_JP":"\uc77c\ubcf8","zh_CN":"\uc911\uad6d"},
aUseDeferPaymethod: ["ja_JP","zh_CN"],
aCheckShippingCompanyAndPaymethod: ["ja_JP","zh_CN"],
aSetDeferPaymethodLanguageForShipping: {"ja_JP":"\u65e5\u672c","zh_CN":"\uc911\uad6d"},
aCheckStoreByPaymethod: ["ja_JP","zh_CN"],
aCheckIsEmailRequiredForJs: ["en_US","zh_CN","zh_TW","ja_JP","vi_VN","en_PH"],
aSetIdCardKeyCountryLanguage: {"CN":"\uc911\uad6d\uc758","TW":"\ub300\ub9cc\uc758"},
aReverseGlobalAddress: ["en_PH","vi_VN","PHL","VNM","VN","PH"],
aNoCheckZipCode: ["KOR","JPN"],
aNotPostCodeAPICountryList: ["en_US","es_ES","pt_PT","en_PH"],
aEnableSearchExchangeAddr: ["KR","JP","CN","VN","TW","PH"],
aDuplicatedBaseAddr: ["TW","JP"],
aReverseAddressCountryCode: ["VN","PH"],
aCheckZipCode: ["PHL","en_PH","PH"]
};
var EC_GLOBAL_ORDER_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_ORDER_LANGUAGE_CODES');
CAFE24.GLOBAL_MEMBER_LANGUAGE_CODES = {  
sAdminWebEditorLanguageCode: 'ko' ,
oNotAvailDecimalPointLanguages: ["ko_KR","ja_JP","zh_TW","vi_VN"],
oAddressCountryCode: {"KOR":"ko_KR","JPN":"ja_JP","CHN":"zh_CN","TWN":"zh_TW","VNM":"vi_VN","PHL":"en_PH"},
};
var EC_GLOBAL_MEMBER_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_MEMBER_LANGUAGE_CODES');
CAFE24.GLOBAL_BOARD_LANGUAGE_CODES = {  
bUseLegacyBoard: true
};
var EC_GLOBAL_BOARD_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_BOARD_LANGUAGE_CODES');
CAFE24.GLOBAL_MALL_LANGUAGE_CODES = {
oDesign: {
oDesignAddReplaceInfo: {"group_id":"SKIN.ADD.ADMIN.DESIGNDETAIL","replacement":{"KR":"KOREAN","US":"ENGLISH","JP":"JAPANESE","CN":"SIMPLIFIED.CHINESE","TW":"TRADITIONAL.CHINESE","ES":"SPANISH","PT":"PORTUGUESE","PH":"ENGLISH"}},
oDesignDetailLanguageCountryMap: {"KR":"ko_KR","JP":"ja_JP","CN":"zh_CN","TW":"zh_TW","US":"en_US","ES":"es_ES","PT":"pt_PT","PH":"en_PH"},
oSmartDesignSwitchTipLink: {"edibot":{"img":"\/\/img.echosting.cafe24.com\/smartAdmin\/img\/design\/img_editor_dnd.png","link":"\/\/ecsupport.cafe24.com\/board\/free\/list.html?board_act=list&board_no=12&category_no=9&cate_no=9"},"smart":{"img":"\/\/img.echosting.cafe24.com\/smartAdmin\/img\/design\/ko_KR\/img_editor_smart.png","link":"\/\/sdsupport.cafe24.com"}},
oSmartDesignDecoShopList: ["ko_KR","ja_JP","zh_CN","en_US","zh_TW","es_ES","pt_PT"],
oSmartDesignDecoMultilingual: {"list":{"ko_KR":"KOREAN","en_US":"ENGLISH","ja_JP":"JAPANESE","zh_CN":"SIMPLIFIED.CHINESE","zh_TW":"TRADITIONAL.CHINESE","es_ES":"SPANISH","pt_PT":"PORTUGUESE","vi_VN":"VIETNAMESE"},"group_id":"EDITOR.LAYER.EDITING.DECO"},
aSmartDesignModuleShopList: ["ko_KR","ja_JP","zh_CN","en_US","zh_TW","es_ES","pt_PT"]
},
oStore: {
oMultiShopCurrencyInfo: {"en_US":{"currency":"USD"},"zh_CN":{"currency":"USD","sub_currency":"CNY"},"ja_JP":{"currency":"JPY"},"zh_TW":{"currency":"TWD"},"es_ES":{"currency":"EUR"},"pt_PT":{"currency":"EUR"},"ko_KR":{"currency":"KRW"},"vi_VN":{"currency":"VND"},"en_PH":{"currency":"PHP"}},
oBrowserRedirectLanguage: {"ko":{"primary":"ko_KR","secondary":"en_US"},"en":{"detail":{"en-ph":{"primary":"en_PH","secondary":"en_US"},"en-us":{"primary":"en_US","secondary":"es_ES"},"default":{"primary":"en_US","secondary":"es_ES"}}},"ja":{"primary":"ja_JP","secondary":"en_US"},"zh":{"detail":{"zh-cn":{"primary":"zh_CN","secondary":"en_US"},"zh-tw":{"primary":"zh_TW","secondary":"zh_CN"},"default":{"primary":"en_US","secondary":"ko_KR"}}},"es":{"primary":"es_ES","secondary":"en_US"},"pt":{"primary":"pt_PT","secondary":"en_US"},"vi":{"primary":"vi_VN","secondary":"en_US"},"default":{"primary":"en_US","secondary":"ko_KR"}},
aChangeableLanguages: ["en_US","ja_JP","ko_KR"],
aNoZipCodeLanguage: ["ko_KR","ja_JP"]
},
oMobile: {
sSmartWebAppFaqUrl: "https://support.cafe24.com/hc/ko/articles/8466586607641",
sAmpFaqUrl: "https://ecsupport.cafe24.com/board/free/read.html?no=1864&board_no=5&category_no=13&cate_no=13&category_no=13&category_no=13",
},
oPromotion: {
bQrCodeAvailable: true,
bSnsMarketingAvailable: true
},
oShippingReverseAddressLanguage: ["vi_VN","en_PH"] ,
oGlobalStandardSwitchHelpCodeLink: {"SH.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/SH.DS.html"},"PR.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/PR.DS.html"},"OR.SM.BO":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/OR.SM.BO.html"},"DE.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/DE.DS.html"},"MB.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/MB.DS.html"},"PM.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/PM.DS.html"}},
getAdminMainLocaleLanguage: function(sSkinLocaleCode) {
var oLocaleData = [];
var locale = "";
var shopLangName = "";
if (sSkinLocaleCode == "US") {
locale = "en_US";
shopLangName = "ENGLISH";
} else if (sSkinLocaleCode == "JP") {
locale = "ja_JP";
shopLangName = "JAPANESE";
} else if (sSkinLocaleCode == "CN") {
locale = "zh_CN";
shopLangName = "SIMPLIFIED.CHINESE";
} else if (sSkinLocaleCode == "TW") {
locale = "zh_TW";
shopLangName = "TRADITIONAL.CHINESE";
} else if (sSkinLocaleCode == "ES") {
locale = "es_ES";
shopLangName = "SPANISH";
} else if (sSkinLocaleCode == "PT") {
locale = "pt_PT";
shopLangName = "PORTUGUESE";
} else if (sSkinLocaleCode == "VN") {
locale = "vi_VN";
shopLangName = "VIETNAMESE";
} else if(sSkinLocaleCode == "PH") {
locale = "en_PH";
shopLangName = "ENGLISH.PH";
}
oLocaleData["locale"] = locale;
oLocaleData["shopLangName"] = shopLangName;
return oLocaleData;
}
};
var EC_GLOBAL_MALL_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_MALL_LANGUAGE_CODES');
CAFE24.GLOBAL_DATETIME_INFO = {
oConstants: {"STANDARD_DATE_REGEX":"\/([12]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01]))\/","IN_ZONE":"inZone","OUT_ZONE":"outZone","IN_FORMAT":"inFormat","OUT_FORMAT":"outFormat","IN_DATE_FORMAT":"inDateFormat","IN_TIME_FORMAT":"inTimeFormat","OUT_DATE_FORMAT":"outDateFormat","OUT_TIME_FORMAT":"outTimeFormat","IN_FORMAT_DATE_ONLY":1,"IN_FORMAT_TIME_ONLY":2,"IN_FORMAT_ALL":3,"OUT_FORMAT_DATE_ONLY":1,"OUT_FORMAT_TIME_ONLY":2,"OUT_FORMAT_ALL":3,"DATE_ONLY":"YYYY-MM-DD","TIME_ONLY":"HH:mm:ss","FULL_TIME":"YYYY-MM-DD HH:mm:ss","ISO_8601":"YYYY-MM-DD[T]HH:mm:ssZ","YEAR_ONLY":"YYYY","MONTH_ONLY":"MM","DAY_ONLY":"DD","WEEK_ONLY":"e","TIME_H_I_ONLY":"HH:mm","TIME_HOUR_ONLY":"HH","TIME_MINUTE_ONLY":"mm","POSTGRE_FULL_TIME":"YYYY-MM-DD HH24:MI:SS","POSTGRE_TIME_ONLY":" HH24:MI:SS","MICRO_SECOND_ONLY":"u","SEOUL":"Asia\/Seoul","TOKYO":"Asia\/Tokyo","SHANGHAI":"Asia\/Shanghai","TAIPEI":"Asia\/Taipei","HANOI":"Asia\/Bangkok","LOS_ANGELES":"America\/Los_Angeles","LISBON":"Europe\/Lisbon","MADRID":"Europe\/Madrid","SINGAPORE":"Asia\/Singapore","UTC":"Etc\/UTC","MAX_DATETIME":"9999-12-31 23:59:59"},
oOptions: {"inZone":"Asia\/Seoul","inFormat":"YYYY-MM-DD HH:mm:ss","inDateFormat":"YYYY-MM-DD","inTimeFormat":"HH:mm:ss","outZone":"Asia\/Seoul","outFormat":"YYYY-MM-DD HH:mm:ss","outDateFormat":"YYYY-MM-DD","outTimeFormat":"HH:mm:ss"},
oPolicies: [],
sOverrideTimezone: '',
sMomentNamespace: 'EC_GLOBAL_MOMENT'
};
CAFE24.FRONT_JS_CONFIG_MANAGE = {"sSmartBannerScriptUrl":"https:\/\/app4you.cafe24.com\/SmartBanner\/tunnel\/scriptTags?vs=1563164396689206","sMallId":"hucheum","sDefaultAppDomain":"https:\/\/app4you.cafe24.com","sWebLogOffFlag":"F"};
var EC_FRONT_JS_CONFIG_MANAGE = CAFE24.getDeprecatedNamespace('EC_FRONT_JS_CONFIG_MANAGE');
typeof window.CAFE24 === "undefined" && (window.CAFE24 = {});
CAFE24.FRONTEND = {"FW_MANIFEST_CACHE_REVISION":2312201271,"IS_WEB_VIEW":"F"};
CAFE24.ROUTE = {"is_mobile":false,"is_need_route":false,"language_code":"ZZ","path":{"origin":"\/order\/ec_orderform\/gift.html","result":"\/order\/ec_orderform\/gift.html","prefix":""},"shop_no":0,"skin_code":"default","support_language_list":{"ar":"ar_EG","ar-EG":"ar_EG","de":"de_DE","de-DE":"de_DE","en":"en_US","en-IN":"en_IN","en-PH":"en_PH","en-US":"en_US","es":"es_ES","es-ES":"es_ES","hi":"hi_IN","hi-IN":"hi_IN","id":"id_ID","id-ID":"id_ID","it":"it_IT","it-IT":"it_IT","ja":"ja_JP","ja-JP":"ja_JP","ko":"ko_KR","ko-KR":"ko_KR","ms":"ms_MY","ms-MY":"ms_MY","pt":"pt_PT","pt-PT":"pt_PT","ru":"ru_RU","ru-RU":"ru_RU","th":"th_TH","th-TH":"th_TH","tr":"tr_TR","tr-TR":"tr_TR","vi":"vi_VN","vi-VN":"vi_VN","zh":"zh_CN","zh-CN":"zh_CN","zh-HK":"zh_HK","zh-MO":"zh_MO","zh-SG":"zh_SG","zh-TW":"zh_TW"}};
</script>

<link rel="stylesheet" type="text/css" href="/ind-script/optimizer.php?filename=nc1LCoAwDIThfXHrOYLeqC3xAU2mpCno7RW8gHQ7zMdPB4RpWY2qYbcoZNzQLTPl1mgzqFOGCHR6h5n-_DmHhtL9hIaEaxB299FoiTfbGPWYCg9S1FBO5ZCi6td_AA&amp;type=css&amp;k=37c9481ac0212340e132f81eba4d1049fee7f18e&amp;t=1681776733">

<title>닥터독-가족이지만 말 못하는 그들을 위해</title><!-- CREMA / CAFE24 API Initialize / cre.ma  -->
<script>
  if (this.CAFE24API) { CAFE24API.init(''); } else {
    window.addEventListener('DOMContentLoaded', (event) => { CAFE24API.init(''); });
  }
</script>
<!-- CREMA / Device Detection / cre.ma -->
<script src="//cdn.jsdelivr.net/npm/mobile-detect@1.4.5/mobile-detect.min.js"></script>
<!-- CREMA / 공통 스크립트 (init.js) / cre.ma -->
<script>
  var md = new MobileDetect(window.navigator.userAgent);
  if (md.mobile()) {
    (function(i,s,o,g,r,a,m){if(s.getElementById(g)){return};a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.id=g;a.async=1;a.src=r;m.parentNode.insertBefore(a,m)})(window,document,'script','crema-jssdk','//widgets.cre.ma/okdoctordog.com/mobile/init.js');
  } else {
    (function(i,s,o,g,r,a,m){if(s.getElementById(g)){return};a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.id=g;a.async=1;a.src=r;m.parentNode.insertBefore(a,m)})(window,document,'script','crema-jssdk','//widgets.cre.ma/okdoctordog.com/init.js');
  }
</script>


<script type="text/javascript">
(function(w, d, a){
    w.__beusablerumclient__ = {
        load : function(src){
            var b = d.createElement("script");
            b.src = src; b.async=true; b.type = "text/javascript";
            d.getElementsByTagName("head")[0].appendChild(b);
        }
    };w.__beusablerumclient__.load(a + "?url=" + encodeURIComponent(d.URL));
})(window, document, "//rum.beusable.net/load/b230406e164346u992");
</script>


<script type="text/javascript">
    (function(c,l,a,r,i,t,y){
        c[a]=c[a]||function(){(c[a].q=c[a].q||[]).push(arguments)};
        t=l.createElement(r);t.async=1;t.src="https://www.clarity.ms/tag/"+i;
        y=l.getElementsByTagName(r)[0];y.parentNode.insertBefore(t,y);
    })(window, document, "clarity", "script", "gfxsfon9mp");
</script>

<script type="text/javascript">
(function(w, d, a){
    w.__beusablerumclient__ = {
        load : function(src){
            var b = d.createElement("script");
            b.src = src; b.async=true; b.type = "text/javascript";
            d.getElementsByTagName("head")[0].appendChild(b);
        }
    };w.__beusablerumclient__.load(a + "?url=" + encodeURIComponent(d.URL));
})(window, document, "//rum.beusable.net/load/b230406e164346u992");
</script>
<span itemscope="" itemtype="https://schema.org/Organization">
<link itemprop="url" href="https://okdoctordog.com">
</span>

                <script>
                try {
                    // Account ID 적용
                    if (!wcs_add) var wcs_add = {};
                    wcs_add["wa"] = "s_16dd6a60b07d";
            
                    // 마일리지 White list가 있을 경우
                    wcs.mileageWhitelist = ["hucheum.cafe24.com", "www.hucheum.cafe24.com", "m.hucheum.cafe24.com", "okdoctordog.com", "www.okdoctordog.com", "m.okdoctordog.com"];

                    // 네이버 페이 White list가 있을 경우
                    wcs.checkoutWhitelist = ["hucheum.cafe24.com", "www.hucheum.cafe24.com", "m.hucheum.cafe24.com", "okdoctordog.com", "www.okdoctordog.com", "m.okdoctordog.com"];
                
                    // 레퍼러 (스크립트 인젠션 공격 대응 strip_tags) ECQAINT-15101
                    wcs.setReferer("https://okdoctordog.com/order/orderform.html?basket_type=A0000&delvtype=A");

                    // 유입 추적 함수 호출
                    wcs.inflow("okdoctordog.com");

                    // 로그수집
                    wcs_do();
                } catch (e) {};
                </script>
            

<!-- External Script Start -->

<!-- crt -->
<!-- CMC script -->
<div id="crt_common_top_script" style="display:none;">
<!-- Criteo 로더 파일 -->
<script type="text/javascript" src="//static.criteo.com/js/ld/ld.js" async="true"></script>
<!-- END Criteo 로더 파일 -->

<!-- Criteo Visit Tag -->
<script type="text/javascript">
if (hasCriteoTag() === false) {
  window.criteo_q = window.criteo_q || [];
  window.criteo_q.push(
    { event: "flushEvents"},
    { event: "setAccount", account: "35905"},
    { event: "setSiteType", type: "d" },
    { event: "viewPage"}
  );
}

function hasCriteoTag() {
  var currentPathRole = getPathRole();

  if (currentPathRole === '') {
    return true;
  }
        
  var tagImplementedPathRoles = ['MAIN','PRODUCT_LIST','PRODUCT_SEARCH','PRODUCT_DETAIL','ORDER_BASKET','ORDER_ORDERRESULT'];
    return tagImplementedPathRoles.includes(currentPathRole);
}

function getPathRole() {
  const metas = document.getElementsByTagName('meta');
  for (let i = 0; i < metas.length; i++) {
    if (metas[i].getAttribute('name') === 'path_role') {
      return metas[i].getAttribute('content');
    }
  }

  return '';
}
</script>
<!-- END Criteo Visit Tag -->


<script type="text/javascript">
var email_sha256 = SHA256('');

function SHA256(s){
    if (s == '') {
      return '';
    }
    var chrsz   = 8;
    var hexcase = 0;
   
    function safe_add (x, y) {
      var lsw = (x & 0xFFFF) + (y & 0xFFFF);
      var msw = (x >> 16) + (y >> 16) + (lsw >> 16);
      return (msw << 16) | (lsw & 0xFFFF);
    }
   
    function S (X, n) { return ( X >>> n ) | (X << (32 - n)); }
    function R (X, n) { return ( X >>> n ); }
    function Ch(x, y, z) { return ((x & y) ^ ((~x) & z)); }
    function Maj(x, y, z) { return ((x & y) ^ (x & z) ^ (y & z)); }
    function Sigma0256(x) { return (S(x, 2) ^ S(x, 13) ^ S(x, 22)); }
    function Sigma1256(x) { return (S(x, 6) ^ S(x, 11) ^ S(x, 25)); }
    function Gamma0256(x) { return (S(x, 7) ^ S(x, 18) ^ R(x, 3)); }
    function Gamma1256(x) { return (S(x, 17) ^ S(x, 19) ^ R(x, 10)); }
   
    function core_sha256 (m, l) {
      
      var K = new Array(0x428A2F98, 0x71374491, 0xB5C0FBCF, 0xE9B5DBA5, 0x3956C25B, 0x59F111F1, 
        0x923F82A4, 0xAB1C5ED5, 0xD807AA98, 0x12835B01, 0x243185BE, 0x550C7DC3, 
        0x72BE5D74, 0x80DEB1FE, 0x9BDC06A7, 0xC19BF174, 0xE49B69C1, 0xEFBE4786, 
        0xFC19DC6, 0x240CA1CC, 0x2DE92C6F, 0x4A7484AA, 0x5CB0A9DC, 0x76F988DA, 
        0x983E5152, 0xA831C66D, 0xB00327C8, 0xBF597FC7, 0xC6E00BF3, 0xD5A79147, 
        0x6CA6351, 0x14292967, 0x27B70A85, 0x2E1B2138, 0x4D2C6DFC, 0x53380D13, 
        0x650A7354, 0x766A0ABB, 0x81C2C92E, 0x92722C85, 0xA2BFE8A1, 0xA81A664B, 
        0xC24B8B70, 0xC76C51A3, 0xD192E819, 0xD6990624, 0xF40E3585, 0x106AA070, 
        0x19A4C116, 0x1E376C08, 0x2748774C, 0x34B0BCB5, 0x391C0CB3, 0x4ED8AA4A, 
        0x5B9CCA4F, 0x682E6FF3, 0x748F82EE, 0x78A5636F, 0x84C87814, 0x8CC70208, 
        0x90BEFFFA, 0xA4506CEB, 0xBEF9A3F7, 0xC67178F2);

      var HASH = new Array(0x6A09E667, 0xBB67AE85, 0x3C6EF372, 0xA54FF53A, 0x510E527F, 0x9B05688C, 0x1F83D9AB, 0x5BE0CD19);

      var W = new Array(64);
      var a, b, c, d, e, f, g, h, i, j;
      var T1, T2;
   
      m[l >> 5] |= 0x80 << (24 - l % 32);
      m[((l + 64 >> 9) << 4) + 15] = l;
   
      for ( var i = 0; i<m.length; i+=16 ) {
        a = HASH[0];
        b = HASH[1];
        c = HASH[2];
        d = HASH[3];
        e = HASH[4];
        f = HASH[5];
        g = HASH[6];
        h = HASH[7];
   
        for ( var j = 0; j<64; j++) {
          if (j < 16) W[j] = m[j + i];
          else W[j] = safe_add(safe_add(safe_add(Gamma1256(W[j - 2]), W[j - 7]), Gamma0256(W[j - 15])), W[j - 16]);
   
          T1 = safe_add(safe_add(safe_add(safe_add(h, Sigma1256(e)), Ch(e, f, g)), K[j]), W[j]);
          T2 = safe_add(Sigma0256(a), Maj(a, b, c));
   
          h = g;
          g = f;
          f = e;
          e = safe_add(d, T1);
          d = c;
          c = b;
          b = a;
          a = safe_add(T1, T2);
        }
   
        HASH[0] = safe_add(a, HASH[0]);
        HASH[1] = safe_add(b, HASH[1]);
        HASH[2] = safe_add(c, HASH[2]);
        HASH[3] = safe_add(d, HASH[3]);
        HASH[4] = safe_add(e, HASH[4]);
        HASH[5] = safe_add(f, HASH[5]);
        HASH[6] = safe_add(g, HASH[6]);
        HASH[7] = safe_add(h, HASH[7]);
      }
      return HASH;
    }
   
    function str2binb (str) {
      var bin = Array();
      var mask = (1 << chrsz) - 1;
      for(var i = 0; i < str.length * chrsz; i += chrsz) {
        bin[i>>5] |= (str.charCodeAt(i / chrsz) & mask) << (24 - i%32);
      }
      return bin;
    }
   
    function Utf8Encode(string) {
      string = string.replace(/\r\n/g,"\n");
      var utftext = "";
   
      for (var n = 0; n < string.length; n++) {
   
        var c = string.charCodeAt(n);
   
        if (c < 128) {
          utftext += String.fromCharCode(c);
        }
        else if((c > 127) && (c < 2048)) {
          utftext += String.fromCharCode((c >> 6) | 192);
          utftext += String.fromCharCode((c & 63) | 128);
        }
        else {
          utftext += String.fromCharCode((c >> 12) | 224);
          utftext += String.fromCharCode(((c >> 6) & 63) | 128);
          utftext += String.fromCharCode((c & 63) | 128);
        }
   
      }
   
      return utftext;
    }
   
    function binb2hex (binarray) {
      var hex_tab = hexcase ? "0123456789ABCDEF" : "0123456789abcdef";
      var str = "";
      for(var i = 0; i < binarray.length * 4; i++) {
        str += hex_tab.charAt((binarray[i>>2] >> ((3 - i%4)*8+4)) & 0xF) +
        hex_tab.charAt((binarray[i>>2] >> ((3 - i%4)*8  )) & 0xF);
      }
      return str;
    }
   
    s = Utf8Encode(s);
    return binb2hex(core_sha256(str2binb(s), s.length * chrsz));
   
  }
</script>
</div>
<!-- CMC script -->

<!-- fbe -->
<!-- CMC3 script -->
<div id="fbe_common_top_script" style="display:none;">
  <script type="text/javascript">
if (typeof facebookChannel === 'undefined') {
  var facebookChannel = {
    mall_id: CAFE24.SHOP.getMallID(),
    shop_no: CAFE24.SDE_SHOP_NUM,
    shop_id: CAFE24.SHOP.getMallID() + '.' + CAFE24.SDE_SHOP_NUM,
    external_id: null,
    event_id: null,

    setInitActivated: function(is_activated) {
      window.top.fbe_init_activated = !!is_activated;
    },
    getInitActivated: function() {
      return !!window.top.fbe_init_activated;
    },
    setEventActivated: function(event_type, is_activated) {
      if (typeof event_type === 'string' && event_type) {
        let key = 'fbe_' + event_type + '_activated'
        window.top[key] = !!is_activated;
      }
    },
    getEventActivated: function(event_type) {
      if (typeof event_type === 'string' && event_type) {
        let key = 'fbe_' + event_type + '_activated'
        return !!window.top[key];
      }
      return false;
    },
    getCookie: function(name) {
      return (name = (document.cookie + ';').match(name + '=.*;')) && name[0].split(/=|;/)[1];
    },
    getExternalId: function() {
      return facebookChannel.getCookie('fb_external_id');
    },
    getEventId: function() {
      return facebookChannel.getCookie('fb_event_id');
    },
    getInt: function(value) {
      let value_int = parseInt(value);
      value_int = isNaN(value_int) ? 0 : value_int;
      return value_int;
    },
    getFloat: function(value) {
      let value_float = parseFloat(value);
      value_float = isNaN(value_float) ? 0.00 : value_float.toFixed(2);
      return value_float;
    },
    init: function() {
      if (facebookChannel.getInitActivated()) {
        return;
      }
      facebookChannel.setInitActivated(true);

      !function(f,b,e,v,n,t,s)
      {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
        n.callMethod.apply(n,arguments):n.queue.push(arguments)};
        if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
        n.queue=[];t=b.createElement(e);t.async=!0;
        t.src=v;s=b.getElementsByTagName(e)[0];
        s.parentNode.insertBefore(t,s)}(window,document,'script',
        'https://connect.facebook.net/en_US/fbevents.js');

      if ((typeof EC_GLOBAL_INFO !== 'undefined' && EC_GLOBAL_INFO.getCountryCode() === 'US') || (typeof SHOP !== 'undefined' && SHOP.getLanguage() === 'en_US')) {
        fbq('dataProcessingOptions', ['LDU'], 0, 0);
      }

      if (typeof ECLOG !== 'undefined' && !!ECLOG.EXTERNAL_ID) {
        ECLOG.EXTERNAL_ID.chk(facebookChannel.shop_id, function(error, external_id) {
          if (error || !external_id) {
            external_id = facebookChannel.getExternalId();
            console.info('external_id is cookie value.', '(1)');
          }
          fbq('init', '1666094513694636',{external_id: external_id}, {agent: 'plcafe24'});
          fbq('trackSingle', '1666094513694636', 'PageView');
          facebookChannel.external_id = external_id;
        });
      } else {
        let external_id = facebookChannel.getExternalId();
        console.info('external_id is cookie value.', '(2)');

        fbq('init', '1666094513694636',{external_id: external_id}, {agent: 'plcafe24'});
        fbq('trackSingle', '1666094513694636', 'PageView');
        facebookChannel.external_id = external_id;
      }
    },
    pixelEvent: function(event_type, callback, is_cookie_event) {
      if (facebookChannel.getEventActivated(event_type)) {
        return;
      }
      facebookChannel.setEventActivated(event_type, true);
      is_cookie_event = !!is_cookie_event;

      let retry = 0;
      let execute = function() {
        if (!facebookChannel.external_id) {
          if (retry < 10) {
            retry++;
            if (retry >= 5) {
              console.warn('retry #' + retry, event_type);
            }
            setTimeout(execute, 1000);
          } else {
            console.warn('external_id is empty.');
          }
          return;
        }

        if (callback.length === 0) {
          callback();
        }
        else if (!is_cookie_event && typeof ECLOG !== 'undefined' && !!ECLOG.EVENT_ID) {
          ECLOG.EVENT_ID.chk(facebookChannel.shop_id, function(error, event_id) {
            if (error || !event_id) {
              event_id = facebookChannel.getEventId();
              console.info('event_id is cookie value.', '(1)');
            }
            facebookChannel.event_id = event_id;
            if (event_id) {
              callback(event_id);
            } else {
              console.warn('event_id is empty.', '(1)');
            }
          });
        }
        else {
          let event_id = facebookChannel.getEventId();
          console.info('event_id is cookie value.', '(2)');
          facebookChannel.event_id = event_id;
          if (event_id) {
            callback(event_id);
          } else {
            console.warn('event_id is empty.', '(2)');
          }
        }
      };
      execute();
    },
    messengerChatPlugin: function() {
      let event_type = 'messenger';
      let sdk_version = '';
      let locale = '';
      if (!sdk_version) {
        console.warn('sdk_version is empty.');
        return;
      }
      if (!locale) {
        console.warn('locale is empty.');
        return;
      }
      if (facebookChannel.getEventActivated(event_type)) {
        return;
      }
      facebookChannel.setEventActivated(event_type, true);

      window.fbAsyncInit = function() {
        FB.init({
          appId : '216637735743129',
          autoLogAppEvents : true,
          xfbml : true,
          version : sdk_version
        });
      };
      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/' + locale + '/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    }
  };

  window.addEventListener('load', facebookChannel.init, false);
}
</script>
<noscript><img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=1666094513694636&ev=PageView&noscript=1"
/></noscript>
</div>
<!-- CMC3 script -->
 
<!-- gcs -->
<!-- Google tag (gtag.js) -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=AW-760023225"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-760023225');
</script>


<script>
  gtag('event', 'conversion', {
      'send_to': 'AW-760023225/WMO5CKLUgZ8YELmRtOoC',
      'value': 0.0,
  });
</script>
<!-- gfa -->
<script type="text/javascript">document.addEventListener("DOMContentLoaded", function() {
                EC_PlusAppBridge.setBridgeFunction()
                });</script>
<!-- kmp -->
<!-- CMC3 script -->
<div id="kmp_common_top_script" style="display:none;">
<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
  kakaoPixel('1556159681806449412').pageView();
  kakaoPixel.setServiceOrigin('20001');
</script>

</div>
<!-- CMC3 script -->
 
<!-- rac -->

<!-- tgg -->
<!-- CMC script -->
<div id="tgg_common_bottom_script" style="display:none;">
<!-- WIDERPLANET HOME SCRIPT START 2016.8.24 -->
<div id="wp_tg_cts" style="display:none;"></div>
<script type="text/javascript">
var wp_conf = 'ti=25473&v=1&device=web';
</script>
<script type="text/javascript" defer="" src="//cdn-aitg.widerplanet.com/js/wp_astg_2.0_mall.js"></script>
<!-- // WIDERPLANET HOME SCRIPT END 2016.8.24 -->
</div>
<!-- CMC script -->

<!-- External Script End -->

<script type="text/javascript" src="//t1.daumcdn.net/adfit/static/kp.js" charset="utf-8"></script>
<script type="text/javascript" src="//t1.kakaocdn.net/kakao_js_sdk/v1/kakao.min.js" charset="utf-8"></script>
<script type="text/javascript" src="/ind-script/i18n.php?lang=ko_KR&amp;domain=front&amp;v=2312201271" charset="utf-8"></script>


<script type="text/javascript">
var sIsChannelUi = 'F';
var sChRef = '';
var sUseShoppingpayPg = 'F';
var sOwnMallLanding = 'F';
var sShoppingPayCookie = 'F';
if (sIsChannelUi === 'T') {
sessionStorage.setItem('ch_ref', sChRef);
}
CAFE24.getChRefData = function() {
if (sIsChannelUi === 'T') {
return sessionStorage.getItem('ch_ref');
}
}
// 자사몰랜딩/유튜브랜딩 공용
CAFE24.checkChannelUI = function() {
if ((sIsChannelUi === 'T' && sessionStorage.getItem('ch_ref') || (sUseShoppingpayPg === 'T' && sOwnMallLanding === 'T'))) {
return true;
} else {
return false;
}
}
// 자사몰랜딩 UI확인
CAFE24.isOwnMallLandingUI = function() {
return sUseShoppingpayPg === 'T' && sOwnMallLanding === 'T';
}
CAFE24.attachChRef = function(sUrl) {
if (sUrl) {
var sChRef = CAFE24.getChRefData();
if (sChRef) {
var sSeparator = (sUrl.includes('?')) ? '&' : '?';
sUrl += sSeparator + 'ch_ref=' + sChRef;
}
}
return sUrl;
};
CAFE24.MOBILE_WEB = false; var mobileWeb = CAFE24.MOBILE_WEB;
try {
var isUseLoginKeepingSubmit = false;
// isSeqNoKeyExpiretime
function isSeqNoKeyExpiretime(iExpiretime)
{
var sDate = new Date();
var iNow = Math.floor(sDate.getTime() / 1000);
// 유효시간 확인
if (iExpiretime > iNow) {
return false;
}
return true;
}
function isUseLoginKeeping()
{
// 디바이스 확인
if (EC_MOBILE_DEVICE === false) {
return;
}
// 로그인 여부
if (sessionStorage.getItem('member_' + CAFE24.SDE_SHOP_NUM) !== null) {
return;
}
var sLoginKeepingInfo = localStorage.getItem('use_login_keeping_info');
var iSeqnoExpiretime;
var iSeqNoKey;
if (sLoginKeepingInfo == null) {
iSeqnoExpiretime = localStorage.getItem('seq_no_key_expiretime');
iSeqNoKey = localStorage.getItem('seq_no_key');
// 유효시간, key 값 확인
if (iSeqnoExpiretime === null || iSeqNoKey === null) {
return;
}
} else {
var oLoginKeepingInfo = JSON.parse(sLoginKeepingInfo);
iSeqNoKey = oLoginKeepingInfo.seq_no_key;
iSeqnoExpiretime = oLoginKeepingInfo.seq_no_key_expiretime;
if (isNaN(iSeqNoKey) === true || isNaN(iSeqnoExpiretime) === true) {
return;
}
}
if (isSeqNoKeyExpiretime(iSeqnoExpiretime) === false) {
return;
}
useLoginKeepingSubmit();
}
function findGetParamValue(paramKey)
{
var result = null,
tmp = [];
location.search.substr(1).split('&').forEach(function (item) {
tmp = item.split('=');
if (tmp[0] === paramKey) result = decodeURIComponent(tmp[1]);
});
return result;
}
function useLoginKeepingSubmit()
{
var iSeqnoExpiretime;
var iSeqNoKey;
var sUseLoginKeepingIp;
var sLoginKeepingInfo = localStorage.getItem('use_login_keeping_info');
if (sLoginKeepingInfo == null) {
iSeqnoExpiretime = localStorage.getItem('seq_no_key_expiretime');
iSeqNoKey = localStorage.getItem('seq_no_key');
} else {
var oLoginKeepingInfo = JSON.parse(sLoginKeepingInfo);
iSeqNoKey = oLoginKeepingInfo.seq_no_key;
iSeqnoExpiretime = oLoginKeepingInfo.seq_no_key_expiretime;
sUseLoginKeepingIp = oLoginKeepingInfo.use_login_keeping_ip;
}
var oForm = document.createElement('form');
oForm.method = 'post';
oForm.action = '/exec/front/member/LoginKeeping';
document.body.appendChild(oForm);
var oSeqNoObj = document.createElement('input');
oSeqNoObj.name = 'seq_no_key';
oSeqNoObj.type = 'hidden';
oSeqNoObj.value = iSeqNoKey;
oForm.appendChild(oSeqNoObj);
oSeqNoObj = document.createElement('input');
oSeqNoObj.name = 'seq_no_key_expiretime';
oSeqNoObj.type = 'hidden';
oSeqNoObj.value = iSeqnoExpiretime;
oForm.appendChild(oSeqNoObj);
var returnUrl = findGetParamValue('returnUrl');
if (returnUrl == '' || returnUrl == null) {
returnUrl = location.pathname + location.search;
}
oSeqNoObj = document.createElement('input');
oSeqNoObj.name = 'returnUrl';
oSeqNoObj.type = 'hidden';
oSeqNoObj.value = returnUrl;
oForm.appendChild(oSeqNoObj);
if (sUseLoginKeepingIp != undefined) {
oSeqNoObj = document.createElement('input');
oSeqNoObj.name = 'use_login_keeping_ip';
oSeqNoObj.type = 'hidden';
oSeqNoObj.value = sUseLoginKeepingIp;
oForm.appendChild(oSeqNoObj);
}
oForm.submit();
isUseLoginKeepingSubmit = true;
}
isUseLoginKeeping();
} catch(e) {
}
CAFE24.KAKAO_PIXEL_BRIDGE.init("1556159681806449412");
sErrorMessage = '';
CAFE24.KAKAO_PIXEL_BRIDGE.init("1556159681806449412");
var aLogData = {"log_server1":"eclog2-259.cafe24.com","log_server2":"elg-db-svcm-167.cafe24.com","mid":"hucheum","stype":"e","domain":"","shop_no":1,"lang":"ko_KR","ver":2,"hash":"4a5873062ffb80dce09247c650a88238","ca":"cfa-js.cafe24.com\/cfa.js","etc":"","mobile_flag":"F"};
var sMileageName = '적립금';
var sMileageUnit = '[:PRICE:]원';
var sDepositName = '예치금';
var sDepositUnit = '원';
CAFE24.SHOP_CURRENCY_INFO = {"1":{"aShopCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"aShopSubCurrencyInfo":null,"aBaseCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"fExchangeRate":1,"fExchangeSubRate":null,"aFrontCurrencyFormat":{"head":"","tail":""},"aFrontSubCurrencyFormat":{"head":"","tail":""}}}; var SHOP_CURRENCY_INFO = CAFE24.SHOP_CURRENCY_INFO;
var EC_ASYNC_LIVELINKON_ID = '';
CAFE24.APPSCRIPT_ASSIGN_DATA = CAFE24.APPSCRIPT_ASSIGN_DATA || [{'src':'https://livelog.co.kr/js/siteplugin_cafe24.php?NggyNAg4CDEINTIINAgyMwg4Ngg1CDYIOAg1CDIyCDMwCDAIODUIMjQINQgyOAgyNwg1MAgyOQg0CDgwCDY2CA&vs=20190628130537.1&client_id=nGJG1EoQNlRkYUTgC1XGTA'},{'src':'https://widgets.cre.ma/cafe24/init.js?vs=20221212123819.1&client_id=SdksuzSDEpyhy6OLNQpKXC', 'integrity': 'sha384-WDAJpSw3zUhpJD5ZenKaoJ5rcaUpCGj02Qgj7ZL2wzXbp+GRRDZgJIpeGnZxE4GF'},{'src':'http://www.addpulseapi.com/js/app/app.recommend.min.js?m=hucheum&vs=20200723163717.1&client_id=awWoKYofLyOWDVBD9vO7gH'},{'src':'https://www.addpulseapi.com/js/app/app.recommend.min.js?m=hucheum&vs=20200723163717.1&client_id=awWoKYofLyOWDVBD9vO7gH'}];
CAFE24.APPSCRIPT_SDK_DATA = CAFE24.APPSCRIPT_SDK_DATA || ['application','store','category','order','product','collection','design','community','customer','personal','promotion','privacy','mileage','notification','supply'];
var EC_APPSCRIPT_ASSIGN_DATA = CAFE24.getDeprecatedNamespace('EC_APPSCRIPT_ASSIGN_DATA');
var EC_APPSCRIPT_SDK_DATA = CAFE24.getDeprecatedNamespace('EC_APPSCRIPT_SDK_DATA');
</script>
</div>
<!-- [할인/부가결제] 할인/부가결제, 자동 할인내역 레이어 팝업 -->
<!--
        이 파일은 원터치 주문서의 읽기 전용 파일입니다.
        이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
        원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
-->
<div class="ec-jigsawWrapper">
    <!-- app tag -->
    <div id="ec-orderform-discount-head"></div>

    <div id="ec-jigsaw-area-discount" class="ec-base-fold eToggle selected displaynone">
        <div id="ec-jigsaw-title-discount" class="title">
            <h2>할인/부가결제</h2>
            <span id="ec-jigsaw-heading-discount" class="txtStrong gRight" style="display: none;">
                    -<span id="discount_total_sale_price_view">0</span>                    <span class="displaynone"><span id="discount_total_sale_price_ref_view"><span class="eRefPrice"></span></span></span>
                </span>
        </div>
        <div class="contents">
            <div class="discountDetail displaynone" id="ec-shop-orderfom-total-benefit-view-id" style="display: none;">
                <div class="discountList eToggle">
                    <div class="title">
                        <div class="heading">자동 할인</div>
                        <div class="control">
                            <span class="txtEm"><span id="total_benefit_price_view">0</span></span>
                        </div>
                    </div>
                    <div class="contents">
                        <ul id="total_benefit_list">
<li class="displaynone ">
                                <span class="discountName">정기배송할인</span>
                                <span class="discountPrice"><span id="mBenefitSubscriptionPayseqSale">0</span></span>
                            </li>
                            <li class="displaynone ec-shop-mBenefitPeriodSale">
                                <span class="discountName">기간할인</span>
                                <span class="discountPrice"><span id="mBenefitPeriodSale">0</span></span>
                            </li>
                            <li class="displaynone ec-shop-mBenefitMemberSale">
                                <span class="discountName">회원할인</span>
                                <span class="discountPrice"><span id="mBenefitMemberSale">0</span></span>
                            </li>
                            <li class="displaynone ec-shop-mBenefitRebuySale">
                                <span class="discountName">재구매할인</span>
                                <span class="discountPrice"><span id="mBenefitRebuySale">0</span></span>
                            </li>
                            <li class="displaynone ec-shop-mBenefitBulkSale">
                                <span class="discountName">대량구매할인</span>
                                <span class="discountPrice"><span id="mBenefitBulkSale">0</span></span>
                            </li>
                            <li class="displaynone">
                                <span class="discountName">바로가기(링콘)할인</span>
                                <span class="discountPrice"><span id="mBenefitLivelinkonSale">0</span></span>
                            </li>
                            <li class="displaynone ec-shop-mBenefitNewproductSale">
                                <span class="discountName">신규상품할인</span>
                                <span class="discountPrice"><span id="mBenefitNewproductSale">0</span></span>
                            </li>
                            <li class="displaynone ec-shop-mBenefitSetproductSale">
                                <span class="discountName">세트할인</span>
                                <span class="discountPrice"><span id="mBenefitSetproductSale">0</span></span>
                            </li>
                            <li class="displaynone ec-shop-mBenefitShipfeeSale" style="display: none;">
                                <span class="discountName">배송비할인</span>
                                <span class="discountPrice"><span id="mBenefitShipfeeSale">0</span></span>
                            </li>
                            <li class="displaynone ec-shop-mBenefitMembergroupSale" style="display: none;">
                                <span class="discountName">회원등급할인</span>
                                <span class="discountPrice"><span id="mBenefitMembergroupSale">0</span></span>
                            </li>
                        </ul>
</div>
                </div>
                <span class="summary"><span id="total_only_mobile_sale_price_display_id" class="displaynone">(모바일 혜택 <span id="total_only_mobile_sale_price_id" class="txtEm">0</span>)</span><span id="mTotalOnlyMobileSaleTmp" class="displaynone">(모바일 혜택 <span class="txtEm">[TOTAL_ONLY_MOBILE_SALE]</span>)</span></span>
            </div>
            <div class="discountDetail displaynone mDiscountcodeSelect" style="display: block;">
                <div class="displayblock">
                    <strong class="heading">할인코드 적용</strong>
                    <div class="control">
<input type="text" name="ec_discountcode" class="inputTypeText"><a href="#none" id="ec_discountcode" class="btnNormal">적용</a>
</div>
                </div>
            </div>
            <div class="discountDetail mDiscountcodeModify" style="display: none;">
                <div class="displayFlex">
                    <strong class="heading">할인코드 적용</strong>
                    <div class="control">
<span class="discountPrice"><span id="ec_discountcode_price" class="discountStrong"></span></span><a href="#none" class="btnNormal" id="ec_discountcode_clear">초기화</a>
</div>
                </div>
                <ul id="ec_discountcode_info" class="ec-base-help ec-order-expandwrap"></ul>
</div>
            <div class="discountDetail displaynone mCouponSelect" style="display: block;">
                <div class="displayFlex">
                    <strong class="heading">쿠폰 할인</strong>
                    <div class="control">
                        <span class="discountPrice"><span id="" class="mTotalCouponDiscount discountStrong">0</span></span>
                        <a href="#none" id="btn_coupon_select" class="btnNormal">쿠폰 적용</a>
                    </div>
                </div>
                <span class="summary">보유쿠폰 <span class="txtEm">개</span></span>
                <p class="discountMsg ec-autoApplyMsg txtEm" style="display: none;">자동 적용된 할인 쿠폰을 확인해 주세요.</p>
            </div>
            <div class="discountDetail mCouponModify" style="display: none;">
                <div class="displayFlex">
                    <strong class="heading">쿠폰 할인</strong>
                    <div class="control">
                        <span class="discountPrice"><span class="mTotalCouponDiscount discountStrong">0</span></span>
                        <a href="#none" id="eCouponModify" class="btnNormal">쿠폰 적용</a>
                    </div>
                </div>
                <span class="summary">보유쿠폰 <span class="txtEm">개</span></span>
                <p class="discountMsg ec-autoApplyMsg txtEm" style="display: none;">자동 적용된 할인 쿠폰을 확인해 주세요.</p>
                <ul class="couponWrap displaynone">
<li id="divCpnView" class="coupon ec-order-expandwrap">
                        <div class="couponList">
                            <span id="txt_cpn_name" class="ec-coupon-expand"><span class="txt_info"></span></span>
                            <span id="txt_cpn_price"></span>
                            <span id="txt_cpn_attr_D"></span>
                            <span id="txt_cpn_attr_M"></span>
                            <span id="txt_cpn_attr_C"></span>
                            <span class="displaynone" id="mProductCouponDiscount">0</span>
                            <span class="displaynone" id="txt_cpn_sale2">0</span>
                            <span class="displaynone" id="mDeliveryCouponDiscount">0</span>
                            <button type="button" class="btnRemove" id="txt_cpn_delete">x</button>
                        </div>
                        <ul class="coupon-help-info">
<li>사용 기간 : <span id="txt_cpn_period"></span>
</li>
                            <li id="txt_cpn_paymethod_display">결제 조건 : <span id="txt_cpn_paymethod"></span>
</li>
                        </ul>
</li>
                </ul>
<ul id="divCpn" style="display:none;" class="couponWrap"></ul>
</div>
            <div id="mileage_use_area" class="discountDetail displaynone">
                <div class="displayblock">
                    <strong class="heading">적립금</strong>
                    <div class="control">
                        <input type="hidden" name="ori_total_avail_mileage" id="ori_total_avail_mileage" value="" disabled="">
                        <button type="button" class="btnNormal" id="all_use_mileage">전액 사용</button>
                    </div>
                </div>
                <span class="summary">보유 잔액 <span class="txtEm">원</span></span>
                <ul class="ec-base-help ec-order-expandwrap">
<li id="mileage_max_limit" class="ec-order-expand">1회 구매시 적립금 최대 사용금액은 0원입니다.</li>
                    <li>최소 적립금 원 이상일 때 사용 가능합니다.</li>
                    <li id="mileage_max_unlimit" class="displaynone">최대 사용금액은 제한이 없습니다.</li>
                    <li>적립금으로만 결제할 경우, 결제금액이 0으로 보여지는 것은 정상이며 [결제하기] 버튼을 누르면 주문이 완료됩니다.</li>
                    <li id="mileage_shipfee" class="displaynone">적립금 사용 시 배송비는 적립금으로 사용 할 수 없습니다.</li>
                    <li id="mileage_exception" class="displaynone">적립금 사용 시 해당 상품에 대한 적립금은 적립되지 않습니다.</li>
                </ul>
</div>
            <div class="discountDetail displaynone">
                <div class="displayblock">
                    <strong class="heading">예치금</strong>
                    <div class="control">
                        <input type="hidden" name="ori_total_deposit" id="ori_total_deposit" value="" disabled="">
                        <button type="button" class="btnNormal" id="all_use_deposit">전액 사용</button>
                    </div>
                </div>
                <span class="summary">보유 잔액 <span class="txtEm">원</span></span>
                <ul class="ec-base-help ec-order-expandwrap">
<li class="ec-order-expand">예치금은 사용제한 없이 언제든 결제가 가능합니다.</li>
                    <li>예치금으로만 결제할 경우, 결제금액이 0으로 보여지는 것은 정상이며 [결제하기] 버튼을 누르면 주문이 완료됩니다.</li>
                </ul>
</div>
            <div class="discountDetail discount_affiliate_template" style="display: none;">
                <div class="displayblock">
                    <strong class="heading">''</strong>
                    <div class="control">
                        <input id="input_affiliate" name="input_affiliate" fw-filter="" fw-label="" fw-msg="" class="inputTypeText affiliateInput" placeholder="" size="10" value="" type="text" readonly="" disabled="">
                        &nbsp;<input id="paymethod_affiliate" name="paymethod_affiliate" value="" type="hidden" disabled=""><input id="receiptIssuer_affiliate" name="receiptIssuer_affiliate" value="" type="hidden" disabled="">
                        &nbsp;<button type="button" class="btnNormal affiliate_balance" value="">조회</button>
                        <button type="button" class="btnNormal btn_reset affiliate_reset">초기화</button>
                    </div>
                </div>
            </div>
            <div class="totalPay">
                <h3 class="heading">적용금액</h3>
                <div class="txtEm">
                    -<span id="total_sale_price_view">0</span>                    <span class="refer displaynone">(<span id="total_sale_price_ref_view"><span class="eRefPrice"></span></span>)</span>
                </div>
                <span class="displaynone" id="total_addpay_price_view">0</span>
            </div>
        </div>
    </div>

    <!-- app tag -->
    <div id="ec-orderform-discount-tail"></div>
</div>
<!-- [결제정보] -->
<!--
        이 파일은 원터치 주문서의 읽기 전용 파일입니다.
        이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
        원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
-->
<div id="ec-jigsaw-area-payment" class="ec-base-fold eToggle selected">
    <div id="ec-jigsaw-title-payment" class="title">
        <h2>결제정보</h2>
    </div>
    <div class="contents">
        <!-- app tag -->
        <div id="ec-orderform-payment-head"></div>

        <div class="segment">
            <div class="ec-base-table gCellNarrow">
                <table border="1">
<caption>결제정보 상세</caption>
                    <colgroup>
<col style="width:155px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">주문상품</th>
                        <td class="right"><span id="total_product_base_price_id" class="price">55,500</span></td>
                    </tr>
<tr class="displaynone">
<th scope="row">부가세</th>
                        <td class="right"><span class="price"><span id="total_vat_price_id">+0</span></span></td>
                    </tr>
<tr>
<th scope="row">배송비 <span class="displaynone info">(착불 상품 포함)</span>
</th>
                        <td class="right"><span class="price">+<span id="total_ship_price_id">0</span></span></td>
                    </tr>
<tr id="total_local_ship_price_area" style="display: none;">
<th scope="row">지역별 배송비</th>
                        <td class="right"><span class="price">+<span id="total_local_ship_price_id">0</span></span></td>
                    </tr>
<tr class="discountView">
<th scope="row">할인/부가결제</th>
                        <td class="right"><span class="price"><span class="txtRed">-<span class="eRefPrice" id="payment_total_sale_price_view">0</span></span></span></td>
                    </tr>
<tr id="ec-shop-payment_discount_list_view" class="paymentList" style="display: none;">
<td colspan="2">
                            <ul>
<li id="ec-shop-payment_benefit_price2_area" style="display: none;">
                                    <span class="discountName"><i class="ico_auto"></i> 기본 할인</span>
                                    <span class="price">-<span id="ec-shop-payment_benefit_price2_view"></span></span>
                                </li>
                                <li id="ec-shop-payment_shipfee_area" style="display: none;">
                                    <span class="discountName"><i class="ico_delivery"></i> 배송비 할인</span>
                                    <span class="price">-<span id="ec-shop-payment_shipfee_view"></span></span>
                                </li>
                                <li id="ec-shop-payment_coupon_price2_area" style="display: none;">
                                    <span class="discountName"><i class="ico_copon"></i> 쿠폰 할인</span>
                                    <span class="price">-<span id="ec-shop-payment_coupon_price2_view"></span></span>
                                </li>
                                <li id="ec-shop-payment_discountcode_price_area" style="display: none;">
                                    <span class="discountName"><i class="ico_code"></i> 할인 코드</span>
                                    <span class="price">-<span id="ec-shop-payment_discountcode_price_view"></span></span>
                                </li>
                                <li id="ec-shop-payment_used_mileage_area" style="display: none;">
                                    <span class="discountName"><i class="ico_accumulate"></i> 적립금</span>
                                    <span class="price">-<span id="ec-shop-payment_used_mileage_view"></span></span>
                                </li>
                                <li id="ec-shop-payment_used_deposit_area" style="display: none;">
                                    <span class="discountName"><i class="ico_deposit"></i> 예치금</span>
                                    <span class="price">-<span id="ec-shop-payment_used_deposit_view"></span></span>
                                </li>
                                <li class="payment_affiliate_template" style="display: none;">
                                    <span class="discountName"></span>
                                    <span class="price">-<span id="ec-shop-payment_used_affiliate_view"></span>원</span>
                                </li>
                            </ul>
</td>
                    </tr>
<tr id="total_tax_area_id" class="displaynone">
<th scope="row"><span id="total_tax_name_id"></span></th>
                        <td class="right"><span class="price">+<span id="total_tax_id">0</span></span></td>
                    </tr>
</tbody>
</table>
</div>
        </div>
        <div class="totalPay paymentPrice">
            <h3 class="heading">최종 결제 금액</h3>
            <strong class="txtStrong">
                <span id="payment_total_order_sale_price_view">55,500</span>                <span class="refer displaynone">(<span id="payment_total_order_sale_price_ref_view"><span class="eRefPrice"></span></span>)</span>
            </strong>
            <span class="displaynone"><input id="total_price" name="total_price" fw-filter="isFill" fw-label="결제금액" fw-msg="" class="inputTypeText" placeholder="" style="text-align:right;ime-mode:disabled;clear:none;border:0px;float:none;" size="10" readonly="1" value="55500" type="text" disabled=""></span>
        </div>

        <!-- app tag -->
        <div id="ec-orderform-payment-tail"></div>
    </div>
</div>
<!-- [결제수단] -->
<!--
        이 파일은 원터치 주문서의 읽기 전용 파일입니다.
        이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
        원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
-->
<div id="ec-jigsaw-area-paymethod" class="ec-base-fold eToggle selected">
    <div id="ec-jigsaw-title-paymethod" class="title">
        <h2>결제수단</h2>
    </div>
    <div class="contents">
        <!-- app tag -->
        <div id="ec-orderform-paymethod-head"></div>

        <div class="segment">
            <ul class="payMethod">
<li class="ec-paymethod-recentArea displaynone">
                    <input type="radio" name="paymethod" id="paymethod-recent" class="" autocomplete="off" disabled=""><label for="paymethod-recent">최근 결제수단</label>
                    <div id="ec-payment-recentPaymethodText" class="inner"></div>
                </li>
                <li class="ec-paymethod-newArea selected">
                    <input type="radio" name="paymethod" id="paymethod-new" class="displaynone" checked="" autocomplete="off"><label for="paymethod-new"><span class="displaynone">다른 </span>결제수단 선택</label>
                    <div class="inner">
                        <span class="ec-base-label"><input id="addr_paymethod0" name="addr_paymethod" fw-filter="isFill" fw-label="결제방식" fw-msg="" value="cash" type="radio" checked="checked" autocomplete="off"><label for="addr_paymethod0">무통장 입금</label></span>
<span class="ec-base-label"><input id="addr_paymethod1" name="addr_paymethod" fw-filter="isFill" fw-label="결제방식" fw-msg="" value="tcash" type="radio" autocomplete="off"><label for="addr_paymethod1">에스크로(실시간 계좌이체)</label></span>
<span class="ec-base-label"><input id="addr_paymethod2" name="addr_paymethod" fw-filter="isFill" fw-label="결제방식" fw-msg="" value="card" type="radio" autocomplete="off"><label for="addr_paymethod2">카드 결제</label></span>
<span class="ec-base-label"><input id="addr_paymethod3" name="addr_paymethod" fw-filter="isFill" fw-label="결제방식" fw-msg="" value="cell" type="radio" autocomplete="off"><label for="addr_paymethod3">휴대폰 결제</label></span>
<span class="ec-base-label"><input id="addr_paymethod4" name="addr_paymethod" fw-filter="isFill" fw-label="결제방식" fw-msg="" value="kakaopay" type="radio" autocomplete="off"><label for="addr_paymethod4">카카오페이(간편결제) <a href="https://www.kakaopay.com" target="_blank"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_info2.gif" alt="info"></a></label></span>                    </div>
                </li>
            </ul>
</div>

        <div class="ec-paymethod-input-detail">
            <div id="payment_input_cash" class="ec-base-table typeWrite" style="">
                <table border="1">
<caption>무통장입금 정보 입력</caption>
                    <colgroup>
<col style="width:100px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">입금은행 <span class="icoRequired">필수</span>
</th>
                        <td><select id="bankaccount" name="bankaccount" fw-filter="" fw-label="무통장 입금은행" fw-msg="">
<option value="-1">::: 선택해 주세요. :::</option>
<option value="bank_04:042601-04-204326:(주) 일현코퍼레이션:국민은행:www.kbstar.com">국민은행 042601-04-204326 (주) 일현코퍼레이션</option>
<option value="bank_20:1005-402-349100:주식회사 일현코퍼레이션:우리은행:www.wooribank.com">우리은행 1005-402-349100 주식회사 일현코퍼레이션</option>
</select></td>
                    </tr>
<tr>
<th scope="row">입금자명 <span class="icoRequired">필수</span>
</th>
                        <td><input id="pname" name="pname" fw-filter="" fw-label="무통장 입금자명" fw-msg="" class="inputTypeText" placeholder="" size="15" maxlength="20" value="" type="text"></td>
                    </tr>
</tbody>
</table>
</div>

            <div id="payment_input_tcash" class="ec-base-table typeWrite" style="display: none;">
                <table border="1">
<caption>실시간 계좌이체 정보 입력</caption>
                    <colgroup>
<col style="width:100px">
<col style="width:auto">
</colgroup>
<tbody><tr>
<th scope="row">예금주명 <span class="icoRequired">필수</span>
</th>
                        <td><input id="allat_account_nm" name="allat_account_nm" fw-filter="" fw-label="무통장 입금자명" fw-msg="" class="inputTypeText" placeholder="" size="26" maxlength="30" value="" type="text"></td>
                    </tr><tr><th scope="row"></th><td><input type="checkbox" name="flagEscrowUse" id="flagEscrowUse0" value="T"><label for="flagEscrowUse0"> 에스크로(구매안전)서비스를 적용합니다.</label></td></tr></tbody>
</table>
</div>

            <!-- 에스크로(가상계좌) -->
            <div id="payment_input_icash" class="ec-base-table typeWrite" style="display: none;">
                <table border="1">
<caption>에스크로(가상계좌)</caption>
                    <colgroup>
<col style="width:100px">
<col style="width:auto">
</colgroup>
<tbody><tr>
<th scope="row">에스크로</th>
                        <td><input id="flagEscrowIcashUse0" name="flagEscrowIcashUse" fw-filter="" fw-label="에스크로(구매안전)" fw-msg="" value="T" type="checkbox"><label for="flagEscrowIcashUse0"></label><label for="flagEscrowIcashUse0">에스크로(구매안전)서비스를 적용합니다.</label>
</td>
                    </tr></tbody>
</table>
</div>

            <!-- 카드사 직접결제: 카드/할부선택 -->
            <div class="ec-base-table typeWrite">
                            </div>

            <!-- 결제수단 도움말 -->
            <div class="helpArea displaynone">
                <!-- 무통장입금, 카드결제, 휴대폰결제, 실시간계좌이체, 페이팔, 엑심베이, 엑시즈, 알리페이 -->
                <ul id="pg_paymethod_info" class="ec-base-help typeDash" style="display: none;">
<li id="pg_paymethod_info_shipfee">최소 결제 가능 금액은 총 결제금액에서 배송비를 제외한 금액입니다.</li>
                    <li id="pg_paymethod_info_pg">소액 결제의 경우 PG사 정책에 따라 결제 금액 제한이 있을 수 있습니다.</li>
                </ul>
<!-- 케이페이 도움말 --><ul id="kpay_info" class="ec-base-help typeDash" style="display: none;">
<li>케이페이 앱을 설치한 후, 최초 1회 카드정보를 등록하셔야 사용 가능합니다.</li>
                </ul>
<!-- 페이나우 도움말 --><ul id="paynow_info" class="ec-base-help typeDash" style="display: none;">
<li>페이나우 앱을 설치한 후, 최초 1회 카드 및 계좌 정보를 등록하셔야 사용 가능합니다.</li>
                </ul>
<!-- 페이코 도움말 --><ul id="payco_info" class="ec-base-help typeDash" style="display: none;">
<li>페이코(<a href="//www.payco.com" target="_blank">www.payco.com</a>)에 회원가입 후, 최초 1회 카드 및 계좌 정보를 등록하셔야 사용 가능합니다.</li>
                </ul>
<!-- 카카오페이 도움말 --><ul id="kakaopay_info" class="ec-base-help typeDash" style="display: none;">
<li>카카오톡 앱을 설치한 후, 최초 1회 카드정보를 등록하셔야 사용 가능합니다.</li>
                    <li>인터넷 익스플로러는 8 이상에서만 결제 가능합니다.</li>
                    <li>카카오머니로 결제 시, 현금영수증 발급은 ㈜카카오페이에서 발급가능합니다.</li>
                </ul>
<!-- 스마일페이 도움말 --><ul id="smilepay_info" class="ec-base-help typeDash" style="display: none;">
<li>앱 설치없이 회원가입 또는 G마켓/옥션/G9 ID 로그인 후 바로 이용 가능합니다.</li>
                    <li>최초 1회 카드 정보를 등록하셔야 사용 가능합니다.</li>
                    <li>결제시 스마일캐시 0.5% 자동적립되며(최대5천원), 스마일캐시는 스마일페이 전 가맹점에서 적립과 사용이 가능합니다.</li>
                </ul>
<!-- 네이버페이 도움말 --><ul id="naverpay_info" class="ec-base-help typeDash" style="display: none;">
<li>주문 변경 시 카드사 혜택 및 할부 적용 여부는 해당 카드사 정책에 따라 변경될 수 있습니다.</li>
                    <li>네이버페이는 네이버ID로 별도 앱 설치 없이 신용카드 또는 은행 계좌 정보를 등록하여 네이버페이 비밀번호로 결제할 수 있는 간편결제 서비스입니다.</li>
                    <li>네이버페이 카드 간편결제는 네이버페이에서 제공하는 카드사별 무이자, 청구 할인 혜택을 받을 수 있습니다.</li>
                </ul>
<!-- 토스 도움말 --><ul id="toss_info" class="ec-base-help typeDash" style="display: none;">
<li>토스는 간편하게 지문 또는 비밀번호만으로 결제할 수 있는 빠르고 편리한 간편 결제 서비스입니다.</li>
                    <li>토스 결제 후 취소/반품 등이 발생할 경우 토스를 통한 신용카드 취소/토스머니 환불이 이루어집니다. </li>
                    <li>토스 이용가능 결제수단 : 국내 발행 신용/체크카드, 토스머니</li>
                </ul>
<!-- 카페24페이 도움말 --><ul id="cafe24pay_info" class="ec-base-help typeDash" style="display: none;">
<li>카페24페이는 카페24에 회원가입 또는 로그인 후 별도 앱 설치 없이 결제 가능합니다.</li>
                    <li>최초 1회 카드 정보를 등록하여야 사용 가능합니다.</li>
                </ul>
<!-- 후불 결제 도움말 --><div id="pg_paymethod_info_defer" class="displaynone" style="display: none;">
                    <!-- NP Postpay/GMO Payment After Delivery -->
                    <ul id="pg_paymethod_info_defer_type_a" class="ec-base-help typeDash" style="display: none;">
<li>상품 수령과 동시에 배송 직원에게 결제 수수료를 지불하는 후불 결제수단입니다.</li>
                        <li>최종 결제금액은 후불 결제 수수료가 포함된 금액으로 계산됩니다.</li>
                        <li>희망배송업체/방식을 선택하시면 배송업체별 후불 결제 수수료가 적용됩니다.</li>
                        <li>결제 수수료 정보를 확인 후 결제하시기 바랍니다.<a href="#ec-orderform-defer-layer" class="txtWord ec-order-deffered-payment-popup ec-jigsaw-showLayer" style="cursor: pointer;">확인하기</a>
</li>
                    </ul>
<!-- Daibiki (COD) --><ul id="pg_paymethod_info_defer_type_b" class="ec-base-help typeDash" style="display: none;">
<li>상품 수령과 동시에 배송 직원에게 결제 수수료를 지불하는 후불 결제수단입니다.</li>
                        <li>최종 결제금액은 후불 결제 수수료가 포함된 금액으로 계산됩니다.</li>
                        <li>희망배송업체/방식을 선택하시면 배송업체별 후불 결제 수수료가 적용됩니다.</li>
                        <li>결제 수수료 정보를 확인 후 결제하시기 바랍니다. <a href="#ec-orderform-defer-layer" class="txtWord ec-order-deffered-payment-popup ec-jigsaw-showLayer" style="cursor: pointer;">확인하기</a>
</li>
                    </ul>
</div>
            </div>
        </div>
        <div class="receiptWrap">
            <div id="cashreceipt_display_area" class="receiptArea ">
                <div class="title">
                    <h3>현금영수증</h3>
                </div>
                <input id="cashreceipt_regist0" name="cashreceipt_regist" fw-filter="" fw-label="현금영수증 신청 여부" fw-msg="" value="1" type="radio" autocomplete="off"><label for="cashreceipt_regist0">현금영수증 신청</label>
<input id="cashreceipt_regist1" name="cashreceipt_regist" fw-filter="" fw-label="현금영수증 신청 여부" fw-msg="" value="99" type="radio" checked="checked" autocomplete="off"><label for="cashreceipt_regist1">신청안함</label>                <div class="ec-cashreceipt-textAndForm">
                    <div class="ec-cashreceipt-textArea ec-base-box gBlank10" style="display: none;">
                        <div class="taxView">
                            <span class="number"><span id="ec-cashreceipt-userTypeText"></span> <span id="ec-cashreceipt-numberText"></span></span>
                        </div>
                        <span class="sideRight"><a href="#none" id="ec-show-cashreceipt-form" class="btnNormal mini">정보변경</a></span>
                    </div>

                    <div class="ec-cashreceipt-formArea" style="display: none;">
                        <div id="cashreceipt_form_area" class="gBlank10" style="display: none;">
                            <input id="cashreceipt_user_type2__0" name="cashreceipt_user_type2" fw-filter="" fw-label="현금영수증 신청자 종류-신청여부라디오버튼과 함께" fw-msg="" value="0" type="radio" autocomplete="off"><label for="cashreceipt_user_type2__0">개인</label>
<input id="cashreceipt_user_type2__1" name="cashreceipt_user_type2" fw-filter="" fw-label="현금영수증 신청자 종류-신청여부라디오버튼과 함께" fw-msg="" value="1" type="radio" autocomplete="off"><label for="cashreceipt_user_type2__1">사업자</label>                            <div class="inputArea" id="cashreceipt_mobile_display_area"><select id="cashreceipt_user_mobile1" name="cashreceipt_user_mobile[]" fw-filter="" fw-label="현금영수증 개인-핸드폰 번호" fw-alone="N" fw-msg="">
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
</select>-<input id="cashreceipt_user_mobile2" name="cashreceipt_user_mobile[]" maxlength="4" fw-filter="" fw-label="현금영수증 개인-핸드폰 번호" fw-alone="N" fw-msg="" placeholder="" value="" type="text">-<input id="cashreceipt_user_mobile3" name="cashreceipt_user_mobile[]" maxlength="4" fw-filter="" fw-label="현금영수증 개인-핸드폰 번호" fw-alone="N" fw-msg="" placeholder="" value="" type="text"></div>
                            <div class="inputArea" id="cashreceipt_regno_display_area"><input id="cashreceipt_reg_no" name="cashreceipt_reg_no" fw-filter="" fw-label="현금영수증 사업자 번호" fw-msg="" placeholder="사업자번호" value="" type="text"></div>
                        </div>
                    </div>
                </div>
            </div>

                                                <div id="" class="receiptArea displaynone">
                <div class="title">
                    <h3>세금계산서</h3>
                </div>
                                <div class="ec-taxRequest-textAndForm">
                    <div class="ec-taxRequest-textArea ec-base-box gBlank10">
                        <div class="taxView">
                            <span id="ec-taxRequest-regnoText"></span><br><span id="ec-taxRequest-companyNameText"></span> <span id="ec-taxRequest-presidentNameText"></span><br><span id="ec-taxRequest-address1Text"></span><br><span id="ec-taxRequest-address2Text"></span><br><span id="ec-taxRequest-emailText"></span>
                        </div>
                        <span class="sideRight"><a href="#none" id="ec-show-taxRequest-form" class="btnNormal mini">정보변경</a></span>
                    </div>

                    <div class="ec-taxRequest-formArea">
                        <div id="" class="infoForm">
                            <ul class="ec-base-help typeDash gBreak10">
<li>세금 계산서 발행 신청을 위해 아래 모든 입력사항을 빠짐없이 입력하십시오.</li>
                                <li>신청양식 작성 후 사업자 등록증 사본을 팩스(02-466-9052)로 보내주십시오.</li>
                            </ul>
<h4 class="blind">사업자 정보</h4>
                            <div class="ec-base-table typeWrite gCellNarrow">
                                <table border="1">
<caption>사업자 정보 입력</caption>
                                    <colgroup>
<col style="width:92px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">사업자구분 <span class="icoRequired">필수</span>
</th>
                                        <td></td>
                                    </tr>
<tr>
<th scope="row">사업자<br>등록번호 <span class="icoRequired">필수</span>
</th>
                                        <td></td>
                                    </tr>
<tr>
<th scope="row">상호명<br>(법인명) <span class="icoRequired">필수</span>
</th>
                                        <td></td>
                                    </tr>
<tr>
<th scope="row">대표자명 <span class="icoRequired">필수</span>
</th>
                                        <td></td>
                                    </tr>
<tr>
<th scope="row">주소 <span class="icoRequired">필수</span>
</th>
                                        <td><ul class="ec-address">
            <li id="orderTax_country_wrap" class="displaynone" style="display: none;">
                <select id="" name="" class="displaynone gCheckbox60" disabled=""><option value="">국가를 선택해주세요.</option><option value="GH">가나(GHANA)</option><option value="GA">가봉(GABON)</option><option value="GY">가이아나(GUYANA)</option><option value="GM">감비아(GAMBIA)</option><option value="GT">과테말라(GUATEMALA)</option><option value="GD">그레나다(GRENADA)</option><option value="GE">그루지야(GEORGIA)</option><option value="GR">그리스(GREECE)</option><option value="GN">기니(GUINEA)</option><option value="GW">기니비소(GUINEA-BISSAU)</option><option value="NA">나미비아(NAMIBIA)</option><option value="NG">나이지리아(NIGERIA)</option><option value="ZA">남아프리카공화국(SOUTH AFRICA)</option><option value="AN">네덜란드(네덜란드령앤틸리스)(NETHERLANDS(ANTILLES))</option><option value="NL">네덜란드(네델란드)(NETHERLANDS)</option><option value="AW">네덜란드(아루바섬)(ARUBA)</option><option value="NP">네팔(NEPAL)</option><option value="NO">노르웨이(NORWAY)</option><option value="NZ">뉴질란드(NEW ZEALAND)</option><option value="NE">니제르(NIGER)</option><option value="NI">니카라과(NICARAGUA)</option><option value="KR" selected="">대한민국(KOREA (REP OF,))</option><option value="DK">덴마크(DENMARK)</option><option value="GL">덴마크(그린란드)(GREENLAND)</option><option value="FO">덴마크(페로즈제도)(FAROE ISLANDS)</option><option value="DO">도미니카공화국(DOMINICAN REPUBLIC)</option><option value="DM">도미니카연방(DOMINICA)</option><option value="DE">독일(GERMANY)</option><option value="TL">동티모르(TIMOR-LESTE)</option><option value="LA">라오스(LAO PEOPLE'S DEM REP)</option><option value="LR">라이베리아(LIBERIA)</option><option value="LV">라트비아(LATVIA)</option><option value="RU">러시아(RUSSIAN FEDERATION)</option><option value="LB">레바논(LEBANON)</option><option value="LS">레소토(LESOTHO)</option><option value="RO">루마니아(ROMANIA)</option><option value="LU">룩셈부르크(LUXEMBOURG)</option><option value="RW">르완다(RWANDA)</option><option value="LY">리비아(LIBYAN ARAB JAMAHIRIYA)</option><option value="LI">리첸쉬테인(LIECHTENSTEIN)</option><option value="LT">리투아니아(LITHUANIA)</option><option value="MG">마다가스카르(MADAGASCAR)</option><option value="MK">마케도니아(MACEDONIA)</option><option value="MW">말라위(MALAWI)</option><option value="MY">말레이지아(MALAYSIA)</option><option value="ML">말리(MALI)</option><option value="MX">멕시코(MEXICO)</option><option value="MC">모나코(MONACO)</option><option value="MA">모로코(MOROCCO)</option><option value="MU">모리셔스(MAURITIUS)</option><option value="MR">모리타니(MAURITANIA)</option><option value="MZ">모잠비크(MOZAMBIQUE)</option><option value="ME">몬테네그로(MONTENEGRO)</option><option value="MD">몰도바(MOLDOVA, REPUBLIC OF)</option><option value="MV">몰디브(MALDIVES)</option><option value="MT">몰타(MALTA)</option><option value="MN">몽고(MONGOLIA)</option><option value="US">미국(U.S.A)</option><option value="GU">미국(괌)(GUAM)</option><option value="MH">미국(마아샬제도)(MARSHALL ISLANDS)</option><option value="VI">미국(버진제도)(VIRGIN ISLANDS U.S.)</option><option value="WS">미국(사모아, 구 서사모아)(SAMOA)</option><option value="AS">미국(사모아제도)(AMERICAN SAMOA)</option><option value="MP">미국(사이판)(NORTHERN MARIANA ISLANDS)</option><option value="PW">미국(팔라우섬)(PALAU)</option><option value="PR">미국(푸에르토리코섬)(PUERTO RICO)</option><option value="MM">미얀마(MYANMAR)</option><option value="FM">미크로네시아(마이크로네시아)(MICRONESIA)</option><option value="VU">바누아투(VANUATU)</option><option value="BH">바레인(BAHRAIN)</option><option value="BB">바베이도스(BARBADOS)</option><option value="BS">바하마(BAHAMAS)</option><option value="BD">방글라데시(BANGLADESH)</option><option value="VE">베네수엘라(VENEZUELA)</option><option value="BJ">베넹(BENIN)</option><option value="VN">베트남(VIET NAM)</option><option value="BE">벨기에(BELGIUM)</option><option value="BY">벨라루스(BELARUS)</option><option value="BZ">벨리세(BELIZE)</option><option value="BA">보스니아헤르체코비나(Bosnia and Herzegovina)</option><option value="BW">보츠와나(BOTSWANA)</option><option value="BO">볼리비아(BOLIVIA)</option><option value="BF">부르키나파소(BURKINA FASO)</option><option value="BT">부탄(BHUTAN)</option><option value="BG">불가리아(BULGARIA(REP))</option><option value="BR">브라질(BRAZIL)</option><option value="BN">브루네이(나이)(BRUNEI DARUSSALAM)</option><option value="BI">브룬디(BURUNDI)</option><option value="SA">사우디아라비아(SAUDI ARABIA)</option><option value="CY">사이프러스(CYPRUS)</option><option value="SM">산마리노(SAN MARINO)</option><option value="SN">세네갈(SENEGAL)</option><option value="RS">세르비아/코소보(SERBIA/KOSOVO)</option><option value="SC">세이셸(SEYCHELLES)</option><option value="LC">세인트 루시아(SAINT LUCIA)</option><option value="VC">세인트빈센트그레나딘(SAINT VINCENT AND THE GRENADINES)</option><option value="KN">세인트키츠네비스(SAINT KITTS AND NEVIS)</option><option value="SB">솔로몬아일란드(SOLOMON ISLANDS)</option><option value="SR">수리남(SURINAME)</option><option value="LK">스리랑카(SRI LANKA)</option><option value="SZ">스와질랜드(SWAZILAND)</option><option value="SE">스웨덴(SWEDEN)</option><option value="CH">스위스(SWITZERLAND)</option><option value="ES">스페인(에스파니아)(SPAIN)</option><option value="SK">슬로바키아(SLOVAKIA)</option><option value="SI">슬로베니아(SLOVENIA)</option><option value="SL">시에라리온(SIERRA LEONE)</option><option value="SG">싱가포르(SINGAPORE)</option><option value="AE">아랍에미레이트연합국(UNITED ARAB EMIRATES)</option><option value="AM">아르메니아(ARMENIA)</option><option value="AR">아르헨티나(ARGENTINA)</option><option value="IS">아이슬란드(ICELAND)</option><option value="HT">아이티(HAITI)</option><option value="IE">아일란드(에이레)(IRELAND)</option><option value="AZ">아제르바이잔(AZERBAIJAN)</option><option value="AF">아프가니스탄(AFGHANISTAN)</option><option value="AD">안도라(ANDORRA)</option><option value="AL">알바니아(ALBANIA)</option><option value="DZ">알제리(ALGERIA)</option><option value="AO">앙골라(ANGOLA)</option><option value="AG">앤티과바부다(ANTIGUA AND BARBUDA)</option><option value="ER">에리트리아(ERITREA)</option><option value="EE">에스토니아(ESTONIA)</option><option value="EC">에콰도르(ECUADOR)</option><option value="SV">엘살바도르(EL SALVADOR)</option><option value="GB">영국(UNITED KINGDOM)</option><option value="MS">영국(몽세라)(MONTSERRAT)</option><option value="BM">영국(버뮤다섬)(BERMUDA)</option><option value="VG">영국(버진제도)(VIRGIN ISLANDS BRITISH)</option><option value="AI">영국(안귈라섬)(ANGUILLA)</option><option value="GI">영국(지브롤터)(GIBRALTAR)</option><option value="KY">영국(케이만제도)(CAYMAN ISLANDS)</option><option value="TC">영국(터크스케이코스제도)(TURKS AND CAICOS ISLANDS)</option><option value="YE">예멘(YEMEN)</option><option value="OM">오만(OMAN)</option><option value="NF">오스트레일리아(노퍽섬)(NORFOLK ISLAND)</option><option value="AU">오스트레일리아(호주)(AUSTRALIA)</option><option value="AT">오스트리아(AUSTRIA)</option><option value="HN">온두라스(HONDURAS)</option><option value="JO">요르단(JORDAN)</option><option value="UG">우간다(UGANDA)</option><option value="UY">우루과이(URUGUAY)</option><option value="UZ">우즈베크(UZBEKISTAN)</option><option value="UA">우크라이나(UKRAINE)</option><option value="ET">이디오피아(ETHIOPIA)</option><option value="IQ">이라크(IRAQ)</option><option value="IR">이란(IRAN(ISLAMIC REP))</option><option value="IL">이스라엘(ISRAEL)</option><option value="EG">이집트(EGYPT)</option><option value="IT">이탈리아(이태리)(ITALY)</option><option value="IN">인도(INDIA)</option><option value="ID">인도네시아(INDONESIA)</option><option value="JP">일본(JAPAN)</option><option value="JM">자메이카(JAMAICA)</option><option value="ZM">잠비아(ZAMBIA)</option><option value="CN">중국(CHINA(PEOPLE'S REP))</option><option value="MO">중국(마카오)(MACAU)</option><option value="HK">중국(홍콩)(HONG KONG)</option><option value="CF">중앙 아프리카(CENTRAL AFRICAN REPUBLIC)</option><option value="DJ">지부티(DJIBOUTI)</option><option value="ZW">짐바브웨(ZIMBABWE)</option><option value="TD">차드(CHAD)</option><option value="CZ">체코(CZECH REP)</option><option value="CL">칠레(CHILE)</option><option value="CM">카메룬(CAMEROON)</option><option value="CV">카보베르데(CAPE VERDE)</option><option value="KZ">카자흐(KAZAKHSTAN)</option><option value="QA">카타르(QATAR)</option><option value="KH">캄보디아(CAMBODIA)</option><option value="CA">캐나다(CANADA)</option><option value="KE">케냐(KENYA)</option><option value="CR">코스타리카(COSTA RICA)</option><option value="CI">코트디봐르(COTE D IVOIRE)</option><option value="CO">콜롬비아(COLOMBIA)</option><option value="CG">콩고(CONGO)</option><option value="CU">쿠바(CUBA)</option><option value="KW">쿠웨이트(KUWAIT)</option><option value="HR">크로아티아(CROATIA)</option><option value="KG">키르키즈스탄(KYRGYZSTAN)</option><option value="KI">키리바티(KIRIBATI)</option><option value="TH">타이(태국)(THAILAND)</option><option value="TW">타이완(대만)(TAIWAN)</option><option value="TJ">타지키스탄(TAJIKISTAN)</option><option value="TZ">탄자니아(TANZANIA(UNITED REP))</option><option value="TR">터키(TURKEY)</option><option value="TG">토고(TOGO)</option><option value="TO">통가(TONGA)</option><option value="TM">투르크메니스탄(TURKMENISTAN)</option><option value="TV">투발루(TUVALU)</option><option value="TN">튀니지(TUNISIA)</option><option value="TT">트리니다드토바고(TRINIDAD AND TOBAGO)</option><option value="PA">파나마(PANAMA(REP))</option><option value="PY">파라과이(PARAGUAY)</option><option value="PK">파키스탄(PAKISTAN)</option><option value="PG">파푸아뉴기니(PAPUA NEW GUINEA)</option><option value="PE">페루(PERU)</option><option value="PT">포르투갈(PORTUGAL)</option><option value="PL">폴란드(POLAND(REP))</option><option value="FR">프랑스(FRANCE)</option><option value="GP">프랑스(과데루프섬)(GUADELOUPE)</option><option value="GF">프랑스(기아나)(FRENCH GUIANA)</option><option value="NC">프랑스(뉴칼레도니아섬)(NEW CALEDONIA)</option><option value="RE">프랑스(레위니옹섬)(REUNION)</option><option value="MQ">프랑스(마르티니크섬)(MARTINIQUE)</option><option value="PF">프랑스(폴리네시아)(FRENCH POLYNESIA)</option><option value="FJ">피지(FIJI)</option><option value="FI">필란드(FINLAND)</option><option value="PH">필리핀(PHILIPPINES)</option><option value="HU">헝가리(HUNGARY(REP))</option></select>
                <span id="orderTax_directInputCheck_wrap" class="ec-base-label">
                                    <input id="orderTax_directInputCheck" name="orderTax_directInputCheck" type="checkbox" disabled="">
                                    <label id="orderTax_directInputCheckLabel" for="orderTax_directInputCheckLabel">직접입력</label>
                                  </span>
            </li>
        
           
        
            
        
            <li id="orderTax_state_wrap" class="displaynone" style="display: none;">
                <select id="ju_do_us_tax" name="ju_do_us_tax" class="displaynone" disabled="" fw-filter="" style="display: none;">
                            <option value="">주/도를 선택해주세요</option>
                        </select><select id="ju_do_ca_tax" name="ju_do_ca_tax" class="displaynone" disabled="" style="display: none;" fw-filter="">
                            <option value="">주/도를 선택해주세요</option>
                        </select><input id="ju_do_tax" name="ju_do_tax" placeholder="주/도" fw-filter="" class="inputTypeText displaynone" type="text" size="30" maxlength="50" disabled="" style="display: none;">
            </li>
        
            <li id="orderTax_city_wrap" class="displaynone" style="display: none;">
                <input id="si_gun_dosi_tax" name="si_gun_dosi_tax" placeholder="시/군/도시" fw-filter="" class="inputTypeText displaynone" type="text" size="30" maxlength="50" disabled="" style="display: none;">
            </li>
        
            <li id="orderTax_street_wrap" class="displaynone">
                <input id="gu_name_addr_tax" name="gu_name_addr_tax" placeholder="ADDR.COMMON.FORMATSTREET.KR" fw-filter="" class="inputTypeText displaynone" type="text" size="30" maxlength="50" disabled="" style="display: none;">
            </li>
        
            <li id="orderTax_area_wrap" class="ec-address-area displaynone" style="display: none;">
                <select id="si_name_tax" name="si_name_tax" class="displaynone" disabled="" fw-filter="" style="display: none;">
                                <option value="">ADDR.COMMON.FORMATSELECT.STATE.KR</option>
                            </select><select id="ci_name_tax" name="ci_name_tax" class="displaynone" disabled="" style="display: none;" fw-filter="">
                            <option value="">ADDR.COMMON.FORMATSELECT.CITY.KR</option>
                        </select><select id="gu_name_tax" name="gu_name_tax" class="displaynone" disabled="" style="display: none;" fw-filter="">
                            <option value="">ADDR.COMMON.FORMATSELECT.STREET.KR</option>
                        </select>
            </li>
        
            <li id="orderTax_zipcode_wrap" class="ec-address-zipcode" style="">
                <input id="tax_request_zipcode" name="tax_request_zipcode" placeholder="우편번호" fw-filter="isLengthRange[1][14]" class="inputTypeText" type="text" maxlength="14" readonly="" fw-label="우편번호" style="" disabled=""> <button id="btn_search_tzipcode" class="btnBasic" type="button" style="cursor: pointer;">주소검색</button><span class="ec-base-label">
                                        <input id="no_tax_zipcode" name="no_tax_zipcode" class="displaynone" type="checkbox" disabled="" fw-filter="" style="display: none; cursor: unset;">
                                        <label id="orderTax_zipcode_check_label" for="no_tax_zipcode" class="displaynone" disabled="" style="display: none;" fw-filter="">우편번호 없음</label>
                                    </span><span id="orderTax_zipcodeNotFoundMsg_wrap" class="ec-base-label displaynone">
                                    우편번호가 정확하지 않습니다. 다시 확인해 주세요.
                                  </span>
            </li><li id="orderTax_baseAddr_wrap" class="" style="">
                <input id="tax_request_address1" name="tax_request_address1" placeholder="기본주소" fw-filter="isFill" class="inputTypeText" type="text" size="60" maxlength="100" readonly="" fw-label="기본주소" style="" disabled="">
            </li><li id="orderTax_detailAddr_wrap" class="" style="">
                <input id="tax_request_address2" name="tax_request_address2" placeholder="나머지 주소" fw-filter="isFill" class="inputTypeText" type="text" size="60" maxlength="255" fw-label="나머지 주소" style="" disabled="">
            </li>
        </ul></td>
                                    </tr>
<tr>
<th scope="row">업태 <span class="icoRequired">필수</span>
</th>
                                        <td></td>
                                    </tr>
<tr>
<th scope="row">종목 <span class="icoRequired">필수</span>
</th>
                                        <td></td>
                                    </tr>
</tbody>
</table>
</div>

                            <h4 class="blind">신청자 정보</h4>
                            <div class="ec-base-table typeWrite gCellNarrow">
                                <table border="1">
<caption>신청자 정보 입력</caption>
                                    <colgroup>
<col style="width:92px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">신청자명 <span class="icoRequired">필수</span>
</th>
                                        <td></td>
                                    </tr>
<tr>
<th scope="row">전화번호 <span class="icoRequired">필수</span>
</th>
                                        <td><div class="phoneFlex"></div></td>
                                    </tr>
<tr>
<th scope="row">이메일 <span class="icoRequired">필수</span>
</th>
                                        <td>
                                            <div class="ec-base-mail"></div>
                                        </td>
                                    </tr>
</tbody>
</table>
</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 결제수단 저장 -->
        <div class="saveArea segment unique displaynone">
            <input type="checkbox" id="save_paymethod" name="save_paymethod" value="" disabled=""><label for="save_paymethod">결제수단과 입력정보를 다음에도 사용</label>
        </div>

        <!-- app tag -->
        <div id="ec-orderform-paymethod-tail"></div>
    </div>
</div>
<!-- [적립 혜택] -->
<!--
        이 파일은 원터치 주문서의 읽기 전용 파일입니다.
        이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
        원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
-->
<div id="ec-jigsaw-area-benefit" class="ec-base-fold eToggle displaynone">
    <div id="ec-jigsaw-title-benefit" class="title">
        <h2>적립 혜택</h2>
        <span id="ec-jigsaw-heading-benefit" class="txtStrong gRight"><span id="mAllMileageSum-title">0원</span> 예정</span>
    </div>
    <div class="contents">
        <!-- app tag -->
        <div id="ec-orderform-benefit-head"></div>
        <div class="segment">
            <div class="ec-base-table gCellNarrow">
                <table border="1">
<caption>적립 혜택 상세</caption>
                    <colgroup>
<col style="width:160px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">상품별 적립금</th>
                        <td class="right"><span id="mProductMileage" class="price">0원</span></td>
                    </tr>
<tr>
<th scope="row">회원 적립금</th>
                        <td class="right"><span id="mMemberMileage" class="price">0원</span></td>
                    </tr>
<tr>
<th scope="row">쿠폰 적립금</th>
                        <td class="right"><span id="mCouponMileage" class="price">0원</span></td>
                    </tr>
<tr class="displaynone">
<th scope="row">플러스앱주문 적립금</th>
                        <td class="right"><span id="mPlusappMileage" class="price">0원</span></td>
                    </tr>
</tbody>
</table>
</div>
        </div>
        <div class="totalPay">
            <h3 class="heading">적립 예정금액</h3>
            <strong class="txtEm"><span id="mAllMileageSum" style="">0원</span></strong>
        </div>
        <!-- app tag -->
        <div id="ec-orderform-benefit-tail"></div>
    </div>
</div>
<!-- [약관동의] -->
<!--
        이 파일은 원터치 주문서의 읽기 전용 파일입니다.
        이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
        원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
-->
<!-- 이값은 지우면 안되는 값입니다.
    $easyform_agreement=T
-->
<div id="ec-jigsaw-area-agreement">
    <div class="agreeArea" id="all_agreement_checkbox">
        <div class="allAgree">
<input type="checkbox" id="allAgree"><label for="allAgree"><strong>모든 약관 동의</strong></label>
</div>
        <div class="agreement">
            <!-- app tag -->
            <ul id="ec-orderform-agreement-head"></ul>
<ul>
<!-- 구매조건 확인 및 결제진행 동의 --><li id="chk_purchase_agreement" class="displaynone" style="display: list-item;">
                    <div class="agree"><span class="check" style=""><input id="chk_purchase_agreement0" name="chk_purchase_agreement" fw-filter="" fw-label="구매진행 동의" fw-msg="" value="T" type="checkbox" disabled="" style=""><label for="chk_purchase_agreement0"><span class="txtEm">[필수]</span> 구매조건 확인 및 결제진행 동의</label></span></div>
                </li>
                <!-- 결제대행서비스 약관 동의 -->
                <li id="ec-order-payment-directpay-card-agree" class="displaynone" style="display: none;">
                    <div class="agree">
                        <span class="check"><input type="checkbox" id="directpay_card_agree_financial" class="directpay_card_agree_checkbox" disabled=""><label for="directpay_card_agree_financial"><span class="txtEm">[필수]</span> 결제대행서비스 약관 동의</label></span>
                        <button type="button" class="btnAgree" onclick="window.open('/protected/order/payment_agree_financial.html')">내용보기</button>
                    </div>
                </li>
                <!-- 쇼핑몰 이용약관 동의 -->
                <li class="">
                    <div class="agree">
                        <span class="check"><input id="mallAgree" name="mallAgree" type="checkbox"><label for="mallAgree"><span class="txtEm">[필수]</span> 쇼핑몰 이용약관 동의</label></span>
                        <span style="display:none;"><input id="mall_agreement_radio0" name="mall_agreement" fw-filter="isFill" fw-label="쇼핑몰 이용약관 동의" fw-msg="" value="T" type="radio" autocomplete="off"><label for="mall_agreement_radio0">동의함</label>
<input id="mall_agreement_radio1" name="mall_agreement" fw-filter="isFill" fw-label="쇼핑몰 이용약관 동의" fw-msg="" value="F" type="radio" checked="checked" autocomplete="off"><label for="mall_agreement_radio1">동의안함</label></span>
                        <button type="button" class="btnAgree" onclick="viewMallAgree();">내용보기</button>
                    </div>
                </li>
                <!-- 고유식별정보 수집 동의 -->
                <li id="ec-shop-privacy_agreement_for_identification" class="displaynone">
                    <div class="agree">
                        <span class="check"><input id="privacy_agreement_for_identification_check_box0" name="privacy_agreement_for_identification_check_box" fw-filter="" fw-label="" fw-msg="" value="T" type="checkbox" disabled=""><label for="privacy_agreement_for_identification_check_box0"></label><label for="privacy_agreement_for_identification_check_box0"><span class="txtEm">[필수]</span> 고유식별정보 수집 동의</label></span>
                        <button type="button" class="btnAgree" onclick="viewIdentification();">내용보기</button>
                    </div>
                </li>
                <!-- 개인정보 수집 및 이용 동의 (회원가입) -->
                <li id="ec-orderform-PrivacyAgreementRow" class="displaynone" style="display: none;">
                    <div class="agree">
                        <span class="check"><label for="privacy_agreement_check_box0"><span class="txtEm">[필수]</span> 개인정보 수집 및 이용 동의</label></span>
                        <span style="display:none;"></span>
                        <button type="button" class="btnAgree" onclick="viewMemberJoinAgree();">내용보기</button>
                    </div>
                </li>
                <!-- 개인정보 수집 및 이용 동의 (구매시) -->
                <li id="ec-orderform-OrderAgreementRow" class="">
                    <div class="agree">
                        <span class="check"><input id="personAgree" name="personAgree" type="checkbox"><label for="personAgree"><span class="txtEm">[필수]</span> 개인정보 수집 및 이용 동의</label></span>
                        <span style="display:none;"><input id="nm_agreement0" name="nm_agreement" fw-filter="isFill" fw-label="개인정보 수집 및 이용 동의" fw-msg="" value="T" type="radio" autocomplete="off"><label for="nm_agreement0">동의함</label>
<input id="nm_agreement1" name="nm_agreement" fw-filter="isFill" fw-label="개인정보 수집 및 이용 동의" fw-msg="" value="F" type="radio" checked="checked" autocomplete="off"><label for="nm_agreement1">동의안함</label></span>
                        <button type="button" class="btnAgree" onclick="viewPersonAgree();">내용보기</button>
                    </div>
                </li>
                <!-- 배송정보 제공방침 -->
                <li class="displaynone displaynone">
                    <div class="agree">
                        <span class="check"><label for="delivery_info_offer_check_box0"><span class="txtEm">[필수]</span> 배송정보 제공방침 동의</label></span>
                        <button type="button" class="btnAgree" onclick="viewDelivery();">내용보기</button>
                    </div>
                </li>
                <!-- 정기결제 서비스 이용 동의 -->
                <li class="displaynone">
                    <div class="agree">
                        <span class="check"><label for="subscription_info_checkbox0"><span class="txtEm">[필수]</span> 정기결제 서비스 이용 동의</label></span>
                        <button type="button" class="btnAgree" onclick="viewRegularDelivery();">내용보기</button>
                    </div>
                </li>
                <!-- 예약결제 이용 동의 -->
                <li class="displaynone">
                    <div class="agree">
                        <span class="check"><label for="crowdfunding_info_check_box"><span class="txtEm">[필수]</span> 예약결제 이용 동의</label></span>
                        <button type="button" class="btnAgree" onclick="viewCrowdfunding();">내용보기</button>
                    </div>
                </li>
                <!-- 청약철회방침 -->
                <li class="displaynone displaynone">
                    <div class="agree">
                        <span class="check"><input id="subscription_agreement_chk0" name="subscription_agreement_chk" fw-filter="" fw-label="" fw-msg="" value="T" type="checkbox" disabled=""><label for="subscription_agreement_chk0"></label><label for="subscription_agreement_chk0"><span class="txtEm displaynone">[필수]</span><span class="">[선택]</span> 청약철회방침 동의</label></span>
                        <button type="button" class="btnAgree" onclick="viewSubscription();">내용보기</button>
                    </div>
                </li>
                <!-- 개인정보 제3자 제공 동의 -->
                <li id="ec-orderform-informationAgreementRow" class="displaynone" style="display: none;">
                    <div class="agree">
                        <span class="check"><label for="information_agreement_check_box0">[선택] 개인정보 제3자 제공 동의</label></span>
                        <button type="button" class="btnAgree" onclick="viewInformationAgree();">내용보기</button>
                    </div>
                </li>
                <!-- 개인정보취급 위탁 동의 -->
                <li id="ec-orderform-ConsignmentAgreementRow" class="displaynone" style="display: none;">
                    <div class="agree">
                        <span class="check"><label for="consignment_agreement_check_box0">[선택] 개인정보취급 위탁 동의</label></span>
                        <button type="button" class="btnAgree" onclick="viewConsignmentAgree();">내용보기</button>
                    </div>
                </li>
                <!-- 전자보증보험 -->
                <li id="insurance_agreement_chk" class="insurance displaynone" style="display: none;">
                    <div class="agree">
                        <span class="check"><input id="insurance_agreement_chk0" name="eguarantee_flag" fw-filter="" fw-label="" fw-msg="" value="T" type="checkbox" disabled=""><label for="insurance_agreement_chk0"></label><label for="insurance_agreement_chk0">[선택] 전자보증보험 발급시 개인정보 이용 동의</label></span>
                        <button type="button" class="btnAgree" onclick="viewInsurance();">자세히보기</button>
                    </div>
                    <div class="insuranceDetail">
                        <div class="ec-base-table typeWrite gCellNarrow">
                            <table border="1">
<caption>전자보증보험 발급 개인정보 입력</caption>
                                <colgroup>
<col style="width:96px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">생년월일</th>
                                    <td><input id="eguarantee_year" name="eguarantee_year" fw-filter="" fw-label="전자보증보험 생년월일1" fw-msg="" class="inputTypeText" placeholder="" size="4" maxlength="4" value="" type="text" disabled="">년 <input id="eguarantee_month" name="eguarantee_month" fw-filter="" fw-label="전자보증보험 생년월일2" fw-msg="" class="inputTypeText" placeholder="" size="2" maxlength="2" value="" type="text" disabled="">월 <input id="eguarantee_day" name="eguarantee_day" fw-filter="" fw-label="전자보증보험 생년월일3" fw-msg="" class="inputTypeText" placeholder="" size="2" maxlength="2" value="" type="text" disabled="">일</td>
                                </tr>
<tr>
<th scope="row">성별</th>
                                    <td><input id="eguarantee_user_gender0" name="eguarantee_user_gender" fw-filter="" fw-label="전자보증보험 성별" fw-msg="" value="1" type="radio" autocomplete="off" disabled=""><label for="eguarantee_user_gender0">남자</label>
<input id="eguarantee_user_gender1" name="eguarantee_user_gender" fw-filter="" fw-label="전자보증보험 성별" fw-msg="" value="2" type="radio" autocomplete="off" disabled=""><label for="eguarantee_user_gender1">여자</label></td>
                                </tr>
<tr class="displaynone">
<th scope="row">개인정보 이용동의</th>
                                    <td><input id="eguarantee_personal_agreement0" name="eguarantee_personal_agreement" fw-filter="" fw-label="전자보증보험 개인정보 이용동의" fw-msg="" value="T" type="radio" autocomplete="off" disabled=""><label for="eguarantee_personal_agreement0">동의함</label>
<input id="eguarantee_personal_agreement1" name="eguarantee_personal_agreement" fw-filter="" fw-label="전자보증보험 개인정보 이용동의" fw-msg="" value="F" type="radio" checked="checked" autocomplete="off" disabled=""><label for="eguarantee_personal_agreement1">동의안함</label></td>
                                </tr>
</tbody>
</table>
</div>
                        <div class="ec-base-help ec-order-expandwrap">
                            <strong class="insuranceTitle ec-order-expand">전자보증보험(100% 매매보호 안전결제)이란?</strong>
                            <div class="insuranceText">물품대금결제시 구매자의 피해보호를 위해 '(주)서울보증보험'의 보증보험증권이 발급됩니다.<br>
                                증권이 발급되는 것의 의미는, 물품대금 결제시에 소비자에게 서울보증보험의 쇼핑몰보증보험 계약체결서를 인터넷상으로 자동 발급하여, 피해발생시 쇼핑몰보증보험으로써 완벽하게 보호받을 수 있습니다. 또한, 입력하신 개인정보는 증권발급을 위해 필요한 정보이며 다른 용도로 사용되지 않습니다.
                                전자보증보험 발생시 별도의 수수료가 부과되지 않습니다.</div>
                        </div>
                    </div>
                </li>
            </ul>
<!-- app tag --><ul id="ec-orderform-agreement-tail"></ul>
</div>
        <div class="checkNone ">
            <ul>
<!-- 구매조건 확인 및 결제진행 동의 --><li id="chk_purchase_agreement1" style="">
                    <div class="agree">
                        <span class="check"><label for="chk_purchase_agreement0">구매조건 확인 및 결제진행 동의</label></span>
                    </div>
                </li>
                <!-- 배송정보 제공방침 -->
                <li class="displaynone">
                    <div class="agree">
                        <span class="check"><label for="delivery_info_offer_check_box0">배송정보 제공방침 동의</label></span>
                        <button type="button" class="btnView" onclick="viewDelivery();">자세히</button>
                    </div>
                </li>
                <!-- 청약철회방침 -->
                <li class="displaynone">
                    <div class="agree">
                        <span class="check"><label for="subscription_agreement_chk0">청약철회방침 동의</label></span>
                        <button type="button" class="btnView" onclick="viewSubscription();">자세히</button>
                    </div>
                </li>
            </ul>
<div class="agree-msg" id="agreeMsg" style=""><p>주문 내용을 확인하였으며 약관에 동의합니다.</p></div>
        </div>
    </div>
</div>
<div class="ec-base-button gFull" id="orderFixItem">
            <button type="button" class="btnSubmit" id="btn_payment">
                <span id="total_order_sale_price_view">55,500</span> <span class="">결제하기</span><span class="displaynone">정기배송 신청하기</span>
            </button>
        </div>
<div class="helpArea">
            <ul class="ec-base-help typeDash">
<li class="displaynone"><span class="txtEm">상기 금액은 결제 시점의 금액과 다를 수 있습니다.</span></li>
                <li>무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에 대해 무이자할부가 적용되지 않습니다. 무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기 바랍니다.</li>
                <li>최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</li>
            </ul>
</div>
<!-- 구글태그매니저 GA4 START -->
<script type="text/javascript">
          dataLayer.push({
            event: "begin_checkout"
          });
        </script>
<!-- 구글태그매니저 GA4 END -->
<!-- [주문 정보 확인 레이어팝업] -->
<!--
        이 파일은 원터치 주문서의 읽기 전용 파일입니다.
        이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
        원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
-->
<div id="ec-shop_orderConfirmLayer" class="orderConfirmLayer">
    <div class="ec-base-layer typeWide">
        <h1>주문 정보 확인</h1>
        <div class="wrap">
            <p class="ec-base-help">작성하신 내용을 확인하신 후에 주문 완료해 주세요.</p>

            <!-- app tag -->
            <div id="ec-orderform-confirm-head"></div>

            <!-- [주문배송정보] 주문자정보, 배송지정보 -->
            <!-- 주문자정보 -->
            <div class="pannelArea ">
                <div class="title">
                    <h2>주문 정보</h2>
                </div>
                <div class="contents">
                    <div class="segment">
                        <div class="ec-base-table typeView">
                            <table border="1">
<caption>주문자정보</caption>
                                <colgroup>
<col style="width:88px">
<col style="width:auto">
</colgroup>
<!-- 국내/해외 주문자 정보 --><tbody class="address_form ">
<tr>
<th scope="row">주문자</th>
                                    <td>
<span class="ec-shop-confirm_oname"></span><span class="ec-shop-confirm_oemail_area">(<span class="ec-shop-confirm_oemail"></span>)</span>
</td>
                                </tr>
<tr class="">
<th scope="row">주소</th>
                                    <td><span class="ec-shop-confirm_oaddr1"></span></td>
                                </tr>
<tr class="ec-shop-confirm-billingInfo-phoneNumber">
<th scope="row">연락처</th>
                                    <td>
<span class=""><span class="ec-shop-confirm_ophone"></span></span> <span class="ec-shop-delimiter">/</span> <span class=""><span class="ec-shop-confirm_ocell"></span></span>
</td>
                                </tr>
</tbody>
</table>
</div>
                    </div>
                </div>
            </div>

            <!-- app 배송지정보 -->
            <div class="pannelArea" id="ec-shop-confirm-appshippingInfo">
                <div class="title">
                    <h2>배송지</h2>
                </div>
                <div class="contents">
                    <div class="segment">
                        <div class="ec-base-table typeView">
                            <table border="1">
<colgroup>
<col style="width:88px">
<col style="width:auto">
</colgroup>
<tbody><tr>
<th scope="row">이메일</th>
                                    <td> <span class="ec-shop-confirm_oemail"></span>
</td>
                                </tr></tbody>
</table>
</div>
                    </div>
                    <div id="ec-shop-confirm-appshippingInfo-shippingInfo">
                    </div>
                </div>
            </div>

            <!-- 배송지정보 -->
            <div class="pannelArea" id="ec-shop-confirm-shippingInfo">
                <div class="title">
                    <h2>배송지</h2>
                </div>
                <div class="contents">
                    <div class="segment">
                        <!-- 국내배송 정보 -->
                        <div class="ec-base-table typeView ">
                            <table border="1">
<caption>배송지정보</caption>
                                <colgroup>
<col style="width:88px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">받는사람</th>
                                    <td>
<span class="ec-shop-confirm_rname"></span><span class="ec-shop-confirm_oemail_area">(<span class="ec-shop-confirm_oemail"></span>)</span>
</td>
                                </tr>
<tr class="ec-shop-confirm-shippingAddress">
<th scope="row">주소</th>
                                    <td>
                                        <span class="ec-shop-confirm_raddr1"></span>
                                    </td>
                                </tr>
<tr class="ec-shop-confirm-storePickup">
<th scope="row">수령지</th>
                                    <td>
                                        <span class="ec-shop-confirm-storePickupAddress"></span>에서 수령예정
                                        <p class="ec-base-help"><span class="ec-shop-confirm-storePickupDate txtNormal"></span></p>
                                    </td>
                                </tr>
<tr class="ec-shop-confirm-shippingInfo-phoneNumber">
<th scope="row">연락처</th>
                                    <td>
<span class=""><span class="ec-shop-confirm_rphone"></span></span> <span class="ec-shop-delimiter">/</span> <span class=""><span class="ec-shop-confirm_rcell"></span></span>
</td>
                                </tr>
<tr>
<th scope="row">배송요청</th>
                                    <td>
                                        <span class="displaynone ec-shop-confirm_shipcompany_area"><span class="ec-shop-confirm_shipcompany"></span></span>
                                        <span class="displaynone gBlank5"><span class="ec-shop-confirm_hope_date"></span></span>
                                        <span class="displaynone gBlank5"><span class="ec-shop-confirm_hope_time"></span></span>
                                        <span class=" gBlank5"><span class="ec-shop-confirm_delivery_msg"></span></span>
                                    </td>
                                </tr>
</tbody>
</table>
</div>
                        <!-- 해외배송 정보 -->
                        <div class="ec-base-table typeView displaynone">
                            <table border="1">
<caption>배송지정보</caption>
                                <colgroup>
<col style="width:88px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">받는사람</th>
                                    <td>
<span class="ec-shop-confirm_rname"></span><span class="ec-shop-confirm_oemail_area">(<span class="ec-shop-confirm_oemail"></span>)</span>
</td>
                                </tr>
<tr class="ec-shop-confirm-shippingAddressGlobal">
<th scope="row">주소</th>
                                    <td><span class="ec-shop-confirm_jigsaw_full_addr"></span></td>
                                </tr>
<tr class="ec-shop-confirm-storePickup">
<th scope="row">수령지</th>
                                    <td>
                                        <span class="ec-shop-confirm-storePickupAddress"></span>에서 수령예정
                                        <p class="ec-base-help"><span class="ec-shop-confirm-storePickupDate txtNormal"></span></p>
                                    </td>
                                </tr>
<tr class="ec-shop-confirm-shippingInfo-oversea-phoneNumber">
<th scope="row">연락처</th>
                                    <td>
<span class=""><span class="ec-shop-confirm_rphone"></span></span> <span class="ec-shop-delimiter">/</span> <span class=""><span class="ec-shop-confirm_rcell"></span></span>
</td>
                                </tr>
<tr>
<th scope="row">배송요청</th>
                                    <td>
                                        <span class="displaynone ec-shop-confirm_shipcompany_area"><span class="ec-shop-confirm_shipcompany"></span></span>
                                        <span class="displaynone gBlank5"><span class="ec-shop-confirm_hope_date"></span></span>
                                        <span class="displaynone gBlank5"><span class="ec-shop-confirm_hope_time"></span></span>
                                        <span class=" gBlank5"><span class="ec-shop-confirm_delivery_msg"></span></span>
                                    </td>
                                </tr>
<tr class="displaynone">
<th scope="row">배송 방법</th>
                                    <td>
                                        <span id="ec-shop-confirm-shipping_method_name"></span>
                                    </td>
                                </tr>
<tr class="">
<th scope="row">배송비</th>
                                    <td>
                                        <div class="ec-shop-shipping_additional_fee_show displaynone">
                                            <p class="gBreak5"><span class="txtEm"><span id="f_addr_total_ship_fee_id"></span></span></p>
                                            <div class="ec-base-table gCellNarrow">
                                                <table border="1">
<caption>배송비 상세</caption>
                                                    <colgroup>
<col style="width:104px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">해외배송비</th>
                                                        <td class="right"><span id="f_addr_delv_price_id"></span></td>
                                                    </tr>
<tr>
<th scope="row">보험료</th>
                                                        <td class="right">+<span id="f_addr_insurance_price_id"></span></td>
                                                    </tr>
<tr class="ec-shop-shipping_additional_fee_name_show">
<th scope="row"><span id="f_addr_shipping_additional_fee_name_id"></span></th>
                                                        <td class="right">+<span id="f_addr_shipping_additional_fee_id"></span></td>
                                                    </tr>
</tbody>
</table>
</div>
                                            <p class="ec-base-help typeDash">보험료는 배송과정에서 발생하는 분실, 도난, 파손 등으로 인한 손해에 대하여 규정에 따라 배상해 드리는 서비스입니다.</p>
                                        </div>
                                        <div class="ec-shop-shipping_additional_fee_hide ">
                                            <p class="gBreak5"><span class="txtEm"><span id="f_addr_total_ship_fee_id"></span></span></p>
                                            <div class="ec-base-table gCellNarrow">
                                                <table border="1">
<caption>배송비 상세</caption>
                                                    <colgroup>
<col style="width:104px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">해외배송비</th>
                                                        <td class="right"><span id="f_addr_delv_price_id"></span></td>
                                                    </tr>
<tr>
<th scope="row">보험료</th>
                                                        <td class="right">+<span id="f_addr_insurance_price_id"></span></td>
                                                    </tr>
</tbody>
</table>
</div>
                                            <ul class="ec-base-help typeDash">
<li>배송비에는 관세 및 세금 등의 각종 비용은 포함되어 있지 않습니다. 상품수령 시 고객님이 추가로 지불하셔야 합니다.</li>
                                                <li>보험료는 배송과정에서 발생하는 분실, 도난, 파손 등으로 인한 손해에 대하여 규정에 따라 배상해 드리는 서비스입니다.</li>
                                            </ul>
</div>
                                    </td>
                                </tr>
</tbody>
</table>
</div>
                    </div>
                </div>
            </div>

            <!-- [주문상품] -->
            <div class="pannelArea">
                <div class="title">
                    <h2>주문상품</h2>
                </div>
                <div class="contents">
                    <!-- 국내배송상품 주문내역 -->
                    <div class="orderArea ">
                        <!-- 기본배송 -->
                        <div class="xans-element- xans-order xans-order-normallist"><!-- 참고: 상품반복 -->
<div class="ec-base-prdInfo xans-record-">
                                <div class="prdBox">
                                    <div class="thumbnail"><a href="/product/detail.html?product_no=670&amp;cate_no=278"><img src="//okdoctordog.com/web/product/tiny/202303/b0595d4b07b3ac6366d1cd95717a4046.jpg" alt="" width="90" height="90"></a></div>
                                    <div class="description">
                                        <strong class="prdName" title="상품명"> <a href="/product/닥터독-그레인프리-참치-사료-16kg/670/category/278/" class="ec-product-name">닥터독 그레인프리 참치 사료 1.6kg</a></strong>
                                        <ul class="info">
<li class="displaynone">무이자할부 상품</li>
                                            <li title="유효기간" class="displaynone"> 내 사용</li>
                                            <li title="옵션">
                                                <p class="option ">[옵션: 그레인프리 연어 1.6kg (+26,500)]</p>
                                                </li>
                                            <li>수량: 1개</li>
                                            <li id="" class="displaynone">
                                                할인금액: <span class="txtWarn">-<span id="">0</span> </span>
                                                <span class="txtWarn displaynone">()</span>
                                            </li>
                                            <li class="displaynone" title="배송">[무료] / 기본배송 <span class="displaynone">(해외배송가능)</span>
</li>
                                            <li class="displaynone">상품중량 : 1.00kg * 1개 = 1.00kg</li>
                                        </ul>
<div class="proPrice">
                                            <span id="">55,500 </span>
                                            <span class="displaynone">()</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
<!-- //참고 -->
<!-- 참고: 상품반복 -->
<!-- //참고 -->
</div>
                        <div class="totalPrice ">
                            <div class="title">
                                <h3>배송비</h3>
                                <span class="deliveryFee"><span id="ec-shop-confirm_domestic_ship_fee">0 (무료)</span></span>
                            </div>
                        </div>

                        <!-- 업체기본배송 -->
                                                <div class="totalPrice displaynone">
                            <div class="title">
                                <h3>배송비</h3>
                                <span class="deliveryFee"><span id=""></span></span>
                            </div>
                        </div>

                        <!-- 개별배송 -->
                                                <div class="totalPrice displaynone">
                            <div class="title">
                                <h3>배송비</h3>
                                <span class="deliveryFee"><span id=""></span></span>
                            </div>
                        </div>
                    </div>

                    <!-- 해외배송상품 주문내역 -->
                    <div class="orderArea displaynone">
                                                <div class="totalPrice ">
                            <div class="title">
                                <h3>배송비</h3>
                                <span class="deliveryFee"><span id="ec-shop-confirm_f_list_total_delv_price_id"></span></span>
                            </div>
                        </div>
                    </div>
                    <!-- 바로구매 주문서폼 -->
                    <div id="ec-shop-confirm-direct-buy-info" class="orderArea displaynone"></div>
                    <div id="ec-shop-confirm-direct-buy-template" class="displaynone">
                        <div class="ec-base-prdInfo">
                            <div class="prdBox">
                                <div class="thumbnail"><a class="ec-shop-confirm-direct-buy-product-detail-url"><img class="ec-shop-confirm-direct-buy-product-image" src="//img.echosting.cafe24.com/thumb/img_product_big.gif" alt="" width="90" height="90"></a></div>
                                <div class="description">
                                    <strong class="prdName ec-shop-confirm-direct-buy-product-name-link" title="상품명"></strong>
                                    <ul class="info">
<li class="displaynone ec-shop-confirm-direct-buy-allotment">무이자할부 상품</li>
                                        <li title="유효기간" class="displaynone ec-shop-confirm-direct-buy-expiration-date-display">
<span class="ec-shop-confirm-direct-buy-expiration-date"></span>내 사용</li>
                                        <li title="옵션">
                                            <p class="option displaynone ec-shop-confirm-direct-buy-option-str"></p>
                                        </li>
                                        <li>수량: <span class="ec-shop-confirm_direct-buy-quantity"></span>
</li>
                                        <li>
                                            상품구매금액: <span><span class="ec-shop-confirm-direct-buy-product-purchase-price"></span> </span>
                                            <span class="displaynone ec-shop-confirm-direct-buy-product-purchase-price-ref"></span>
                                        </li>
                                        <li class="displaynone ec-shop-confirm-direct-buy-product-discount-price-display">
                                            할인금액: <span class="txtWarn">-<span class="ec-shop-confirm-direct-buy-product-discount-price"></span> </span>
                                            <span class="txtWarn displaynone ec-shop-confirm-direct-buy-product-discount-price-ref"></span>
                                        </li>
                                        <li class="displaynone">상품중량 : kg * 개 = kg</li>
                                    </ul>
</div>
                            </div>
                        </div>
                    </div>
                    <div class="totalWeight displaynone">전체 상품중량 : <span>1.00kg</span>
</div>
                </div>
            </div>

            <!-- [사은품] -->
            <div class="pannelArea" id="ec-shop-confirm_gift_list_area_id">
                <div class="title">
                    <h2>사은품</h2>
                </div>
                <div class="contents">
                    <div class="giftArea" id="ec-shop-confirm_gift_list_id"></div>
                </div>
            </div>

            <!-- [결제수단] -->
            <div class="pannelArea">
                <div class="title">
                    <h2>결제수단</h2>
                </div>
                <div class="contents">
                    <div class="segment">
                        <div class="ec-base-table typeView">
                            <table border="1">
<caption>결제수단</caption>
                                <colgroup>
<col style="width:105px">
<col style="width:auto">
</colgroup>
<tbody id="ec-shop-confirm_paymethod"></tbody>
</table>
</div>
                    </div>
                </div>
            </div>

            <!-- [결제정보] -->
            <div class="pannelArea">
                <div class="title">
                    <h2>결제정보</h2>
                </div>
                <div class="contents">
                    <div class="segment">
                        <div class="ec-base-table gCellNarrow">
                            <table border="1">
<caption>결제정보 상세</caption>
                                <colgroup>
<col style="width:140px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">주문상품</th>
                                    <td id="ec-shop-confirm_total_product_base_price_id" class="right">55,500</td>
                                </tr>
<tr class="displaynone">
<th scope="row">부가세</th>
                                    <td id="ec-shop-confirm_total_vat_price_id" class="right">+0</td>
                                </tr>
<tr>
<th scope="row">배송비</th>
                                    <td class="right">+<span id="ec-shop-total_ship_price_id"></span>
</td>
                                </tr>
<tr id="ec-shop-total_local_ship_price_area" style="display: none;">
<th scope="row">지역별 배송비</th>
                                    <td class="right">+<span id="ec-shop-total_local_ship_price_id"></span>
</td>
                                </tr>
<tr class="ec-order-expandwrap " id="ec-shop-confirm_total_sale_area2">
<th scope="row"><strong class="ec-order-expand">할인/부가결제</strong></th>
                                    <td class="right">-<span id="ec-shop-confirm_total_sale_price_view"></span></td>
                                </tr>
<tr class="discountArea">
<td colspan="2">
                                        <div id="ec-shop-confirm_total_sale_price2_area" class="ec-base-box displaynone">
                                            <strong class="heading">기본 할인</strong>
                                            <div class="ec-base-table gCellNarrow">
                                                <table border="1">
<caption>상세내역</caption>
                                                    <colgroup>
<col style="width:122px">
<col style="width:auto">
</colgroup>
<tbody id="confirm_total_benefit_list">
<tr id="ec-shop-total_mobilesale_area">
<th>모바일할인</th>
                                                        <td class="right">-<span id="ec-shop-confirm_total_mobile_sale"></span>
</td>
                                                    </tr>
<tr id="ec-shop-total_subscriptionpayseqsale_area">
<th>정기배송할인</th>
                                                        <td class="right">-<span id="ec-shop-mBenefitSubscriptionPayseqSale"></span>
</td>
                                                    </tr>
<tr id="ec-shop-total_periodsale_area">
<th>기간할인</th>
                                                        <td class="right">-<span id="ec-shop-mBenefitPeriodSale"></span>
</td>
                                                    </tr>
<tr id="ec-shop-total_membersale_area">
<th>회원할인</th>
                                                        <td class="right">-<span id="ec-shop-mBenefitMemberSale"></span>
</td>
                                                    </tr>
<tr id="ec-shop-total_rebuysale_area">
<th>재구매할인</th>
                                                        <td class="right">-<span id="ec-shop-mBenefitRebuySale"></span>
</td>
                                                    </tr>
<tr id="ec-shop-total_bulksale_area">
<th>대량구매할인</th>
                                                        <td class="right">-<span id="ec-shop-mBenefitBulkSale"></span>
</td>
                                                    </tr>
<tr id="ec-shop-total_livelinkonsale_area">
<th>바로가기(링콘)할인</th>
                                                        <td class="right">-<span id="ec-shop-mBenefitLivelinkonSale"></span>
</td>
                                                    </tr>
<tr id="ec-shop-total_newproductsale_area">
<th>신규상품할인</th>
                                                        <td class="right">-<span id="ec-shop-mBenefitNewproductSale"></span>
</td>
                                                    </tr>
<tr id="ec-shop-total_setproductsale_area">
<th>세트할인</th>
                                                        <td class="right">-<span id="ec-shop-mBenefitsetproductSale"></span>
</td>
                                                    </tr>
<tr id="ec-shop-total_membergroupsale_area">
<th>회원등급할인</th>
                                                        <td class="right">-<span id="ec-shop-mBenefitMembergroupSale"></span>
</td>
                                                    </tr>
</tbody>
</table>
</div>
                                        </div>
                                        <div id="ec-shop-confirm_total_shipfee_area" class="ec-base-box">
                                            <strong class="heading">배송비 할인</strong>
                                            <div class="ec-base-table gCellNarrow">
                                                <table border="1">
<caption>상세내역</caption>
                                                    <colgroup>
<col style="width:122px">
<col style="width:auto">
</colgroup>
<tbody><tr>
<th>배송비 할인</th>
                                                        <td class="right">-<span id="ec-shop-confirm_total_shipfee_view"></span>
</td>
                                                    </tr></tbody>
</table>
</div>
                                        </div>
                                        <div id="ec-shop-confirm_total_coupon_price2_area" class="ec-base-box">
                                            <strong class="heading">쿠폰 할인</strong>
                                            <div class="ec-base-table gCellNarrow">
                                                <table border="1">
<caption>상세내역</caption>
                                                    <colgroup>
<col style="width:122px">
<col style="width:auto">
</colgroup>
<tbody>
<tr id="ec-shop-coupon_product_discount_area">
<th>상품별 할인쿠폰</th>
                                                        <td class="right">-<span id="ec-shop-mProductCouponDiscount"></span>
</td>
                                                    </tr>
<tr id="ec-shop-coupon_order_discount_area">
<th>주문별 할인쿠폰</th>
                                                        <td class="right">-<span id="ec-shop-txt_cpn_sale2"></span>
</td>
                                                    </tr>
</tbody>
</table>
</div>
                                        </div>
                                        <div id="ec-shop-confirm_total_discountcode_price_area" class="ec-base-box">
                                            <strong class="heading">할인 코드</strong>
                                            <div class="ec-base-table gCellNarrow">
                                                <table border="1">
<caption>상세내역</caption>
                                                    <colgroup>
<col style="width:122px">
<col style="width:auto">
</colgroup>
<tbody><tr>
<th>할인 코드</th>
                                                        <td class="right">-<span id="ec-shop-confirm_total_discountcode_price_view"></span>
</td>
                                                    </tr></tbody>
</table>
</div>
                                        </div>
                                        <div id="ec-shop-confirm_total_addpay_summary_area" class="ec-base-box ">
                                            <strong class="heading">부가결제</strong>
                                            <div class="ec-base-table gCellNarrow">
                                                <table border="1">
<caption>상세내역</caption>
                                                    <colgroup>
<col style="width:122px">
<col style="width:auto">
</colgroup>
<tbody>
<tr id="ec-shop-confirm_used_mileage_area">
<th scope="row">적립금</th>
                                                        <td class="right">-<span id="ec-shop-confirm_used_mileage"></span>
</td>
                                                    </tr>
<tr id="ec-shop-confirm_used_deposit_area">
<th scope="row">예치금</th>
                                                        <td class="right">-<span id="ec-shop-confirm_used_deposit"></span>
</td>
                                                    </tr>
<tr id="ec-shop-confirm_used_affiliate_area" class="confirm_affiliate_template" style="display: none;">
<th scope="row"></th>
                                                        <td class="right">-<span id="ec-shop-confirm_used_affiliate_view"></span>원</td>
                                                    </tr>
</tbody>
</table>
</div>
                                        </div>
                                    </td>
                                </tr>
<tr id="confirm_total_tax_area_id" class="displaynone">
<th scope="row"><span id="confirm_total_tax_name_id"></span></th>
                                    <td class="right">+<span id="confirm_total_tax_id">0</span>
</td>
                                </tr>
</tbody>
</table>
</div>
                        <div class="totalPay gBlank10">
                            <h3 class="heading">결제금액</h3>
                            <strong class="txtStrong">
                                <span id="ec-shop-confirm_payment_total_order_sale_price_view">55,500</span>                                <span class="refer displaynone">(<span id="ec-shop-confirm_payment_total_order_sale_price_ref_view"></span>)</span>
                            </strong>
                        </div>
                    </div>
                </div>
            </div>

            <!-- [적립 혜택] -->
            <div class="pannelArea" id="ec-shop-confirm_sum_mileage_area">
                <div class="title">
                    <h2>적립 혜택</h2>
                </div>
                <div class="contents">
                    <div class="segment">
                        <div class="ec-base-table gCellNarrow">
                            <table border="1">
<caption>적립 혜택 상세</caption>
                                <colgroup>
<col style="width:160px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">상품별 적립금</th>
                                    <td class="right"><span id="ec-shop-confirm_product_mileage"></span></td>
                                </tr>
<tr>
<th scope="row">회원 적립금</th>
                                    <td class="right"><span id="ec-shop-confirm_member_mileage"></span></td>
                                </tr>
<tr>
<th scope="row">쿠폰 적립금</th>
                                    <td class="right"><span id="ec-shop-confirm_coupon_mileage"></span></td>
                                </tr>
<tr class="displaynone">
<th>플러스앱주문 적립금</th>
                                    <td class="right"><span id="ec-shop-confirm_plusapp_mileage"></span></td>
                                </tr>
</tbody>
</table>
</div>
                    </div>
                    <div class="totalPay">
                        <h3 class="heading">적립 예정금액</h3>
                        <strong class="txtEm"><span id="ec-shop-confirm_sum_mileage"></span></strong>
                    </div>
                </div>
            </div>

            <!-- [추가정보입력] 추가입력, 기타문의사항 -->
            <div class="pannelArea displaynone">
                <div class="title">
                    <h2>추가입력</h2>
                </div>
                <div class="contents">
                    <div class="segment">
                        <div class="ec-base-table typeView">
                            <table border="1">
<caption>추가입력</caption>
                                <colgroup>
<col style="width:105px">
<col style="width:auto">
</colgroup>
<tbody id="ec-shop-confirm_ord_add" class="displaynone"></tbody>
<tbody id="ec-shop-confirm_question_area" class="questionArea displaynone"><tr>
<th scope="row">기타 문의사항</th>
                                    <td id="ec-shop-confirm_question"></td>
                                </tr></tbody>
</table>
</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- app tag -->
        <div id="ec-orderform-confirm-tail"></div>

        <div class="ec-base-button gFull">
            <button type="button" class="btnSubmit" id="ec-shop_btn_layer_payment">
                <span id="ec-shop-confirm_total_order_price_view">55,500</span> 결제하기
            </button>
        </div>
        <button type="button" class="btnClose" onclick="EC_SHOP_FRONT_ORDERFORM_DISPLAY.form.showConfirmOrderLayer();">닫기</button>
    </div>
</div>
<iframe id="h_payment" name="h_payment" width="0" height="0" frameborder="0" src=""></iframe>
<input type="hidden" id="sPrdName" name="sPrdName" value="닥터독 그레인프리 참치 사료 1.6kg">

    &nbsp;
</div>
			
		
		</form>
		
	</div>
	<jsp:include page="/include/footer.jsp">
		<jsp:param value="index" name="current"/>
	</jsp:include>
</body>
</html>