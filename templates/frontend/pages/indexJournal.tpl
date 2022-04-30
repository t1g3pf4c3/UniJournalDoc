{**
 * templates/frontend/pages/indexJournal.tpl
 *
 * UPDATED/CHANGED/MODIFIED: Marc Behiels - marc@elemental.ca - 250416
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the index page for a journal
 *
 * @uses $currentJournal Journal This journal
 * @uses $journalDescription string Journal description from HTML text editor
 * @uses $homepageImage object Image to be displayed on the homepage
 * @uses $additionalHomeContent string Arbitrary input from HTML text editor
 * @uses $announcements array List of announcements
 * @uses $numAnnouncementsHomepage int Number of announcements to display on the
 *       homepage
 * @uses $issue Issue Current issue
 *}
{include file="frontend/components/header.tpl" pageTitleTranslated=$currentJournal->getLocalizedName()}

<div id="main-content" class="page_index_journal">
<div id="main-site" class="page_index_site">
	{call_hook name="Templates::Index::journal"}
	{* Indicate if this is only a preview *}
	{if !$issue->getPublished()}
		{include file="frontend/components/notification.tpl" type="warning" messageKey="editor.issues.preview"}
	{/if}
	{* -текущий выпуск *}
	{* Issue introduction area above articles *}
	<div class="heading row">
		{assign var="issueDetailsCol" value="12"}
		{* Issue cover image and description*}
		{assign var=issueCover value=$issue->getLocalizedCoverImageUrl()}

			


		{if $issueCover}
			{assign var="issueDetailsCol" value="8"}
			<div class="thumbnail col-md-4">

				<header class="page-header">
				<h2>
					<small>{translate key="journal.currentIssue"}</small>
				</h2>
				</header>
				{* <p class="current_issue_title lead">
					{$issue->getIssueIdentification()|strip_unsafe_html}
				</p> *}


				<a class="cover" href="{url|escape op="view" page="issue" path=$issue->getBestIssueId()}">
					<img class="img-responsive" src="{$issueCover|escape}" alt="{$issue->getLocalizedCoverImageAltText()|escape|default:''}">
				</a>
				{if $issue->hasDescription()}
				{* <div class="description"> *}
					{$issue->getLocalizedDescription()|strip_unsafe_html}
				{* </div> *}
			{/if}

			{* PUb IDs (eg - DOI) *}
			{foreach from=$pubIdPlugins item=pubIdPlugin}
				{if $issue->getPublished()}
					{assign var=pubId value=$issue->getStoredPubId($pubIdPlugin->getPubIdType())}
				{else}
					{assign var=pubId value=$pubIdPlugin->getPubId($issue)}{* Preview pubId *}
				{/if}
				{if $pubId}
					{assign var="doiUrl" value=$pubIdPlugin->getResolvingURL($currentJournal->getId(), $pubId)|escape}
					<p class="pub_id {$pubIdPlugin->getPubIdType()|escape}">
						<strong>
							{$pubIdPlugin->getPubIdDisplayType()|escape}:
						</strong>
						{if $doiUrl}
							<a href="{$doiUrl|escape}">
								{$doiUrl}
							</a>
						{else}
							{$pubId}
						{/if}
					</p>
				{/if}
			{/foreach}

			{* Published date *}
			{if $issue->getDatePublished()}
				<p class="published">
					<strong>
						{translate key="submissions.published"}:
					</strong>
					{$issue->getDatePublished()|escape|date_format:$dateFormatShort}
				</p>
			{/if}
			</div>
		{/if}

		<div class="issue-details col-md-{$issueDetailsCol}">
			<header class="page-header">
				<h2>
					<small>{translate key="api.my.2"}</small>
				</h2>
				</header>
			{if $homepageImage}
			<div class="homepage-image">
				<img class="img-responsive" src="{$publicFilesDir}/{$homepageImage.uploadName|escape:"url"}" alt="{$homepageImageAltText|escape}">
			</div>

	{/if}
	{if $journalDescription}
		<div class="journal-description">
			{$journalDescription}
		</div>
	{/if}
			
		</div>
	</div>
	<!-- 1 -->



	
	
	
	{* Announcements *}
	{if $numAnnouncementsHomepage && $announcements|count}
		<section class="cmp_announcements media">
			<header class="page-header">
				<h2>
					{translate key="announcement.announcements"}
				</h2>
			</header>
			<div class="media-list">
				{foreach name=announcements from=$announcements item=announcement}
					{if $smarty.foreach.announcements.iteration > $numAnnouncementsHomepage}
						{break}
					{/if}
					{include file="frontend/objects/announcement_summary.tpl" heading="h3"}
				{/foreach}
			</div>
		</section>
	{/if}
	
	{* -Статьи *}
	{* Latest issue *}
	{if $issue}
		<section class="current_issue">
			
			{include file="frontend/components/breadcrumbs.tpl" currentTitle={translate key="api.my.3"} firstLink={url router=$smarty.const.ROUTE_PAGE page="issue" op="archive"} currentTitleSecond={translate key="api.my.4"}}
			{* {include file="frontend/objects/issue_toc.tpl" home=true} *}
			{* Журналы*}
			{if $issues}
				{foreach from=$issues item="issue"}
					{include file="frontend/objects/issue_summary.tpl" home=true}
				{/foreach}
			{/if}
			{* <a href="{url router=$smarty.const.ROUTE_PAGE page="issue" op="archive"}" class="btn btn-primary read-more">
				{translate key="journal.viewAllIssues"}
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a> *}
			<div class="issues media-list">
			{* {foreach from=$issues item="issue"} *}
				{* {include file="frontend/objects/issue_summary.tpl"} *}
			{* {/foreach} *}
			
		</div>
		</section>
		
	{/if}
	
	
	{* Additional Homepage Content *}
	{if $additionalHomeContent}
		<section class="additional_content">
			{$additionalHomeContent}
		</section>
	{/if}
	
</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
<style>
@media (min-width: 992px){
	.container-l {
		margin-right: calc( calc(100% - 940px) / 2);
	}
}
@media (min-width: 1200px){
	.container-l {
		margin-right: calc( calc(100% - 1140px) / 2);
	}
  #main-navigation:first-child{
    margin-left: calc( calc(100vw - 1140px) / 2);
  }
}

@media (min-width: 768px){
	.container-l {
		margin-right: calc( calc(100% - 720px) / 2);
	}
}


</style>
{* .col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12{
	padding: 10px;
} *}