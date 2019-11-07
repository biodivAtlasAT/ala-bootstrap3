<div id="lang_selector">
<span style="color:white"><g:message code="1" default="|"/></span>
<g:each in="${flags.keySet().sort() }" var="lang">
<%-- uri + lang = with this expression, we are building the url that
redirects the application to the related view in that language “lang”.
--%>
    <a href="${ uri + lang }" title="${message(code:'title.lang_link')}">
        <span class="lang_flag ${ lang==selected.toString()? selected_class :
                not_selected_class }" style="margin-left: 14px;">
            <%--
            In this section we are checking what language we are going to apply. We have
            detected it, we can specify the message that we want to show.
            --%>
            <g:if test="${flags[lang] == 'de'}">
                <g:message code="1" default="Deutsch"/>
            </g:if>
            <g:if test="${flags[lang] == 'en'}">
                <g:message code="1" default="English"/>
            </g:if>
            <%--
            We can also include the flag of language instead of a message
            --%>
            <%--<img alt="" src="$
           {resource(plugin:'langSelector',dir:'images/flags/png',file:flags[lang]
           +'.png') }" border="0">--%>
        </span>
    </a>
    <span style="color:white"><g:message code="1" default="|"/></span>
</g:each>