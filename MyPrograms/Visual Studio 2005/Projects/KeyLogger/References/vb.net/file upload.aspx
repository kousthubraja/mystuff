<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head id="ctl00_Head1">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">



<link id="ctl00_HeaderLink1" rel="stylesheet" type="text/css" href="file%20upload_files/Global-bn20100217.css"><link id="ctl00_HeaderLink2" rel="stylesheet" type="text/css" href="file%20upload_files/Library-bn20100217.css"><meta name="NormalizedUrl" content="http://msdn.microsoft.com/en-us/library(d=default)/w3kksch7(l=en-us,v=VS.80).aspx"><meta name="VotingContextUrl" content="http://msdn.microsoft.com/en-us/library(d=default)/w3kksch7(l=en-us,v=VS.80).aspx"><meta name="ROBOTS" content="NOINDEX,NOFOLLOW"><meta name="MN" content="D5954220-11:51:30 PM"><meta name="ms.locale" content="en-us"><meta name="Search.ShortId" content="w3kksch7">
<!-- Looking for metadata? Use the robot view instead http://currentsite/currenturl(robot).aspx -->
<meta name="DCS.dcsuri" content="/en-us/library(d=default)/w3kksch7(l=en-us,v=VS.80).aspx">
<link rel="stylesheet" type="text/css" href="file%20upload_files/mtps-bn20100217.css"><link rel="alternate" media="print" href="http://msdn.microsoft.com/en-us/library/w3kksch7%28VS.80,printer%29.aspx">
<title>
	How to: Upload a File in Visual Basic
</title></head><body id="ctl00_Mtps_body" dir="ltr">

  <form name="aspnetForm" method="post" action="w3kksch7(VS.80).aspx" id="aspnetForm">
<div>
<input name="flag" id="flag" value="false" type="hidden">
<input name="__EVENTTARGET" id="__EVENTTARGET" value="" type="hidden">
<input name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" type="hidden">
<input name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUBMGQYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgEFHmN0bDAwJGN0bDA3JGN0bDAwJFNlYXJjaEJ1dHRvbo6jblJsVkF6Z2qZqTi3aENlqU58" type="hidden">
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['aspnetForm'];
if (!theForm) {
    theForm = document.aspnetForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="file%20upload_files/WebResource.js" type="text/javascript"></script>


<script type="text/javascript">
//<![CDATA[
var CurUserId="AxUFAAAAAADyBQAAoyOAO1hDTKE8cbagYt8kbw!!";var ClientURL="http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary(d%3ddefault)%2fw3kksch7(l%3den-us%2cv%3dVS.80).aspx";var maxRating=5;var RatingObjId="ctl00_ib1_Flyout_Rating1";var tbCommentsId="ctl00_ib1_Flyout_tbComments";var PageId="w3kksch7";var pageTag="contentRatingw3kksch7VS.80en-us";var sendBtnId="ctl00_ib1_Flyout_btnSend";var curRating="2";var contentRated=false;var RatingTooltipText="Click a star and provide feedback";var RatedTooltipText="You have already rated this content. Thank you for your feedback.";var userIPAddress="117.204.91.1";var MtpsPageDirection="ltr";var RatingFlyoutID="ctl00_ib1_Flyout";var Rating_Device="default";var CCI_DeleteConfirmationText="Are you sure you want to delete?";function wkAddNewItemClick(){CCE_EditAnnotation(-1);};
var CCS_AddLinkID="ctl00_WikiContent_Add";var CCS_User="";var CCS_ContentUrl="http://msdn.microsoft.com/en-us/library/w3kksch7(VS.80).aspx";//]]>
</script>

<script src="file%20upload_files/jquery-1.js" type="text/javascript"></script>
<script src="file%20upload_files/Silverlight-bn20100217.js" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
var wt_nvr_ru = "WT_NVR_RU";var wt_fpcdom = ".microsoft.com";var wt_domlist = "msdn.microsoft.com";var wt_pathlist = "";var wt_paramlist = "DCSext.mtps_devcenter";var wt_siteid = "MSDN";var gDomain="m.webtrends.com";
var gDcsId="dcsmgru7m99k7mqmgrhudo0k8_8c6m";
var gFpc="WT_FPC";
/*<![CDATA[*/
if(document.cookie.indexOf(gFpc+"=")==-1){document.write("<scr"+"ipt type='text/javascript' src='"+"http"+(window.location.protocol.indexOf('https:')==0?'s':'')+"://"+gDomain+"/"+gDcsId+"/wtid.js"+"'><\/scr"+"ipt>");}
/*]]>*/
var detectedLocale = 'en-us';
var wtsp="msdnlib_devtools_lang";
var gTrackEvents = 0;
var omni_guid='04dd4ec2-1216-4f94-bbff-d24e61230271';//]]>
</script>
<script language="JavaScript" src="file%20upload_files/omni_rsid_msdn-bn20100217.js"></script><noscript><a
href='http://www.omniture.com' title='Web Analytics'><img
src='http://msstonojsmsdn.112.2o7.net/b/ss/msstonojsmsdn/1/H.20.2--NS/0'
height='1' width='1' border='0' alt='' /></a></noscript>
<script type="text/javascript">
//<![CDATA[
var CCT_Browse="Browse other topics containing this tag";var CCT_Remove="Remove the tag from this topic";var CCT_NoTags="No tags entered";var CCT_Error="An error has occurred";var CCT_BugTag="contentbug";var CCE_ErrSameContent = "Content has not changed";
var CCE_ErrEmptyTitle = "Title can not be empty";
var CCE_ErrEmptyContent = "Content cannot be empty";
var CCE_ErrTitleTooLong = "Title is limited to 100 characters";
var CCE_ErrContentTooLong = "Content is limited to 50,000 characters";
var CCE_ErrServerError = "Error occurred while saving your data.";
var CCE_IsEditing=false;var CCE_IsTaggingEnabled=true;var CCE_TitleMaxLen=100;var CCE_ContentMaxLen=50000;var CCE_UpdateText="Please Wait";//]]>
</script>

<script src="file%20upload_files/compositejscript2.js" type="text/javascript"></script>
<div>

	<input name="__PREVIOUSPAGE" id="__PREVIOUSPAGE" value="gWtKKPj1ztChdELzvHgNudaOBQrmTWAR2pGpcpe1H6kIexE4Q01Lx0Esc9-UJE_S0" type="hidden">
</div>
  <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', document.getElementById('aspnetForm'));
Sys.WebForms.PageRequestManager.getInstance()._updateControls(['fctl00$WikiContent$ctl00$ItemUpdatePanel','tctl00$WikiContent$ctl00$HistoryUpdatePanel','fctl00$WikiContent$ctl01$ItemUpdatePanel','tctl00$WikiContent$ctl01$HistoryUpdatePanel','fctl00$WikiContent$ctl02$ItemUpdatePanel','tctl00$WikiContent$ctl02$HistoryUpdatePanel','fctl00$WikiContent$ctl03$ItemUpdatePanel','tctl00$WikiContent$ctl03$HistoryUpdatePanel','fctl00$WikiContent$ctl04$ItemUpdatePanel','tctl00$WikiContent$ctl04$HistoryUpdatePanel','fctl00$WikiContent$ctl05$ItemUpdatePanel'], [], ['ctl00$WikiContent$ctl00$History','ctl00$WikiContent$ctl01$History','ctl00$WikiContent$ctl02$History','ctl00$WikiContent$ctl03$History','ctl00$WikiContent$ctl04$History'], 90);
//]]>
</script>

   
  <div id="rheader">
    

<div class="mastheadfontbase">
  <div>
		<div class="GlobalBar">
			<div class="Teaser">
				

<span id="ticklerWrapper">
<a id="ctl00_ctl07_Tickler1_InstallLink" class="slLink" href="http://clk.atdmt.com/MRT/go/141489558/direct/01/" onclick="javascript:Track('ctl00_ctl07_Tickler1|_InstallLink',this);">Upgrade your Internet Experience</a>
</span>


			</div>
			<div class="GlobalBarRight">
			  <div class="LocaleFlyout">
				  <div class="LocaleManagementFlyoutStatic" style="position: relative; z-index: 198;" id="ctl00_ctl07_LocaleManagement_ctl00"><a style="" class="LocaleManagementFlyoutStaticLink" href="javascript:void(0)">United States - English&nbsp;</a><img class="LocaleManagementFlyoutPopArrow LibC_popdownarrow" src="file%20upload_files/clear.gif" alt="Dropdown Arrow" style="border-width: 0px; height: 4px; width: 7px;"><div id="ctl00_ctl07_LocaleManagement_ctl00_Popup" class="LocaleManagementFlyoutPopup" style="position: absolute; visibility: hidden; left: -1000px;">
		<table style="width: 175px;" border="0">
			<tbody><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl05','')">Argentina (Español)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl06','')">Australia (English)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl07','')">Brasil (Português)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl08','')">Canada (English)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl09','')">Canada (Français)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl10','')">中国 (简体中文)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl11','')">Colombia (Español)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl12','')">Deutschland (Deutsch)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl13','')">España (Español)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl14','')">France (Français)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl15','')">India (English)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl16','')">Italia (Italiano)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl17','')">日本 (日本語)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl18','')">México (Español)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl19','')">Perú (Español)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl20','')">Россия (Pусский)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl21','')">United Kingdom (English)</a></td>
			</tr><tr>
				<td><a href="javascript:__doPostBack('ctl00$ctl07$LocaleManagement$ctl00$ctl22','')">United States (English)</a></td>
			</tr><tr>
				<td class="LocaleManagementFlyoutPopupHr"></td>
			</tr><tr>
				<td><a href="http://msdn.microsoft.com/en-us/ms376822.aspx">More...</a></td>
			</tr>
		</tbody></table></div><div id="ctl00_ctl07_LocaleManagement_ctl00_Anim" class="TFlyPopupAnimate"></div>
</div>



		    </div>
		    <div class="SiteMap">
				  <a id="ctl00_ctl07_MSFT_Site" title="Microsoft.com" class="SiteMapLink" href="http://www.microsoft.com/">Microsoft.com</a>
			  </div>
			  <div class="PassportScarab">
				  <span id="ctl00_ctl07_UserRecognitionFlyout_lbwelcom" class="UserRecognitionStaticText">Welcome</span>

  
  
<a id="idPPScarab" href="http://login.live.com/login.srf?wa=wsignin1.0&amp;rpsnv=11&amp;ct=1269931890&amp;rver=6.0.5276.0&amp;wp=MCLBI&amp;wlcxt=msdn%24msdn%24msdn&amp;wreply=http:%2F%2Fmsdn.microsoft.com%2Fen-us%2Flibrary%2Fw3kksch7%2528VS.80%2529.aspx&amp;lc=1033&amp;id=254354"><span id="idPPScarabSIT" class="MTPS_GlobalToolbarLinks_msdn">Sign in</span></a>


			  </div>
			  
			  
		  </div>
		</div>
	</div>
	<div class="classicTopNav">
	    <div class="ThinNavBox">
		<a href="http://msdn.microsoft.com/en-us/default.aspx" id="ctl00_ctl07_brandlink"><div id="ctl00_ctl07_BrandLogo" class="BrandLogo">

</div></a>
		<div class="Search"><div id="ctl00_ctl07_ctl00_SearchBox" class="SearchBox">
    <input value="Search MSDN with Bing" style="color: rgb(170, 170, 170); font-style: italic;" autocomplete="off" name="ctl00$ctl07$ctl00$SearchTextBox" id="ctl00_ctl07_ctl00_SearchTextBox" title="Search MSDN with Bing" class="TextBoxSearch" type="text">
    <input name="ctl00$ctl07$ctl00$SearchButton" id="ctl00_ctl07_ctl00_SearchButton" title="Search MSDN with Bing" class="SearchButton" alt="Click here to search" src="file%20upload_files/clear.gif" style="border-width: 0px;" type="image">
    <span class="Bing"></span>
<script type="text/javascript" defer="defer" src="file%20upload_files/SearchBox.js" id="mscom.srch.searchBox"></script><div style="border: 1px solid buttonshadow; padding: 2px; display: none; text-align: left; position: absolute; z-index: 1000; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-family: arial;" id="SearchFlyoutContainer"><div id="SuggestionContainer"><div style="padding: 1px; color: gray; font-size: 8pt; font-weight: bold; vertical-align: middle; margin-top: 4px;">Suggestions<div style="border-style: solid none none; border-color: rgb(221, 221, 221) -moz-use-text-color -moz-use-text-color; border-width: 1px 0px 0px; height: 1px; margin-top: 1px;"></div></div><ul style="margin: 1px; padding: 4px 2px 0px 1px; list-style-type: none; list-style-image: none; list-style-position: outside; cursor: pointer; font-size: 8pt;"></ul></div><div style="margin: 0px; width: 100%; text-align: right; font-size: 8pt;" id="FooterContainer"><a href="#">Close</a></div></div></div></div>
		<div class="evergreenLinks">
	    
      
     
        <a id="ctl00_ctl07_eventlink"><div id="ctl00_ctl07_EventLogo" class="EventLogo">

</div></a>
     </div>
     
       
	</div>
	    <div class="Clear"></div>
        

	<div class="NavigationBox">
	    <div id="ctl00_ctl07_tabs_CenterTitle" class="HeaderTitle">Visual Basic Developer Center</div>
		<div class="Sponsor">
		  
		</div>
		<div class="ClearLeft"></div>
        <div class="leftcap"></div>
        <div class="internav">
	        <div id="ctl00_ctl07_tabs_manTabsHolder"><a id="ctl00_ctl07_tabs_ctl01" href="http://msdn.microsoft.com/en-us/vbasic/default.aspx" onclick="javascript:Track('|TabStrip Link|ctl00_ctl07_tabs_ctl00|ctl00_ctl07_tabs_ctl01',this);">Home</a><a id="ctl00_ctl07_tabs_ctl03" class="active" href="http://msdn.microsoft.com/en-us/library/2x7h1hfk.aspx" onclick="javascript:Track('|TabStrip Link|ctl00_ctl07_tabs_ctl02|ctl00_ctl07_tabs_ctl03',this);">Library</a><a id="ctl00_ctl07_tabs_ctl05" href="http://msdn.microsoft.com/en-us/vbasic/ms789086.aspx" onclick="javascript:Track('|TabStrip Link|ctl00_ctl07_tabs_ctl04|ctl00_ctl07_tabs_ctl05',this);">Learn</a><a id="ctl00_ctl07_tabs_ctl07" href="http://msdn.microsoft.com/en-us/vbasic/ms789072.aspx" onclick="javascript:Track('|TabStrip Link|ctl00_ctl07_tabs_ctl06|ctl00_ctl07_tabs_ctl07',this);">Downloads</a><a id="ctl00_ctl07_tabs_ctl09" href="http://msdn.microsoft.com/en-us/vbasic/ms789193.aspx" onclick="javascript:Track('|TabStrip Link|ctl00_ctl07_tabs_ctl08|ctl00_ctl07_tabs_ctl09',this);">Support</a><a id="ctl00_ctl07_tabs_ctl11" href="http://msdn.microsoft.com/en-us/vbasic/ms789066.aspx" onclick="javascript:Track('|TabStrip Link|ctl00_ctl07_tabs_ctl10|ctl00_ctl07_tabs_ctl11',this);">Community</a><a id="ctl00_ctl07_tabs_ctl13" href="http://social.msdn.microsoft.com/Forums/en-US/category/visualbasic" onclick="javascript:Track('|TabStrip Link|ctl00_ctl07_tabs_ctl12|ctl00_ctl07_tabs_ctl13',this);">Forums</a></div>
        </div>
        

<div id="ctl00_ctl07_tabs_LwViewSwitcher1_Panel1" class="LWVS_Loband">
	
<a id="ctl00_ctl07_tabs_LwViewSwitcher1_ClassicLink" tabindex="201" class="LWVS_DisabledLink" onclick="SetViewCookie('classic')">Classic</a>&nbsp; | &nbsp; <a href="http://msdn.microsoft.com/en-us/library/w3kksch7%28VS.80%29.aspx" id="ctl00_ctl07_tabs_LwViewSwitcher1_LightweightLink" tabindex="202" class="LWVS_Link" onclick="SetViewCookie('lightweight')">Lightweight Beta</a>&nbsp; | &nbsp; <a href="http://msdn.microsoft.com/en-us/library/w3kksch7%28VS.80%29.aspx" id="ctl00_ctl07_tabs_LwViewSwitcher1_LobandLink" tabindex="203" class="LWVS_Link" onclick="SetViewCookie('loband')">ScriptFree</a>
</div>


        <div class="rightcap"></div>
	</div>
	
	<div class="Clear"></div>
	<div id="ctl00_ctl07_tabs_LocalNavigation" class="LocalNavigation" style="height: 2px;">
	    
	</div>
	<div class="cleartabstrip"></div>
	<div id="ctl00_ctl07_tabs_LocalNavBottom" class="LocalNavBottom"></div>
	
	
	
    </div>
