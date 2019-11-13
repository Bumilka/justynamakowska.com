<!DOCTYPE html SYSTEM "about:legacy-compat">
<!--Typ strony (envelope, 107421.1)-->
{{assign var="meta_langcode_iso639" value="__IAI_TEMPLATE_LANG_639_2__"}}
{{assign var="html5_layout" value=""}}
{{capture name="asyncJS" assign="asyncJS"}}
	{{$txt['107421::asyncJS_vid']}}
{{/capture}}

{{capture name="themeColor" assign="themeColor"}}
	{{$txt['107421::themeColor_vid']}}
{{/capture}}

{{if ( $xml->getItem("action/set_render/item/@name")  == (string) 'popup') or !( $xml->getItem("action/set_render/item"))}}
	{{literal}}
	<html lang="{{/literal}}{{$xml->getItemEscape("/shop/currency/@country")}}{{literal}}" >{{/literal}}
		{{if $meta_langcode_iso639}}
			lang="{{$meta_langcode_iso639}}"
		{{/if}}
		<head>{{$txt['107421::10001_006m']|escape:'iai'}}
			{{capture name="meta_breadcrumb" assign="meta_breadcrumb"}}
				{{if ( $xml->getItem("page/@type") == (string)'search') or ( $xml->getItem("page/@type") == (string)'navigation') or ( $xml->getItem("page/@type") == (string)'projector')}}
					{{if  $xml->getItem("page/@type") == (string)'navigation'}}
						{{foreach from=$xml->getList("bc/item") item=loop16}}
							{{$loop16->getItemEscape("@title")}}|
						{{/foreach}}
					{{else}}
						{{foreach from=$xml->getList("bc/item[not(position() = last())]") item=loop20}}
							{{$loop20->getItemEscape("@title")}}|
						{{/foreach}}
					{{/if}}
				{{/if}}
			{{/capture}}
			{{capture name="meta_breadcrumb_full" assign="meta_breadcrumb_full"}}
				{{if ( $xml->getItem("page/@type") == (string)'search') or ( $xml->getItem("page/@type") == (string)'navigation') or ( $xml->getItem("page/@type") == (string)'projector')}}
					{{foreach from=$xml->getList("bc/item") item=loop29}}
						{{$loop29->getItemEscape("@title")}}|
					{{/foreach}}
				{{/if}}
			{{/capture}}
			{{capture name="meta_subcategories" assign="meta_subcategories"}}
				{{if (( $xml->getItem("page/@type") == (string)'search') or ( $xml->getItem("page/@type") == (string)'navigation') or ( $xml->getItem("page/@type") == (string)'projector')) and ( $xml->getItem("/shop/navigation/current/@ni"))}}
					{{foreach from=$xml->getList("navigation/descendant-or-self::item[@ni=/shop/navigation/current/@ni]/item") item=loop37}}
						{{$loop37->getItemEscape("@name")}},
					{{/foreach}}
				{{/if}}
			{{/capture}}
			{{capture name="meta_variable_emulate_ie" assign="meta_variable_emulate_ie"}}
				{{$txt['107421::10001_meta_emulate']}}
			{{/capture}}
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
			<meta http-equiv="Content-Language" content="__IAI_TEMPLATE_LANG_639_2__"/>
			{{if $meta_variable_emulate_ie}}
				<meta http-equiv="X-UA-Compatible" content="{{$meta_variable_emulate_ie}}"/>
			{{/if}}
			{{if  $xml->getItem("page/@search_title")}}
				<title>{{$xml->getItem("page/@search_title")}}</title>
			{{elseif  $xml->getItem("page/@projector_title")}}
				<title>{{$xml->getItem("page/@projector_title")}}|{{$xml->getItem("$meta_breadcrumb_full")}}{{$xml->getItem("page/@title")}}</title>
			{{else}}
				<title>{{$xml->getItem("$meta_breadcrumb")}}{{$xml->getItem("page/@title")}}
					{{if  $xml->getItem("page/@title2")}}
						|{{$xml->getItem("page/@title2")}}
					{{/if}}
					</title>
			{{/if}}
			{{if  $xml->getItem("page/@search_keywords")}}
				<meta name="keywords" content="{{$xml->getItemEscape("page/@search_keywords")}}"/>
			{{elseif  $xml->getItem("page/@projector_keywords")}}
				<meta name="keywords" content="{{$xml->getItemEscape("page/@projector_keywords")}} | {{$meta_breadcrumb_full}}{{$meta_subcategories}}{{$xml->getItemEscape("page/@keywords")}}"/>
			{{elseif !( $xml->getItem("page/@keywords") == (string)'')}}
				<meta name="keywords" content=" {{$meta_breadcrumb_full}}{{$meta_subcategories}}{{if !( $xml->getItem("page/@keywords") == (string)'') }}{{$xml->getItemEscape("page/@keywords")}}{{else}} {{$txt['107421::10001_003']}} {{/if}} "/>
			{{else}}
			{{/if}}
			{{if  $xml->getItem("page/@search_description")}}
				<meta name="description" content="{{$xml->getItemEscape("page/@search_description")}}"/>
			{{elseif  $xml->getItem("page/@projector_description")}}
				<meta name="description" content="{{$xml->getItemEscape("page/@projector_description")}} | {{$meta_breadcrumb_full}}{{$meta_subcategories}}{{$xml->getItemEscape("page/@description")}}"/>
			{{else}}
				<meta name="description" content="{{$meta_breadcrumb}}{{$meta_subcategories}}{{$xml->getItemEscape("page/@description")}}"/>
			{{/if}}
			{{$txt['107421::20002_001']}}
			<link rel="shortcut icon" href="/gfx/__IAI_TEMPLATE_LANG_639_1__/favicon.ico" />
			{{if $themeColor}}
				<meta name="theme-color" content="{{$themeColor}}"/>
				<meta name="msapplication-navbutton-color" content="{{$themeColor}}"/>
				<meta name="apple-mobile-web-app-status-bar-style" content="{{$themeColor}}"/>
			{{/if}}
			{{if $asyncJS}}
				{{if  $xml->getItem("/shop/@preview")  gt (string) 0}}
					<link rel="stylesheet" type="text/css" href="/gfx/{{$xml->getItemEscape("language/@id")}}/{{$xml->getItemEscape("/shop/@preview")}}/style.css"></link>
				{{else}}
					<link rel="stylesheet" type="text/css" href="/gfx/{{$xml->getItemEscape("language/@id")}}/style.css?r=1573641886"></link>
				{{/if}}
			{{else}}
				{{if  $xml->getItem("/shop/@preview")  gt (string) 0}}
					<link rel="stylesheet" type="text/css" href="/gfx/{{$xml->getItemEscape("language/@id")}}/{{$xml->getItemEscape("/shop/@preview")}}/style.css"></link>
				{{else}}
					<link rel="stylesheet" type="text/css" href="/gfx/{{$xml->getItemEscape("language/@id")}}/style.css?r=1573641886"></link>
				{{/if}}
			{{/if}}
			{{capture name="meta_variable_expires" assign="meta_variable_expires"}}
				{{$txt['107421::10001_meta_expires']}}
			{{/capture}}
			{{capture name="meta_variable_distribution" assign="meta_variable_distribution"}}
				{{$txt['107421::10001_meta_distribution']}}
			{{/capture}}
			{{capture name="meta_variable_rating" assign="meta_variable_rating"}}
				{{$txt['107421::10001_meta_rating']}}
			{{/capture}}
			{{if  $xml->getItem("/shop/page/@meta_robots")}}
				<meta name="robots" content="{{$xml->getItemEscape("/shop/page/@meta_robots")}}"/>
			{{else}}
				<meta name="robots" content="INDEX,FOLLOW"/>
			{{/if}}
			{{if !($html5_layout)}}
				{{if $meta_variable_expires}}
					<meta name="expires" content="{{$meta_variable_expires}}"/>
				{{/if}}
				{{if $meta_variable_distribution}}
					<meta name="distribution" content="{{$meta_variable_distribution}}"/>
				{{/if}}
			{{/if}}
			{{if $meta_variable_rating}}
				<meta name="rating" content="{{$meta_variable_rating}}"/>
			{{/if}}
			{{if  $xml->getItem("/shop/iai/@meta_author")}}
				<meta name="Author" content="{{$xml->getItemEscape("/shop/iai/@meta_author")}}"/>
			{{/if}}
			{{if  $xml->getItem("page/facebook_comments")}}
				<meta property="fb:admins" content="{{$xml->getItemEscape("/shop/page/facebook_comments/@admin_id")}}"/>
				<meta property="fb:app_id" content="{{$xml->getItemEscape("/shop/page/facebook_comments/@app_id")}}"/>
			{{/if}}
			<!--IAI_TEMPLATE_additional_meta_tags-->
			<script type="text/javascript">
                        var app_shop = {
                            urls: {
                                prefix: 'data="/gfx/'.replace('data="', '') + '{{$xml->getItemEscape("language/@id")}}/'
                            },
                            vars: {},
                            txt: {},
                            fn: {},
                            fnrun: {},
                            files: []
                        };
                    			</script>

			{{if !( $xml->getItem("/shop/page/@type")  == (string) 'main')}}
				{{if  $xml->getItem("/shop/@preview")  gt (string) 0}}
					<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/{{$xml->getItemEscape("/shop/@preview")}}/shop.js">					</script>

				{{else}}
					<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/shop.js?r=1573641886">					</script>

				{{/if}}
			{{/if}}
		</head>
		{{capture name="meta_body_id" assign="meta_body_id"}}
			{{$txt['107421::10001_body_id']}}
		{{/capture}}
		{{literal}}
		<body{{/literal}}{{if $xml->getItem("action/set_render/item[@name='popup']")}}{{literal}} class="popup" {{/literal}}{{/if}}{{literal}}>{{/literal}}
			{{if $meta_body_id}}
				id="{{$meta_body_id}}"
			{{/if}}
			<!--IAI_TEMPLATE_additional_body_top_scripts-->
		{{/if}}
		{{capture name="valuepricedesc" assign="valuepricedesc"}}
			{{$txt['107421::10001_010']}}
		{{/capture}}
		{{capture name="discountpricedesc" assign="discountpricedesc"}}
			{{$txt['107421::10001_011']}}
		{{/capture}}
		{{capture name="promopricedesc" assign="promopricedesc"}}
			{{$txt['107421::10001_012']}}
		{{/capture}}
		{{capture name="detalpricedesc" assign="detalpricedesc"}}
			{{$txt['107421::10001_013']}}
		{{/capture}}
		{{capture name="rebatepricedesc" assign="rebatepricedesc"}}
			{{$txt['107421::10001_014']}}
		{{/capture}}
		{{capture name="nettopricedesc" assign="nettopricedesc"}}
			{{$txt['107421::10001_016']}}
		{{/capture}}
		{{capture name="signbeforeprice" assign="signbeforeprice"}}
			{{$txt['107421::10001_015']}}
		{{/capture}}
		{{capture name="signbetweenpricecurrency" assign="signbetweenpricecurrency"}}
			{{$txt['107421::10001_115']}}
		{{/capture}}
		{{capture name="showcomparelink" assign="showcomparelink"}}
			{{$txt['107421::10001_017']}}
		{{/capture}}
		<!--Układ graficzny (layout, 107419.1)-->
		<div id="container" class="{{$xml->getItemEscape("page/@type")}}_page {{if $xml->getItem("/shop/page/login[@shop_registration='true']")}}registration_page {{/if}}{{$txt['107419::70925_container_class']}}">
			{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'head')}}
				<header class="clearfix {{$txt['107419::70925_header_class']}}">
					{{include file="component_menu_javascript_107349.tpl"}}
					{{include file="component_menu_settings_108974.tpl"}}
					{{include file="component_menu_top_106526.tpl"}}
					{{include file="component_menu_search_106472.tpl"}}
					{{include file="component_menu_basket_106474.tpl"}}
					{{include file="component_menu_categories_106527.tpl"}}
					{{include file="component_projector_stepper_106590.tpl"}}
				</header>
			{{/if}}
			<div id="layout" class="{{$txt['107419::70925_layout_class']}}">
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'aside')}}
					<aside {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}span3{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_projector_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_search_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_main_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_blog_item_a_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_blog_list_a_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}{{$txt['107419::70925_otherwise_a_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp1}}">
						{{include file="component_menu_additional1_106528.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp2" ""}}  id="content"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}span9{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_list_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_item_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						{{include file="component_menu_messages_106608.tpl"}}
						<!--Rabaty klienta - CMS (client_rebates_cms, 58424.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div class="n58424_label">
								<span class="n58424_label">{{$txt['58424::cms_label']}}</span>
							</div>
							<div class="n58424_cms">
								<div class="n58424_sub">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Rabaty klienta - informacje (client_rebates_info, 107782.1)-->
						{{capture name="setNameOrder_client_rebates" assign="setNameOrder_client_rebates"}}
							{{$txt['107782::58230_setNameOrder']}}
						{{/capture}}
						{{capture name="setIconLarge_client_rebates" assign="setIconLarge_client_rebates"}}
							{{$txt['107782::58230_setIconLarge']}}
						{{/capture}}
						<div id="client_rebates_info" class="n58425">
							{{if  $xml->getItem("page/rebates_codes/@active")  == (string)  'y' or  $xml->getItem("page/rebate_code/@active")  == (string) 'y' or  $xml->getItem("page/@card_discount_program_activated") == (string)'true'}}
								<div class="form-code-card">
									{{if !( $xml->getItem("page/rebates_codes/@active")  == (string) 'y')}}
										<h2 class="big_label">
											{{if ( $xml->getItem("page/@card_discount_program_activated") == (string)'true' and !( $xml->getItem("page/rebate_code/@type") == (string)'card_discount')) and (( $xml->getItem("page/rebates_codes/@active")  == (string)  'y' or  $xml->getItem("page/rebate_code/@active")  == (string) 'y') and !( $xml->getItem("page/rebate_code/@type") == (string)'rebate'))}}
												{{$txt['107782::57379_wpisanykod']}}
											{{elseif  $xml->getItem("page/@card_discount_program_activated") == (string)'true' and !( $xml->getItem("page/rebate_code/@type") == (string)'card_discount')}}
												{{$txt['107782::57379_wpisanykod1a']}}
											{{elseif ( $xml->getItem("page/rebates_codes/@active")  == (string)  'y' or  $xml->getItem("page/rebate_code/@active")  == (string) 'y') and !( $xml->getItem("page/rebate_code/@type") == (string)'rebate')}}
												{{$txt['107782::57379_wpisanykod1b']}}
											{{else}}
												{{$txt['107782::57379_wpisanykod']}}
											{{/if}}
										</h2>
									{{/if}}
									{{capture name="cardform" assign="cardform"}}
										<form class="rabat-code form-group" action="settings.php?from=client_rebate" method="post">
											<input name="global_rebates_codes" value="add" type="hidden"/>
											<div class="has-feedback">
												<input {{assign "valueAttributeTmp12" ""}}  name="rebates_codes" type="text"{{capture name="valueAttributeTmp12" assign="valueAttributeTmp12"}}{{/capture}} class="form-control" {{if $xml->getItem("/shop/page/discount_cards/item[@status='active']/@number")}}{{capture name="valueAttributeTmp12" assign="valueAttributeTmp12"}}{{$xml->getItemEscape("/shop/page/discount_cards/item[@status='active']/@number")}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp12}}"></input>
												<label class="control-label">{{$txt['107782::67313_029891']}}
												</label>
											</div>
											<button class="btn-large" type="submit" value="">{{$txt['107782::67313_02989a']}}
											</button>
										</form>
									{{/capture}}
									{{capture name="codform" assign="codform"}}
										<form class="rabat-card form-group" action="settings.php?from=client_rebate" method="post">
											<input name="global_rebates_codes" value="add" type="hidden"/>
											<div class="has-feedback">
												<input name="rebates_codes" type="text" value="" class="form-control"></input>
												<label class="control-label">{{$txt['107782::67313_029891b']}}
												</label>
											</div>
											<button class="btn-large" type="submit" value="">{{$txt['107782::67313_02989a']}}
											</button>
										</form>
									{{/capture}}
									<div class="row clearfix form-code-carsub">
										{{if  $xml->getItem("page[@card_discount_program_activated='true']")}}
											{{if !( $xml->getItem("page/rebate_code/@type") == (string)'card_discount')}}
												<div class="col-sm-6 col-12">{{$txt['107782::57379_icon-card']}}{{$cardform}}
													{{if  $xml->getItem("/shop/rebate_card_delete_client_advanced_rebate/@active")  == (string) 'y' or  $xml->getItem("/shop/rebate_card_delete_rebate_for_profit_points/@active")  == (string) 'y' }}
														<div class="form-code-carsub_info">{{$txt['107782::text_57854_1b']}}
														</div>
													{{/if}}
												</div>
											{{/if}}
										{{/if}}
										{{if  $xml->getItem("page/rebates_codes/@active")  == (string)  'y' or  $xml->getItem("page/rebate_code/@active")  == (string) 'y'}}
											{{if !( $xml->getItem("page/rebate_code/@type") == (string)'rebate')}}
												<div class="col-sm-6 col-12">{{$txt['107782::57379_icon-rabat']}}{{$codform}}
													{{if  $xml->getItem("/shop/rebate_code_delete_client_advanced_rebate/@active")  == (string) 'y' or  $xml->getItem("/shop/rebate_code_delete_rebate_for_profit_points/@active")  == (string) 'y' }}
														<div class="form-code-carsub_info">{{$txt['107782::text_57854_1a']}}
														</div>
													{{/if}}
												</div>
											{{/if}}
										{{/if}}
									</div>
									{{if  $xml->getItem("page/rebate_code[@type='rebate']")}}
										<div class="active-code-wrapper">
											<h2 class="big_label">{{$txt['107782::57379_wpisanykoda']}}
											</h2>
											<div class="active-code n67313_out">
												<div class="code-name">{{$txt['107782::57379_icon-rabat']}}
													<span>{{$txt['107782::67313_cod']}}
														<strong>{{$xml->getItem("page/rebate_code/@number")}}</strong></span>
												</div>
												<div class="code-info">
													<ul class="code-details">
														{{if  $xml->getItem("page/rebate_code/@min_order")  gt (string) 0}}
															<li>
																{{capture name="minProdVal" assign="minProdVal"}}
																	{{$xml->getItemEscape("page/rebate_code/@min_order")}}
																{{/capture}}
																{{$txt['107782::57379_min_order']}}
																<strong>{{$xml->getItem("format-number($minProdVal, '#')")}}{{literal}}{{/literal}}{{$xml->getItemEscape("/shop/currency/@name")}}</strong>
															</li>
														{{/if}}
														{{capture name="max_order_value" assign="max_order_value"}}
															{{$txt['107782::57379_max_order']}}
														{{/capture}}
														{{if  $xml->getItem("page/rebate_code/@max_order")  gt (string) 0 and $max_order_value  neq (string) ''}}
															<li>{{$max_order_value}}
																<strong>{{$xml->getItemEscape("page/rebate_code/@max_order_formatted")}}</strong>
															</li>
														{{/if}}
														{{if  $xml->getItem("page/rebate_code/@expires")}}
															<li>{{$txt['107782::57379_expires']}}
																<strong>{{$xml->getItem("page/rebate_code/@expires")}}</strong>
															</li>
														{{/if}}
														{{if  $xml->getItem("page/rebate_code/@combined") == (string)'y' or  $xml->getItem("page/rebate_code/@combined") == (string)'m'}}
															<li>{{$txt['107782::57379_global_info']}}
															</li>
														{{else}}
															<li>{{$txt['107782::57379_global_info2']}}
															</li>
														{{/if}}
														{{if  $xml->getItem("page/rebate_code/inactive_zones/item")}}
															<li>{{$txt['107782::57379_inactive_zones_info']}}
																{{foreach from=$xml->getList("page/rebate_code/inactive_zones/item") item=loop402}}
																	<strong>{{$loop402->getItem("@description")}}</strong>
																	{{if  $loop402@iteration   neq (string)  $loop402@total }}
																		{{$txt['107782::57379_przec']}}
																	{{/if}}
																{{/foreach}}
															</li>
														{{/if}}
													</ul>
												</div>
												<div class="rabate-form" style="display:none;">{{$codform}}
												</div>
												<div class="rabate-button">
													<a class="btn-small" id="n67313_a_change_code" href="#">{{$txt['107782::57228_a_change_code']}}</a>
													<a class="btn-small" id="n67313_a_remove_code" href="/settings.php?from=client_rebate&#160;amp;global_rebates_codes=add&#160;amp;rebates_codes=+'">{{$txt['107782::67313_remove_code']}}</a>
												</div>
											</div>
										</div>
									{{/if}}
									{{if  $xml->getItem("page/rebate_code[@type='card_discount']")}}
										<div class="active-code-wrapper">
											<h2 class="big_label">{{$txt['107782::57379_wpisanykaakt']}}
											</h2>
											{{foreach from=$xml->getList("/shop/page/discount_cards/item[@number = /shop/page/rebate_code[@type='card_discount']/@number]") item=loop429}}
												<div class="active-code n67313_out">
													<div class="code-name">{{$txt['107782::57379_icon-card']}}
														<span>
															<strong>{{$loop429->getItemEscape("@name")}}</strong></span>
													</div>
													<div class="code-info">
														<ul class="code-details">
															<li>{{$txt['107782::61881_4']}}
																<strong>{{$loop429->getItemEscape("@number")}}</strong>
															</li>
															{{if  $loop429->getItem("@expires")}}
																<li>{{$txt['107782::61881_2']}}
																	<strong>{{$loop429->getItem("@expires")}}</strong>
																</li>
															{{/if}}
															{{if  $loop429->getItem("page/rebate_code/@min_order")  gt (string) 0}}
																<li>{{$txt['107782::57379_min_order']}}
																	<strong>{{$loop429->getItem("format-number(page/rebate_code/@min_order, '#')")}}{{literal}}{{/literal}}{{$loop429->getItemEscape("/shop/currency/@name")}}</strong>
																</li>
															{{/if}}
															{{if  $loop429->getItem("page/rebate_code/@combined") == (string)'y' or  $loop429->getItem("page/rebate_code/@combined") == (string)'m'}}
																<li>{{$txt['107782::57379_global_info']}}
																</li>
															{{else}}
																<li>{{$txt['107782::57379_global_info2']}}
																</li>
															{{/if}}
															{{if  $loop429->getItem("page/rebate_code/inactive_zones/item")}}
																<li>{{$txt['107782::57379_inactive_zones_info']}}
																	{{foreach from=$loop429->getList("page/rebate_code/inactive_zones/item") item=loop466}}
																		<strong>{{$loop466->getItem("@description")}}</strong>
																		{{if  $loop466@iteration   neq (string)  $loop466@total }}
																			{{$txt['107782::57379_przec']}}
																		{{/if}}
																	{{/foreach}}
																</li>
															{{/if}}
														</ul>
													</div>
													<div class="rabate-form" style="display:none;">{{$cardform}}
													</div>
													<div class="rabate-button">
														<a class="btn-small" id="n67313_a_change_cart" href="#">{{$txt['107782::57228_a_change_code']}}</a>
													</div>
												</div>
											{{/foreach}}
										</div>
									{{/if}}
									{{if  $xml->getItem("/shop/page/discount_cards/item[not(@number = /shop/page/rebate_code/@number)]")}}
										<div class="active-code-wrapper">
											<h2 class="big_label">{{$txt['107782::61881_1unactive_discards']}}
											</h2>
											<div class="active-code-subwrapper">
												{{foreach from=$xml->getList("/shop/page/discount_cards/item") item=loop493}}
													{{if !( $loop493->getItem("@number")  == (string)  $loop493->getItem("/shop/page/rebate_code/@number"))}}
														<div class="active-code n67313_out">
															<div class="code-name">{{$txt['107782::57379_icon-credit-card']}}
																<span>
																	<strong>{{$loop493->getItem("@name")}}</strong></span>
															</div>
															<div class="code-info">
																<ul class="code-details">
																	{{if  $loop493->getItem("@number")}}
																		<li>{{$txt['107782::61881_4']}}
																			<strong>{{$loop493->getItemEscape("@number")}}</strong>
																		</li>
																		<li>
																			<span>{{$txt['107782::61881_2']}}{{$loop493->getItemEscape("@expires")}}</span>
																		</li>
																	{{/if}}
																</ul>
															</div>
															<div class="rabate-form">
																<form class="rabat-code" action="settings.php?from=client_rebate" method="post">
																	<input name="global_rebates_codes" value="add" type="hidden"/>
																	<input name="rebates_codes" type="hidden" value="{{$loop493->getItemEscape("@number")}}"></input>
																	<button class="btn-small" type="submit" value="">{{$txt['107782::436341_activate']}}
																	</button>
																</form>
															</div>
														</div>
													{{/if}}
												{{/foreach}}
											</div>
										</div>
									{{/if}}
									{{if  $xml->getItem("/shop/page/cards/item")}}
										<div class="active-code-wrapper">
											<h2 class="big_label">{{$txt['107782::61881_1']}}
											</h2>
											<div class="active-code-subwrapper">
												{{foreach from=$xml->getList("/shop/page/cards/item") item=loop539}}
													<div class="active-code n67313_out">
														<div class="code-name">{{$txt['107782::57379_icon-card']}}
															<span>
																<strong>{{$loop539->getItem("@name")}}</strong>{{$txt['107782::61881_2']}}{{$loop539->getItemEscape("@expires")}}</span>
														</div>
														<div class="code-info">
															<ul class="code-details">
																{{if  $loop539->getItem("@number")}}
																	<li>{{$txt['107782::61881_4']}}
																		<strong>{{$loop539->getItemEscape("@number")}}</strong>
																	</li>
																{{/if}}
															</ul>
														</div>
														<div class="rabate-button card-status">
															{{if  $loop539->getItem("@active")  == (string) 'y'}}
																<b class="card-status-active">{{$txt['107782::61881_6']}}</b>
															{{elseif  $loop539->getItem("@active")  == (string) 'n'}}
																<b class="card-status-inactive">{{$txt['107782::61881_7']}}</b>
															{{/if}}
														</div>
													</div>
												{{/foreach}}
											</div>
										</div>
									{{/if}}
								</div>
							{{/if}}
							{{if  $xml->getItem("page/basket_rebate") or  $xml->getItem("page/global_rebate") or ( $xml->getItem("page/rebates/range_rebate/range") and !( $xml->getItem("/shop/page/basket_rebate/range")))}}
								<h1 class="big_label">{{$txt['107782::57379_lab']}}
								</h1>
							{{/if}}
							{{if  $xml->getItem("page/rebates/range_rebate/range") and !( $xml->getItem("/shop/page/basket_rebate/range"))}}
								<div class="n67313_out">
									<div class="n67313_label_b">
										<span class="n67313_label_l">{{$txt['107782::57379_progi']}}</span>
										<div class="n67313_label_r">{{$txt['107782::57379_progi_info']}}
											{{if  $xml->getItem("page/basket_rebate/@combined") == (string)'y' or  $xml->getItem("page/basket_rebate/@combined") == (string)'m'}}
												{{$txt['107782::57379_global_info']}}
											{{else}}
												{{$txt['107782::57379_global_info2']}}
											{{/if}}
										</div>
									</div>
									<div class="n67313_border">
										<div class="n67313_rebate_l">{{$txt['107782::57379_kwot']}}
											<span class="n67313_label_r">{{$txt['107782::57379_label_r']}}</span>
											{{if  $xml->getItem("page/basket_rebate/range/@points")  neq (string) '0.00'}}
												<span class="n67313_label_r">{{$txt['107782::57379_label_bonus']}}</span>
											{{/if}}
										</div>
										<table class="n58425" id="n58425_range_rebate" cellspacing="0" cellpadding="0">
											{{foreach from=$xml->getList("page/rebates/range_rebate/range") item=loop607}}
												<tr {{if $loop607->getItem("@used") == (string)'y'}} class="range_rebate_activ"{{/if}}>
													<td {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}n67313_name{{/capture}}{{if $loop607@iteration % 2 == (string) 0}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}n67313_name_a{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}">
														<span class="n67313_name">{{$loop607->getItem("@threshold")}}{{literal}}{{/literal}}{{$loop607->getItemEscape("/shop/currency/@name")}}</span>
													</td>
													<td {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}n67313_value{{/capture}}{{if $loop607@iteration % 2 == (string) 0}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}n67313_value_a{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}">
														<span class="n67313_value">
															{{if  $loop607->getItem("contains(@value, '.00')")}}
																{{$loop607->getItem("format-number(@value, '#')")}}{{literal}}{{/literal}}{{$txt['107782::57379_proc']}}
															{{else}}
																{{$loop607->getItem("@value")}}{{literal}}{{/literal}}{{$txt['107782::57379_proc']}}
															{{/if}}
															</span>
														{{if  $loop607->getItem("@points")  neq (string) '0.00'}}
															<span class="n67313_points">{{$txt['107782::57379_plus']}}{{$loop607->getItemEscape("format-number(@points, '#')")}}{{$txt['107782::57379_punkty']}}</span>
														{{/if}}
													</td>
												</tr>
											{{/foreach}}
										</table>
									</div>
								</div>
							{{/if}}
							{{if  $xml->getItem("page/basket_rebate")}}
								<div class="n67313_out">
									<div class="n67313_label_b">
										<span class="n67313_label_l">{{$txt['107782::57379_progi']}}</span>
										<div class="n67313_label_r">{{$txt['107782::57379_progi_info']}}
											{{if  $xml->getItem("page/basket_rebate/@combined") == (string)'y' or  $xml->getItem("page/basket_rebate/@combined") == (string)'m'}}
												{{$txt['107782::57379_global_info']}}
											{{else}}
												{{$txt['107782::57379_global_info2']}}
											{{/if}}
										</div>
									</div>
									<div class="n67313_border">
										<div class="n67313_rebate_l">{{$txt['107782::57379_kwot']}}
											<span class="n67313_label_r">{{$txt['107782::57379_label_r']}}</span>
											{{if  $xml->getItem("page/basket_rebate/range/@points")  neq (string) '0.00'}}
												<span class="n67313_label_r">{{$txt['107782::57379_label_bonus']}}</span>
											{{/if}}
										</div>
										<table class="n58425" id="n58425_range_rebate" cellspacing="0" cellpadding="0">
											{{foreach from=$xml->getList("page/basket_rebate/range") item=loop662}}
												<tr {{if $loop662->getItem("@used") == (string)'y'}} class="range_rebate_activ"{{/if}}>
													<td {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}n67313_name{{/capture}}{{if $loop662@iteration % 2 == (string) 0}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}n67313_name_a{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}">
														<span class="n67313_name">{{$loop662->getItem("@threshold")}}{{literal}}{{/literal}}{{$loop662->getItemEscape("/shop/currency/@name")}}</span>
													</td>
													<td {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}n67313_value{{/capture}}{{if $loop662@iteration % 2 == (string) 0}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}n67313_value_a{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}">
														<span class="n67313_value">
															{{if  $loop662->getItem("contains(@value, '.00')")}}
																{{$loop662->getItem("format-number(@value, '#')")}}{{literal}}{{/literal}}{{$txt['107782::57379_proc']}}
															{{else}}
																{{$loop662->getItem("@value")}}{{literal}}{{/literal}}{{$txt['107782::57379_proc']}}
															{{/if}}
															</span>
														{{if  $loop662->getItem("@points")  neq (string) '0.00'}}
															<span class="n67313_points">{{$txt['107782::57379_plus']}}{{$loop662->getItemEscape("format-number(@points, '#')")}}{{$txt['107782::57379_punkty']}}</span>
														{{/if}}
													</td>
												</tr>
											{{/foreach}}
										</table>
									</div>
								</div>
							{{/if}}
							{{if  $xml->getItem("page/global_rebate")}}
								<div class="n67313_out">
									<div class="n67313_label_b">
										<span class="n67313_label_l">{{$txt['107782::57379_global_rebate']}}</span>
										<div class="n67313_label_r">
											{{if  $xml->getItem("page/global_rebate/@order_days")}}
												{{$txt['107782::57379_global_info_order_days']}}{{$xml->getItem("page/global_rebate/@order_days")}}{{$txt['107782::57379_global_info_order_days2']}}
											{{else}}
												{{$txt['107782::57379_global_rebate_info']}}
											{{/if}}
											{{if  $xml->getItem("page/global_rebate/@combined") == (string)'y'}}
												{{$txt['107782::57379_global_info']}}
											{{else}}
												{{$txt['107782::57379_global_info2']}}
											{{/if}}
										</div>
									</div>
									<div class="n67313_border">
										<div class="n67313_rebate_l">{{$txt['107782::57379_kwot']}}
											<span class="n67313_label_r">{{$txt['107782::57379_label_r']}}</span>
											{{if  $xml->getItem("page/global_rebate/range/@points")  neq (string) '0.00'}}
												<span class="n67313_label_r">{{$txt['107782::57379_label_bonus']}}</span>
											{{/if}}
										</div>
										<table class="n58425" id="n58425_range_rebate" cellspacing="0" cellpadding="0">
											{{foreach from=$xml->getList("page/global_rebate/range") item=loop721}}
												<tr {{if $loop721->getItem("@used") == (string)'y'}} class="range_rebate_activ"{{/if}}>
													<td {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}n67313_name{{/capture}}{{if $loop721@iteration % 2 == (string) 0}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}n67313_name_a{{/capture}}{{/if}}  class="{{$classAttributeTmp7}}">
														<span class="n67313_name">{{$loop721->getItem("@threshold")}}{{literal}}{{/literal}}{{$loop721->getItemEscape("/shop/currency/@name")}}</span>
													</td>
													<td {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}n67313_value{{/capture}}{{if $loop721@iteration % 2 == (string) 0}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}n67313_value_a{{/capture}}{{/if}}  class="{{$classAttributeTmp8}}">
														<span class="n67313_value">
															{{if  $loop721->getItem("contains(@value, '.00')")}}
																{{$loop721->getItem("format-number(@value, '#')")}}{{literal}}{{/literal}}{{$txt['107782::57379_proc']}}
															{{else}}
																{{$loop721->getItem("@value")}}{{literal}}{{/literal}}{{$txt['107782::57379_proc']}}
															{{/if}}
															</span>
														{{if  $loop721->getItem("@points")  neq (string) '0.00'}}
															<span class="n67313_points">{{$txt['107782::57379_plus']}}{{$loop721->getItemEscape("format-number(@points, '#')")}}{{$txt['107782::57379_punkty']}}</span>
														{{/if}}
													</td>
												</tr>
											{{/foreach}}
										</table>
									</div>
								</div>
							{{/if}}
							{{if  $xml->getItem("page/rebates/@type")  == (string) 'r'}}
								{{if !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00')}}
									<div class="n67313_out">
										<div class="n67313_label_b">
											<span class="n67313_label_l">{{$txt['107782::57379_label_1']}}</span>
										</div>
										<div class="n67313_border">
											{{if !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00')}}
												<div class="n67313_rebate_l">{{$txt['107782::57379_otherp']}}
												</div>
												<div class="n67313_rebate_info">
													<span class="n67313_other_value">
														{{if  $xml->getItem("contains(page/rebates/other/@value, '.00')")}}
															{{$xml->getItem("format-number(page/rebates/other/@value, '#')")}}{{literal}}{{/literal}}{{$txt['107782::57379_proc']}}
														{{else}}
															{{$xml->getItem("page/rebates/other/@value")}}{{$txt['107782::57379_proc']}}
														{{/if}}
														</span>
													{{if  $xml->getItem("page/rebates/other/@combined") == (string)'y'}}
														<div class="n67313_other_info">{{$txt['107782::57379_global_info']}}
														</div>
													{{else}}
														<div class="n67313_other_info">{{$txt['107782::57379_global_info2']}}
														</div>
													{{/if}}
												</div>
											{{/if}}
										</div>
									</div>
								{{/if}}
							{{elseif ( $xml->getItem("page/rebates/@type")  == (string) 'z') and (( $xml->getItem("page/rebates/category")) or ( $xml->getItem("page/rebates/producer")) or ( $xml->getItem("page/rebates/series")))}}
								<div class="n67313_out">
									{{if ( $xml->getItem("page/rebates/category")) or ( $xml->getItem("page/rebates/producer")) or ( $xml->getItem("page/rebates/series"))}}
										<div class="n67313_label_b">
											<span class="n67313_label_l">{{$txt['107782::57379_label_g']}}</span>
											<div class="n67313_label_r">{{$txt['107782::n57379_info22_']}}
											</div>
										</div>
									{{/if}}
									<div class="n67313_border">
										{{if  $xml->getItem("page/rebates/category")}}
											<div class="n67313_rebate_l">{{$txt['107782::57379_cat']}}
											</div>
											<table class="clients_rebates">
												{{foreach from=$xml->getList("page/rebates/category/item") item=loop803}}
													{{if ( $loop803@iteration -1) % 2  == (string) 0}}
														{{literal}}
														<tr>{{/literal}}
														{{/if}}
														<td style="width:50%;" class="clients_rebates">
															<div class="clients_rebates_wrapper">
																<h3>
																	<a class="product_name" href="{{$loop803->getItem("@link")}}" title="{{$loop803->getItem("@name")}}">{{$loop803->getItem("@name")}}</a>
																</h3>
																<span class="n67313_other_value">
																	{{if  $loop803->getItem("contains(@value, '.00')")}}
																		{{$loop803->getItemEscape("format-number(@value, '#')")}}{{$txt['107782::57379_proc']}}
																	{{else}}
																		{{$loop803->getItem("@value")}}{{$txt['107782::57379_proc']}}
																	{{/if}}
																	</span>
															</div>
														</td>
														{{if ( $loop803@iteration -1) % 2  == (string) (2 - 1) or  $loop803@iteration  == (string) $loop803@total }}
															{{literal}}
														</tr>{{/literal}}
													{{/if}}
												{{/foreach}}
											</table>
										{{/if}}
										{{if  $xml->getItem("page/rebates/producer")}}
											<div class="n67313_rebate_l">{{$txt['107782::57379_prod']}}
											</div>
											<table class="clients_rebates">
												{{foreach from=$xml->getList("page/rebates/producer/item") item=loop830}}
													{{if ( $loop830@iteration -1) % 2  == (string) 0}}
														{{literal}}
														<tr>{{/literal}}
														{{/if}}
														<td style="width:50%;" class="clients_rebates">
															<div class="clients_rebates_wrapper">
																<h3>
																	<a class="product_name" href="{{$loop830->getItem("@link")}}" title="{{$loop830->getItem("@name")}}">{{$loop830->getItem("@name")}}</a>
																</h3>
																<span class="n67313_other_value">
																	{{if  $loop830->getItem("contains(@value, '.00')")}}
																		{{$loop830->getItemEscape("format-number(@value, '#')")}}{{$txt['107782::57379_proc']}}
																	{{else}}
																		{{$loop830->getItem("@value")}}{{$txt['107782::57379_proc']}}
																	{{/if}}
																	</span>
															</div>
														</td>
														{{if ( $loop830@iteration -1) % 2  == (string) (2 - 1) or  $loop830@iteration  == (string) $loop830@total }}
															{{literal}}
														</tr>{{/literal}}
													{{/if}}
												{{/foreach}}
											</table>
										{{/if}}
										{{if  $xml->getItem("page/rebates/series")}}
											<div class="n67313_rebate_l">{{$txt['107782::57379_serie']}}
											</div>
											<table class="clients_rebates">
												{{foreach from=$xml->getList("page/rebates/series/item") item=loop857}}
													{{if ( $loop857@iteration -1) % 2  == (string) 0}}
														{{literal}}
														<tr>{{/literal}}
														{{/if}}
														<td style="width:50%;" class="clients_rebates">
															<div class="clients_rebates_wrapper">
																<h3>
																	<a class="product_name" href="{{$loop857->getItem("@link")}}" title="{{$loop857->getItem("@name")}}">{{$loop857->getItem("@name")}}</a>
																</h3>
																<span class="n67313_other_value">
																	{{if  $loop857->getItem("contains(@value, '.00')")}}
																		{{$loop857->getItemEscape("format-number(@value, '#')")}}{{$txt['107782::57379_proc']}}
																	{{else}}
																		{{$loop857->getItem("@value")}}{{$txt['107782::57379_proc']}}
																	{{/if}}
																	</span>
															</div>
														</td>
														{{if ( $loop857@iteration -1) % 2  == (string) (2 - 1) or  $loop857@iteration  == (string) $loop857@total }}
															{{literal}}
														</tr>{{/literal}}
													{{/if}}
												{{/foreach}}
											</table>
										{{/if}}
									</div>
								</div>
								{{if  $xml->getItem("page/rebates/product")}}
									<div class="n67313_out">
										<div class="n67313_label_b">
											<span class="n67313_label_l">{{$txt['107782::57379_rabszcz']}}</span>
											{{if (( $xml->getItem("page/rebates/category")) or ( $xml->getItem("page/rebates/producer")) or ( $xml->getItem("page/rebates/series"))) and (( $xml->getItem("page/rebates/other")) and !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00'))}}
												<div class="n67313_label_r">{{$txt['107782::57379_other_info_b1']}}
												</div>
											{{elseif (( $xml->getItem("page/rebates/category")) or ( $xml->getItem("page/rebates/producer")) or ( $xml->getItem("page/rebates/series"))) and !(( $xml->getItem("page/rebates/other")) and !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00'))}}
												<div class="n67313_label_r">{{$txt['107782::57379_other_info_b2']}}
												</div>
											{{elseif (( $xml->getItem("page/rebates/other")) and !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00')) and !( $xml->getItem("page/rebates/category")) and !( $xml->getItem("page/rebates/producer")) and !( $xml->getItem("page/rebates/series"))}}
												<div class="n67313_label_r">{{$txt['107782::57379_other_info_b3']}}
												</div>
											{{/if}}
										</div>
										<div class="n67313_border">
											<div class="n67313_rebate_l">{{$txt['107782::57379_wypr']}}
											</div>
											<table class="clients_rebates">
												{{foreach from=$xml->getList("page/rebates/product/item") item=loop904}}
													{{if ( $loop904@iteration -1) % 2  == (string) 0}}
														{{literal}}
														<tr>{{/literal}}
														{{/if}}
														<td style="width:50%;" class="clients_rebates">
															<div class="clients_rebates_wrapper">
																<h3>
																	<a class="product_name" href="{{$loop904->getItem("@link")}}" title="{{$loop904->getItem("@name")}}">{{$loop904->getItem("@name")}}</a>
																</h3>
																<span class="n67313_other_value">
																	{{if  $loop904->getItem("contains(@value, '.00')")}}
																		{{$loop904->getItemEscape("format-number(@value, '#')")}}{{$txt['107782::57379_proc']}}
																	{{else}}
																		{{$loop904->getItem("@value")}}{{$txt['107782::57379_proc']}}
																	{{/if}}
																	</span>
															</div>
														</td>
														{{if ( $loop904@iteration -1) % 2  == (string) (2 - 1) or  $loop904@iteration  == (string) $loop904@total }}
															{{literal}}
														</tr>{{/literal}}
													{{/if}}
												{{/foreach}}
											</table>
										</div>
									</div>
								{{/if}}
								{{if !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00')}}
									<div class="n67313_out">
										<div class="n67313_label_b">
											<span class="n67313_label_l">{{$txt['107782::57379_label_1']}}</span>
											<div class="n67313_label_r">
												{{if  $xml->getItem("page/rebates/other/@combined") == (string)'y'}}
													<div class="n67313_other_info">{{$txt['107782::57379_global_info']}}
													</div>
												{{else}}
													<div class="n67313_other_info">{{$txt['107782::57379_global_info2']}}
													</div>
												{{/if}}
											</div>
										</div>
										<div class="n67313_border">
											{{if !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00')}}
												<div class="n67313_rebate_l">
													{{if !( $xml->getItem("page/rebates/category")) and !( $xml->getItem("page/rebates/producer")) and !( $xml->getItem("page/rebates/series")) and !( $xml->getItem("page/rebates/product"))}}
														{{$txt['107782::n57379_otherall']}}
													{{else}}
														{{$txt['107782::n57379_other']}}
													{{/if}}
												</div>
												<div class="n67313_rebate_info">
													<span class="n67313_other_value">
														{{if  $xml->getItem("contains(page/rebates/other/@value, '.00')")}}
															{{$xml->getItemEscape("format-number(page/rebates/other/@value, '#')")}}{{$txt['107782::57379_proc']}}
														{{else}}
															{{$xml->getItem("page/rebates/other/@value")}}{{$txt['107782::57379_proc']}}
														{{/if}}
														</span>
												</div>
											{{/if}}
										</div>
									</div>
								{{/if}}
							{{elseif ( $xml->getItem("page/rebates/@type")  == (string) 'p' or  $xml->getItem("page/rebates/@type")  == (string) 'z') and ( $xml->getItem("page/rebates/other/@value")  == (string) '0.00') and ( $xml->getItem("page/rebates/global/@value")  == (string) '0.00') and ( $xml->getItem("page/rebates_codes/@active")  == (string) 'n')}}
								<div class="n67313_norabate">{{$txt['107782::57379_no']}}
									<a href="/terms.php">{{$txt['107782::57379_reg']}}</a>{{$txt['107782::57379_st']}}
								</div>
							{{else}}
								{{if !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00')}}
									<div class="n67313_out">
										<div class="n67313_label_b">{{$txt['107782::57379_label_1']}}
											<div class="n67313_label_r">
												{{if  $xml->getItem("page/rebates/other/@combined") == (string)'y'}}
													{{$txt['107782::57379_global_info']}}
												{{else}}
													{{$txt['107782::57379_global_info2']}}
												{{/if}}
											</div>
										</div>
										<div class="n67313_border">
											{{if !( $xml->getItem("page/rebates/other/@value")  == (string) '0.00')}}
												<div class="n67313_rebate_l">{{$txt['107782::57379_otherp']}}
												</div>
												<div class="n67313_rebate_info">
													<span class="n67313_other_value">
														{{if  $xml->getItem("contains(page/rebates/other/@value, '.00')")}}
															{{$xml->getItemEscape("format-number(page/rebates/other/@value, '#')")}}{{$txt['107782::57379_proc']}}
														{{else}}
															{{$xml->getItem("page/rebates/other/@value")}}{{$txt['107782::57379_proc']}}
														{{/if}}
														</span>
												</div>
											{{/if}}
										</div>
									</div>
								{{/if}}
							{{/if}}
							{{if  $xml->getItem("page/rebate_code/@active")  == (string) 'y' or  $xml->getItem("page/rebates_for_points/rebate")}}
								<div {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}n67313_label{{/capture}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}big_label n67313_label{{/capture}}  class="{{$classAttributeTmp9}}">
									<span class="n67313_label">{{$txt['107782::57379_lab_ind']}}</span>
								</div>
								<div class="n67313_out">
									{{if  $xml->getItem("page/rebate_code/inactive_zones/item")}}
										<div class="n67313_label_b">{{$txt['107782::57379_inactive_zones_info']}}
											{{foreach from=$xml->getList("page/rebate_code/inactive_zones/item") item=loop1017}}
												<strong>{{$loop1017->getItem("@description")}}</strong>
												{{if  $loop1017@iteration   neq (string)  $loop1017@total }}
													{{$txt['107782::57379_przec']}}
												{{/if}}
											{{/foreach}}
										</div>
									{{/if}}
									{{if  $xml->getItem("page/rebates_for_points/rebate")}}
										<div class="n67313_rebate_l">{{$txt['107782::31019_002k']}}
										</div>
										<div class="rebates_for_points row clearfix align_row" data-align=".for_points#px">
											{{foreach from=$xml->getList("/shop/page/rebates_for_points/rebate") item=loop1027}}
												{{if  $loop1027->getItem("@order_link")}}
													<div class="for_points_wrapper col-lg-3 col-sm-4 col-12">
														<a {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}for_points{{/capture}} href="{{$loop1027->getItemEscape("@order_link")}}" {{if $loop1027->getItem("/shop/rebate_for_profit_points_delete_client_advanced_rebate[@active='y']")}} title="{{$txt['107782::31019_005_3']}}" data-title="{{$txt['107782::31019_005_2']}}" data-button_txt="{{$txt['107782::31019_005_1']}}"{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}for_points confirmation_link{{/capture}}{{/if}}{{if $loop1027->getItem("/shop/rebate_for_profit_points_delete_rebate_code[@active='y']")}} title="{{$txt['107782::31019_005_3_a']}}" data-title="{{$txt['107782::31019_005_2']}}" data-button_txt="{{$txt['107782::31019_005_1']}}"{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}for_points confirmation_link{{/capture}}{{/if}}{{if $loop1027->getItem("@selected") == (string) 'selected'}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}for_points selected{{/capture}}{{if $loop1027->getItem("/shop/rebate_for_profit_points_delete_rebate_code[@active='y']")}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}for_points selected confirmation_link{{/capture}}{{/if}}{{if $loop1027->getItem("/shop/rebate_for_profit_points_delete_client_advanced_rebate[@active='y']")}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}for_points selected confirmation_link{{/capture}}{{/if}}{{/if}}  class="{{$classAttributeTmp10}}">
															<span class="for_points_value">
																{{if  $loop1027->getItem("@selected")  == (string) 'selected'}}
																	<strong>{{$txt['107782::31019_005a']}}</strong>
																{{/if}}
																<span>{{$txt['107782::31019_005rr']}}
																	{{if  $loop1027->getItem("@rebate_type") == (string)'quota'}}
																		{{$loop1027->getItemEscape("format-number(@threshold, '#')")}}{{$loop1027->getItemEscape("/shop/currency/@name")}}
																	{{else}}
																		{{$loop1027->getItemEscape("format-number(@threshold, '#')")}}{{$txt['107782::31019_005']}}
																	{{/if}}
																	</span>
																{{if  $loop1027->getItem("@permanent") == (string)'true'}}
																	{{$txt['107782::31019_005st']}}
																{{else}}
																	{{$txt['107782::31019_005tor']}}
																{{/if}}
																</span>
															<span class="for_points_points">{{$loop1027->getItemEscape("format-number(@points, '#')")}}{{$txt['107782::31019_005pkt']}}</span></a>
													</div>
												{{else}}
													<div {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}for_points_wrapper col-lg-3 col-sm-4 col-12{{/capture}}{{if $loop1027->getItem("@selected") == (string) 'selected'}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}for_points_wrapper col-lg-3 col-sm-4 col-12 selected{{/capture}}{{/if}}  class="{{$classAttributeTmp11}}">
														<div class="for_points">
															<span class="for_points_value">
																{{if  $loop1027->getItem("@selected")  == (string) 'selected'}}
																	<strong>{{$txt['107782::31019_005a']}}</strong>
																{{/if}}
																<span>{{$txt['107782::31019_005rr']}}
																	{{if  $loop1027->getItem("@rebate_type") == (string)'quota'}}
																		{{$loop1027->getItemEscape("format-number(@threshold_formatted, '#')")}}
																	{{else}}
																		{{$loop1027->getItemEscape("format-number(@threshold, '#')")}}{{$txt['107782::31019_005']}}
																	{{/if}}
																	</span>
																{{if  $loop1027->getItem("@permanent") == (string)'true'}}
																	{{$txt['107782::31019_005st']}}
																{{else}}
																	{{$txt['107782::31019_005tor']}}
																{{/if}}
																</span>
															<span class="for_points_points">{{$loop1027->getItemEscape("format-number(@points, '#')")}}{{$txt['107782::31019_005pkt']}}</span>
														</div>
													</div>
												{{/if}}
											{{/foreach}}
										</div>
									{{/if}}
									{{if  $xml->getItem("page/rebate_code[@active='y']")}}
										<div class="n67313_border">
											{{if  $xml->getItem("page/rebate_code/product[@active='y']")}}
												<div class="n67313_rebate_l">{{$txt['107782::57379_wypr']}}
												</div>
												<table class="clients_rebates">
													{{foreach from=$xml->getList("page/rebate_code/product/item") item=loop1116}}
														{{if ( $loop1116@iteration -1) % 2  == (string) 0}}
															{{literal}}
															<tr>{{/literal}}
															{{/if}}
															<td style="width:50%;" class="clients_rebates">
																<div class="clients_rebates_wrapper">
																	{{if !($setNameOrder_client_rebates)}}
																		<a class="product_name" href="{{$loop1116->getItem("@link")}}" title="{{$loop1116->getItem("@name")}}">{{$loop1116->getItem("@name")}}</a>
																	{{/if}}
																	<a class="product_icon" href="{{$loop1116->getItemEscape("@link")}}" title="{{$loop1116->getItem("@name")}}">
																		<img {{if $setIconLarge_client_rebates}} src="{{$loop1116->getItemEscape("icon_src")}}" {{else}} src="{{$loop1116->getItemEscape("iconsmall")}}" {{/if}} alt="{{$loop1116->getItem("@name")}}"></img></a>
																	{{if $setNameOrder_client_rebates}}
																		<a class="product_name" href="{{$loop1116->getItem("@link")}}" title="{{$loop1116->getItem("@name")}}">{{$loop1116->getItem("@name")}}</a>
																	{{/if}}
																	<span class="n67313_other_value">
																		{{if  $loop1116->getItem("contains(@rebate_value, '.00')")}}
																			{{$loop1116->getItemEscape("format-number(@rebate_value, '#')")}}
																		{{else}}
																			{{$loop1116->getItem("@rebate_value")}}
																		{{/if}}
																		{{literal}}{{/literal}}
																		{{if  $loop1116->getItem("@rebate_type") == (string)'p' or  $loop1116->getItem("@rebate_type") == (string)'percentage'}}
																			{{$txt['107782::57379_proc']}}
																		{{elseif  $loop1116->getItem("@rebate_type") == (string)'fixed_amount' or  $loop1116->getItem("@rebate_type") == (string)'quota'}}
																			{{$loop1116->getItemEscape("/shop/currency/@name")}}
																		{{/if}}
																		</span>
																	<div class="n67313_other_info">
																		{{if  $loop1116->getItem("@calculate_from_price") == (string)'client_price' and  $loop1116->getItem("@price_type") == (string)'net'}}
																			{{$txt['107782::67313_calculate_from_price_1']}}
																		{{elseif  $loop1116->getItem("@calculate_from_price") == (string)'suggested_retail_price'}}
																			{{$txt['107782::67313_calculate_from_price_2']}}
																		{{elseif  $loop1116->getItem("@calculate_from_price") == (string)'crossed_out_price'}}
																			{{$txt['107782::67313_calculate_from_price_3']}}
																		{{/if}}
																		{{if  $loop1116->getItem("@price_type") == (string)'net'}}
																			{{$txt['107782::67313_net']}}
																		{{/if}}
																	</div>
																</div>
															</td>
															{{if ( $loop1116@iteration -1) % 2  == (string) (2 - 1) or  $loop1116@iteration  == (string) $loop1116@total }}
																{{literal}}
															</tr>{{/literal}}
														{{/if}}
													{{/foreach}}
												</table>
											{{/if}}
											{{if  $xml->getItem("page/rebate_code/producer[@active='y']")}}
												<div class="n67313_rebate_l">{{$txt['107782::57379_prod']}}
												</div>
												<table class="clients_rebates">
													{{foreach from=$xml->getList("page/rebate_code/producer/item") item=loop1182}}
														{{if ( $loop1182@iteration -1) % 2  == (string) 0}}
															{{literal}}
															<tr>{{/literal}}
															{{/if}}
															<td style="width:50%;" class="clients_rebates">
																<div class="clients_rebates_wrapper">
																	{{if !($setNameOrder_client_rebates)}}
																		<a class="product_name" href="{{$loop1182->getItem("@link")}}" title="{{$loop1182->getItem("@name")}}">{{$loop1182->getItem("@name")}}</a>
																	{{/if}}
																	<a class="product_icon" href="{{$loop1182->getItemEscape("@link")}}" title="{{$loop1182->getItem("@name")}}">
																		<img {{if $setIconLarge_client_rebates}} src="{{$loop1182->getItemEscape("icon_src")}}" {{else}} src="{{$loop1182->getItemEscape("iconsmall")}}" {{/if}} alt="{{$loop1182->getItem("@name")}}"></img></a>
																	{{if $setNameOrder_client_rebates}}
																		<a class="product_name" href="{{$loop1182->getItem("@link")}}" title="{{$loop1182->getItem("@name")}}">{{$loop1182->getItem("@name")}}</a>
																	{{/if}}
																	<span class="n67313_other_value">
																		{{if  $loop1182->getItem("contains(@rebate_value, '.00')")}}
																			{{$loop1182->getItemEscape("format-number(@rebate_value, '#')")}}
																		{{else}}
																			{{$loop1182->getItem("@rebate_value")}}
																		{{/if}}
																		{{literal}}{{/literal}}
																		{{if  $loop1182->getItem("@rebate_type") == (string)'p' or  $loop1182->getItem("@rebate_type") == (string)'percentage'}}
																			{{$txt['107782::57379_proc']}}
																		{{elseif  $loop1182->getItem("@rebate_type") == (string)'fixed_amount' or  $loop1182->getItem("@rebate_type") == (string)'quota'}}
																			{{$loop1182->getItemEscape("/shop/currency/@name")}}
																		{{/if}}
																		</span>
																	<div class="n67313_other_info">
																		{{if  $loop1182->getItem("@calculate_from_price") == (string)'client_price' and  $loop1182->getItem("@price_type") == (string)'net'}}
																			{{$txt['107782::67313_calculate_from_price_1']}}
																		{{elseif  $loop1182->getItem("@calculate_from_price") == (string)'suggested_retail_price'}}
																			{{$txt['107782::67313_calculate_from_price_2']}}
																		{{elseif  $loop1182->getItem("@calculate_from_price") == (string)'crossed_out_price'}}
																			{{$txt['107782::67313_calculate_from_price_3']}}
																		{{/if}}
																		{{if  $loop1182->getItem("@price_type") == (string)'net'}}
																			{{$txt['107782::67313_net']}}
																		{{/if}}
																	</div>
																</div>
															</td>
															{{if ( $loop1182@iteration -1) % 2  == (string) (2 - 1) or  $loop1182@iteration  == (string) $loop1182@total }}
																{{literal}}
															</tr>{{/literal}}
														{{/if}}
													{{/foreach}}
												</table>
											{{/if}}
											{{if  $xml->getItem("page/rebate_code/series[@active='y']")}}
												<div class="n67313_rebate_l">{{$txt['107782::57379_serie']}}
												</div>
												<table class="clients_rebates">
													{{foreach from=$xml->getList("page/rebate_code/series/item") item=loop1247}}
														{{if ( $loop1247@iteration -1) % 2  == (string) 0}}
															{{literal}}
															<tr>{{/literal}}
															{{/if}}
															<td style="width:50%;" class="clients_rebates">
																<div class="clients_rebates_wrapper">
																	<h3>
																		<a class="product_name" href="{{$loop1247->getItem("@link")}}" title="{{$loop1247->getItem("@name")}}">{{$loop1247->getItem("@name")}}</a>
																	</h3>
																	<span class="n67313_other_value">
																		{{if  $loop1247->getItem("contains(@rebate_value, '.00')")}}
																			{{$loop1247->getItemEscape("format-number(@rebate_value, '#')")}}
																		{{else}}
																			{{$loop1247->getItem("@rebate_value")}}
																		{{/if}}
																		{{literal}}{{/literal}}
																		{{if  $loop1247->getItem("@rebate_type") == (string)'p' or  $loop1247->getItem("@rebate_type") == (string)'percentage'}}
																			{{$txt['107782::57379_proc']}}
																		{{elseif  $loop1247->getItem("@rebate_type") == (string)'fixed_amount' or  $loop1247->getItem("@rebate_type") == (string)'quota'}}
																			{{$loop1247->getItemEscape("/shop/currency/@name")}}
																		{{/if}}
																		</span>
																	<div class="n67313_other_info">
																		{{if  $loop1247->getItem("@calculate_from_price") == (string)'client_price' and  $loop1247->getItem("@price_type") == (string)'net'}}
																			{{$txt['107782::67313_calculate_from_price_1']}}
																		{{elseif  $loop1247->getItem("@calculate_from_price") == (string)'suggested_retail_price'}}
																			{{$txt['107782::67313_calculate_from_price_2']}}
																		{{elseif  $loop1247->getItem("@calculate_from_price") == (string)'crossed_out_price'}}
																			{{$txt['107782::67313_calculate_from_price_3']}}
																		{{/if}}
																		{{if  $loop1247->getItem("@price_type") == (string)'net'}}
																			{{$txt['107782::67313_net']}}
																		{{/if}}
																	</div>
																</div>
															</td>
															{{if ( $loop1247@iteration -1) % 2  == (string) (2 - 1) or  $loop1247@iteration  == (string) $loop1247@total }}
																{{literal}}
															</tr>{{/literal}}
														{{/if}}
													{{/foreach}}
												</table>
											{{/if}}
											{{if ( $xml->getItem("page/rebate_code/main_cat/@active")  == (string) 'y') or ( $xml->getItem("page/rebate_code/menu/@active")  == (string) 'y')}}
												<div class="n67313_rebate_l">{{$txt['107782::57379_cat']}}
												</div>
												<table class="clients_rebates">
													{{foreach from=$xml->getList("page/rebate_code/main_cat/item") item=loop1292}}
														{{if ( $loop1292@iteration -1) % 2  == (string) 0}}
															{{literal}}
															<tr>{{/literal}}
															{{/if}}
															<td style="width:50%;" class="clients_rebates">
																<div class="clients_rebates_wrapper">
																	<h3>
																		<a class="product_name" href="{{$loop1292->getItem("@link")}}" title="{{$loop1292->getItem("@name")}}">{{$loop1292->getItem("@name")}}</a>
																	</h3>
																	<span class="n67313_other_value">
																		{{if  $loop1292->getItem("contains(@rebate_value, '.00')")}}
																			{{$loop1292->getItemEscape("format-number(@rebate_value, '#')")}}
																		{{else}}
																			{{$loop1292->getItem("@rebate_value")}}
																		{{/if}}
																		{{literal}}{{/literal}}
																		{{if  $loop1292->getItem("@rebate_type") == (string)'p' or  $loop1292->getItem("@rebate_type") == (string)'percentage'}}
																			{{$txt['107782::57379_proc']}}
																		{{elseif  $loop1292->getItem("@rebate_type") == (string)'fixed_amount' or  $loop1292->getItem("@rebate_type") == (string)'quota'}}
																			{{$loop1292->getItemEscape("/shop/currency/@name")}}
																		{{/if}}
																		</span>
																	<div class="n67313_other_info">
																		{{if  $loop1292->getItem("@calculate_from_price") == (string)'client_price' and  $loop1292->getItem("@price_type") == (string)'net'}}
																			{{$txt['107782::67313_calculate_from_price_1']}}
																		{{elseif  $loop1292->getItem("@calculate_from_price") == (string)'suggested_retail_price'}}
																			{{$txt['107782::67313_calculate_from_price_2']}}
																		{{elseif  $loop1292->getItem("@calculate_from_price") == (string)'crossed_out_price'}}
																			{{$txt['107782::67313_calculate_from_price_3']}}
																		{{/if}}
																		{{if  $loop1292->getItem("@price_type") == (string)'net'}}
																			{{$txt['107782::67313_net']}}
																		{{/if}}
																	</div>
																</div>
															</td>
															{{if ( $loop1292@iteration -1) % 2  == (string) (2 - 1) or  $loop1292@iteration  == (string) $loop1292@total }}
																{{literal}}
															</tr>{{/literal}}
														{{/if}}
													{{/foreach}}
												</table>
												<table class="clients_rebates">
													{{foreach from=$xml->getList("page/rebate_code/menu/item") item=loop1330}}
														{{if ( $loop1330@iteration -1) % 2  == (string) 0}}
															{{literal}}
															<tr>{{/literal}}
															{{/if}}
															<td style="width:50%;" class="clients_rebates">
																<div class="clients_rebates_wrapper">
																	<h3>
																		<a class="product_name" href="{{$loop1330->getItem("@link")}}" title="{{$loop1330->getItem("@name")}}">{{$loop1330->getItem("@name")}}</a>
																	</h3>
																	<span class="n67313_other_value">
																		{{if  $loop1330->getItem("contains(@rebate_value, '.00')")}}
																			{{$loop1330->getItemEscape("format-number(@rebate_value, '#')")}}
																		{{else}}
																			{{$loop1330->getItem("@rebate_value")}}
																		{{/if}}
																		{{literal}}{{/literal}}
																		{{if  $loop1330->getItem("@rebate_type") == (string)'p' or  $loop1330->getItem("@rebate_type") == (string)'percentage'}}
																			{{$txt['107782::57379_proc']}}
																		{{elseif  $loop1330->getItem("@rebate_type") == (string)'fixed_amount' or  $loop1330->getItem("@rebate_type") == (string)'quota'}}
																			{{$loop1330->getItemEscape("/shop/currency/@name")}}
																		{{/if}}
																		</span>
																	<div class="n67313_other_info">
																		{{if  $loop1330->getItem("@calculate_from_price") == (string)'client_price' and  $loop1330->getItem("@price_type") == (string)'net'}}
																			{{$txt['107782::67313_calculate_from_price_1']}}
																		{{elseif  $loop1330->getItem("@calculate_from_price") == (string)'suggested_retail_price'}}
																			{{$txt['107782::67313_calculate_from_price_2']}}
																		{{elseif  $loop1330->getItem("@calculate_from_price") == (string)'crossed_out_price'}}
																			{{$txt['107782::67313_calculate_from_price_3']}}
																		{{/if}}
																		{{if  $loop1330->getItem("@price_type") == (string)'net'}}
																			{{$txt['107782::67313_net']}}
																		{{/if}}
																	</div>
																</div>
															</td>
															{{if ( $loop1330@iteration -1) % 2  == (string) (2 - 1) or  $loop1330@iteration  == (string) $loop1330@total }}
																{{literal}}
															</tr>{{/literal}}
														{{/if}}
													{{/foreach}}
												</table>
											{{/if}}
											{{if  $xml->getItem("page/rebate_code/products_rebate[@active='y']")}}
												<div class="n67313_rebate_l">{{$txt['107782::57379_otherp']}}
												</div>
												<div class="n67313_rebate_info">
													<span class="n67313_other_value">
														{{if  $xml->getItem("contains(page/rebate_code/products_rebate/@rebate_value, '.00')")}}
															{{$xml->getItemEscape("format-number(page/rebate_code/products_rebate/@rebate_value, '#')")}}
														{{else}}
															{{$xml->getItem("page/rebate_code/products_rebate/@rebate_value")}}
														{{/if}}
														{{literal}}{{/literal}}
														{{if  $xml->getItem("page/rebate_code/products_rebate/@rebate_type") == (string)'p' or  $xml->getItem("page/rebate_code/products_rebate/@rebate_type") == (string)'percentage'}}
															{{$txt['107782::57379_proc']}}
														{{elseif  $xml->getItem("page/rebate_code/products_rebate/@rebate_type") == (string)'fixed_amount' or  $xml->getItem("page/rebate_code/products_rebate/@rebate_type") == (string)'quota'}}
															{{$xml->getItemEscape("/shop/currency/@name")}}
														{{/if}}
														</span>
													<div class="n67313_other_info">
														{{if  $xml->getItem("page/rebate_code/products_rebate/@calculate_from_price") == (string)'client_price' and  $xml->getItem("page/rebate_code/products_rebate/@price_type") == (string)'net'}}
															{{$txt['107782::67313_calculate_from_price_1']}}
														{{elseif  $xml->getItem("page/rebate_code/products_rebate/@calculate_from_price") == (string)'suggested_retail_price'}}
															{{$txt['107782::67313_calculate_from_price_2']}}
														{{elseif  $xml->getItem("page/rebate_code/products_rebate/@calculate_from_price") == (string)'crossed_out_price'}}
															{{$txt['107782::67313_calculate_from_price_3']}}
														{{/if}}
														{{if  $xml->getItem("page/rebate_code/products_rebate/@price_type") == (string)'net'}}
															{{$txt['107782::67313_net']}}
														{{/if}}
													</div>
												</div>
											{{/if}}
											{{if  $xml->getItem("page/rebate_code/other_products_rebate[@active='y']")}}
												<div class="n67313_rebate_l">{{$txt['107782::57379_other_products_rebate']}}
												</div>
												<div class="n67313_rebate_info">
													<span class="n67313_other_value">
														{{if  $xml->getItem("contains(page/rebate_code/other_products_rebate/@rebate_value, '.00')")}}
															{{$xml->getItemEscape("format-number(page/rebate_code/other_products_rebate/@rebate_value, '#')")}}
														{{else}}
															{{$xml->getItem("page/rebate_code/other_products_rebate/@rebate_value")}}
														{{/if}}
														{{literal}}{{/literal}}
														{{if  $xml->getItem("page/rebate_code/other_products_rebate/@rebate_type") == (string)'p' or  $xml->getItem("page/rebate_code/other_products_rebate/@rebate_type") == (string)'percentage'}}
															{{$txt['107782::57379_proc']}}
														{{elseif  $xml->getItem("page/rebate_code/other_products_rebate/@rebate_type") == (string)'fixed_amount' or  $xml->getItem("page/rebate_code/other_products_rebate/@rebate_type") == (string)'quota'}}
															{{$signbetweenpricecurrency}}{{$xml->getItemEscape("/shop/currency/@name")}}
														{{/if}}
														</span>
													<div class="n67313_other_info">
														{{if  $xml->getItem("page/rebate_code/other_products_rebate/@calculate_from_price") == (string)'client_price' and  $xml->getItem("page/rebate_code/other_products_rebate/@price_type") == (string)'net'}}
															{{$txt['107782::67313_calculate_from_price_1']}}
														{{elseif  $xml->getItem("page/rebate_code/other_products_rebate/@calculate_from_price") == (string)'suggested_retail_price'}}
															{{$txt['107782::67313_calculate_from_price_2']}}
														{{elseif  $xml->getItem("page/rebate_code/other_products_rebate/@calculate_from_price") == (string)'crossed_out_price'}}
															{{$txt['107782::67313_calculate_from_price_3']}}
														{{/if}}
														{{if  $xml->getItem("page/rebate_code/other_products_rebate/@price_type") == (string)'net'}}
															{{$txt['107782::67313_net']}}
														{{/if}}
													</div>
												</div>
											{{/if}}
											{{if  $xml->getItem("page/rebate_code/shipping_cost_rebate[@active='y']")}}
												<div class="n67313_rebate_l">{{$txt['107782::57379_shipping_cost_rebate']}}
												</div>
												<div class="n67313_rebate_info">
													<span class="n67313_other_value">
														{{if  $xml->getItem("contains(page/rebate_code/shipping_cost_rebate/@rebate_value, '.00')")}}
															{{$xml->getItemEscape("format-number(page/rebate_code/shipping_cost_rebate/@rebate_value, '#')")}}
														{{else}}
															{{$xml->getItem("page/rebate_code/shipping_cost_rebate/@rebate_value")}}
														{{/if}}
														{{literal}}{{/literal}}
														{{if  $xml->getItem("page/rebate_code/shipping_cost_rebate/@rebate_type") == (string)'p' or  $xml->getItem("page/rebate_code/shipping_cost_rebate/@rebate_type") == (string)'percentage'}}
															{{$txt['107782::57379_proc']}}
														{{elseif  $xml->getItem("page/rebate_code/shipping_cost_rebate/@rebate_type") == (string)'fixed_amount' or  $xml->getItem("page/rebate_code/shipping_cost_rebate/@rebate_type") == (string)'quota'}}
															{{$xml->getItemEscape("/shop/currency/@name")}}
														{{/if}}
														</span>
													{{if  $xml->getItem("page/rebate_code/shipping_cost_rebate/@price_type") == (string)'net'}}
														<div class="n67313_other_info">{{$txt['107782::67313_shipping_cost_rebate_net']}}
														</div>
													{{/if}}
												</div>
											{{/if}}
											{{if  $xml->getItem("page/rebate_code/gratis[@active='y']")}}
												<div class="n67313_gratis_out">
													<div class="n67313_rebate_l_w">{{$txt['107782::57379_gratis']}}
													</div>
													<table class="clients_rebates">
														{{foreach from=$xml->getList("page/rebate_code/gratis/item") item=loop1459}}
															{{if ( $loop1459@iteration -1) % 2  == (string) 0}}
																{{literal}}
																<tr>{{/literal}}
																{{/if}}
																<td style="width:50%;" class="clients_rebates">
																	<div class="clients_rebates_wrapper">
																		{{if !($setNameOrder_client_rebates)}}
																			<a class="product_name" href="{{$loop1459->getItem("@link")}}" title="{{$loop1459->getItem("@name")}}">{{$loop1459->getItem("@name")}}</a>
																		{{/if}}
																		<a class="product_icon" href="{{$loop1459->getItemEscape("@link")}}" title="{{$loop1459->getItem("@name")}}">
																			<img {{if $setIconLarge_client_rebates}} src="{{$loop1459->getItemEscape("icon_src")}}" {{else}} src="{{$loop1459->getItemEscape("iconsmall")}}" {{/if}} alt="{{$loop1459->getItem("@name")}}"></img></a>
																		{{if $setNameOrder_client_rebates}}
																			<a class="product_name" href="{{$loop1459->getItem("@link")}}" title="{{$loop1459->getItem("@name")}}">{{$loop1459->getItem("@name")}}</a>
																		{{/if}}
																		<span class="n67313_other_value">{{$txt['107782::57379_gratis2']}}</span>
																	</div>
																</td>
																{{if ( $loop1459@iteration -1) % 2  == (string) (2 - 1) or  $loop1459@iteration  == (string) $loop1459@total }}
																	{{literal}}
																</tr>{{/literal}}
															{{/if}}
														{{/foreach}}
													</table>
												</div>
											{{/if}}
										</div>
									{{/if}}
								</div>
							{{/if}}
						</div>
					</div>
				{{/if}}
			</div>
		</div>
		{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'footer')}}
			<footer class="{{$txt['107419::70925_footer_class']}}">
				{{include file="component_menu_tree4_106616.tpl"}}
				{{include file="component_menu_banners2_77615.tpl"}}
				{{include file="component_menu_contact_106454.tpl"}}
				{{include file="component_menu_footer_106456.tpl"}}
				{{include file="component_menu_tooltip_108066.tpl"}}
				{{include file="component_menu_instalment_108070.tpl"}}
				{{include file="component_menu_structured_data_108021.tpl"}}
				{{include file="component_menu_notice_107640.tpl"}}
				{{include file="component_menu_dynamically_added_content_106830.tpl"}}
			</footer>
		{{/if}}
		{{if  $xml->getItem("/shop/page[@type='main']")}}
			{{if  $xml->getItem("/shop/@preview")  gt (string) 0}}
				<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/{{$xml->getItemEscape("/shop/@preview")}}/shop.js">				</script>

			{{else}}
				<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/shop.js?r=1573641886">				</script>

			{{/if}}
		{{/if}}
		<script>
                  app_shop.runApp();
            		</script>

		{{if  $xml->getItem("/shop/page/seolink_with_language_directory")}}
		{{/if}}
		{{if ( $xml->getItem("action/set_render/item/@name")  == (string) 'popup') or !( $xml->getItem("action/set_render/item"))}}
			<!--IAI_TEMPLATE_additional_body_scripts-->{{literal}}
		</body>
	</html>{{/literal}}
{{/if}}
