{**
 * templates/frontend/objects/issue_summary.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief View of an Issue which displays a summary for use in lists
 *
 * @uses $issue Issue The issue
 *}
<div class="issue-summary media col-md-6">

	{* Retrieve separate entries for $issueTitle and $issueSeries *}
	{assign var=issueTitle value=$issue->getLocalizedTitle()}
	{assign var=issueSeries value=$issue->getIssueSeries()}

	{* Show cover image and use cover description *}
	{if $issue->getLocalizedCoverImage()}
		{if $home}
		<div class="media-left">
			<a class="cover" href="{$baseUrl}{"/index.php/sanse/issue/view/"}{$issue->getBestIssueId($currentJournal)}">
				<img class="media-object" src="{$issue->getLocalizedCoverImageUrl()|escape}" alt="{$issue->getLocalizedCoverImageAltText()|escape|default:''}">
			</a>
		</div>
		
		{else}
		<div class="media-left">
			<a class="cover" href="{url|escape op="view" path=$issue->getBestIssueId($currentJournal)}">
				<img class="media-object" src="{$issue->getLocalizedCoverImageUrl()|escape}" alt="{$issue->getLocalizedCoverImageAltText()|escape|default:''}">
			</a>
		</div>
		{/if}
	{/if}


	<div class="media-body">
		<h2 class="media-heading">
			{if $home}
			<a class="title" href="{$baseUrl}{"/index.php/sanse/issue/view/"}{$issue->getBestIssueId($currentJournal)}">
			{else}
			<a class="title" href="{url|escape op="view" path=$issue->getBestIssueId($currentJournal)}">
			{/if}
				{if $issueTitle}
					{$issueTitle|escape}
				{else}
					{$issueSeries|escape}
				{/if}
			</a>
			{if $issueTitle}
				<div class="series lead">
					{$issueSeries|escape}
				</div>
			{/if}
		</h2>
		<div class="description">
			{$issueDescription|strip_unsafe_html|nl2br}
		</div>
	</div>
</div><!-- .issue-summary -->
