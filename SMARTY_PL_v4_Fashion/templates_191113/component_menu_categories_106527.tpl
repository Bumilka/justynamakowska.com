
<!--Menu - Drzewo 1 (menu_categories, 106527.1)-->
{{capture name="dlmenu_showall" assign="dlmenu_showall"}}
	{{$txt['106527::56412_003']}}
{{/capture}}

{{capture name="gfx_2lvl_show" assign="gfx_2lvl_show"}}
	{{$txt['106527::56412_003a']}}
{{/capture}}

{{capture name="menu_categories_label" assign="menu_categories_label"}}
	{{$txt['106527::TXT_106527_menu_label']}}
{{/capture}}

{{capture name="current_item" assign="current_item"}}
	{{$xml->getItemEscape("/shop/navigation/current/@ni")}}
{{/capture}}

<nav id="menu_categories" class="col-md-12 px-0 wide">
	{{if $menu_categories_label and !($menu_categories_label  == (string) '')}}
		<h2 class="big_label">
			<a href="/categories.php" title="{{$txt['106527::TXT_106527_menu_label_title']}}">{{$menu_categories_label}}</a>
		</h2>
	{{/if}}
	<button type="button" class="navbar-toggler">
		<i class="icon-reorder"/>
	</button>
	<div class="navbar-collapse" id="menu_navbar">
		<ul class="navbar-nav">
			{{foreach from=$xml->getList("navigation/item") item=loop21}}
				<li {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}nav-item{{/capture}}{{if ( ( $loop21->getItem("@ni") == (string) $current_item) or ( $loop21->getItem("item/@ni") == (string) $current_item) or ( $loop21->getItem("item/item/@ni") == (string) $current_item) or ( $loop21->getItem("item/item/item/@ni") == (string) $current_item) )}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}nav-item active{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}">
					{{if  $loop21->getItem("@link") and  $loop21->getItem("@link")  neq (string) '##'}}
						{{literal}}
						<a href="{{/literal}}{{$loop21->getItemEscape("@link")}}{{literal}}" target="{{/literal}}{{$loop21->getItemEscape("@target")}}{{literal}}" title="{{/literal}}{{$loop21->getItemEscape("@name")}}{{else}}{{literal}}
