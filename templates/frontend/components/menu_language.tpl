<ul class="{$ulClass|escape}" >
  <li class="{$liClass|escape}{if $hasChildren} dropdown{/if}">
				<a  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
					<span class="glyphicon glyphicon-globe">
          </span> 
	        <span class="caret">
            </span>
				</a>
				<ul class="dropdown-menu {if $id === 'navigationUser'}dropdown-menu-right{/if}">
						<li class="{$liClass|escape}">
							<a href="{url router=$smarty.const.ROUTE_PAGE page="user"}/setLocale/ru_RU">RU</a>
						</li>
						<li>
              <a href="{url router=$smarty.const.ROUTE_PAGE page="user"}/setLocale/en_US">US</a>
            </li>
					</ul>
			</li>
</ul>
{* http://localhost/site/sanse-test/index.php/sanse/user/setLocale/ru_RU *}