</div>
<div class="Clear"></div>    
    <div id="ctl00_ib1_Panel1" class="miniRatings">
	
<div id="ctl00_ib1_miniRatings_left" class="miniRatings_left">
		
    <a id="ctl00_ib1_hlPrint" title="Print This Content" class="itPrint" onclick="javascript:SubmitRateAction('printerFriendlyPage');" href="http://msdn.microsoft.com/en-us/library/w3kksch7%28VS.80,printer%29.aspx"><img id="ctl00_ib1_imgPrint" class="LibC_rtg_print" src="file%20upload_files/clear.gif" style="border-width: 0px;">&nbsp;Printer Friendly Version</a>&nbsp;&nbsp;
    &nbsp;&nbsp;
    <a id="ctl00_ib1_hlSendCont" title="Send This Content" class="itSend" onclick="javascript:SubmitRateAction('sendThisPage');" href="mailto:?subject=How%20to%3a%20Upload%20a%20File%20in%20Visual%20Basic&amp;body=This%20URL%20points%20to%20a%20page%20on%20MSDN%20that%20may%20interest%20you:%20http://msdn.microsoft.com/en-us/library/w3kksch7%28VS.80%29.aspx"><img id="ctl00_ib1_imgSendCont" class="LibC_rtg_email" src="file%20upload_files/clear.gif" style="border-width: 0px;">&nbsp;Send</a>&nbsp;&nbsp;
    <a id="ctl00_ib1_hlComCon" title="Click here to jump to the Community Content section on this page." class="itComCon" href="http://msdn.microsoft.com/en-us/library/w3kksch7%28VS.80%29.aspx#CommunityContent"><img id="ctl00_ib1_imgComCon" class="LibC_rtg_comCon" src="file%20upload_files/clear.gif" style="border-width: 0px;">&nbsp;Community Content</a>&nbsp;&nbsp;
   
	</div>
<div id="ctl00_ib1_miniRatings_right" class="miniRatings_right">
		
        <div class="ratingFlyoutStatic" style="position: relative; z-index: 198;" id="ctl00_ib1_Flyout"><div id="ctl00_ib1_Flyout_rtgContainer" title="Click a star and provide feedback" style="display: block; text-align: right;">
				
              <table>
                <tbody><tr>
                  <td style="text-align: right; line-height: 70%;">
                    <span id="ctl00_ib1_Flyout_rateTitleLabel" class="tbFont">Click to Rate and Give Feedback</span>
                  </td>
                  <td id="ctl00_ib1_Flyout_tdRtg" style="width: 85px;" onclick="if($get('ctl00_ib1_Flyout_tbComments')!=null &amp;&amp; $get('ctl00_ib1_Flyout_tbComments').visible == 'true') $get('ctl00_ib1_Flyout_tbComments').focus();">
                      <div id="ctl00_ib1_Flyout_Rating1" title="Click a star and provide feedback" dir="ltr" style="height: 16px;">
					<a href="#" id="ctl00_ib1_Flyout_Rating1_A" title="Click a star and provide feedback" style="text-decoration: none;"><span title="Click a star and provide feedback" value="1" id="ctl00_ib1_Flyout_Rating1_Star_1" class="ratingStar filledRatingStar" style="float: left;">&nbsp;</span><span title="Click a star and provide feedback" value="2" id="ctl00_ib1_Flyout_Rating1_Star_2" class="ratingStar filledRatingStar" style="float: left;">&nbsp;</span><span title="Click a star and provide feedback" value="3" id="ctl00_ib1_Flyout_Rating1_Star_3" class="ratingStar emptyRatingStar" style="float: left;">&nbsp;</span><span title="Click a star and provide feedback" value="4" id="ctl00_ib1_Flyout_Rating1_Star_4" class="ratingStar emptyRatingStar" style="float: left;">&nbsp;</span><span title="Click a star and provide feedback" value="5" id="ctl00_ib1_Flyout_Rating1_Star_5" class="ratingStar emptyRatingStar" style="float: left;">&nbsp;</span></a>
				</div>
                  </td>
				
                </tr>
              </tbody></table>
            
			</div>
            <div style="display: block; float: none; clear: both;">
            </div>
          <div id="ctl00_ib1_Flyout_Popup" class="ratingFlyoutPopup" style="position: absolute; visibility: hidden; left: -1000px;">
				<span id="ctl00_ib1_Flyout_lbOptText" class="OptionalText">Give feedback on this content</span><textarea name="ctl00$ib1$Flyout$tbComments" rows="2" cols="20" id="ctl00_ib1_Flyout_tbComments" class="Comment"></textarea><input name="ctl00$ib1$Flyout$btnClose" id="ctl00_ib1_Flyout_btnClose" class="Button" value="Close" onclick='CloseFLY("ctl00_ib1_Flyout") ' type="button"><input name="ctl00$ib1$Flyout$btnSend" id="ctl00_ib1_Flyout_btnSend" class="Button" value="Send" onclick="return IsPageRated(&quot;ctl00_ib1_Flyout_Rating1&quot;,&quot;ctl00_ib1_Flyout_lbOptText&quot;,'Please rate the page first.', &quot;ctl00_ib1_Flyout&quot;,this)" type="button"></div><div id="ctl00_ib1_Flyout_Anim" class="TFlyPopupAnimate"></div>
		</div>
		
      
	</div>
    
  <div id="intercleardiv" style="display: block; clear: both; visibility: hidden;"></div>

</div>

  </div>
  <div id="contents">
   <div id="ctl00_LibFrame" class="resizableArea">
	<div id="ctl00_raLeft" class="leftSection" style="width: 300px;">
		
        <img id="ctl00_TocVector1_o" class="hidden" src="file%20upload_files/clear.gif" style="border-width: 0px;">
<img id="ctl00_TocVector1_c" class="hidden" src="file%20upload_files/clear.gif" style="border-width: 0px;">
<img id="ctl00_TocVector1_e" class="hidden" src="file%20upload_files/clear.gif" style="border-width: 0px;">
<div id="holder" onclick="TocClick(event)">
<div id="ctl00_TocVector1_root" class="rootToc">
			<ul class="toc" id="tocVectorTreeId"><li name="ms310241(n)"><img src="file%20upload_files/clear.gif" class="LibC_o"><a href="http://msdn.microsoft.com/en-us/library/ms123401.aspx" target="_top">MSDN Library</a><ul class="toc"><li name="cc295789(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/cc295789.aspx" target="_top">Design Tools</a></li><li name="aa187916(n)"><img src="file%20upload_files/clear.gif" class="LibC_o"><a href="http://msdn.microsoft.com/en-us/library/aa187916.aspx" target="_top">Development Tools and Languages</a><ul class="toc"><li name="aa187917(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/dd831853%28VS.100%29.aspx" target="_top">Visual Studio 2010 Release Candidate</a></li><li name="aa187919(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/aa187919.aspx" target="_top">Visual Studio 2008</a></li><li name="aa468084(n)"><img src="file%20upload_files/clear.gif" class="LibC_o"><a href="http://msdn.microsoft.com/en-us/library/ms950416.aspx" target="_top">Visual Studio 2005</a><ul class="toc"><li name="ms269115(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_o"><a href="http://msdn.microsoft.com/en-us/library/ms269115%28vs.80%29.aspx" target="_top">Visual Studio</a><ul class="toc"><li name="ms306059(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/fx6bk1f4%28VS.80%29.aspx" target="_top">Introducing Visual Studio</a></li><li name="ms306060(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/h8w79z10%28VS.80%29.aspx" target="_top">Integrated Development Environment for Visual Studio</a></li><li name="na"><img src="file%20upload_files/clear.gif" class="LibC_e"><a href="http://msdn.microsoft.com/en-us/library/1zcxdh3y%28VS.80%29.aspx" target="_top">Deciding Which Technologies and Tools To Use</a></li><li name="ms299694(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ms171526%28VS.80%29.aspx" target="_top">Windows-based Applications, Components, and Services</a></li><li name="ms299703(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/k1s94fta%28VS.80%29.aspx" target="_top">.NET Framework Programming in Visual Studio</a></li><li name="ms299791(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_o"><a href="http://msdn.microsoft.com/en-us/library/2x7h1hfk%28VS.80%29.aspx" target="_top">Visual Basic</a><ul class="toc"><li name="ms299792(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/8hb2a397%28VS.80%29.aspx" target="_top">Getting Started</a></li><li name="ms299795(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/90h82b3x%28VS.80%29.aspx" target="_top">Visual Basic Guided Tour</a></li><li name="ms300264(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/kehz1dz1%28VS.80%29.aspx" target="_top">Help for Visual Basic 6.0 Users</a></li><li name="ms300285(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/dy163kx7%28VS.80%29.aspx" target="_top">Upgrading Applications in Visual Basic</a></li><li name="ms299822(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_o"><a href="http://msdn.microsoft.com/en-us/library/k6a6etxs%28VS.80%29.aspx" target="_top">Developing Applications with Visual Basic</a><ul class="toc"><li name="ms299824(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/f120x8wh%28VS.80%29.aspx" target="_top">Using the Visual Basic Editor</a></li><li name="ms299832(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ms233782%28VS.80%29.aspx" target="_top">Security and Visual Basic Development</a></li><li name="ms299834(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_o"><a href="http://msdn.microsoft.com/en-us/library/ms233833%28VS.80%29.aspx" target="_top">Programming in Visual Basic</a><ul class="toc"><li name="ms299836(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_o"><a href="http://msdn.microsoft.com/en-us/library/ch40zftw%28VS.80%29.aspx" target="_top">Accessing Computer Resources</a><ul class="toc"><li name="ms299838(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/bc61hbxh%28VS.80%29.aspx" target="_top">Playing Sounds</a></li><li name="ms299840(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/e2ft7ez4%28VS.80%29.aspx" target="_top">Storing Data to and Reading From the Clipboard</a></li><li name="na"><img src="file%20upload_files/clear.gif" class="LibC_e"><a href="http://msdn.microsoft.com/en-us/library/xzwf0t6d%28VS.80%29.aspx" target="_top">Accessing the Computer's Clock</a></li><li name="na"><img src="file%20upload_files/clear.gif" class="LibC_e"><a href="http://msdn.microsoft.com/en-us/library/18add49b%28VS.80%29.aspx" target="_top">Getting Information about the Computer</a></li><li name="ms299842(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/022tate2%28VS.80%29.aspx" target="_top">Accessing the Keyboard</a></li><li name="na"><img src="file%20upload_files/clear.gif" class="LibC_e"><a href="http://msdn.microsoft.com/en-us/library/te0b7k6c%28VS.80%29.aspx" target="_top">Accessing the Mouse</a></li><li name="ms299844(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_o"><a href="http://msdn.microsoft.com/en-us/library/182d4ety%28VS.80%29.aspx" target="_top">Performing Network Operations</a><ul class="toc"><li name="na"><img src="file%20upload_files/clear.gif" class="LibC_e"><a class="tocSelected" href="http://msdn.microsoft.com/en-us/library/w3kksch7%28VS.80%29.aspx" target="_top">How to: Upload a File</a></li><li name="na"><img src="file%20upload_files/clear.gif" class="LibC_e"><a href="http://msdn.microsoft.com/en-us/library/1say4ws7%28VS.80%29.aspx" target="_top">How to: Download a File</a></li><li name="na"><img src="file%20upload_files/clear.gif" class="LibC_e"><a href="http://msdn.microsoft.com/en-us/library/3d6tfc4z%28VS.80%29.aspx" target="_top">How to: Check Connection Status</a></li><li name="na"><img src="file%20upload_files/clear.gif" class="LibC_e"><a href="http://msdn.microsoft.com/en-us/library/s9xkzk4s%28VS.80%29.aspx" target="_top">How to: Determine if a Remote Computer is Available</a></li></ul></li><li name="ms299846(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/1t0558fe%28VS.80%29.aspx" target="_top">Accessing the Computer's Ports</a></li><li name="ms299848(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/85t3c3hf%28VS.80%29.aspx" target="_top">Reading from and Writing to the Registry</a></li><li name="ms299852(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ms172709%28VS.80%29.aspx" target="_top">Accessing Other Processes</a></li></ul></li><li name="ms299854(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ms172714%28VS.80%29.aspx" target="_top">Updating an Application</a></li><li name="ms299856(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ms172716%28VS.80%29.aspx" target="_top">Logging Information from the Application</a></li><li name="ms299858(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/9ac2xy40%28VS.80%29.aspx" target="_top">Accessing a Running Application</a></li><li name="ms299860(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/459kt6ec%28VS.80%29.aspx" target="_top">Accessing User Data</a></li><li name="ms299862(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ms172722%28VS.80%29.aspx" target="_top">Accessing Application Forms</a></li><li name="ms299864(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ms172726%28VS.80%29.aspx" target="_top">Accessing Application Web Services</a></li><li name="ms299866(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/tkkf2x4f%28VS.80%29.aspx" target="_top">Accessing Application Resources</a></li><li name="ms299869(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/bc6ws923%28VS.80%29.aspx" target="_top">Accessing Application Settings</a></li><li name="ms299871(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/9chk30w7%28VS.80%29.aspx" target="_top">Processing Drives, Directories, and Files</a></li></ul></li><li name="ms299883(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/5btzf5yk%28VS.80%29.aspx" target="_top">Development with My</a></li><li name="na"><img src="file%20upload_files/clear.gif" class="LibC_e"><a href="http://msdn.microsoft.com/en-us/library/zh26sed6%28VS.80%29.aspx" target="_top">Accessing Data in Visual Basic Applications</a></li><li name="na"><img src="file%20upload_files/clear.gif" class="LibC_e"><a href="http://msdn.microsoft.com/en-us/library/ms172744%28VS.80%29.aspx" target="_top">Debugging Your Visual Basic Application</a></li><li name="ms299885(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/s6da8809%28VS.80%29.aspx" target="_top">Exception and Error Handling</a></li><li name="na"><img src="file%20upload_files/clear.gif" class="LibC_e"><a href="http://msdn.microsoft.com/en-us/library/ms233806%28VS.80%29.aspx" target="_top">Deploying Your Application</a></li><li name="na"><img src="file%20upload_files/clear.gif" class="LibC_e"><a href="http://msdn.microsoft.com/en-us/library/ms233840%28VS.80%29.aspx" target="_top">Creating and Using Components in Visual Basic</a></li><li name="ms299895(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/txa7sw20%28VS.80%29.aspx" target="_top">Going Further with Visual Basic</a></li><li name="ms300112(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ms233776%28VS.80%29.aspx" target="_top">Customizing Projects and Extending My</a></li></ul></li><li name="ms299825(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/y4wf33f0%28VS.80%29.aspx" target="_top">Visual Basic Programming Guide</a></li><li name="ms300189(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/25kad608%28VS.80%29.aspx" target="_top">Reference (Visual Basic)</a></li><li name="ms300210(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/5ekc8at3%28VS.80%29.aspx" target="_top">Samples</a></li></ul></li><li name="cc403213(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/cc425026%28VS.80%29.aspx" target="_top">Visual Basic Power Packs</a></li><li name="ms297410(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/kx37x362%28VS.80%29.aspx" target="_top">Visual C#</a></li><li name="ms302012(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/60k1461a%28VS.80%29.aspx" target="_top">Visual C++</a></li><li name="ms302466(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/7xsxf8e2%28VS.80%29.aspx" target="_top">Visual J#</a></li><li name="ms299475(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/72bd815a%28VS.80%29.aspx" target="_top">JScript</a></li><li name="ms269120(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ms178093%28VS.80%29.aspx" target="_top">Visual Web Developer</a></li><li name="cc425016(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/d2tx7z6d%28VS.80%29.aspx" target="_top">Visual Studio Tools for Office</a></li><li name="ms297662(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/sa69he4t%28VS.80%29.aspx" target="_top">Smart Device Development</a></li><li name="ms269124(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/24a9s690%28VS.80%29.aspx" target="_top">Tools and Features</a></li><li name="bb185584(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/bb166441%28VS.80%29.aspx" target="_top">Visual Studio SDK</a></li><li name="cc403096(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/6c701b8w%28VS.80%29.aspx" target="_top">Glossary (.NET Framework)</a></li></ul></li><li name="ms299291(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ms181038%28VS.80%29.aspx" target="_top">Visual SourceSafe</a></li><li name="ms304624(vs.80,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/fda2bad5%28VS.80%29.aspx" target="_top">Visual Studio Team System</a></li><li name="aa468085(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/aa468085.aspx" target="_top">Technical Articles</a></li><li name="dd430245(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/dd430245.aspx" target="_top">Visual Studio Extensibility</a></li><li name="bb931702(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/bb931699.aspx" target="_top">Software Licensing and Protection Services</a></li></ul></li><li name="aa973739(vs.71,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/aa973739%28vs.71%29.aspx" target="_top">Visual Studio .NET</a></li><li name="ff403849(vs.92,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ff402535%28VS.92%29.aspx" target="_top">Windows Phone Development</a></li><li name="aa468128(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/aa468128.aspx" target="_top">XNA Game Studio</a></li><li name="bb401006(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ms950417.aspx" target="_top">Visual Studio 6.0</a></li><li name="cc178930(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ms950411.aspx" target="_top">Visual FoxPro</a></li><li name="bb881626(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/bb881626.aspx" target="_top">Microsoft Robotics</a></li><li name="ff405728(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ms717422.aspx" target="_top">Windows SDK</a></li></ul></li><li name="ms376734(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ms376734.aspx" target="_top">Mobile and Embedded Development</a></li><li name="aa139615(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ff361664%28VS.100%29.aspx" target="_top">.NET Development</a></li><li name="bb665965(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/bb726434.aspx" target="_top">Office Development</a></li><li name="ee702802(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ee702802.aspx" target="_top">Online Services</a></li><li name="cc203350(prot.10,n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/dd208104%28PROT.10%29.aspx" target="_top">Open Specifications</a></li><li name="dd441867(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ms998572.aspx" target="_top">patterns &amp; practices</a></li><li name="aa155072(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/aa155072.aspx" target="_top">Servers and Enterprise Development</a></li><li name="ee721077(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ee721044.aspx" target="_top">Speech Technologies</a></li><li name="aa155073(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/aa155073.aspx" target="_top">Web Development</a></li><li name="aa139672(n)"><img src="file%20upload_files/clear.gif" class="LibC_c"><a href="http://msdn.microsoft.com/en-us/library/ee663300%28VS.85%29.aspx" target="_top">Windows Development</a></li></ul></li></ul>
		</div>