<span{{/literal}}{{literal}} title="{{/literal}}{{$loop21->getItemEscape("@name")}}{{/if}}{{literal}}" class="nav-link{{/literal}}{{if ( $loop21->getItem("@ni") == (string) $loop21->getItem("/shop/navigation/current/@ni")) or ( $loop21->getItem("item//@ni") == (string) $loop21->getItem("/shop/navigation/current/@ni"))}}{{literal}} active{{/literal}}{{/if}}{{literal}}" >{{/literal}}
							{{if  $loop21->getItem("@gfx") or  $loop21->getItem("@gfx_active_type")}}
								<img alt="{{$loop21->getItem("@name")}}" title="{{$loop21->getItem("@name")}}" {{if $loop21->getItem("@gfx_active_type") == (string) 'img_rwd'}} class="rwd-src" {{if $loop21->getItem("@gfx_active_desktop")}} data-src_desktop="{{$loop21->getItemEscape("@gfx_active_desktop")}}" {{/if}}{{if $loop21->getItem("@gfx_active_tablet")}} data-src_tablet="{{$loop21->getItemEscape("@gfx_active_tablet")}}" {{/if}}{{if $loop21->getItem("@gfx_active_mobile")}} data-src_mobile="{{$loop21->getItemEscape("@gfx_active_mobile")}}" {{/if}}{{else}} src="{{$loop21->getItemEscape("@gfx")}}" {{/if}}></img>
							{{else}}
								{{$loop21->getItem("@name")}}
							{{/if}}
							{{if  $loop21->getItem("@link") and  $loop21->getItem("@link")  neq (string) '##'}}
								{{literal}}</a>{{/literal}}
						{{else}}
							{{literal}}</span>{{/literal}}
					{{/if}}
					{{if  $loop21->getItem("item")}}
						<ul class="navbar-subnav">
							{{foreach from=$loop21->getList("item") item=loop70}}
								<li {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}nav-item{{/capture}}{{if ( ( $loop70->getItem("@ni") == (string) $current_item) or ( $loop70->getItem("item/@ni") == (string) $current_item) or ( $loop70->getItem("item/item/@ni") == (string) $current_item) or ( $loop70->getItem("item/item/item/@ni") == (string) $current_item) )}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}nav-item active{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
									<a {{assign "hrefAttributeTmp7" ""}}{{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}nav-link{{/capture}}{{capture name="hrefAttributeTmp7" assign="hrefAttributeTmp7"}}##{{/capture}}{{if $loop70->getItem("@link")}}{{capture name="hrefAttributeTmp7" assign="hrefAttributeTmp7"}}{{$loop70->getItemEscape("@link")}}{{/capture}}{{/if}}{{if ( $loop70->getItem("@ni") == (string) $loop70->getItem("/shop/navigation/current/@ni")) or ( $loop70->getItem("item//@ni") == (string) $loop70->getItem("/shop/navigation/current/@ni"))}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}nav-link active{{/capture}}{{/if}}{{if $loop70->getItem("@target")}} target="{{$loop70->getItemEscape("@target")}}" {{/if}}  class="{{$classAttributeTmp3}}"  href="{{$hrefAttributeTmp7}}">
										{{if ( $loop70->getItem("@gfx") or  $loop70->getItem("@gfx_active_type")) and $gfx_2lvl_show}}
											<img {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}gfx_lvl_2{{/capture}} alt="{{$loop70->getItem("@name")}}" title="{{$loop70->getItem("@name")}}" {{if $loop70->getItem("@gfx_active_type") == (string) 'img_rwd'}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}rwd-src gfx_lvl_2{{/capture}}{{if $loop70->getItem("@gfx_active_desktop")}} data-src_desktop="{{$loop70->getItemEscape("@gfx_active_desktop")}}" {{/if}}{{if $loop70->getItem("@gfx_active_tablet")}} data-src_tablet="{{$loop70->getItemEscape("@gfx_active_tablet")}}" {{/if}}{{if $loop70->getItem("@gfx_active_mobile")}} data-src_mobile="{{$loop70->getItemEscape("@gfx_active_mobile")}}" {{/if}}{{else}} src="{{$loop70->getItemEscape("@gfx")}}" {{/if}}  class="{{$classAttributeTmp4}}"></img>
											<span class="gfx_lvl_2">{{$loop70->getItem("@name")}}</span>
										{{else}}
											{{$loop70->getItem("@name")}}
										{{/if}}
										</a>
									{{if  $loop70->getItem("item")}}
										<ul class="navbar-subsubnav">
											{{foreach from=$loop70->getList("item") item=loop112}}
												<li {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}nav-item{{/capture}}{{if ( ( $loop112->getItem("@ni") == (string) $current_item) or ( $loop112->getItem("item/@ni") == (string) $current_item) or ( $loop112->getItem("item/item/@ni") == (string) $current_item) or ( $loop112->getItem("item/item/item/@ni") == (string) $current_item) )}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}nav-item active{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}">
													<a {{assign "hrefAttributeTmp8" ""}}{{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}nav-link{{/capture}}{{capture name="hrefAttributeTmp8" assign="hrefAttributeTmp8"}}##{{/capture}}{{if ( $loop112->getItem("@ni") == (string) $loop112->getItem("/shop/navigation/current/@ni")) or ( $loop112->getItem("item//@ni") == (string) $loop112->getItem("/shop/navigation/current/@ni"))}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}nav-link active{{/capture}}{{/if}}{{if $loop112->getItem("@link")}}{{capture name="hrefAttributeTmp8" assign="hrefAttributeTmp8"}}{{$loop112->getItemEscape("@link")}}{{/capture}}{{/if}}{{if $loop112->getItem("@target")}} target="{{$loop112->getItemEscape("@target")}}" {{/if}}  class="{{$classAttributeTmp6}}"  href="{{$hrefAttributeTmp8}}">{{$loop112->getItem("@name")}}</a>
												</li>
											{{/foreach}}
											{{if (count( $loop70->getList("item"))  gt (string) 1) and  $loop70->getItem("@link") and  $loop70->getItem("@display_all")  == (string) 'y' and $dlmenu_showall}}
												<li class="nav-item display-all">
													<a class="nav-link display-all" href=" {{if $loop70->getItem("@display_all_link")}}{{$loop70->getItemEscape("@display_all_link")}}{{else}}{{$loop70->getItemEscape("@link")}}{{/if}} ">{{$dlmenu_showall}}</a>
												</li>
											{{/if}}
										</ul>
									{{/if}}
								</li>
							{{/foreach}}
							{{if (count( $loop21->getList("item"))  gt (string) 1) and  $loop21->getItem("@link") and  $loop21->getItem("@display_all")  == (string) 'y' and $dlmenu_showall}}
								<li class="nav-item display-all">
									<a class="nav-link display-all" href=" {{if $loop21->getItem("@display_all_link")}}{{$loop21->getItemEscape("@display_all_link")}}{{else}}{{$loop21->getItemEscape("@link")}}{{/if}} ">{{$dlmenu_showall}}</a>
								</li>
							{{/if}}
						</ul>
					{{/if}}
				</li>
			{{/foreach}}
		</ul>
	</div>
</nav>