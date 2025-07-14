<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@page import="kr.or.kipris.plus.PatentBibliographicInfoServicePortTypeProxy"%>
<%@page import="kr.or.kipris.plus.PatentBibliographicInfoServiceSoap11BindingStub"%>
<%@page import="kr.or.kipris.plus.webservice.services.patentbean.xsd.AgentInfo"%>
<%@page import="org.apache.axis.message.SOAPHeaderElement"%>


<%@page import="kr.or.kipris.plus.webservice.services.patentbean.xsd.AbstractInfo"%>
<%@page import="kr.or.kipris.plus.webservice.services.patentbean.xsd.ApplicantInfo"%>
<%@page import="kr.or.kipris.plus.webservice.services.patentbean.xsd.BiblioSummaryInfo"%>
<%@page import="kr.or.kipris.plus.webservice.services.patentbean.xsd.ClaimInfo"%>
<%@page import="kr.or.kipris.plus.webservice.services.patentbean.xsd.DesignatedStateInfo"%>
<%@page import="kr.or.kipris.plus.webservice.services.patentbean.xsd.ImagePathInfo"%>
<%@page import="kr.or.kipris.plus.webservice.services.patentbean.xsd.InternationalInfo"%>
<%@page import="kr.or.kipris.plus.webservice.services.patentbean.xsd.InventorInfo"%>
<%@page import="kr.or.kipris.plus.webservice.services.patentbean.xsd.IpcInfo"%>
<%@page import="kr.or.kipris.plus.webservice.services.patentbean.xsd.LegalStatusInfo"%>
<%@page import="kr.or.kipris.plus.webservice.services.patentbean.xsd.PriorArtDocumentsInfo"%>
<%@page import="kr.or.kipris.plus.webservice.services.patentbean.xsd.PriorityInfo"%>
<%@page import="kr.or.kipris.plus.webservice.services.patentbean.xsd.FamilyInfo"%>





<%@page import="kr.or.kipris.plus.webservice.services.patentbean.xsd.BibliographicInfoArray"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="contents/stylesheet/style2.css"/>
<link rel="stylesheet" type="text/css" href="contents/stylesheet/style.css"/>
<link rel="stylesheet" type="text/css" href="contents/stylesheet/common.css" />
<link rel="stylesheet" type="text/css" href="contents/stylesheet/popup_common.css" />
</head>
<body>

<%!
		PatentBibliographicInfoServicePortTypeProxy PBProxy = new PatentBibliographicInfoServicePortTypeProxy();
		PatentBibliographicInfoServiceSoap11BindingStub PBStub = 
			(PatentBibliographicInfoServiceSoap11BindingStub)PBProxy.getPatentBibliographicInfoServicePortType();
        String str;
        String _userId = "����� ���̵�";
 	String _userKey ="����� ����Ű";
%>

<%
	
	SOAPHeaderElement userId = new SOAPHeaderElement("http://plus.kipris.or.kr","userId");
	SOAPHeaderElement userKey = new SOAPHeaderElement("http://plus.kipris.or.kr","userKey");
	userId.setValue(_userId);
	userKey.setValue(_userKey);
	PBStub.setHeader(userId);
	PBStub.setHeader(userKey);		

	
	AgentInfo[] agentInfos = (AgentInfo[])PBStub.agentInfo("1019950700550");
	AbstractInfo[] abstractInfos = (AbstractInfo[])PBStub.abstractInfo("1019950700550");
	ApplicantInfo[] applicantInfos = (ApplicantInfo[])PBStub.applicantInfo("1019950700550");
	BiblioSummaryInfo[] biblioSummaryInfos = (BiblioSummaryInfo[])PBStub.biblioSummaryInfo("1019950700550");
	ClaimInfo[] claimInfos = (ClaimInfo[])PBStub.claimInfo("1019950700550");
	DesignatedStateInfo[] designatedStateInfos = (DesignatedStateInfo[])PBStub.designatedStateInfo("1019950700550");
	FamilyInfo[] familyInfos = (FamilyInfo[])PBStub.familyInfo("1019950700550");
	InternationalInfo[] internationalInfos = (InternationalInfo[])PBStub.internationalInfo("1019950700550");
	InventorInfo[] inventorInfos = (InventorInfo[])PBStub.inventorInfo("1019950700550");
	IpcInfo[] ipcInfos = (IpcInfo[])PBStub.ipcInfo("1019950700550");
	LegalStatusInfo[] legalStatusInfos = (LegalStatusInfo[])PBStub.legalStatusInfo("1019950700550");
	PriorArtDocumentsInfo[] priorArtDocumentsInfos = (PriorArtDocumentsInfo[])PBStub.priorArtDocumentsInfo("1019950700550");
	PriorityInfo[] priorityInfos = (PriorityInfo[])PBStub.priorityInfo("1019950700550");
	BibliographicInfoArray bibliographicInfoArraies = (BibliographicInfoArray)PBStub.bibliographicInfo("1019950700550");
	ImagePathInfo imagePathInfo = (ImagePathInfo)bibliographicInfoArraies.getImagePathInfo();
	imagePathInfo.getLargePath();
	imagePathInfo.getPath();