</div>


      
	</div><div id="ctl00_raSplitter" title="Click and drag to resize. Double click or press 't' to toggle visibility." class="splitter" style="left: 300px;">
		<div class="LibC_lib_grippy" style="position: absolute; top: 50%;"></div>
	</div><div id="ctl00_raRight" class="rightSection">
		
        <div>
          <div id="ctl00_eb1_Panel1" class="EyebrowMenuBar">
			
<div class="stat" style="position: relative;" id="ctl00_eb1_ctl00"><a title="MSDN" href="http://msdn.microsoft.com/en-us/ms348103.aspx">MSDN</a><div id="ctl00_eb1_ctl00_Popup" class="popup" style="position: absolute; visibility: hidden; left: -1000px; width: 71px; height: 21px;">
					<span name="http://msdn.microsoft.com/en-us/library/36cf08ac-18d1-4fe0-abc8-466852a0f9c7(n).aspx">Please Wait</span></div><div id="ctl00_eb1_ctl00_Anim" class="TFlyPopupAnimate"></div>
			</div>
			<div class="stat" style="position: relative;" id="ctl00_eb1_ctl01"><a title="MSDN Library" href="http://msdn.microsoft.com/en-us/library/ms123401.aspx">MSDN Library</a><div id="ctl00_eb1_ctl01_Popup" class="popup" style="position: absolute; visibility: hidden; left: -1000px; width: 71px; height: 21px;">
					<span name="http://msdn.microsoft.com/en-us/library/ms310241(n).aspx">Please Wait</span></div><div id="ctl00_eb1_ctl01_Anim" class="TFlyPopupAnimate"></div>
			</div>
			<div class="stat" style="position: relative;" id="ctl00_eb1_ctl02"><a title="Development Tools and Languages" href="http://msdn.microsoft.com/en-us/library/aa187916.aspx">Development Tools and Languages</a><div id="ctl00_eb1_ctl02_Popup" class="popup" style="position: absolute; visibility: hidden; left: -1000px; width: 71px; height: 21px;">
					<span name="http://msdn.microsoft.com/en-us/library/aa187916(n).aspx">Please Wait</span></div><div id="ctl00_eb1_ctl02_Anim" class="TFlyPopupAnimate"></div>
			</div>
			<div class="stat" style="position: relative;" id="ctl00_eb1_ctl03"><a title="Visual Studio 2005" href="http://msdn.microsoft.com/en-us/library/ms950416.aspx">Visual Studio 2005</a><div id="ctl00_eb1_ctl03_Popup" class="popup" style="position: absolute; visibility: hidden; left: -1000px; width: 71px; height: 21px;">
					<span name="http://msdn.microsoft.com/en-us/library/aa468084(n).aspx">Please Wait</span></div><div id="ctl00_eb1_ctl03_Anim" class="TFlyPopupAnimate"></div>
			</div>
			<div class="stat" style="position: relative;" id="ctl00_eb1_ctl04"><a title="Visual Studio" href="http://msdn.microsoft.com/en-us/library/ms269115%28VS.80%29.aspx">Visual Studio</a><div id="ctl00_eb1_ctl04_Popup" class="popup" style="position: absolute; visibility: hidden; left: -1000px; width: 71px; height: 21px;">
					<span name="http://msdn.microsoft.com/en-us/library/ms269115(VS.80,n).aspx">Please Wait</span></div><div id="ctl00_eb1_ctl04_Anim" class="TFlyPopupAnimate"></div>
			</div>
			<div class="stat" style="position: relative;" id="ctl00_eb1_ctl05"><a title="Visual Basic" href="http://msdn.microsoft.com/en-us/library/2x7h1hfk%28VS.80%29.aspx">Visual Basic</a><div id="ctl00_eb1_ctl05_Popup" class="popup" style="position: absolute; visibility: hidden; left: -1000px; width: 71px; height: 21px;">
					<span name="http://msdn.microsoft.com/en-us/library/ms299791(VS.80,n).aspx">Please Wait</span></div><div id="ctl00_eb1_ctl05_Anim" class="TFlyPopupAnimate"></div>
			</div>
			<div class="stat" style="position: relative;" id="ctl00_eb1_ctl06"><a title="Developing Applications with Visual Basic" href="http://msdn.microsoft.com/en-us/library/k6a6etxs%28VS.80%29.aspx">Developing Applications with Visual...</a><div id="ctl00_eb1_ctl06_Popup" class="popup" style="position: absolute; visibility: hidden; left: -1000px; width: 71px; height: 21px;">
					<span name="http://msdn.microsoft.com/en-us/library/ms299822(VS.80,n).aspx">Please Wait</span></div><div id="ctl00_eb1_ctl06_Anim" class="TFlyPopupAnimate"></div>
			</div>
			<div class="stat" style="position: relative;" id="ctl00_eb1_ctl07"><a title="Programming in Visual Basic" href="http://msdn.microsoft.com/en-us/library/ms233833%28VS.80%29.aspx">Programming in Visual Basic</a><div id="ctl00_eb1_ctl07_Popup" class="popup" style="position: absolute; visibility: hidden; left: -1000px; width: 71px; height: 21px;">
					<span name="http://msdn.microsoft.com/en-us/library/ms299834(VS.80,n).aspx">Please Wait</span></div><div id="ctl00_eb1_ctl07_Anim" class="TFlyPopupAnimate"></div>
			</div>
			<div class="stat" style="position: relative;" id="ctl00_eb1_ctl08"><a title="Accessing Computer Resources" href="http://msdn.microsoft.com/en-us/library/ch40zftw%28VS.80%29.aspx">Accessing Computer Resources</a><div id="ctl00_eb1_ctl08_Popup" class="popup" style="position: absolute; visibility: hidden; left: -1000px; width: 71px; height: 21px;">
					<span name="http://msdn.microsoft.com/en-us/library/ms299836(VS.80,n).aspx">Please Wait</span></div><div id="ctl00_eb1_ctl08_Anim" class="TFlyPopupAnimate"></div>
			</div>
			<div class="stat" style="position: relative;" id="ctl00_eb1_ctl09"><a title="Performing Network Operations" href="http://msdn.microsoft.com/en-us/library/182d4ety%28VS.80%29.aspx">Performing Network Operations</a><div id="ctl00_eb1_ctl09_Popup" class="popup" style="position: absolute; visibility: hidden; left: -1000px; width: 71px; height: 21px;">
					<span name="http://msdn.microsoft.com/en-us/library/ms299844(VS.80,n).aspx">Please Wait</span></div><div id="ctl00_eb1_ctl09_Anim" class="TFlyPopupAnimate"></div>
			</div>
			<div class="nochildstat"><strong>&nbsp;How to: Upload a File</strong></div><span style="float: none; clear: both; display: block;"></span>
		</div>

        </div>
        

        <div class="RightPanel">
          <div class="ContentBar">
            
            
<script type="text/Javascript">
var visualbasic = new Array(3);
visualbasic[0] = "ctl00_MTCS_main_ctl02_VisualBasic";
visualbasic[1] = "ctl00_MTCS_main_ctl03_VisualBasic";
visualbasic[2] = "ctl00_MTCS_main_ctl04_VisualBasic";
</script>

<style type="text/css">
.vb, .cs, .cpp, .nu, .fs
{
	display:none;
}
</style>
<style id="LanguageSpecificTextStyle" type="text/css">
.nu
{
   display:inline;
}
</style><div id="ctl00_DropDownFilter_DropDownFilterMain" class="DropDownFilterStyle"><img id="ctl00_DropDownFilter_MTPS_DD_ImageArrow" title="Language Filter" class="MTPS_DropDownImage LibC_arrow-off" onclick="DDFilterOn(event);" onmouseover="ChangeDropDownImage(true);ResetLanguagesMenuTimer(event);" onmouseout="ChangeDropDownImage(false);RequestHideLanguagesMenu();" src="file%20upload_files/clear.gif" alt="Language Filter" style="border-width: 0px;"><a id="ctl00_DropDownFilter_Mtps_DropDownFilterText" title="Language Filter" class="DropDownFilterOff" onclick="DDFilterOn(event);" onmouseover="ChangeDropDownImage(true);" onmouseout="ChangeDropDownImage(false);" href="http://msdn.microsoft.com/en-us/library/w3kksch7%28VS.80%29.aspx#Mtps_DropDownFilterText">Language Filter : All</a><div id="ctl00_DropDownFilter_Mtps_DropDownPopUp" style="display: none;" class="MTPS_PopupDivPanel" onmouseover="ResetLanguagesMenuTimer(event);" onmouseout="RequestHideLanguagesMenu();"><div class="DivCbxLabelLanguage">
			<input name="ctl00$DropDownFilter$DropDownLngFilterCtrl" id="ctl00_DropDownFilter_DropDownLngFilterCtrl" checked="checked" value="Visual Basic" arrayvalue="visualbasic" onclick="SetLangFilter('visualbasic',false);" type="checkbox"><span id="ctl00_DropDownFilter_ctl00_DropDownFilter_DropDownLngFilterCtrl_0" title="Visual Basic">Visual Basic<br></span>
		</div><div class="DivCbxLabelLanguage">
			<input name="ctl00$DropDownFilter$DropDownLngFilterCtrl" id="ctl00_DropDownFilter_DropDownLngFilterCtrl" checked="checked" value="C#" arrayvalue="csharp" onclick="SetLangFilter(null,false);" type="checkbox"><span id="ctl00_DropDownFilter_ctl00_DropDownFilter_DropDownLngFilterCtrl_1" title="C#">C#<br></span>
		</div><div class="DivCbxLabelLanguage">
			<input name="ctl00$DropDownFilter$DropDownLngFilterCtrl" id="ctl00_DropDownFilter_DropDownLngFilterCtrl" checked="checked" value="C++" arrayvalue="managedcplusplus" onclick="SetLangFilter(null,false);" type="checkbox"><span id="ctl00_DropDownFilter_ctl00_DropDownFilter_DropDownLngFilterCtrl_2" title="C++">C++<br></span>
		</div><div class="DivCbxLabelLanguage">
			<input name="ctl00$DropDownFilter$DropDownLngFilterCtrl" id="ctl00_DropDownFilter_DropDownLngFilterCtrl" checked="checked" value="J#" arrayvalue="jsharp" onclick="SetLangFilter(null,false);" type="checkbox"><span id="ctl00_DropDownFilter_ctl00_DropDownFilter_DropDownLngFilterCtrl_3" title="J#">J#<br></span>
		</div><div class="DivCbxLabelLanguage">
			<input name="ctl00$DropDownFilter$DropDownLngFilterCtrl" id="ctl00_DropDownFilter_DropDownLngFilterCtrl" checked="checked" value="JScript" arrayvalue="jscript" onclick="SetLangFilter(null,false);" type="checkbox"><span id="ctl00_DropDownFilter_ctl00_DropDownFilter_DropDownLngFilterCtrl_4" title="JScript">JScript<br></span>
		</div><div class="DivCbxLabelLanguage">
			<input name="ctl00$DropDownFilter$DropDownLngFilterCtrl" id="ctl00_DropDownFilter_DropDownLngFilterCtrl" checked="checked" value="XAML" arrayvalue="xaml" onclick="SetLangFilter(null,false);" type="checkbox"><span id="ctl00_DropDownFilter_ctl00_DropDownFilter_DropDownLngFilterCtrl_5" title="XAML">XAML<br></span>
		</div><div class="DivCbxLabelLanguage">
			<input name="ctl00$DropDownFilter$DropDownLngFilterCtrl" id="ctl00_DropDownFilter_DropDownLngFilterCtrl" checked="checked" value="F#" arrayvalue="fsharp" onclick="SetLangFilter(null,false);" type="checkbox"><span id="ctl00_DropDownFilter_ctl00_DropDownFilter_DropDownLngFilterCtrl_6" title="F#">F#<br></span>
		</div></div>
<script type="text/Javascript">
var strConstLangFilterAll ="All";
var strConstLangFilterMulti ="Multiple";
var strConstLangFilterNone ="None";
var strConstLangFilterText ="Language Filter";
var oMTPS_DD_ImgArrow = document.getElementById("ctl00_DropDownFilter_MTPS_DD_ImageArrow");
var oMTPS_DD_PanelLink = document.getElementById("ctl00_DropDownFilter_Mtps_DropDownFilterText");
var oMTPS_DD_Div = document.getElementById("ctl00_DropDownFilter_DropDownFilterMain");
var oMTPS_DD_PopUpDiv = document.getElementById("ctl00_DropDownFilter_Mtps_DropDownPopUp");
</script>
</div>
              
            
            
          </div>
           <div class="ContentArea">
      
          
          <span id="ctl00_altSelector"><div class="AlterPart">
			<div>
				This page is specific to
  
			</div><span>Microsoft Visual Studio 2005/.NET Framework 2.0</span><br><br><div>
				Other versions are also available for the following:
  
			</div><div id="ctl00_ctl04">
				<ul><li><a id="ctl00_ctl05" href="http://msdn.microsoft.com/en-us/library/w3kksch7%28VS.90%29.aspx" onclick="javascript:Track('ctl00_ctl04|ctl00_ctl05',this);">Microsoft Visual Studio 2008/.NET Framework 3.5</a></li><li><a id="ctl00_ctl06" href="http://msdn.microsoft.com/en-us/library/w3kksch7%28VS.100%29.aspx" onclick="javascript:Track('ctl00_ctl04|ctl00_ctl06',this);">Microsoft Visual Studio 2010/.NET Framework 4</a></li></ul>
			</div>
		</div></span>
          
          
          
        
          <div class="topic"><div class="majorTitle">Visual Basic Language Concepts&nbsp;
        </div><div class="title">How to: Upload a File in Visual Basic&nbsp;
        </div><!--Content type: DocStudio. Transform: devdiv2mtps.xslt.--><div id="mainSection"> <div id="mainBody">  <p> </p><p>The <span class="linkTerms"><a id="ctl00_MTCS_main_ctl01" href="http://msdn.microsoft.com/en-us/library/dfkdh7eb%28VS.80%29.aspx" onclick="javascript:Track('ctl00_MTCS_main_ctl00|ctl00_MTCS_main_ctl01',this);">My.Computer.Network.UploadFile Method</a></span> can be used to upload a file and store it to a remote location. If the <span class="parameter">ShowUI</span> parameter is set to <b>True</b>, a dialog box is displayed that shows the progress of the download and allows users to cancel the operation. </p> <h3 class="procedureSubHeading">To upload a file</h3><div class="subSection"><ul><li> <p>Use the <b>UploadFile</b>
method to upload a file, specifying the source file's location and the
target directory location as a string or URI (Uniform Resource
Identifier).This example uploads the file <tt>Order.txt</tt> to <tt>http://www.cohowinery.com/uploads.aspx</tt>.</p> <span id="ctl00_MTCS_main_ctl02">
<div class="libCScode" id="ctl00_MTCS_main_ctl02_VisualBasic">
    
    <div class="CodeSnippetTitleBar">
        <div class="CodeDisplayLanguage">
            Visual Basic
        </div>
        
    </div>
    <div dir="ltr" style="background-color: rgb(221, 221, 221);">
    <pre class="libCScode" id="ctl00_MTCS_main_ctl02_code" space="preserve">My.Computer.Network.UploadFile( _
<span style="color: maroon;">"C:\My Documents\Order.txt"</span>, _
<span style="color: maroon;">"http://www.cohowinery.com/upload.aspx"</span>)</pre>
    </div>
