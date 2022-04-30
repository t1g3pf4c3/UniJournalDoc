{**
 * lib/pkp/templates/frontend/components/header.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common frontend site header.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

{* Determine whether a logo or title string is being displayed *}
{assign var="showingLogo" value=true}
{if $displayPageHeaderTitle && !$displayPageHeaderLogo && is_string($displayPageHeaderTitle)}
	{assign var="showingLogo" value=false}
{/if}

<!DOCTYPE html>
<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
{if !$pageTitleTranslated}{capture assign="pageTitleTranslated"}{translate key=$pageTitle}{/capture}{/if}
{include file="frontend/components/headerHead.tpl"}
<body class="pkp_page_{$requestedPage|escape|default:"index"} pkp_op_{$requestedOp|escape|default:"index"}{if $showingLogo} has_site_logo{/if}">
	<div class="pkp_structure_page">

		<nav id="accessibility-nav" class="sr-only" role="navigation" aria-label="{translate|escape key="plugins.themes.bootstrap3.accessible_menu.label"}">
			<ul>
			  <li><a href="#main-navigation">{translate|escape key="plugins.themes.bootstrap3.accessible_menu.main_navigation"}</a></li>
			  <li><a href="#main-content">{translate|escape key="plugins.themes.bootstrap3.accessible_menu.main_content"}</a></li>
			  <li><a href="#sidebar">{translate|escape key="plugins.themes.bootstrap3.accessible_menu.sidebar"}</a></li>
			</ul>
		</nav>

		{* Header *}
		<header style="background-image: url('{$baseUrl}/files/back.png ');background-size:100% 100%;" 
		class="navbar navbar-default" 
		id="headerNavigationContainer" 
		role="banner">

			{if $displayPageHeaderLogo}
				{* <div style="background-image: url('{$publicFilesDir}/{$displayPageHeaderLogo.uploadName|escape:"url"}');background-repeat: no-repeat;alt='{$applicationName|escape}' ;background-position: right 10% top 50px;"> *}
				<div style="background-image: url('{$baseUrl}/files/logo.png ');background-repeat: no-repeat;alt='{$applicationName|escape}' ;background-position: right 10% top 50px;">
			{/if}
			<div style="background-image: url('{$baseUrl}/files/logo.png ');background-repeat: no-repeat;alt='{$applicationName|escape}' ;background-position: right 10% top 50px;">

			{* User profile, login, etc, navigation menu*}
			{* <div class="container-fluid">
				<div class="row">
					<nav aria-label="{translate|escape key="common.navigation.user"}">
						{load_menu name="user" id="navigationUser" ulClass="nav nav-pills tab-list pull-right"}
					</nav>
				</div><!-- .row -->
			</div><!-- .container-fluid --> *}
			{* Logo or site title. Only use <h1> heading on the homepage.
			Otherwise that should go to the page title. *}
			{if $requestedOp == 'index'}
				<h1 class="container site-name hidden-lg">
			{else}
				<div class="container site-name hidden-lg">
			{/if}
				{capture assign="homeUrl"}
					{url page="index" router=$smarty.const.ROUTE_PAGE}
				{/capture}
				{if $displayPageHeaderTitle}
					<p>{translate key="api.my.1"}</p>
					<a href="{$homeUrl}" class="navbar-brand padd">{$displayPageHeaderTitle}</a>
				{/if}
			{if $requestedOp == 'index'}
				</h1>
			{else}
				</div>
			{/if}
			<div class="container-fluid">

				<div class="navbar-header">

					{* Mobile hamburger menu *}
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-menu" aria-expanded="false" aria-controls="nav-menu">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>

				{* Primary site navigation *}
				{capture assign="primaryMenu"}
					{load_menu name="primary" id="main-navigation" ulClass="nav navbar-nav"}
				{/capture}

				{if !empty(trim($primaryMenu)) || $currentContext}
					<nav id="nav-menu" class="navbar-collapse collapse" aria-label="{translate|escape key="common.navigation.site"}">
						{* Primary navigation menu for current application *}
						{$primaryMenu}

						{* Search form *}
						{if $currentContext}
							{* <div class="pull-md-right"> *}
								{include file="frontend/components/searchForm_simple.tpl" ulClass="nav navbar-nav pull-right-lg"}
								{include file="frontend/components/menu_language.tpl" ulClass="nav navbar-nav pull-right-lg"}

							{* </div> *}
						{/if}
						{load_menu name="user" id="navigationUser" ulClass="nav navbar-nav  pull-right-lg" }
					</nav>
				{/if}

			</div><!-- .pkp_head_wrapper -->
			{if $requestedOp == 'index'}
				<h1 class="container site-name visible-lg">
			{else}
				<div class="container site-name visible-lg">
			{/if}
				{capture assign="homeUrl"}
					{url page="index" router=$smarty.const.ROUTE_PAGE}
				{/capture}
				{if $displayPageHeaderTitle}
					<p>{translate key="api.my.1"}</p>
					<a href="{$homeUrl}" class="navbar-brand padd">{$displayPageHeaderTitle}</a>
				{/if}
			{if $requestedOp == 'index'}
				</h1>
			{else}
				</div>
			{/if}
		</header><!-- .pkp_structure_head -->

		{* Wrapper for page content and sidebars *}
		<div class="pkp_structure_content container">
			<main class="pkp_structure_main col-md-8 col-sm-12 col-xs-12" role="main">
<style>
header{
	border-radius:0 !important;
	border:none !important;
}
#nav-menu{
background:#58648e !important;
}
#nav-menu ul{
background:#58648e !important;
}
#nav-menu a{
color:#fff;
}

.navbar-header{
	font-weight:500;
	color:white;
}
.navbar-toggle{
	position:absolute;
	right:10px;
	top:5px;
	z-index:999;
}
.site-name {
	color:#fff;
}

@media (min-width: 1200px) {
    .pull-right-lg {
        float: right;
    }
	.container-fluid{
	max-width: 70%;
	margin-left:0;
	}
	#main-navigation:first-child{
		margin-left: calc(calc(100vw - 1140px) / 2);

	}
}
#nav-menu li{
border-left:.5px solid #9fa0b7;
cursor:pointer;
}
#nav-menu ul:first-child{
border-right:.5px solid #9fa0b7;
cursor:pointer;
}
.site-name{
	font-size:15px;
	display: table;
	line-height: 1.2;
	padding-top:110px;
}

.site-name a{
	display: table;
	max-width: 400px;
	line-height: 1;
}
.site-name p{
	display: table;
	margin: 0;
}

.navbar-brand{
	font-size:3rem;
	padding:10px 0;
	
	
}
@media (min-width: 992px){
	.container-l {
		margin-right: calc(calc(100% - 940px) / 2);
	}
}
@media (min-width: 1200px){
	.container-l {
		margin-right: calc(calc(100% - 1140px) / 2);
	}
}

@media (min-width: 768px){
	.container-l {
		margin-right: calc(calc(100% - 720px) / 2);
	}
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12{
	padding: 10px;
}

</style>