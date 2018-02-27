<%@page import="species.utils.Utils"%>
<%@ page import="species.groups.SpeciesGroup"%>
<%@ page import="species.Habitat"%>


<head>
<!--meta name="layout" content="main" /-->
<title><g:message code="button.login" /></title>

<script type="text/javascript">
    window.params = {  
        'isLoggedInUrl' : "${uGroup.createLink(controller:'user', action:'isLoggedIn')}",
        'login' : {
            'googleApiKey' : "${grailsApplication.config.grails.plugin.springsecurity.rest.oauth.google.apikey}",
            'googleClientID': "${grailsApplication.config.grails.plugin.springsecurity.rest.oauth.google.key}",
            googleOAuthSuccessUrl : "/oauth/google/success",
            ibpServerCookieDomain : "${Utils.getIBPServerCookieDomain()}",
            authSuccessUrl : "${uGroup.createLink(controller:'login', action:'authSuccess')}",
            checkauthUrl : "${uGroup.createLink(controller:'openId', action:'checkauth', base:Utils.getDomainServerUrl(request))}",
            channelUrl : "${Utils.getDomainServerUrl(request)}/channel.html",
            springOpenIdSecurityUrl : "${Utils.getDomainServerUrlWithContext(request)}/j_spring_openid_security_check", 
            authIframeUrl : "${uGroup.createLink(controller:'login', action:'authIframe', absolute:true)}",
            'loginUrl':"biodiv-api/login",
            'tokenUrl':"biodiv-api/login/token",
            logoutUrl : "${uGroup.createLink(controller:'logout', 'userGroup':userGroup, 'userGroupWebaddress':userGroupWebaddress)}",
            fbAppId : "${grailsApplication.config.speciesPortal.ibp.facebook.appId}",
            api: {
                cookie : {
                    domain : "${grailsApplication.config.speciesPortal.api.cookie.domain}",
                    path : "${grailsApplication.config.speciesPortal.api.cookie.path}"
                }
            }
 
        }
    }
</script>
 


</head>

<body>
	<div class="container outer-wrapper">
		<div class="row">

			<div class="openid-loginbox super-section">
    		</div>
		</div>
	</div>
<asset:javascript src="jquery.js"/>
<asset:javascript src="jquery.plugins/jquery.form.js"/>
<asset:javascript src="jquery.plugins/popuplib.js"/>
<asset:javascript src="jquery.plugins/jquery.cookie.js"/>
<asset:javascript src="jquery.plugins/jquery.cookie.js"/>
<asset:javascript src="jwt-decode.js"/>
<script src="https://apis.google.com/js/auth.js" type="text/javascript">

<asset:javascript src="biodiv/util.js"/>
<asset:javascript src="biodiv/login.js"/>


<script type="text/javascript">
        $(document).ready(function(){
            var loginInfo = {
                "access_token":"${access_token}",
                "refresh_token":"${refresh_token}",
                "pic":"${pic}"
            };
            window.setLoginInfo(loginInfo);
            window.location.href='/';
        });
	</script>	
</body>