</div>

</span> </li></ul></div><h3 class="procedureSubHeading">To upload a file and show the progress of the operation</h3><div class="subSection"><ul><li> <p>Use the <b>UploadFile</b>
method to upload a file, specifying the source file's location and the
target directory location as a string or URI. This example uploads the
file <tt>Order.txt</tt> to <tt>http://www.cohowinery.com/uploads.aspx</tt> without supplying a user name or password, shows the progress of the upload, and has a time-out interval of 500 milliseconds.</p> <span id="ctl00_MTCS_main_ctl03">
<div class="libCScode" id="ctl00_MTCS_main_ctl03_VisualBasic">
    
    <div class="CodeSnippetTitleBar">
        <div class="CodeDisplayLanguage">
            Visual Basic
        </div>
        
    </div>
    <div dir="ltr" style="background-color: rgb(221, 221, 221);">
    <pre class="libCScode" id="ctl00_MTCS_main_ctl03_code" space="preserve">My.Computer.Network.UploadFile( _
<span style="color: maroon;">"C:\My Documents\Order.txt"</span>, _
<span style="color: maroon;">"http://www.cohowinery.com/upload.aspx"</span>, <span style="color: maroon;">""</span>, <span style="color: maroon;">""</span>, <span style="color: blue;">True</span>, 500)</pre>
    </div>
</div>

</span> </li></ul></div><h3 class="procedureSubHeading">To upload a file, supplying a user name and password</h3><div class="subSection"><ul><li> <p>Use the <b>UploadFile</b>
method to upload a file, specifying the source file's location and the
target directory location as a string or URI, and specifying the user
name and the password. This example uploads the file <tt>Order.txt</tt> to <tt>http://www.cohowinery.com/uploads.aspx</tt>, supplying the user name <tt>anonymous</tt> and a blank password.</p> <span id="ctl00_MTCS_main_ctl04">
<div class="libCScode" id="ctl00_MTCS_main_ctl04_VisualBasic">
    
    <div class="CodeSnippetTitleBar">
        <div class="CodeDisplayLanguage">
            Visual Basic
        </div>
        
    </div>
    <div dir="ltr" style="background-color: rgb(221, 221, 221);">
    <pre class="libCScode" id="ctl00_MTCS_main_ctl04_code" space="preserve">My.Computer.Network.UploadFile( _
<span style="color: maroon;">"C:\My Documents\Order.txt"</span>, _
<span style="color: maroon;">"http://www.cohowinery.com/upload.aspx"</span>, <span style="color: maroon;">"anonymous"</span>, <span style="color: maroon;">""</span>)</pre>
    </div>
</div>

</span> </li></ul></div><h1 class="heading">Robust Programming</h1><div id="robustProgrammingSection" class="section"> <p>The following conditions may throw an exception:</p> <ul><li> <p>The local file path is not valid (<span class="linkTerms"><a id="ctl00_MTCS_main_ctl05" href="http://msdn.microsoft.com/en-us/library/system.argumentexception%28VS.80%29.aspx" onclick="javascript:Track('ctl00_MTCS_main_ctl00|ctl00_MTCS_main_ctl05',this);">ArgumentException</a></span>).</p> </li><li> <p>Authentication failed (<span class="linkTerms"><a id="ctl00_MTCS_main_ctl06" href="http://msdn.microsoft.com/en-us/library/system.security.securityexception%28VS.80%29.aspx" onclick="javascript:Track('ctl00_MTCS_main_ctl00|ctl00_MTCS_main_ctl06',this);">SecurityException</a></span>).</p> </li><li> <p>The connection timed out (<span class="linkTerms"><a id="ctl00_MTCS_main_ctl07" href="http://msdn.microsoft.com/en-us/library/system.timeoutexception%28VS.80%29.aspx" onclick="javascript:Track('ctl00_MTCS_main_ctl00|ctl00_MTCS_main_ctl07',this);">TimeoutException</a></span>).</p> </li></ul> </div><h1 class="heading"><span id="seeAlsoNoToggle">See Also</span></h1><div id="seeAlsoSection" class="seeAlsoNoToggleSection"><h4 class="subHeading">Tasks</h4><span class="linkTerms"><a id="ctl00_MTCS_main_ctl08" href="http://msdn.microsoft.com/en-us/library/1say4ws7%28VS.80%29.aspx" onclick="javascript:Track('ctl00_MTCS_main_ctl00|ctl00_MTCS_main_ctl08',this);">How to: Download a File in Visual Basic</a></span><br><span class="linkTerms"><a id="ctl00_MTCS_main_ctl09" href="http://msdn.microsoft.com/en-us/library/s9xkzk4s%28VS.80%29.aspx" onclick="javascript:Track('ctl00_MTCS_main_ctl00|ctl00_MTCS_main_ctl09',this);">How to: Determine if a Remote Computer is Available in Visual Basic</a></span><br><span class="linkTerms"><a id="ctl00_MTCS_main_ctl10" href="http://msdn.microsoft.com/en-us/library/783hax6d%28VS.80%29.aspx" onclick="javascript:Track('ctl00_MTCS_main_ctl00|ctl00_MTCS_main_ctl10',this);">How to: Parse File Paths in Visual Basic</a></span><br><h4 class="subHeading">Reference</h4><span class="linkTerms"><a id="ctl00_MTCS_main_ctl11" href="http://msdn.microsoft.com/en-us/library/hxza5zbx%28VS.80%29.aspx" onclick="javascript:Track('ctl00_MTCS_main_ctl00|ctl00_MTCS_main_ctl11',this);">My.Computer.Network Object</a></span><br><span class="linkTerms"><a id="ctl00_MTCS_main_ctl12" href="http://msdn.microsoft.com/en-us/library/ms172980%28VS.80%29.aspx" onclick="javascript:Track('ctl00_MTCS_main_ctl00|ctl00_MTCS_main_ctl12',this);">My.Computer.Network Object Members</a></span><br><span class="linkTerms"><a id="ctl00_MTCS_main_ctl13" href="http://msdn.microsoft.com/en-us/library/dfkdh7eb%28VS.80%29.aspx" onclick="javascript:Track('ctl00_MTCS_main_ctl00|ctl00_MTCS_main_ctl13',this);">My.Computer.Network.UploadFile Method</a></span><br><br></div></div>  </div></div>
        
          
        </div>
      </div>

      

<span id="CommunityContent"></span>
<div id="ctl00_WikiContent_cc" class="CCS_Container">
			

  <div class="CCS_TopicTagEditor">
	  <div id="ctl00_WikiContent_TopicTagEditor_panel" class="CCT_Panel">
  <div id="tagsPanel" class="CCT_TagsPanel">
    <span id="ctl00_WikiContent_TopicTagEditor_title" class="CCT_Title">Tags</span>
    <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/resources/taghelp.htm" id="ctl00_WikiContent_TopicTagEditor_helpLink" class="CCT_HelpLink" onclick='CCS_ShowHelp("/Platform/Controls/CCTagEditor/resources/taghelp.htm",800,600);return false;'>
      <img src="file%20upload_files/clear.gif" id="ctl00_WikiContent_TopicTagEditor_helpImage" class="CCT_HelpImage LibC_help" alt="What's this?" title="What's this?"></a>:
    <span id="ctl00_WikiContent_TopicTagEditor_tags" class="CCT_Text"><span class="CCT_TagPair"><a id="tagLink_0_-1" href="#" onclick='return CCT_BrowseTag("http://msdn.microsoft.com/en-us/library/Tags-Cloud.aspx?tag=fileupload",-1);' title="Browse other topics containing this tag" class="CCT_Link">fileupload</a> (<a id="removeTagLink_0_-1" href="#" onclick='return CCT_RemoveTag("fileupload","http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",-1);' title="Remove the tag from this topic" class="CCT_Link">x</a>) </span><span class="CCT_TagPair"><a id="tagLink_1_-1" href="#" onclick='return CCT_BrowseTag("http://msdn.microsoft.com/en-us/library/Tags-Cloud.aspx?tag=http",-1);' title="Browse other topics containing this tag" class="CCT_Link">http</a> (<a id="removeTagLink_1_-1" href="#" onclick='return CCT_RemoveTag("http","http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",-1);' title="Remove the tag from this topic" class="CCT_Link">x</a>) </span></span>
    <span id="ctl00_WikiContent_TopicTagEditor_view" class="CCT_View">
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_TopicTagEditor_addTagLink" class="CCT_LinkButton" onclick='return CCT_AddATag("http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",-1);' title="Add a tag to this topic">Add a tag</a>
    </span>

    <span id="ctl00_WikiContent_TopicTagEditor_editPanel" style="display: none;" class="CCT_Edit">
      <input name="ctl00$WikiContent$TopicTagEditor$textbox" id="ctl00_WikiContent_TopicTagEditor_textbox" class="CCT_TextBox" autocomplete="off" type="text">
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_TopicTagEditor_addLink" class="CCT_LinkButton" onclick="return CCT_AddTags(-1);" title="Submit the tags for this topic">Add</a>

      &nbsp;
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_TopicTagEditor_cancelLink" class="CCT_LinkButton" onclick="return CCT_CancelAddTag(-1);" title="Cancel this operation">Cancel</a>
    </span>
    <span id="ctl00_WikiContent_TopicTagEditor_messagePanel" class="CCT_Message"></span>
  </div>
  <div id="ctl00_WikiContent_TopicTagEditor_flagAsPanel" class="CCT_FlagAsPanel" style="display: none;">
    <span id="ctl00_WikiContent_TopicTagEditor_flagAsLabel">Flag as </span>
    <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_TopicTagEditor_contentBugLink" class="CCT_LinkButton" onclick='return CCT_FlagContentBug("http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",-1);' title="Flagging this annotation as a 'ContentBug' will let the author know that this topic needs to be reviewed">ContentBug</a>
  </div>
  <div style="clear: both;"></div>
</div>

  </div>

  <div class="CCS_WikiLogo">
	  <img id="ctl00_WikiContent_wikiLogo" class="LibC_wiki" src="file%20upload_files/clear.gif" style="border-width: 0px;">
  </div>

  <div id="ctl00_WikiContent_contentContainer" class="CCS_ContentContainer">
				
    <div id="ctl00_WikiContent_headerContainer" class="CCS_HeaderContainer">
					
			<table class="CCS_Header" border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody><tr>
					<td>
  					<div class="CCS_HeaderTitle">
  					  <span id="ctl00_WikiContent_headerTitle">Community Content</span>&nbsp;&nbsp;
              <a href="http://msdn.microsoft.com/Platform/Controls/CCSection/resources/cchelp.htm" id="ctl00_WikiContent_helpLink" class="CCS_HelpLink" onclick='CCS_ShowHelp("/Platform/Controls/CCSection/resources/cchelp.htm",400,400);return false;'><img src="file%20upload_files/clear.gif" id="ctl00_WikiContent_helpImage" class="CCS_HelpImage  LibC_help" alt="What is Community Content?" title="What is Community Content?"></a>
  					</div>
					</td>
				</tr>
			</tbody></table>
			<table class="CCS_Toolbar" border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody><tr>
					<td class="CCS_Add">
					  <a id="ctl00_WikiContent_Add" class="CCS_Link" href='javascript:WebForm_DoPostBackWithOptions(new%20WebForm_PostBackOptions("ctl00$WikiContent$Add",%20"",%20false,%20"",%20"http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx%3fwbi%3dnew",%20false,%20true))'>Add new content</a>
					</td>
					<td class="CCS_RecentChanges">
					  <a href="http://msdn.microsoft.com/en-us/library/community-edits.rss?topic=w3kksch7%7Cen-us%7C80" id="ctl00_WikiContent_recentPageLink"><img id="ctl00_WikiContent_imageRSS" class="CCS_RSSImage LibC_rss_button" src="file%20upload_files/clear.gif" alt="RSS" style="border-width: 0px;" align="middle"></a>&nbsp;
					  <span id="ctl00_WikiContent_recentChangesTitle" class="CCS_RecentChangesText">Annotations</span>
					</td>
					<td class="CCS_Profile" align="right">
						
					</td>
				</tr>
			</tbody></table>
    
				</div>

    <div id="ctl00_WikiContent_wikiItems" class="CCS_ItemsContainer">
					<div id="ctl00_WikiContent_ctl00_ItemUpdatePanel">
						
    <div id="ctl00_WikiContent_ctl00_Container" class="CCI_Container" onmouseover='CCI_Highlight(true,"ctl00_WikiContent_ctl00_Container");' onmouseout='CCI_Highlight(false,"ctl00_WikiContent_ctl00_Container");'>
							
      <div id="ctl00_WikiContent_ctl00_Header" class="CCI_Header">
								
        <table cellpadding="0" cellspacing="0" width="100%">
            <tbody><tr>
                <td align="left">
                    <span id="ctl00_WikiContent_ctl00_HeaderTitle" class="CCI_Header_Title">Destination is unclear</span>
                </td>
                <td>
                    <span id="ctl00_WikiContent_ctl00_Label2" class="CCI_Header_Spacer">&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </td>

                
                  <td class="CCI_Header_Actions" align="right">
                      <span id="ctl00_WikiContent_ctl00_EditInfo"><a id="ctl00_WikiContent_ctl00_ctl03" title="Created by egoer at 7/18/2007 7:56 PM" class="CCI_Header_Link" href="http://msdn.microsoft.com/en-us/library/user-egoer" onclick="javascript:Track('ctl00_WikiContent_ctl00_EditInfo|ctl00_WikiContent_ctl00_ctl03',this);">egoer</a>&nbsp;...&nbsp;<a id="ctl00_WikiContent_ctl00_ctl02" title="Last Edited by Red-Devile at 8/5/2009 9:17 PM" class="CCI_Header_Link" href="http://msdn.microsoft.com/en-us/library/user-30850.aspx" onclick="javascript:Track('ctl00_WikiContent_ctl00_EditInfo|ctl00_WikiContent_ctl00_ctl02',this);">Red-Devile</a></span><span id="ctl00_WikiContent_ctl00_Separator">
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                      </span><span id="ctl00_WikiContent_ctl00_EditLabel"><a id="ctl00_WikiContent_ctl00_Edit" title="Edit this version" class="CCI_Header_Link" href='javascript:WebForm_DoPostBackWithOptions(new%20WebForm_PostBackOptions("ctl00$WikiContent$ctl00$Edit",%20"",%20false,%20"",%20"http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx%3fwbi%3d1",%20false,%20true))'>Edit</a></span><input name="ctl00$WikiContent$ctl00$showhistoryFlag" id="ctl00_WikiContent_ctl00_showhistoryFlag" style="display: none;" value="false" type="text"><span id="ctl00_WikiContent_ctl00_HistoryLabel">
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a id="ctl00_WikiContent_ctl00_History" title="Show/Hide History" class="CCI_Header_Link" href="javascript:__doPostBack('ctl00$WikiContent$ctl00$History','')">Show History</a></span>
                  </td>
                
                
            </tr>
        </tbody></table>
      
							</div>

      <div id="ctl00_WikiContent_ctl00_HistoryContent" height="0px" style="overflow: hidden;">
								
          <div id="ctl00_WikiContent_ctl00_HistoryUpdatePanel">
									

              <a id="ctl00_WikiContent_ctl00_ibLoad" href="javascript:__doPostBack('ctl00$WikiContent$ctl00$ibLoad','')" style="height: 0px; width: 0px; position: absolute; display: none;"></a>
            
              <div id="ctl00_WikiContent_ctl00_HistoryUpdateProgress" style="display: none;">
										
                <div style="text-align: center; font-size: 9pt;">
											Please Wait&nbsp;&nbsp;<img class="LibC_spinner" src="file%20upload_files/clear.gif" alt="Please Wait" style="border-width: 0px; vertical-align: middle;">
										</div>
									</div>
            
              <div id="ctl00_WikiContent_ctl00_HistoryContainer" class="CCI_HistoryContent" style="">
										
              
									</div>
              
            
								</div>
      
							</div>

      <div id="ctl00_WikiContent_ctl00_EditorPanel" class="CCI_Text" ondblclick='document.location.href="http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx%3fwbi%3d1";' style="cursor: default;">
								
        <div id="ctl00_WikiContent_ctl00_Editor_Container" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'ctl00_WikiContent_ctl00_Editor_Save')">
									
	  
    <div id="ctl00_WikiContent_ctl00_Editor_RadEditor" title="Double-click to edit this block" class=" CCE_Editor_Disabled" style="height: auto; width: auto;">
										<!-- 2008.2.723.35 --><p>I don't think this instruction is clear about the destination of the uploading.</p>