%>

			
	

<table align="center" width="800" border="2" cellpadding="0" cellspacing="0" >
	<tr>
		<td>
			<table  width="50%" border="1" cellpadding="0" cellspacing="0" bgcolor="d1d3d4" style="margin-bottom:5px">
				<tr>	
				<br>
				<p><span><b>상세정보<%=biblioSummaryInfos[0].getInventionTitleEng()%></b></span></p>
				<br>
				</tr>
    				<!-- BEGIN : 서지/Summary -->
					
								<table align="center" width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="d1d3d4" style="margin-bottom:5px">
									<tr>
								        <td class="item_bold">발명의 명칭 : </td>
										<td class="item_txt">
										<%
										if(biblioSummaryInfos[0].getInventionTitle() != null && biblioSummaryInfos[0].getInventionTitle() != " " ){
										%>
										<%=biblioSummaryInfos[0].getInventionTitle()%>
										<%
										}else{
										%>							
										&nbsp;
										<%}%>
						            </tr>
								
						            <tr>
								        <td class="item_bold">Int. Cl </td>
										<td class="item_txt">
										<%for(int i=0; i <ipcInfos.length ; i++){ %> 
										<%=ipcInfos[i].getIpcNumber()%><%=ipcInfos[i].getIpcDate()%>
										<%}%>
										</td>
						            </tr>
									<tr>
										<td class="item_bold">출원번호(일자)</td>
										<td class="item_txt"><%=biblioSummaryInfos[0].getApplicationNumber()%>&nbsp;(<%=biblioSummaryInfos[0].getApplicationDate()%>)
										</td>
									</tr>
									<tr>
										<td class="item_bold">번역문제출일자</td>
										<td class="item_txt"><%=biblioSummaryInfos[0].getTranslationSubmitDate()%>
										</td>
									</tr>
									<c:if test="${name eq '홍길동'}"></c:if>
									<tr>
										<td class="item_bold">공개번호(일자)</td>
										<td class="item_txt"><%=biblioSummaryInfos[0].getOpenNumber()%>&nbsp;(<%=biblioSummaryInfos[0].getOpenDate()%>)
										</td>
									</tr>
									<tr>
										<td class="item_bold">공고번호(일자)</td>
										<td class="item_txt"><%=biblioSummaryInfos[0].getPublicationNumber()%>(<%=biblioSummaryInfos[0].getPublicationDate()%>)
										</td>
									</tr>
									<tr>
										<td class="item_bold">등록번호(일자)</td>
										<td class="item_txt"><%=biblioSummaryInfos[0].getRegisterNumber()%>(<%=biblioSummaryInfos[0].getRegisterDate()%>)
										</td>
									</tr>
									<tr>
										<td class="item_bold">구분/원출원권리 </td>
										<td class="item_txt">
										<%
										if(biblioSummaryInfos[0].getOriginalApplicationKind() != null && biblioSummaryInfos[0].getApplicationFlag() != null ){
										%>
										<%=biblioSummaryInfos[0].getOriginalApplicationKind()%>/<%=biblioSummaryInfos[0].getApplicationFlag()%>
										<%
										}else if(biblioSummaryInfos[0].getOriginalApplicationKind() != null ){
										%>							
										<%=biblioSummaryInfos[0].getOriginalApplicationKind()%>
										<%
										}else if(biblioSummaryInfos[0].getApplicationFlag() != null){ 
										%>
										<%=biblioSummaryInfos[0].getApplicationFlag()%>
										<%}else{%>
										&nbsp;
										<%;}%>
											
										</td>
									</tr>
									<tr>
										<td class="item_bold">원출원번호(일자)</td>
										<td class="item_txt"><%=biblioSummaryInfos[0].getOriginalApplicationNumber()%>&nbsp;
										<%
										if(biblioSummaryInfos[0].getOriginalApplicationDate() != null){
										%>
										<%=biblioSummaryInfos[0].getOriginalApplicationDate()%>
										<%}else{ %>
										&nbsp;
										<%;}%>
										</td>
									</tr>
									<tr>
										<td class="item_bold">Family 출원번호</td>
										<td class="item_txt">
										<%
										if(familyInfos[0].getFamilyApplicationNumber() != null){
										%>
										<%=familyInfos[0].getFamilyApplicationNumber()%>
										<%}else{ %>
										&nbsp;
										<%;}%>
										</td>
									</tr>
									<tr>
										<td class="item_bold">최종처분내용</td>
										<td class="item_txt"><%=biblioSummaryInfos[0].getFinalDisposal()%>&nbsp;</td>
									</tr>
									<tr>
										<td class="item_bold">등록상태</td>
										<td class="item_txt"><%=biblioSummaryInfos[0].getRegisterStatus()%>
										</td>
									</tr>
									<tr>
										<td class="item_bold">국제출원번호(일자)</td>
										<td class="item_txt"><%=internationalInfos[0].getInternationalApplicationNumber()%>(<%=internationalInfos[0].getInternationalApplicationDate()%>)
										</td>
									</tr>
									<tr>
										<td class="item_bold">국제공개번호(일자)</td>
										<td class="item_txt"><%=internationalInfos[0].getInternationOpenNumber()%>(<%=internationalInfos[0].getInternationOpenDate()%>)
										</td>
									</tr>
									<tr>
										<td class="item_bold">심사청구여부(일자)</td>
										<td class="item_txt">
										<%if(biblioSummaryInfos[0].getOriginalExaminationRequestFlag() == "" || biblioSummaryInfos[0].getOriginalExaminationRequestFlag() == " "||biblioSummaryInfos[0].getOriginalExaminationRequestFlag() == null ) {%>
										없음
										<%}else if(biblioSummaryInfos[0].getOriginalExaminationRequestFlag() != "" && biblioSummaryInfos[0].getOriginalExaminationRequestFlag() != " "||biblioSummaryInfos[0].getOriginalExaminationRequestFlag() != null){ %>
										있음	(<%=biblioSummaryInfos[0].getOriginalExaminationRequestDate()%>)
										<%} %>
										</td>		
									</tr>
									<tr>
										<td class="item_bold">심사청구항수</td>
										<td class="item_txt"><%=biblioSummaryInfos[0].getClaimCount()%>&nbsp;</td>
									</tr>
									<tr>
										<td class="item_bold">초록</td>
										<td class="item_txt"><%=abstractInfos[0].getAstrtCont()%>&nbsp;</td>
									</tr>
								</table>
				  
					<!-- END : 서지/Summary -->
					<hr /><br />
					<!-- 아랫부분 -->	
					<!-- BEGIN : 서지/셋팅 -->
					<div id="setting">
						<div class="setting_tab">
							<span><a href="javascript:DisplaySearchItem_biblio();" id="detailHide" onfocus=this.blur();>세부항목설정</a></span>
						</div>
						<span id="searchItem" style="display:none">
							<div id="setting_check">
								<fieldset>
									<legend>세부항목설정</legend>
									<dl>
										<dt id="setting_check_left">
											<ul>
												<!--li><label for="6"><input type="checkbox" name="cbBibliItem" value="AB" OnClick="CheckBibliItem(this);" />초록</label></li-->
												<li><label for="7"><input type="checkbox" name="cbBibliItem" value="CL" OnClick="CheckBibliItem(this);" />청구항(대표)</label></li>                                
												<li><label for="2"><input type="checkbox" name="cbBibliItem" value="AP" OnClick="CheckBibliItem(this);" />출원인  </label></li>
												<li><label for="3"><input type="checkbox" name="cbBibliItem" value="IV" OnClick="CheckBibliItem(this);" />발명자        </label></li>
												<li><label for="4"><input type="checkbox" name="cbBibliItem" value="AG" OnClick="CheckBibliItem(this);" />대리인   </label></li>
												<li><label for="5"><input type="checkbox" name="cbBibliItem" value="PR" OnClick="CheckBibliItem(this);" />우선권 정보</label></li>
												<li><label for="1"><input type="checkbox" name="cbBibliItem" value="CT" OnClick="CheckBibliItem(this);" />지정국        </label></li>
												<li><label for="9"><input type="checkbox" name="cbBibliItem" value="PD" OnClick="CheckBibliItem(this);" />선행기술조사문헌</label></li>
												<li><label for="8"><input type="checkbox" name="cbBibliItem" value="HJ" OnClick="CheckBibliItem(this);" />행정처리</label></li>
											</ul>
										</dt>
										<dd id="setting_check_right">
											<ul>   
												<li class="check_none"><a href="javaScript:AllCheckBibliItem('off')">전체선택</a></li>
												<li class="check_all"><a href="javaScript:AllCheckBibliItem('on')">선택해제</a></li>
											</ul>
										</dd>
									</dl>
								</fieldset>
							</div>
					    </span>
					</div>
					<!-- END : 서지/셋팅 -->
					<hr />
					<!-- BEGIN : 서지/Reference -->
					<div id="detailsec">
						<!-- 청구항(대표) -->
						<div class="detail" id='CL'>
							<span class="detail_bold">청구항</span>
							<table border="1" cellspacing="0" class="biblio_table_02">
								<tr>
									<th scope="col" width="8%">번호</th>
									<th scope="col">대표청구항</th>
								</tr>						
								<%for(int i=0; i <claimInfos.length ; i++){ %>
								<tr>					
									<td class="td_center"><%=i+1%></td>
									<td class="f-1"><%=claimInfos[i].getClaim()%></td>
								</tr>
								<%}%>
							</table>
						</div>
						
						<!-- 출원인 -->
						<div class="detail" id='AP'>
							<span class="detail_bold">출원인  </span>
							<table border="1" cellspacing="0" class="biblio_table">
								<tr>
									<th scope="col" width="8%">번호</th>
									<th scope="col" width="24%">이름(코드)</th>
									<th scope="col">주소</th>
									<th scope="col" width="11%">국적</th>
								</tr>
								<%for(int i=0; i <applicantInfos.length ; i++){ %> 
								<tr>
									<td class="td_center"><%=i+1%></td>
									<td class="f-1"><%=applicantInfos[i].getName()%>&nbsp;(<%=applicantInfos[i].getCode()%>)</td>
									<td class="f-1"><%=applicantInfos[i].getAddress()%>&nbsp;</td>
									<td class="td_center"><%=applicantInfos[i].getCountry()%>&nbsp;</td>
								</tr>
								<%}%>
							</table>
						</div>
						
						
						<!-- 발명자/고안자 -->
						<div class="detail" id='IV'>
							<span class="detail_bold"> 발명자 </span>
							<table border="1" cellspacing="0" class="biblio_table">
								<tr>
									<th scope="col" width="8%">번호 </th>
									<th scope="col" width="24%">이름(코드)</th>
									<th scope="col">주소</th>
									<th scope="col" width="11%">국적</th>
								</tr> 
								<%for(int i=0; i <inventorInfos.length ; i++){ %> 
								<tr>
									<td class="td_center"><%=i+1%></td>
									<td class="f-1"><%=inventorInfos[i].getName()%>(<%=inventorInfos[i].getCode()%>)</td>
									<td class="f-1"><%=inventorInfos[i].getAddress()%></td>
									<td class="td_center"><%=inventorInfos[i].getCountry()%></td>
								</tr>
								<%}%>
							</table>
						</div>
						<!-- 대리인 -->
						<div class="detail" id='AG'>
							<span class="detail_bold">대리인   </span>
							<table border="1" cellspacing="0" class="biblio_table">
								<tr>
									<th scope="col" width="8%">번호</th>
									<th scope="col" width="24%">이름(코드)</th>
									<th scope="col">주소</th>
									<th scope="col" width="11%">국적</th>
								</tr>
								<%for(int i=0; i <agentInfos.length ; i++){ %> 
								<tr>
									<td class="td_center"><%=i+1%></td>
									<td class="f-1"><%=agentInfos[i].getName()%>(<%=agentInfos[i].getCode()%>)
									</td>
									<td class="f-1"><%=agentInfos[i].getAddress()%></td>
									<td class="td_center"><%=agentInfos[i].getCountry()%></td>
								</tr>
								<%}%>
							</table>
						</div>
						<!-- 우선권 정보 -->
						<div class="detail" id='PR'>
							<span class="detail_bold">우선권 정보 (국가/번호/일자)</span>
							<table border="1" cellspacing="0" class="biblio_table">
								<tr>
									<th scope="col" width="33%">국가명</th>
									<th scope="col" width="33%">번호</th>
									<th scope="col" width="33%">일자</th>
								</tr> 
								<%for(int i=0; i <priorityInfos.length ; i++){ %> 
								<tr>
									<td class="td_center"><%=priorityInfos[i].getPriorityApplicationCountry()%>&nbsp;</td>
									<td class="td_center"><%=priorityInfos[i].getPriorityApplicationNumber()%>&nbsp;</td>
									<td class="td_center"><%=priorityInfos[i].getPriorityApplicationDate()%>&nbsp;</td>
								</tr>
								<%}%>			
							</table>
						</div>
						<!-- 지정국 -->
						<div class="detail" id='CT'>
							<span class="detail_bold">지정국</span>
							<table border="1" cellspacing="0" class="biblio_table">
								<tr>
									<th scope="col" width="25%">구분</th>
									<th scope="col">국가명</th>
								</tr>
								<%for(int i=0; i <designatedStateInfos.length ; i++){ %> 
								<tr>
									<td class="td_center"><%=designatedStateInfos[i].getKind()%></td>
									<td class="f-1"><%=designatedStateInfos[i].getCountry()%></td>
								</tr>
								<%}%>
							</table>
						</div>
						
						<!-- 행정처리 -->
						<div class="detail" id='HJ'>
							<span class="detail_bold">행정처리</span>
							<table border="1" cellspacing="0" class="biblio_table">
								<tr>
									<th scope="col" width="8%">번호</th>
									<th scope="col" width="19%">접수번호</th>
									<th scope="col" width="13%">접수일자</th>
									<th scope="col">서류명(한글)</th>
									<th scope="col">서류명(영문)</th>
									<th scope="col" width="15%">최종상태</th>
								</tr>
								<%for(int i=0; i <legalStatusInfos.length ; i++){ %> 
									<tr>
										<td class="td_center"><%=i+1%></td>
										<td class="td_center"><%=legalStatusInfos[i].getReceiptNumber()%></td>
										<td class="td_center"><%=legalStatusInfos[i].getReceiptDate()%></td>
										<td class="f-1"><%=legalStatusInfos[i].getDocumentName()%></td>
										<td class="f-1"><%=legalStatusInfos[i].getDocumentEngName()%>&nbsp;
										</td>
										<td class="td_center"><%=legalStatusInfos[i].getCommonCodeName()%></td>
									</tr>
									<%}%>	
							</table>
						</div>
					</div>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>