<p>It seems it has to be a file, but what type of file? must it be an aspx file? if so, any code required in the aspx?</p>
<p>And will the source file be uploaded into the folder where the aspx file is? it's not clear. </p>
<p>Would be helpful if there is a detailed example .</p>
									</div>
    <input name="ctl00$WikiContent$ctl00$Editor$editorData" id="ctl00_WikiContent_ctl00_Editor_editorData" value="&lt;p&gt;I don't think this instruction is clear about the destination of the uploading.&lt;/p&gt;
&lt;p&gt;It seems it has to be a file, but what type of file? must it be an aspx file? if so, any code required in the aspx?&lt;/p&gt;
&lt;p&gt;And will the source file be uploaded into the folder where the aspx file is? it's not clear. &lt;/p&gt;
&lt;p&gt;Would be helpful if there is a detailed example .&lt;/p&gt;" type="hidden">
    <input name="ctl00$WikiContent$ctl00$Editor$tagEditorData" id="ctl00_WikiContent_ctl00_Editor_tagEditorData" value="contentsuggestion " type="hidden">
    
    
  
								</div>

      
							</div>

      <div id="ctl00_WikiContent_ctl00_TagEditor_panel" class="CCT_Panel_Block">
  <div id="tagsPanel" class="CCT_TagsPanel">
    <span id="ctl00_WikiContent_ctl00_TagEditor_title" class="CCT_Title">Tags</span>
    <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/resources/taghelp.htm" id="ctl00_WikiContent_ctl00_TagEditor_helpLink" class="CCT_HelpLink" onclick='CCS_ShowHelp("/Platform/Controls/CCTagEditor/resources/taghelp.htm",800,600);return false;'>
      <img src="file%20upload_files/clear.gif" id="ctl00_WikiContent_ctl00_TagEditor_helpImage" class="CCT_HelpImage LibC_help" alt="What's this?" title="What's this?"></a>:
    <span id="ctl00_WikiContent_ctl00_TagEditor_tags" class="CCT_Text"><span class="CCT_TagPair"><a id="tagLink_0_1" href="#" onclick='return CCT_BrowseTag("http://msdn.microsoft.com/en-us/library/Tags-Cloud.aspx?tag=contentsuggestion",1);' title="Browse other topics containing this tag" class="CCT_Link">contentsuggestion</a> (<a id="removeTagLink_0_1" href="#" onclick='return CCT_RemoveTag("contentsuggestion","http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",1);' title="Remove the tag from this topic" class="CCT_Link">x</a>) </span></span>
    <span id="ctl00_WikiContent_ctl00_TagEditor_view" class="CCT_View">
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl00_TagEditor_addTagLink" class="CCT_LinkButton" onclick='return CCT_AddATag("http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",1);' title="Add a tag to this topic">Add a tag</a>
    </span>

    <span id="ctl00_WikiContent_ctl00_TagEditor_editPanel" style="display: none;" class="CCT_Edit">
      <input name="ctl00$WikiContent$ctl00$TagEditor$textbox" id="ctl00_WikiContent_ctl00_TagEditor_textbox" class="CCT_TextBox" autocomplete="off" type="text">
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl00_TagEditor_addLink" class="CCT_LinkButton" onclick="return CCT_AddTags(1);" title="Submit the tags for this topic">Add</a>

      &nbsp;
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl00_TagEditor_cancelLink" class="CCT_LinkButton" onclick="return CCT_CancelAddTag(1);" title="Cancel this operation">Cancel</a>
    </span>
    <span id="ctl00_WikiContent_ctl00_TagEditor_messagePanel" class="CCT_Message"></span>
  </div>
  <div id="ctl00_WikiContent_ctl00_TagEditor_flagAsPanel" class="CCT_FlagAsPanel" style="">
    <span id="ctl00_WikiContent_ctl00_TagEditor_flagAsLabel">Flag as </span>
    <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl00_TagEditor_contentBugLink" class="CCT_LinkButton" onclick='return CCT_FlagContentBug("http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",1);' title="Flagging this annotation as a 'ContentBug' will let the author know that this topic needs to be reviewed">ContentBug</a>
  </div>
  <div style="clear: both;"></div>
</div>


    
						</div>
  
					</div>
<div id="ctl00_WikiContent_ctl01_ItemUpdatePanel">
						
    <div id="ctl00_WikiContent_ctl01_Container" class="CCI_Container" onmouseover='CCI_Highlight(true,"ctl00_WikiContent_ctl01_Container");' onmouseout='CCI_Highlight(false,"ctl00_WikiContent_ctl01_Container");'>
							
      <div id="ctl00_WikiContent_ctl01_Header" class="CCI_Header">
								
        <table cellpadding="0" cellspacing="0" width="100%">
            <tbody><tr>
                <td align="left">
                    <span id="ctl00_WikiContent_ctl01_HeaderTitle" class="CCI_Header_Title">I Agree, Destination is unclear</span>
                </td>
                <td>
                    <span id="ctl00_WikiContent_ctl01_Label2" class="CCI_Header_Spacer">&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </td>

                
                  <td class="CCI_Header_Actions" align="right">
                      <span id="ctl00_WikiContent_ctl01_EditInfo"><a id="ctl00_WikiContent_ctl01_ctl03" title="Created by frostfang at 2/28/2008 5:01 PM" class="CCI_Header_Link" href="http://msdn.microsoft.com/en-us/library/user-frostfang" onclick="javascript:Track('ctl00_WikiContent_ctl01_EditInfo|ctl00_WikiContent_ctl01_ctl03',this);">frostfang</a>&nbsp;...&nbsp;<a id="ctl00_WikiContent_ctl01_ctl02" title="Last Edited by Thomas Lee at 7/20/2009 1:19 AM" class="CCI_Header_Link" href="http://msdn.microsoft.com/en-us/library/user-42770.aspx" onclick="javascript:Track('ctl00_WikiContent_ctl01_EditInfo|ctl00_WikiContent_ctl01_ctl02',this);">Thomas Lee</a></span><span id="ctl00_WikiContent_ctl01_Separator">
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                      </span><span id="ctl00_WikiContent_ctl01_EditLabel"><a id="ctl00_WikiContent_ctl01_Edit" title="Edit this version" class="CCI_Header_Link" href='javascript:WebForm_DoPostBackWithOptions(new%20WebForm_PostBackOptions("ctl00$WikiContent$ctl01$Edit",%20"",%20false,%20"",%20"http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx%3fwbi%3d2",%20false,%20true))'>Edit</a></span><input name="ctl00$WikiContent$ctl01$showhistoryFlag" id="ctl00_WikiContent_ctl01_showhistoryFlag" style="display: none;" value="false" type="text"><span id="ctl00_WikiContent_ctl01_HistoryLabel">
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a id="ctl00_WikiContent_ctl01_History" title="Show/Hide History" class="CCI_Header_Link" href="javascript:__doPostBack('ctl00$WikiContent$ctl01$History','')">Show History</a></span>
                  </td>
                
                
            </tr>
        </tbody></table>
      
							</div>

      <div id="ctl00_WikiContent_ctl01_HistoryContent" height="0px" style="overflow: hidden;">
								
          <div id="ctl00_WikiContent_ctl01_HistoryUpdatePanel">
									

              <a id="ctl00_WikiContent_ctl01_ibLoad" href="javascript:__doPostBack('ctl00$WikiContent$ctl01$ibLoad','')" style="height: 0px; width: 0px; position: absolute; display: none;"></a>
            
              <div id="ctl00_WikiContent_ctl01_HistoryUpdateProgress" style="display: none;">
										
                <div style="text-align: center; font-size: 9pt;">
											Please Wait&nbsp;&nbsp;<img class="LibC_spinner" src="file%20upload_files/clear.gif" alt="Please Wait" style="border-width: 0px; vertical-align: middle;">
										</div>
									</div>
            
              <div id="ctl00_WikiContent_ctl01_HistoryContainer" class="CCI_HistoryContent" style="">
										
              
									</div>
              
            
								</div>
      
							</div>

      <div id="ctl00_WikiContent_ctl01_EditorPanel" class="CCI_Text" ondblclick='document.location.href="http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx%3fwbi%3d2";' style="cursor: default;">
								
        <div id="ctl00_WikiContent_ctl01_Editor_Container" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'ctl00_WikiContent_ctl01_Editor_Save')">
									
	  
    <div id="ctl00_WikiContent_ctl01_Editor_RadEditor" title="Double-click to edit this block" class=" CCE_Editor_Disabled" style="height: auto; width: auto;">
										I agree, this needs to be more descriptive and not rely on user knowledge. Please be more descriptive. 
									</div>
    <input name="ctl00$WikiContent$ctl01$Editor$editorData" id="ctl00_WikiContent_ctl01_Editor_editorData" value="I agree, this needs to be more descriptive and not rely on user knowledge. Please be more descriptive. " type="hidden">
    <input name="ctl00$WikiContent$ctl01$Editor$tagEditorData" id="ctl00_WikiContent_ctl01_Editor_tagEditorData" value="contentsuggestion " type="hidden">
    
    
  
								</div>

      
							</div>

      <div id="ctl00_WikiContent_ctl01_TagEditor_panel" class="CCT_Panel_Block">
  <div id="tagsPanel" class="CCT_TagsPanel">
    <span id="ctl00_WikiContent_ctl01_TagEditor_title" class="CCT_Title">Tags</span>
    <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/resources/taghelp.htm" id="ctl00_WikiContent_ctl01_TagEditor_helpLink" class="CCT_HelpLink" onclick='CCS_ShowHelp("/Platform/Controls/CCTagEditor/resources/taghelp.htm",800,600);return false;'>
      <img src="file%20upload_files/clear.gif" id="ctl00_WikiContent_ctl01_TagEditor_helpImage" class="CCT_HelpImage LibC_help" alt="What's this?" title="What's this?"></a>:
    <span id="ctl00_WikiContent_ctl01_TagEditor_tags" class="CCT_Text"><span class="CCT_TagPair"><a id="tagLink_0_2" href="#" onclick='return CCT_BrowseTag("http://msdn.microsoft.com/en-us/library/Tags-Cloud.aspx?tag=contentsuggestion",2);' title="Browse other topics containing this tag" class="CCT_Link">contentsuggestion</a> (<a id="removeTagLink_0_2" href="#" onclick='return CCT_RemoveTag("contentsuggestion","http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",2);' title="Remove the tag from this topic" class="CCT_Link">x</a>) </span></span>
    <span id="ctl00_WikiContent_ctl01_TagEditor_view" class="CCT_View">
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl01_TagEditor_addTagLink" class="CCT_LinkButton" onclick='return CCT_AddATag("http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",2);' title="Add a tag to this topic">Add a tag</a>
    </span>

    <span id="ctl00_WikiContent_ctl01_TagEditor_editPanel" style="display: none;" class="CCT_Edit">
      <input name="ctl00$WikiContent$ctl01$TagEditor$textbox" id="ctl00_WikiContent_ctl01_TagEditor_textbox" class="CCT_TextBox" autocomplete="off" type="text">
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl01_TagEditor_addLink" class="CCT_LinkButton" onclick="return CCT_AddTags(2);" title="Submit the tags for this topic">Add</a>

      &nbsp;
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl01_TagEditor_cancelLink" class="CCT_LinkButton" onclick="return CCT_CancelAddTag(2);" title="Cancel this operation">Cancel</a>
    </span>
    <span id="ctl00_WikiContent_ctl01_TagEditor_messagePanel" class="CCT_Message"></span>
  </div>
  <div id="ctl00_WikiContent_ctl01_TagEditor_flagAsPanel" class="CCT_FlagAsPanel" style="">
    <span id="ctl00_WikiContent_ctl01_TagEditor_flagAsLabel">Flag as </span>
    <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl01_TagEditor_contentBugLink" class="CCT_LinkButton" onclick='return CCT_FlagContentBug("http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",2);' title="Flagging this annotation as a 'ContentBug' will let the author know that this topic needs to be reviewed">ContentBug</a>
  </div>
  <div style="clear: both;"></div>
</div>


    
						</div>
  
					</div>
<div id="ctl00_WikiContent_ctl02_ItemUpdatePanel">
						
    <div id="ctl00_WikiContent_ctl02_Container" class="CCI_Container" onmouseover='CCI_Highlight(true,"ctl00_WikiContent_ctl02_Container");' onmouseout='CCI_Highlight(false,"ctl00_WikiContent_ctl02_Container");'>
							
      <div id="ctl00_WikiContent_ctl02_Header" class="CCI_Header">
								
        <table cellpadding="0" cellspacing="0" width="100%">
            <tbody><tr>
                <td align="left">
                    <span id="ctl00_WikiContent_ctl02_HeaderTitle" class="CCI_Header_Title">Just like uploading from a form</span>
                </td>
                <td>
                    <span id="ctl00_WikiContent_ctl02_Label2" class="CCI_Header_Spacer">&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </td>

                
                  <td class="CCI_Header_Actions" align="right">
                      <span id="ctl00_WikiContent_ctl02_EditInfo"><a id="ctl00_WikiContent_ctl02_ctl02" title="Last Edited by guru-meditation at 3/5/2009 7:08 PM" class="CCI_Header_Link" href="http://msdn.microsoft.com/en-us/library/user-346177.aspx" onclick="javascript:Track('ctl00_WikiContent_ctl02_EditInfo|ctl00_WikiContent_ctl02_ctl02',this);">guru-meditation</a></span><span id="ctl00_WikiContent_ctl02_Separator">
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                      </span><span id="ctl00_WikiContent_ctl02_EditLabel"><a id="ctl00_WikiContent_ctl02_Edit" title="Edit this version" class="CCI_Header_Link" href='javascript:WebForm_DoPostBackWithOptions(new%20WebForm_PostBackOptions("ctl00$WikiContent$ctl02$Edit",%20"",%20false,%20"",%20"http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx%3fwbi%3d3",%20false,%20true))'>Edit</a></span><input name="ctl00$WikiContent$ctl02$showhistoryFlag" id="ctl00_WikiContent_ctl02_showhistoryFlag" style="display: none;" value="false" type="text"><span id="ctl00_WikiContent_ctl02_HistoryLabel">
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a id="ctl00_WikiContent_ctl02_History" title="Show/Hide History" class="CCI_Header_Link" href="javascript:__doPostBack('ctl00$WikiContent$ctl02$History','')">Show History</a></span>
                  </td>
                
                
            </tr>
        </tbody></table>
      
							</div>

      <div id="ctl00_WikiContent_ctl02_HistoryContent" height="0px" style="overflow: hidden;">
								
          <div id="ctl00_WikiContent_ctl02_HistoryUpdatePanel">
									

              <a id="ctl00_WikiContent_ctl02_ibLoad" href="javascript:__doPostBack('ctl00$WikiContent$ctl02$ibLoad','')" style="height: 0px; width: 0px; position: absolute; display: none;"></a>
            
              <div id="ctl00_WikiContent_ctl02_HistoryUpdateProgress" style="display: none;">
										
                <div style="text-align: center; font-size: 9pt;">
											Please Wait&nbsp;&nbsp;<img class="LibC_spinner" src="file%20upload_files/clear.gif" alt="Please Wait" style="border-width: 0px; vertical-align: middle;">
										</div>
									</div>
            
              <div id="ctl00_WikiContent_ctl02_HistoryContainer" class="CCI_HistoryContent" style="">
										
              
									</div>
              
            
								</div>
      
							</div>

      <div id="ctl00_WikiContent_ctl02_EditorPanel" class="CCI_Text" ondblclick='document.location.href="http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx%3fwbi%3d3";' style="cursor: default;">
								
        <div id="ctl00_WikiContent_ctl02_Editor_Container" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'ctl00_WikiContent_ctl02_Editor_Save')">
									
	  
    <div id="ctl00_WikiContent_ctl02_Editor_RadEditor" title="Double-click to edit this block" class=" CCE_Editor_Disabled" style="height: auto; width: auto;">
Maybe not a full description is needed, but at least a reference to the
ASP part would be nice. Of course it would depend on the servertype.<br><br>Here's a link for those who got Sun Microsystem's ChiliSoft installed on their server:<br><a id="ctl00_WikiContent_ctl02_Editor_ctl01" href="http://docs.sun.com/source/817-2514-10/Ch13_SpicePack68.html" onclick="javascript:Track('ctl00_WikiContent_ctl02_Editor_ctl00|ctl00_WikiContent_ctl02_Editor_ctl01',this);">http://docs.sun.com/source/817-2514-10/Ch13_SpicePack68.html</a><br><br>Or look at this video showing you how to make a simple fileupload page:<br><a id="ctl00_WikiContent_ctl02_Editor_ctl02" href="http://www.asp.net/learn/videos/video-255.aspx" onclick="javascript:Track('ctl00_WikiContent_ctl02_Editor_ctl00|ctl00_WikiContent_ctl02_Editor_ctl02',this);">http://www.asp.net/learn/videos/video-255.aspx</a><br>
									</div>
    <input name="ctl00$WikiContent$ctl02$Editor$editorData" id="ctl00_WikiContent_ctl02_Editor_editorData" value="Maybe not a full description is needed, but at least a reference to the ASP part would be nice. Of course it would depend on the servertype.&lt;br /&gt;&lt;br /&gt;Here's a link for those who got Sun Microsystem's ChiliSoft installed on their server:&lt;br /&gt;&lt;a href=&quot;http://docs.sun.com/source/817-2514-10/Ch13_SpicePack68.html&quot;&gt;http://docs.sun.com/source/817-2514-10/Ch13_SpicePack68.html&lt;/a&gt;&lt;br /&gt;&lt;br /&gt;Or look at this video showing you how to make a simple fileupload page:&lt;br /&gt;&lt;a href=&quot;http://www.asp.net/learn/videos/video-255.aspx&quot;&gt;http://www.asp.net/learn/videos/video-255.aspx&lt;/a&gt;&lt;br /&gt;" type="hidden">
    <input name="ctl00$WikiContent$ctl02$Editor$tagEditorData" id="ctl00_WikiContent_ctl02_Editor_tagEditorData" type="hidden">
    
    
  
								</div>

      
							</div>

      <div id="ctl00_WikiContent_ctl02_TagEditor_panel" class="CCT_Panel_Block">
  <div id="tagsPanel" class="CCT_TagsPanel">
    <span id="ctl00_WikiContent_ctl02_TagEditor_title" class="CCT_Title">Tags</span>
    <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/resources/taghelp.htm" id="ctl00_WikiContent_ctl02_TagEditor_helpLink" class="CCT_HelpLink" onclick='CCS_ShowHelp("/Platform/Controls/CCTagEditor/resources/taghelp.htm",800,600);return false;'>
      <img src="file%20upload_files/clear.gif" id="ctl00_WikiContent_ctl02_TagEditor_helpImage" class="CCT_HelpImage LibC_help" alt="What's this?" title="What's this?"></a>:
    <span id="ctl00_WikiContent_ctl02_TagEditor_tags" class="CCT_Text"></span>
    <span id="ctl00_WikiContent_ctl02_TagEditor_view" class="CCT_View">
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl02_TagEditor_addTagLink" class="CCT_LinkButton" onclick='return CCT_AddATag("http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",3);' title="Add a tag to this topic">Add a tag</a>
    </span>

    <span id="ctl00_WikiContent_ctl02_TagEditor_editPanel" style="display: none;" class="CCT_Edit">
      <input name="ctl00$WikiContent$ctl02$TagEditor$textbox" id="ctl00_WikiContent_ctl02_TagEditor_textbox" class="CCT_TextBox" autocomplete="off" type="text">
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl02_TagEditor_addLink" class="CCT_LinkButton" onclick="return CCT_AddTags(3);" title="Submit the tags for this topic">Add</a>

      &nbsp;
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl02_TagEditor_cancelLink" class="CCT_LinkButton" onclick="return CCT_CancelAddTag(3);" title="Cancel this operation">Cancel</a>
    </span>
    <span id="ctl00_WikiContent_ctl02_TagEditor_messagePanel" class="CCT_Message"></span>
  </div>
  <div id="ctl00_WikiContent_ctl02_TagEditor_flagAsPanel" class="CCT_FlagAsPanel" style="">
    <span id="ctl00_WikiContent_ctl02_TagEditor_flagAsLabel">Flag as </span>
    <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl02_TagEditor_contentBugLink" class="CCT_LinkButton" onclick='return CCT_FlagContentBug("http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",3);' title="Flagging this annotation as a 'ContentBug' will let the author know that this topic needs to be reviewed">ContentBug</a>
  </div>
  <div style="clear: both;"></div>
</div>


    
						</div>
  
					</div>
<div id="ctl00_WikiContent_ctl03_ItemUpdatePanel">
						
    <div id="ctl00_WikiContent_ctl03_Container" class="CCI_Container" onmouseover='CCI_Highlight(true,"ctl00_WikiContent_ctl03_Container");' onmouseout='CCI_Highlight(false,"ctl00_WikiContent_ctl03_Container");'>
							
      <div id="ctl00_WikiContent_ctl03_Header" class="CCI_Header">
								
        <table cellpadding="0" cellspacing="0" width="100%">
            <tbody><tr>
                <td align="left">
                    <span id="ctl00_WikiContent_ctl03_HeaderTitle" class="CCI_Header_Title">Nothing is Clear.</span>
                </td>
                <td>
                    <span id="ctl00_WikiContent_ctl03_Label2" class="CCI_Header_Spacer">&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </td>

                
                  <td class="CCI_Header_Actions" align="right">
                      <span id="ctl00_WikiContent_ctl03_EditInfo"><a id="ctl00_WikiContent_ctl03_ctl03" title="Created by techsavy.ravi at 7/8/2009 9:28 AM" class="CCI_Header_Link" href="http://msdn.microsoft.com/en-us/library/user-techsavy.ravi" onclick="javascript:Track('ctl00_WikiContent_ctl03_EditInfo|ctl00_WikiContent_ctl03_ctl03',this);">techsavy.ravi</a>&nbsp;...&nbsp;<a id="ctl00_WikiContent_ctl03_ctl02" title="Last Edited by Stanley Roark at 8/3/2009 10:43 AM" class="CCI_Header_Link" href="http://msdn.microsoft.com/en-us/library/user-227088.aspx" onclick="javascript:Track('ctl00_WikiContent_ctl03_EditInfo|ctl00_WikiContent_ctl03_ctl02',this);">Stanley Roark</a></span><span id="ctl00_WikiContent_ctl03_Separator">
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                      </span><span id="ctl00_WikiContent_ctl03_EditLabel"><a id="ctl00_WikiContent_ctl03_Edit" title="Edit this version" class="CCI_Header_Link" href='javascript:WebForm_DoPostBackWithOptions(new%20WebForm_PostBackOptions("ctl00$WikiContent$ctl03$Edit",%20"",%20false,%20"",%20"http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx%3fwbi%3d4",%20false,%20true))'>Edit</a></span><input name="ctl00$WikiContent$ctl03$showhistoryFlag" id="ctl00_WikiContent_ctl03_showhistoryFlag" style="display: none;" value="false" type="text"><span id="ctl00_WikiContent_ctl03_HistoryLabel">
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a id="ctl00_WikiContent_ctl03_History" title="Show/Hide History" class="CCI_Header_Link" href="javascript:__doPostBack('ctl00$WikiContent$ctl03$History','')">Show History</a></span>
                  </td>
                
                
            </tr>
        </tbody></table>
      
							</div>

      <div id="ctl00_WikiContent_ctl03_HistoryContent" height="0px" style="overflow: hidden;">
								
          <div id="ctl00_WikiContent_ctl03_HistoryUpdatePanel">
									

              <a id="ctl00_WikiContent_ctl03_ibLoad" href="javascript:__doPostBack('ctl00$WikiContent$ctl03$ibLoad','')" style="height: 0px; width: 0px; position: absolute; display: none;"></a>
            
              <div id="ctl00_WikiContent_ctl03_HistoryUpdateProgress" style="display: none;">
										
                <div style="text-align: center; font-size: 9pt;">
											Please Wait&nbsp;&nbsp;<img class="LibC_spinner" src="file%20upload_files/clear.gif" alt="Please Wait" style="border-width: 0px; vertical-align: middle;">
										</div>
									</div>
            
              <div id="ctl00_WikiContent_ctl03_HistoryContainer" class="CCI_HistoryContent" style="">
										
              
									</div>
              
            
								</div>
      
							</div>

      <div id="ctl00_WikiContent_ctl03_EditorPanel" class="CCI_Text" ondblclick='document.location.href="http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx%3fwbi%3d4";' style="cursor: default;">
								
        <div id="ctl00_WikiContent_ctl03_Editor_Container" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'ctl00_WikiContent_ctl03_Editor_Save')">
									
	  
    <div id="ctl00_WikiContent_ctl03_Editor_RadEditor" title="Double-click to edit this block" class=" CCE_Editor_Disabled" style="height: auto; width: auto;">
										The UploadFile method has 10 variants and the progressbar is supported in one type only. Please clear it.<br><br><strong>[tfl - 01 08 09] Hi - and thanks for your post. You should post questions like this to the MSDN Forums at </strong><a id="ctl00_WikiContent_ctl03_Editor_ctl01" href="http://forums.microsoft.com/msdn" onclick="javascript:Track('ctl00_WikiContent_ctl03_Editor_ctl00|ctl00_WikiContent_ctl03_Editor_ctl01',this);"><strong>http://forums.microsoft.com/msdn</strong></a><strong> or the MSDN Newsgroups at </strong><a id="ctl00_WikiContent_ctl03_Editor_ctl02" href="http://www.microsoft.com/communities/newsgroups/en-us/" onclick="javascript:Track('ctl00_WikiContent_ctl03_Editor_ctl00|ctl00_WikiContent_ctl03_Editor_ctl02',this);"><strong>http://www.microsoft.com/communities/newsgroups/en-us/</strong></a><strong>. You are much more likely get a quicker response using the forums than through the Community Content. For specific help about:<br>Visual Studio : </strong><a id="ctl00_WikiContent_ctl03_Editor_ctl03" href="http://groups.google.com/groups/dir?sel=usenet=microsoft.public.vstudio," onclick="javascript:Track('ctl00_WikiContent_ctl03_Editor_ctl00|ctl00_WikiContent_ctl03_Editor_ctl03',this);"><strong>http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.vstudio%2C</strong></a><strong>&amp;<br>SQL Server : </strong><a id="ctl00_WikiContent_ctl03_Editor_ctl04" href="http://groups.google.com/groups/dir?sel=usenet=microsoft.public.sqlserver," onclick="javascript:Track('ctl00_WikiContent_ctl03_Editor_ctl00|ctl00_WikiContent_ctl03_Editor_ctl04',this);"><strong>http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.sqlserver%2C</strong></a><strong>&amp;<br>.NET Framework : </strong><a id="ctl00_WikiContent_ctl03_Editor_ctl05" href="http://groups.google.com/groups/dir?sel=usenet=microsoft.public.dotnet.framework" onclick="javascript:Track('ctl00_WikiContent_ctl03_Editor_ctl00|ctl00_WikiContent_ctl03_Editor_ctl05',this);"><strong>http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.dotnet.framework</strong></a><br><strong>PowerShell : </strong><a id="ctl00_WikiContent_ctl03_Editor_ctl06" href="http://groups.google.com/group/microsoft.public.windows.powershell/topics?pli=1" onclick="javascript:Track('ctl00_WikiContent_ctl03_Editor_ctl00|ctl00_WikiContent_ctl03_Editor_ctl06',this);"><strong>http://groups.google.com/group/microsoft.public.windows.powershell/topics?pli=1</strong></a><br><strong>All Public : </strong><a id="ctl00_WikiContent_ctl03_Editor_ctl07" href="http://groups.google.com/groups/dir?sel=usenet=microsoft.public," onclick="javascript:Track('ctl00_WikiContent_ctl03_Editor_ctl00|ctl00_WikiContent_ctl03_Editor_ctl07',this);"><strong>http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public%2C</strong></a><strong>&amp;<br></strong>
									</div>
    <input name="ctl00$WikiContent$ctl03$Editor$editorData" id="ctl00_WikiContent_ctl03_Editor_editorData" value="The UploadFile method has 10 variants and the progressbar is supported in one type only. Please clear it.&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;[tfl - 01 08 09] Hi - and thanks for your post. You should post questions like this to the MSDN Forums at &lt;/strong&gt;&lt;a href=&quot;http://forums.microsoft.com/msdn&quot;&gt;&lt;strong xmlns:mtps=&quot;http://msdn2.microsoft.com/mtps&quot;&gt;http://forums.microsoft.com/msdn&lt;/strong&gt;&lt;/a&gt;&lt;strong&gt; or the MSDN Newsgroups at &lt;/strong&gt;&lt;a href=&quot;http://www.microsoft.com/communities/newsgroups/en-us/&quot;&gt;&lt;strong xmlns:mtps=&quot;http://msdn2.microsoft.com/mtps&quot;&gt;http://www.microsoft.com/communities/newsgroups/en-us/&lt;/strong&gt;&lt;/a&gt;&lt;strong&gt;. You are much more likely get a quicker response using the forums than through the Community Content. For specific help about:&lt;br /&gt;Visual Studio : &lt;/strong&gt;&lt;a href=&quot;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.vstudio%2C&quot;&gt;&lt;strong xmlns:mtps=&quot;http://msdn2.microsoft.com/mtps&quot;&gt;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.vstudio%2C&lt;/strong&gt;&lt;/a&gt;&lt;strong&gt;&amp;amp;&lt;br /&gt;SQL Server : &lt;/strong&gt;&lt;a href=&quot;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.sqlserver%2C&quot;&gt;&lt;strong xmlns:mtps=&quot;http://msdn2.microsoft.com/mtps&quot;&gt;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.sqlserver%2C&lt;/strong&gt;&lt;/a&gt;&lt;strong&gt;&amp;amp;&lt;br /&gt;.NET Framework : &lt;/strong&gt;&lt;a href=&quot;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.dotnet.framework&quot;&gt;&lt;strong xmlns:mtps=&quot;http://msdn2.microsoft.com/mtps&quot;&gt;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.dotnet.framework&lt;/strong&gt;&lt;/a&gt;&lt;br /&gt;&lt;strong&gt;PowerShell : &lt;/strong&gt;&lt;a href=&quot;http://groups.google.com/group/microsoft.public.windows.powershell/topics?pli=1&quot;&gt;&lt;strong xmlns:mtps=&quot;http://msdn2.microsoft.com/mtps&quot;&gt;http://groups.google.com/group/microsoft.public.windows.powershell/topics?pli=1&lt;/strong&gt;&lt;/a&gt;&lt;br /&gt;&lt;strong&gt;All Public : &lt;/strong&gt;&lt;a href=&quot;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public%2C&quot;&gt;&lt;strong xmlns:mtps=&quot;http://msdn2.microsoft.com/mtps&quot;&gt;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public%2C&lt;/strong&gt;&lt;/a&gt;&lt;strong&gt;&amp;amp;&lt;br /&gt;&lt;/strong&gt;" type="hidden">
    <input name="ctl00$WikiContent$ctl03$Editor$tagEditorData" id="ctl00_WikiContent_ctl03_Editor_tagEditorData" value="needsforum needsnewsgroup " type="hidden">
    
    
  
								</div>

      
							</div>

      <div id="ctl00_WikiContent_ctl03_TagEditor_panel" class="CCT_Panel_Block">
  <div id="tagsPanel" class="CCT_TagsPanel">
    <span id="ctl00_WikiContent_ctl03_TagEditor_title" class="CCT_Title">Tags</span>
    <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/resources/taghelp.htm" id="ctl00_WikiContent_ctl03_TagEditor_helpLink" class="CCT_HelpLink" onclick='CCS_ShowHelp("/Platform/Controls/CCTagEditor/resources/taghelp.htm",800,600);return false;'>
      <img src="file%20upload_files/clear.gif" id="ctl00_WikiContent_ctl03_TagEditor_helpImage" class="CCT_HelpImage LibC_help" alt="What's this?" title="What's this?"></a>:
    <span id="ctl00_WikiContent_ctl03_TagEditor_tags" class="CCT_Text"><span class="CCT_TagPair"><a id="tagLink_0_4" href="#" onclick='return CCT_BrowseTag("http://msdn.microsoft.com/en-us/library/Tags-Cloud.aspx?tag=needsforum",4);' title="Browse other topics containing this tag" class="CCT_Link">needsforum</a> (<a id="removeTagLink_0_4" href="#" onclick='return CCT_RemoveTag("needsforum","http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",4);' title="Remove the tag from this topic" class="CCT_Link">x</a>) </span><span class="CCT_TagPair"><a id="tagLink_1_4" href="#" onclick='return CCT_BrowseTag("http://msdn.microsoft.com/en-us/library/Tags-Cloud.aspx?tag=needsnewsgroup",4);' title="Browse other topics containing this tag" class="CCT_Link">needsnewsgroup</a> (<a id="removeTagLink_1_4" href="#" onclick='return CCT_RemoveTag("needsnewsgroup","http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",4);' title="Remove the tag from this topic" class="CCT_Link">x</a>) </span></span>
    <span id="ctl00_WikiContent_ctl03_TagEditor_view" class="CCT_View">
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl03_TagEditor_addTagLink" class="CCT_LinkButton" onclick='return CCT_AddATag("http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",4);' title="Add a tag to this topic">Add a tag</a>
    </span>

    <span id="ctl00_WikiContent_ctl03_TagEditor_editPanel" style="display: none;" class="CCT_Edit">
      <input name="ctl00$WikiContent$ctl03$TagEditor$textbox" id="ctl00_WikiContent_ctl03_TagEditor_textbox" class="CCT_TextBox" autocomplete="off" type="text">
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl03_TagEditor_addLink" class="CCT_LinkButton" onclick="return CCT_AddTags(4);" title="Submit the tags for this topic">Add</a>

      &nbsp;
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl03_TagEditor_cancelLink" class="CCT_LinkButton" onclick="return CCT_CancelAddTag(4);" title="Cancel this operation">Cancel</a>
    </span>
    <span id="ctl00_WikiContent_ctl03_TagEditor_messagePanel" class="CCT_Message"></span>
  </div>
  <div id="ctl00_WikiContent_ctl03_TagEditor_flagAsPanel" class="CCT_FlagAsPanel" style="">
    <span id="ctl00_WikiContent_ctl03_TagEditor_flagAsLabel">Flag as </span>
    <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl03_TagEditor_contentBugLink" class="CCT_LinkButton" onclick='return CCT_FlagContentBug("http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",4);' title="Flagging this annotation as a 'ContentBug' will let the author know that this topic needs to be reviewed">ContentBug</a>
  </div>
  <div style="clear: both;"></div>
</div>


    
						</div>
  
					</div>
<div id="ctl00_WikiContent_ctl04_ItemUpdatePanel">
						
    <div id="ctl00_WikiContent_ctl04_Container" class="CCI_Container" onmouseover='CCI_Highlight(true,"ctl00_WikiContent_ctl04_Container");' onmouseout='CCI_Highlight(false,"ctl00_WikiContent_ctl04_Container");'>
							
      <div id="ctl00_WikiContent_ctl04_Header" class="CCI_Header">
								
        <table cellpadding="0" cellspacing="0" width="100%">
            <tbody><tr>
                <td align="left">
                    <span id="ctl00_WikiContent_ctl04_HeaderTitle" class="CCI_Header_Title">don't work with proxies</span>
                </td>
                <td>
                    <span id="ctl00_WikiContent_ctl04_Label2" class="CCI_Header_Spacer">&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </td>

                
                  <td class="CCI_Header_Actions" align="right">
                      <span id="ctl00_WikiContent_ctl04_EditInfo"><a id="ctl00_WikiContent_ctl04_ctl03" title="Created by Cyrianox at 9/28/2009 3:31 AM" class="CCI_Header_Link" href="http://msdn.microsoft.com/en-us/library/user-Cyrianox" onclick="javascript:Track('ctl00_WikiContent_ctl04_EditInfo|ctl00_WikiContent_ctl04_ctl03',this);">Cyrianox</a>&nbsp;...&nbsp;<a id="ctl00_WikiContent_ctl04_ctl02" title="Last Edited by Thomas Lee at 10/5/2009 1:26 AM" class="CCI_Header_Link" href="http://msdn.microsoft.com/en-us/library/user-42770.aspx" onclick="javascript:Track('ctl00_WikiContent_ctl04_EditInfo|ctl00_WikiContent_ctl04_ctl02',this);">Thomas Lee</a></span><span id="ctl00_WikiContent_ctl04_Separator">
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                      </span><span id="ctl00_WikiContent_ctl04_EditLabel"><a id="ctl00_WikiContent_ctl04_Edit" title="Edit this version" class="CCI_Header_Link" href='javascript:WebForm_DoPostBackWithOptions(new%20WebForm_PostBackOptions("ctl00$WikiContent$ctl04$Edit",%20"",%20false,%20"",%20"http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx%3fwbi%3d5",%20false,%20true))'>Edit</a></span><input name="ctl00$WikiContent$ctl04$showhistoryFlag" id="ctl00_WikiContent_ctl04_showhistoryFlag" style="display: none;" value="false" type="text"><span id="ctl00_WikiContent_ctl04_HistoryLabel">
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a id="ctl00_WikiContent_ctl04_History" title="Show/Hide History" class="CCI_Header_Link" href="javascript:__doPostBack('ctl00$WikiContent$ctl04$History','')">Show History</a></span>
                  </td>
                
                
            </tr>
        </tbody></table>
      
							</div>

      <div id="ctl00_WikiContent_ctl04_HistoryContent" height="0px" style="overflow: hidden;">
								
          <div id="ctl00_WikiContent_ctl04_HistoryUpdatePanel">
									

              <a id="ctl00_WikiContent_ctl04_ibLoad" href="javascript:__doPostBack('ctl00$WikiContent$ctl04$ibLoad','')" style="height: 0px; width: 0px; position: absolute; display: none;"></a>
            
              <div id="ctl00_WikiContent_ctl04_HistoryUpdateProgress" style="display: none;">
										
                <div style="text-align: center; font-size: 9pt;">
											Please Wait&nbsp;&nbsp;<img class="LibC_spinner" src="file%20upload_files/clear.gif" alt="Please Wait" style="border-width: 0px; vertical-align: middle;">
										</div>
									</div>
            
              <div id="ctl00_WikiContent_ctl04_HistoryContainer" class="CCI_HistoryContent" style="">
										
              
									</div>
              
            
								</div>
      
							</div>

      <div id="ctl00_WikiContent_ctl04_EditorPanel" class="CCI_Text" ondblclick='document.location.href="http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx%3fwbi%3d5";' style="cursor: default;">
								
        <div id="ctl00_WikiContent_ctl04_Editor_Container" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'ctl00_WikiContent_ctl04_Editor_Save')">
									
	  
    <div id="ctl00_WikiContent_ctl04_Editor_RadEditor" title="Double-click to edit this block" class=" CCE_Editor_Disabled" style="height: auto; width: auto;">
										Hello<br><br><br>Why on the ***<br>My.Computer.Network.UploadFile <br>doesn't work with proxy ???<br><br><br><strong>[tfl - 05 10 09] Hi - and thanks for your post. You should post questions like this to the MSDN Forums at </strong><a id="ctl00_WikiContent_ctl04_Editor_ctl01" href="http://forums.microsoft.com/msdn" onclick="javascript:Track('ctl00_WikiContent_ctl04_Editor_ctl00|ctl00_WikiContent_ctl04_Editor_ctl01',this);"><strong>http://forums.microsoft.com/msdn</strong></a><strong> or the MSDN Newsgroups at </strong><a id="ctl00_WikiContent_ctl04_Editor_ctl02" href="http://www.microsoft.com/communities/newsgroups/en-us/" onclick="javascript:Track('ctl00_WikiContent_ctl04_Editor_ctl00|ctl00_WikiContent_ctl04_Editor_ctl02',this);"><strong>http://www.microsoft.com/communities/newsgroups/en-us/</strong></a><strong>. You are much more likely get a quicker response using the forums than through the Community Content. For specific help about:<br>Visual Studio  : </strong><a id="ctl00_WikiContent_ctl04_Editor_ctl03" href="http://groups.google.com/groups/dir?sel=usenet=microsoft.public.vstudio," onclick="javascript:Track('ctl00_WikiContent_ctl04_Editor_ctl00|ctl00_WikiContent_ctl04_Editor_ctl03',this);"><strong>http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.vstudio%2C</strong></a><strong>&amp;<br>SQL Server     : </strong><a id="ctl00_WikiContent_ctl04_Editor_ctl04" href="http://groups.google.com/groups/dir?sel=usenet=microsoft.public.sqlserver," onclick="javascript:Track('ctl00_WikiContent_ctl04_Editor_ctl00|ctl00_WikiContent_ctl04_Editor_ctl04',this);"><strong>http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.sqlserver%2C</strong></a><strong>&amp;<br>.NET Framework : </strong><a id="ctl00_WikiContent_ctl04_Editor_ctl05" href="http://groups.google.com/groups/dir?sel=usenet=microsoft.public.dotnet.framework" onclick="javascript:Track('ctl00_WikiContent_ctl04_Editor_ctl00|ctl00_WikiContent_ctl04_Editor_ctl05',this);"><strong>http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.dotnet.framework</strong></a><br><strong>PowerShell     : </strong><a id="ctl00_WikiContent_ctl04_Editor_ctl06" href="http://groups.google.com/group/microsoft.public.windows.powershell/topics?pli=1" onclick="javascript:Track('ctl00_WikiContent_ctl04_Editor_ctl00|ctl00_WikiContent_ctl04_Editor_ctl06',this);"><strong>http://groups.google.com/group/microsoft.public.windows.powershell/topics?pli=1</strong></a><br><strong>All Public     : </strong><a id="ctl00_WikiContent_ctl04_Editor_ctl07" href="http://groups.google.com/groups/dir?sel=usenet=microsoft.public," onclick="javascript:Track('ctl00_WikiContent_ctl04_Editor_ctl00|ctl00_WikiContent_ctl04_Editor_ctl07',this);"><strong>http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public%2C</strong></a><strong>&amp;<br></strong>
									</div>
    <input name="ctl00$WikiContent$ctl04$Editor$editorData" id="ctl00_WikiContent_ctl04_Editor_editorData" value="Hello&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;Why on the ***&lt;br /&gt;My.Computer.Network.UploadFile &lt;br /&gt;doesn't work with proxy ???&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;[tfl - 05 10 09] Hi - and thanks for your post. You should post questions like this to the MSDN Forums at &lt;/strong&gt;&lt;a href=&quot;http://forums.microsoft.com/msdn&quot;&gt;&lt;strong xmlns:mtps=&quot;http://msdn2.microsoft.com/mtps&quot;&gt;http://forums.microsoft.com/msdn&lt;/strong&gt;&lt;/a&gt;&lt;strong&gt; or the MSDN Newsgroups at &lt;/strong&gt;&lt;a href=&quot;http://www.microsoft.com/communities/newsgroups/en-us/&quot;&gt;&lt;strong xmlns:mtps=&quot;http://msdn2.microsoft.com/mtps&quot;&gt;http://www.microsoft.com/communities/newsgroups/en-us/&lt;/strong&gt;&lt;/a&gt;&lt;strong&gt;. You are much more likely get a quicker response using the forums than through the Community Content. For specific help about:&lt;br /&gt;Visual Studio  : &lt;/strong&gt;&lt;a href=&quot;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.vstudio%2C&quot;&gt;&lt;strong xmlns:mtps=&quot;http://msdn2.microsoft.com/mtps&quot;&gt;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.vstudio%2C&lt;/strong&gt;&lt;/a&gt;&lt;strong&gt;&amp;amp;&lt;br /&gt;SQL Server     : &lt;/strong&gt;&lt;a href=&quot;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.sqlserver%2C&quot;&gt;&lt;strong xmlns:mtps=&quot;http://msdn2.microsoft.com/mtps&quot;&gt;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.sqlserver%2C&lt;/strong&gt;&lt;/a&gt;&lt;strong&gt;&amp;amp;&lt;br /&gt;.NET Framework : &lt;/strong&gt;&lt;a href=&quot;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.dotnet.framework&quot;&gt;&lt;strong xmlns:mtps=&quot;http://msdn2.microsoft.com/mtps&quot;&gt;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public.dotnet.framework&lt;/strong&gt;&lt;/a&gt;&lt;br /&gt;&lt;strong&gt;PowerShell     : &lt;/strong&gt;&lt;a href=&quot;http://groups.google.com/group/microsoft.public.windows.powershell/topics?pli=1&quot;&gt;&lt;strong xmlns:mtps=&quot;http://msdn2.microsoft.com/mtps&quot;&gt;http://groups.google.com/group/microsoft.public.windows.powershell/topics?pli=1&lt;/strong&gt;&lt;/a&gt;&lt;br /&gt;&lt;strong&gt;All Public     : &lt;/strong&gt;&lt;a href=&quot;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public%2C&quot;&gt;&lt;strong xmlns:mtps=&quot;http://msdn2.microsoft.com/mtps&quot;&gt;http://groups.google.com/groups/dir?sel=usenet%3Dmicrosoft.public%2C&lt;/strong&gt;&lt;/a&gt;&lt;strong&gt;&amp;amp;&lt;br /&gt;&lt;/strong&gt;" type="hidden">
    <input name="ctl00$WikiContent$ctl04$Editor$tagEditorData" id="ctl00_WikiContent_ctl04_Editor_tagEditorData" value="needsforum needsnewsgroup " type="hidden">
    
    
  
								</div>

      
							</div>

      <div id="ctl00_WikiContent_ctl04_TagEditor_panel" class="CCT_Panel_Block">
  <div id="tagsPanel" class="CCT_TagsPanel">
    <span id="ctl00_WikiContent_ctl04_TagEditor_title" class="CCT_Title">Tags</span>
    <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/resources/taghelp.htm" id="ctl00_WikiContent_ctl04_TagEditor_helpLink" class="CCT_HelpLink" onclick='CCS_ShowHelp("/Platform/Controls/CCTagEditor/resources/taghelp.htm",800,600);return false;'>
      <img src="file%20upload_files/clear.gif" id="ctl00_WikiContent_ctl04_TagEditor_helpImage" class="CCT_HelpImage LibC_help" alt="What's this?" title="What's this?"></a>:
    <span id="ctl00_WikiContent_ctl04_TagEditor_tags" class="CCT_Text"><span class="CCT_TagPair"><a id="tagLink_0_5" href="#" onclick='return CCT_BrowseTag("http://msdn.microsoft.com/en-us/library/Tags-Cloud.aspx?tag=needsforum",5);' title="Browse other topics containing this tag" class="CCT_Link">needsforum</a> (<a id="removeTagLink_0_5" href="#" onclick='return CCT_RemoveTag("needsforum","http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",5);' title="Remove the tag from this topic" class="CCT_Link">x</a>) </span><span class="CCT_TagPair"><a id="tagLink_1_5" href="#" onclick='return CCT_BrowseTag("http://msdn.microsoft.com/en-us/library/Tags-Cloud.aspx?tag=needsnewsgroup",5);' title="Browse other topics containing this tag" class="CCT_Link">needsnewsgroup</a> (<a id="removeTagLink_1_5" href="#" onclick='return CCT_RemoveTag("needsnewsgroup","http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",5);' title="Remove the tag from this topic" class="CCT_Link">x</a>) </span></span>
    <span id="ctl00_WikiContent_ctl04_TagEditor_view" class="CCT_View">
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl04_TagEditor_addTagLink" class="CCT_LinkButton" onclick='return CCT_AddATag("http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",5);' title="Add a tag to this topic">Add a tag</a>
    </span>

    <span id="ctl00_WikiContent_ctl04_TagEditor_editPanel" style="display: none;" class="CCT_Edit">
      <input name="ctl00$WikiContent$ctl04$TagEditor$textbox" id="ctl00_WikiContent_ctl04_TagEditor_textbox" class="CCT_TextBox" autocomplete="off" type="text">
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl04_TagEditor_addLink" class="CCT_LinkButton" onclick="return CCT_AddTags(5);" title="Submit the tags for this topic">Add</a>

      &nbsp;
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl04_TagEditor_cancelLink" class="CCT_LinkButton" onclick="return CCT_CancelAddTag(5);" title="Cancel this operation">Cancel</a>
    </span>
    <span id="ctl00_WikiContent_ctl04_TagEditor_messagePanel" class="CCT_Message"></span>
  </div>
  <div id="ctl00_WikiContent_ctl04_TagEditor_flagAsPanel" class="CCT_FlagAsPanel" style="">
    <span id="ctl00_WikiContent_ctl04_TagEditor_flagAsLabel">Flag as </span>
    <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl04_TagEditor_contentBugLink" class="CCT_LinkButton" onclick='return CCT_FlagContentBug("http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",5);' title="Flagging this annotation as a 'ContentBug' will let the author know that this topic needs to be reviewed">ContentBug</a>
  </div>
  <div style="clear: both;"></div>
</div>


    
						</div>
  
					</div>
<div id="ctl00_WikiContent_ctl05_ItemUpdatePanel">
						
    <div id="ctl00_WikiContent_ctl05_Container" class="CCI_Container" style="display: none;">
							
      <div id="ctl00_WikiContent_ctl05_Header" class="CCI_Header">
								
        <table cellpadding="0" cellspacing="0" width="100%">
            <tbody><tr>
                <td align="left">
                    <span id="ctl00_WikiContent_ctl05_HeaderTitle" class="CCI_Header_Title"></span>
                </td>
                <td>
                    <span id="ctl00_WikiContent_ctl05_Label2" class="CCI_Header_Spacer">&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </td>

                
                  <td class="CCI_Header_Actions" align="right">
                      <span id="ctl00_WikiContent_ctl05_EditInfo"></span><span id="ctl00_WikiContent_ctl05_Separator">
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                      </span><span id="ctl00_WikiContent_ctl05_EditLabel"><a id="ctl00_WikiContent_ctl05_Edit" title="Edit this version" class="CCI_Header_Link" href="javascript:__doPostBack('ctl00$WikiContent$ctl05$Edit','')">Edit</a></span><input name="ctl00$WikiContent$ctl05$showhistoryFlag" id="ctl00_WikiContent_ctl05_showhistoryFlag" style="display: none;" value="false" type="text">
                  </td>
                
                
            </tr>
        </tbody></table>
      
							</div>

      

      <div id="ctl00_WikiContent_ctl05_EditorPanel" class="CCI_Text" style="cursor: default;">
								
        <div id="ctl00_WikiContent_ctl05_Editor_Container" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'ctl00_WikiContent_ctl05_Editor_Save')">
									
	  
    <div id="ctl00_WikiContent_ctl05_Editor_RadEditor" title="Double-click to edit this block" class=" CCE_Editor_Disabled" style="height: auto; width: auto;">
										
									</div>
    <input name="ctl00$WikiContent$ctl05$Editor$editorData" id="ctl00_WikiContent_ctl05_Editor_editorData" type="hidden">
    <input name="ctl00$WikiContent$ctl05$Editor$tagEditorData" id="ctl00_WikiContent_ctl05_Editor_tagEditorData" type="hidden">
    
    
  
								</div>

      
							</div>

      <div id="ctl00_WikiContent_ctl05_TagEditor_panel" class="CCT_Panel">
  <div id="tagsPanel" class="CCT_TagsPanel">
    <span id="ctl00_WikiContent_ctl05_TagEditor_title" class="CCT_Title">Tags</span>
    <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/resources/taghelp.htm" id="ctl00_WikiContent_ctl05_TagEditor_helpLink" class="CCT_HelpLink" onclick='CCS_ShowHelp("/Platform/Controls/CCTagEditor/resources/taghelp.htm",800,600);return false;'>
      <img src="file%20upload_files/clear.gif" id="ctl00_WikiContent_ctl05_TagEditor_helpImage" class="CCT_HelpImage LibC_help" alt="What's this?" title="What's this?"></a>:
    <span id="ctl00_WikiContent_ctl05_TagEditor_tags" class="CCT_Text"></span>
    <span id="ctl00_WikiContent_ctl05_TagEditor_view" class="CCT_View">
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl05_TagEditor_addTagLink" class="CCT_LinkButton" title="Add a tag to this topic">Add a tag</a>
    </span>

    <span id="ctl00_WikiContent_ctl05_TagEditor_editPanel" style="display: none;" class="CCT_Edit">
      <input name="ctl00$WikiContent$ctl05$TagEditor$textbox" id="ctl00_WikiContent_ctl05_TagEditor_textbox" class="CCT_TextBox" autocomplete="off" type="text">
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl05_TagEditor_addLink" class="CCT_LinkButton" title="Submit the tags for this topic">Add</a>

      &nbsp;
      <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl05_TagEditor_cancelLink" class="CCT_LinkButton" title="Cancel this operation">Cancel</a>
    </span>
    <span id="ctl00_WikiContent_ctl05_TagEditor_messagePanel" class="CCT_Message"></span>
  </div>
  <div id="ctl00_WikiContent_ctl05_TagEditor_flagAsPanel" class="CCT_FlagAsPanel" style="display: none;">
    <span id="ctl00_WikiContent_ctl05_TagEditor_flagAsLabel">Flag as </span>
    <a href="http://msdn.microsoft.com/Platform/Controls/CCTagEditor/#" id="ctl00_WikiContent_ctl05_TagEditor_contentBugLink" class="CCT_LinkButton" onclick='return CCT_FlagContentBug("http://msdn.microsoft.com/en-us/library/Community-Signup.aspx?ru=http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx",-1);' title="Flagging this annotation as a 'ContentBug' will let the author know that this topic needs to be reviewed">ContentBug</a>
  </div>
  <div style="clear: both;"></div>
</div>


    
						</div>
  
					</div>

				</div>

    <div id="ctl00_WikiContent_EditorPanel" class="CCI_Container_Edit" style="display: none;">
					
      <div id="ctl00_WikiContent_Editor_Container" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'ctl00_WikiContent_Editor_Save')">
						
	  
    <div id="ctl00_WikiContent_Editor_RadEditor" title="Double-click to edit this block" class=" CCE_Editor_Disabled" style="height: auto; width: auto;">
							
						</div>
    <input name="ctl00$WikiContent$Editor$editorData" id="ctl00_WikiContent_Editor_editorData" type="hidden">
    <input name="ctl00$WikiContent$Editor$tagEditorData" id="ctl00_WikiContent_Editor_tagEditorData" type="hidden">
    
    
  
					</div>

    
				</div>
    

    <div id="ProgressIndicator" class="CCS_Progress">
      <img src="file%20upload_files/clear.gif" id="ctl00_WikiContent_progressImage" class="LibC_spinner" alt="Processing">
    </div>

    <div class="CCS_Footer"></div>
   
			</div>

		</div>
      

<div style="overflow: hidden; display: block; position: relative;">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody><tr>
    <td id="ctl00_mtpsFooter_FooterFadeCell" class="MTPS_FooterFade">
      <div id="ctl00_mtpsFooter_SiteLinks" class="MTPS_FooterLinks">

		</div>
      <span id="ctl00_mtpsFooter_MSFT_copyright" title="© 2010  Microsoft Corporation. All rights reserved." class="MTPS_FooterCopyright">© 2010  Microsoft Corporation. All rights reserved.</span>
      <a id="ctl00_mtpsFooter_MSFT_Terms" title="Terms of Use" class="MTPS_FooterLinks" href="http://msdn.microsoft.com/cc300389.aspx">Terms of Use</a>
      <span id="ctl00_mtpsFooter_PipeSpan1">|</span>
      <a id="ctl00_mtpsFooter_MSFT_Trademarks" title="Trademarks" class="MTPS_FooterLinks" href="http://www.microsoft.com/library/toolbar/3.0/trademarks/en-us.mspx">Trademarks</a>
      <span id="ctl00_mtpsFooter_PipeSpan2">|</span>
      <a id="ctl00_mtpsFooter_MSFT_PrivacyStatement" title="Privacy Statement" class="MTPS_FooterLinks" href="http://www.microsoft.com/info/privacy.mspx">Privacy Statement</a>
      
      <a id="ctl00_mtpsFooter_MSFT_Feedback" class="MTPS_FooterLinks" rel="sitefeedback" target="_blank"></a>
    </td>
		
    <td id="ctl00_mtpsFooter_FooterLogoCell">
      <a id="ctl00_mtpsFooter_MSFT_LOGO" title="Microsoft Corporation" href="http://www.microsoft.com/en/us/default.aspx"><img id="ctl00_mtpsFooter_MSFT_imgLogo" class="msdn_TabC_mslogo" src="file%20upload_files/clear.gif" style="border-width: 0px;"></a>
    </td>
		
  </tr>
</tbody></table>

</div>
 
      
	</div>
</div>
  </div>
  <div style="display: none;"><img src="file%20upload_files/trans_pixel.gif" alt="Page view tracker" border="0" height="0" hspace="0" vspace="0" width="0"></div>
  
<script src="file%20upload_files/webtrendsscript-bn20100217.js" type="text/javascript"></script>
<noscript>
<div><img alt="DCSIMG" id="Img1" width="1" height="1"
src="http://m.webtrends.com/dcsmgru7m99k7mqmgrhudo0k8_8c6m/njs.gif?dcsuri=/nojavascript&amp;WT.js=No"
/></div>
</noscript>
  <script type="text/javascript" src="file%20upload_files/mtps-bn20100217.js"></script>
    <script type="text/javascript">
        //<![CDATA[
        setTimeout(function() {
            var hashElementId = document.location.hash.substr(1);
            var hashElement = document.getElementById(hashElementId);
            if (hashElement != null) {
                hashElement.scrollIntoView(true);
            }
        }, 1);
        //]]>
    </script>
  
<script type="text/javascript">
//<![CDATA[
var CCT_Controls =  new Array({id:-1,prefix:'ctl00_WikiContent_TopicTagEditor_'}, {id:1,prefix:'ctl00_WikiContent_ctl00_TagEditor_'}, {id:2,prefix:'ctl00_WikiContent_ctl01_TagEditor_'}, {id:3,prefix:'ctl00_WikiContent_ctl02_TagEditor_'}, {id:4,prefix:'ctl00_WikiContent_ctl03_TagEditor_'}, {id:5,prefix:'ctl00_WikiContent_ctl04_TagEditor_'}, {id:-2,prefix:'ctl00_WikiContent_ctl05_TagEditor_'});
var CCE_EditorInfo =  new Array({i:1,p:'ctl00_WikiContent_ctl00_Editor_',c:'ctl00_WikiContent_ctl00_'}, {i:2,p:'ctl00_WikiContent_ctl01_Editor_',c:'ctl00_WikiContent_ctl01_'}, {i:3,p:'ctl00_WikiContent_ctl02_Editor_',c:'ctl00_WikiContent_ctl02_'}, {i:4,p:'ctl00_WikiContent_ctl03_Editor_',c:'ctl00_WikiContent_ctl03_'}, {i:5,p:'ctl00_WikiContent_ctl04_Editor_',c:'ctl00_WikiContent_ctl04_'}, {i:-2,p:'ctl00_WikiContent_ctl05_Editor_',c:'ctl00_WikiContent_ctl05_'}, {i:-1,p:'ctl00_WikiContent_Editor_',c:''});
//]]>
</script>


<script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(CCS_BeginRequestHandler);Sys.WebForms.PageRequestManager.getInstance().add_endRequest(CCS_EndRequestHandler); RegisterAutoSubmit('ctl00_ib1_Flyout_Rating1','ctl00_ib1_Flyout_btnSend','contentRatingw3kksch7VS.80en-us');

//]]>
</script>
<script type="text/javascript" language="javascript">
<!--
 function GetContentWnd(){ return parent; } function OnInitPage(){var oWnd = GetContentWnd();} function OnSave(){ var oWnd = GetContentWnd(); window.external.addFavorite('http://msdn.microsoft.com/en-us/library/w3kksch7(VS.80).aspx', oWnd.document.title ); }

-->
</script>
<script type="text/javascript">
//<![CDATA[
document.getElementById('ctl00_ib1_Flyout_rtgContainer').title="Click a star and provide feedback";
CCT_Init("false","http%3a%2f%2fmsdn.microsoft.com%2fen-us%2flibrary%2fw3kksch7(VS.80).aspx");$addHandler($get("ctl00_WikiContent_TopicTagEditor_editPanel"),"keydown",CCT_KeyDown);$addHandler($get("ctl00_WikiContent_ctl00_TagEditor_editPanel"),"keydown",CCT_KeyDown);$addHandler($get("ctl00_WikiContent_ctl01_TagEditor_editPanel"),"keydown",CCT_KeyDown);$addHandler($get("ctl00_WikiContent_ctl02_TagEditor_editPanel"),"keydown",CCT_KeyDown);$addHandler($get("ctl00_WikiContent_ctl03_TagEditor_editPanel"),"keydown",CCT_KeyDown);$addHandler($get("ctl00_WikiContent_ctl04_TagEditor_editPanel"),"keydown",CCT_KeyDown);Sys.Application.initialize();
TFly_Init('ctl00_ctl07_LocaleManagement_ctl00',0,0,1,0,0,'LocaleManagementFlyoutStaticHover','',0,400,'','','','');
TFly_Init('ctl00_ib1_Flyout',5,2,1,0,0,'','',0,400,'','TFlyPreAnimate','','');
MTPS.Controls.MtpsRating.createMtpsRating('ctl00_ib1_Flyout_Rating1','ratingStar','filledRatingStar','emptyRatingStar','savedRatingStar','5','LeftToRightTopToBottom', false);MTPS.Controls.ResizeableArea = new MTPS.Controls.CreateResizeableArea('ctl00_LibFrame','ctl00_raSplitter','ctl00_raLeft','ctl00_raRight','tocwidth','toccollapsed','173');var tocVectorObject;var hostbase;var closedImg;var openImg;var emptyImg;var loadingImg;var tocVector;var tocIndex = 0;var holder;var tocLoaded = false;var tocCollapsed = 'False';tocVectorObject = {"nodes": [{"id": "ms310241(n)" ,"url": "/ms310241(n)"},{"id": "aa187916(n)" ,"url": "/aa187916(n)"},{"id": "aa468084(n)" ,"url": "/aa468084(n)"},{"id": "ms269115(vs.80,n)" ,"url": "/ms269115(VS.80,n)"},{"id": "ms299791(vs.80,n)" ,"url": "/ms299791(VS.80,n)"},{"id": "ms299822(vs.80,n)" ,"url": "/ms299822(VS.80,n)"},{"id": "ms299834(vs.80,n)" ,"url": "/ms299834(VS.80,n)"},{"id": "ms299836(vs.80,n)" ,"url": "/ms299836(VS.80,n)"},{"id": "ms299844(vs.80,n)" ,"url": "/ms299844(VS.80,n)"},{"id": "w3kksch7(vs.80,n)" ,"url": "/w3kksch7(VS.80,n)"}]};hostbase ="http://msdn.microsoft.com/en-us/library";tocVector = eval(tocVectorObject);closedImg = "LibC_c";openImg = "LibC_o";emptyImg = "LibC_e";var tocDir = false;TFly_Init('ctl00_eb1_ctl00',0,-1,-1,0,0,'statHover','',0,0,'EyeBrowMenuBarSetHeight','ExpEye','','');
TFly_Init('ctl00_eb1_ctl01',0,-1,-1,0,0,'statHover','',0,0,'EyeBrowMenuBarSetHeight','ExpEye','','');
TFly_Init('ctl00_eb1_ctl02',0,-1,-1,0,0,'statHover','',0,0,'EyeBrowMenuBarSetHeight','ExpEye','','');
TFly_Init('ctl00_eb1_ctl03',0,-1,-1,0,0,'statHover','',0,0,'EyeBrowMenuBarSetHeight','ExpEye','','');
TFly_Init('ctl00_eb1_ctl04',0,-1,-1,0,0,'statHover','',0,0,'EyeBrowMenuBarSetHeight','ExpEye','','');
TFly_Init('ctl00_eb1_ctl05',0,-1,-1,0,0,'statHover','',0,0,'EyeBrowMenuBarSetHeight','ExpEye','','');
TFly_Init('ctl00_eb1_ctl06',0,-1,-1,0,0,'statHover','',0,0,'EyeBrowMenuBarSetHeight','ExpEye','','');
TFly_Init('ctl00_eb1_ctl07',0,-1,-1,0,0,'statHover','',0,0,'EyeBrowMenuBarSetHeight','ExpEye','','');
TFly_Init('ctl00_eb1_ctl08',0,-1,-1,0,0,'statHover','',0,0,'EyeBrowMenuBarSetHeight','ExpEye','','');
TFly_Init('ctl00_eb1_ctl09',0,-1,-1,0,0,'statHover','',0,0,'EyeBrowMenuBarSetHeight','ExpEye','','');
CheckDropDownClientCookie(false);SetFilterText(false);Sys.Application.add_init(function() {
    $create(Sys.UI._UpdateProgress, {"associatedUpdatePanelId":"ctl00_WikiContent_ctl00_HistoryUpdatePanel","displayAfter":0,"dynamicLayout":true}, null, null, $get("ctl00_WikiContent_ctl00_HistoryUpdateProgress"));
});
Sys.Application.add_init(function() {
    $create(Sys.UI._UpdateProgress, {"associatedUpdatePanelId":"ctl00_WikiContent_ctl01_HistoryUpdatePanel","displayAfter":0,"dynamicLayout":true}, null, null, $get("ctl00_WikiContent_ctl01_HistoryUpdateProgress"));
});
Sys.Application.add_init(function() {
    $create(Sys.UI._UpdateProgress, {"associatedUpdatePanelId":"ctl00_WikiContent_ctl02_HistoryUpdatePanel","displayAfter":0,"dynamicLayout":true}, null, null, $get("ctl00_WikiContent_ctl02_HistoryUpdateProgress"));
});
Sys.Application.add_init(function() {
    $create(Sys.UI._UpdateProgress, {"associatedUpdatePanelId":"ctl00_WikiContent_ctl03_HistoryUpdatePanel","displayAfter":0,"dynamicLayout":true}, null, null, $get("ctl00_WikiContent_ctl03_HistoryUpdateProgress"));
});
Sys.Application.add_init(function() {
    $create(Sys.UI._UpdateProgress, {"associatedUpdatePanelId":"ctl00_WikiContent_ctl04_HistoryUpdatePanel","displayAfter":0,"dynamicLayout":true}, null, null, $get("ctl00_WikiContent_ctl04_HistoryUpdateProgress"));
});
//]]>
</script>
</form>
<script language="javascript" type="text/javascript" src="file%20upload_files/broker.js"></script>
<script src="file%20upload_files/broker-config.js"></script></body></html>