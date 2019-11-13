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
						<!--Zwroty lista  produktów CMS (returns_products_cms, 69368.1)-->
						{{if  $xml->getItem("page/text/body")}}
							<div class="returns_cms">
								<div class="returns_cms_sub">{{$xml->getItem("page/text/body")}}
								</div>
							</div>
						{{/if}}
						<!--Zwroty lista  produktów (returns_products_list, 107781.1)-->
						{{if  $xml->getItem("page/@type")  == (string) 'return_products' and  $xml->getItem("page/@display")  == (string) 'add'}}
							<div class="step2">
								<div class="progress_bar_wrapper pb_step2">
									<div class="_progress_bar">
									</div>
									<div class="_step _step1">
										<span>
											1</span>
										<p>
											<i></i>{{$txt['107781::step1_txt']}}
										</p>
									</div>
									<div class="_step _step2">
										<span>2</span>
										<p>
											<i></i>{{$txt['107781::step2_txt']}}
										</p>
									</div>
									<div class="_step _step3">
										<span>3</span>
										<p>
											<i></i>{{$txt['107781::step3_txt']}}
										</p>
									</div>
									<div class="_step _step4">
										<span>4</span>
										<p>
											<i></i>{{$txt['107781::step4_txt']}}
										</p>
									</div>
									<div class="_step _step5">
										<span>5</span>
										<p>
											<i></i>{{$txt['107781::step5_txt']}}
										</p>
									</div>
									<div class="_step _step6">
										<span>6</span>
										<p>
											<i></i>{{$txt['107781::step6_txt']}}
										</p>
									</div>
								</div>
								<h1 class="big_label return_label">{{$txt['107781::51900_006111']}}
								</h1>
								{{capture name="return_with_special_offer" assign="return_with_special_offer"}}
									{{$txt['107781::57649_return_with_special_offer']}}
								{{/capture}}
								{{capture name="required_from_special_offer" assign="required_from_special_offer"}}
									{{$txt['107781::57649_required_from_special_offer']}}
								{{/capture}}
								{{if $return_with_special_offer  neq (string) '' and  $xml->getItem("/shop/page/products/@return_with_special_offer")  == (string) 'true'}}
									<div class="menu_messages_message menu_messages_return_with_specia">
										<div>{{$return_with_special_offer}}
										</div>
									</div>
								{{/if}}
								{{if  $xml->getItem("page/products")}}
									{{capture name="setIconLarge" assign="setIconLarge"}}
										{{$txt['107781::57649_setIconLarge']}}
									{{/capture}}
									{{capture name="wholesalerPrice" assign="wholesalerPrice"}}
										{{$txt['107781::57649_wholesalerPrice']}}
									{{/capture}}
									{{capture name="hideLimit" assign="hideLimit"}}
										{{$txt['107781::57649_hideLimit']}}
									{{/capture}}
									{{capture name="allowReturnInfo" assign="allowReturnInfo"}}
										{{$txt['107781::57649_allowReturn']}}
									{{/capture}}
									{{capture name="allowReturnInfoPoint" assign="allowReturnInfoPoint"}}
										{{$txt['107781::57649_allowReturnInfoPoint']}}
									{{/capture}}
									{{capture name="allowReturnInfoGratis" assign="allowReturnInfoGratis"}}
										{{$txt['107781::57649_allowReturnInfoGratis']}}
									{{/capture}}
									<form class="returns_productslist" action="/returns-method.php?type=multiproduct" method="post" enctype="multipart/form-data">
										<div id="basketedit_productslist" class="basketedit_productslist return_productslist">
											<table>
												<tr class="basketedit_productslist_label">
													<th colspan="2">{{$txt['107781::50001_03']}}
													</th>
													{{if  $xml->getItem("/shop/page/products/product/@required_from_special_offer")  == (string) 'true' and $required_from_special_offer  neq (string) ''}}
														<th>{{$txt['107781::50001_equired_from_special_offer']}}
														</th>
													{{/if}}
													<th>{{$txt['107781::50001_05']}}
													</th>
													<th>{{$txt['107781::50001_06']}}
													</th>
													<th>{{$txt['107781::50001_08a']}}
													</th>
												</tr>
												{{foreach from=$xml->getList("page/products/product") item=loop379}}
													<tr class="productslist_item">
														<td class="productslist_product_photo">
															<a href="{{$loop379->getItemEscape("@link")}}">
																<img {{if $setIconLarge}} src="{{$loop379->getItemEscape("icon")}}" {{else}} src="{{$loop379->getItemEscape("iconsmall")}}" {{/if}} alt="{{$loop379->getItem("name/text()")}}"></img></a>
														</td>
														<td class="productslist_product_name">
															<h3>
																<a href="{{$loop379->getItemEscape("@link")}}">{{$loop379->getItem("name/text()")}}</a>
															</h3>
															{{if !( $loop379->getItem("@barcode")  == (string)'')}}
																<div class="productslist_product_barcode">
																	<span>{{$txt['107781::50001_99']}}</span>{{$loop379->getItemEscape("@barcode")}}
																</div>
															{{/if}}
															{{if !( $loop379->getItem("size/@type") == (string)'uniw')}}
																<div class="productslist_product_size">
																	<span>{{$txt['107781::50001_004']}}</span>{{$loop379->getItemEscape("size/@description")}}
																</div>
															{{/if}}
															{{if ( $loop379->getItem("version")) and (!( $loop379->getItem("version/@product_name") == (string)''))}}
																<div class="productslist_product_version">
																	<span>{{$loop379->getItemEscape("version/@name")}}:</span>{{$loop379->getItemEscape("version/@product_name")}}
																</div>
															{{/if}}
															{{if $allowReturnInfo and  $loop379->getItem("@allowReturn") == (string)'0'}}
																<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}productslist_product_info{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}productslist_product_info visible-phone{{/capture}}  class="{{$classAttributeTmp3}}">{{$allowReturnInfo}}
																</div>
															{{/if}}
															{{if  $loop379->getItem("/shop/page/products/product/@required_from_special_offer")  == (string) 'true' and $required_from_special_offer  neq (string) ''}}
																{{if  $loop379->getItem("@required_from_special_offer")  == (string) 'true'}}
																	<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}productslist_product_info{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}productslist_product_info visible-phone{{/capture}}  class="{{$classAttributeTmp3}}">{{$txt['107781::57649_required_from_special_offer']}}
																	</div>
																{{/if}}
															{{/if}}
														</td>
														{{if  $loop379->getItem("/shop/page/products/product/@required_from_special_offer")  == (string) 'true' and $required_from_special_offer  neq (string) ''}}
															<td {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}productslist_product_special_offer{{/capture}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}productslist_product_special_offer hidden-phone{{/capture}}  class="{{$classAttributeTmp5}}">
																{{if  $loop379->getItem("@required_from_special_offer")  == (string) 'true'}}
																	<div class="productslist_product_info">{{$txt['107781::57649_required_from_special_offer']}}
																	</div>
																{{/if}}
															</td>
														{{/if}}
														<td class="productslist_product_prices">
															{{if  $loop379->getItem("size/@ordered_points")}}
																<del>
																	{{if ( $loop379->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice)}}
																		{{$loop379->getItemEscape("price/@price_net_formatted")}}
																	{{else}}
																		{{$loop379->getItemEscape("price/@price_formatted")}}
																	{{/if}}
																	</del>
																<span>{{$loop379->getItemEscape("price/@points")}}{{$txt['107781::55925_pkt']}}</span>
															{{else}}
																{{if  $loop379->getItem("price/@beforerebate")}}
																	<del>{{$loop379->getItemEscape("price/@beforerebate_formatted")}}</del>
																{{/if}}
																<span>
																	{{if ( $loop379->getItem("/shop/basket/@wholesaler")  == (string) 'true') and !($wholesalerPrice)}}
																		{{$loop379->getItemEscape("price/@price_net_formatted")}}
																	{{else}}
																		{{$loop379->getItemEscape("price/@price_formatted")}}
																	{{/if}}
																	</span>
															{{/if}}
														</td>
														<td class="productslist_product_quantity">
															{{if $allowReturnInfoPoint and  $loop379->getItem("@allowReturn") == (string)'0' and  $loop379->getItem("@for_points") == (string)'true'}}
																colspan="2"
																<div class="productslist_product_info">{{$allowReturnInfoPoint}}
																</div>
															{{elseif $allowReturnInfoGratis and  $loop379->getItem("@allowReturn") == (string)'0' and  $loop379->getItem("@gratis") == (string)'t'}}
																colspan="2"
																<div class="productslist_product_info">{{$allowReturnInfoGratis}}
																</div>
															{{elseif $allowReturnInfo and  $loop379->getItem("@allowReturn") == (string)'0'}}
																colspan="2"
																<div class="productslist_product_info">{{$allowReturnInfo}}
																</div>
															{{else}}
																<div>
																	{{if  $loop379->getItem("change_group/@id")}}
																		class="productslist_product_quantityproductslist_product_quantity_change"
																		<input type="hidden" name="product[{{$loop379@iteration}}]" value="{{$loop379->getItemEscape("@id")}}"></input>
																		<input type="hidden" name="size[{{$loop379@iteration}}]" value="{{$loop379->getItemEscape("size/@type")}}"></input>
																		{{if  $loop379->getItem("additional/@hash")}}
																			<input type="hidden" name="additional[{{$loop379@iteration}}]" value="{{$loop379->getItemEscape("additional/@hash")}}"></input>
																		{{/if}}
																		{{if  $loop379->getItem("size/@ordered_points")}}
																			<input type="hidden" value="1" name="forpoints[{{$loop379@iteration}}]"></input>
																		{{/if}}
																		<input {{assign "valueAttributeTmp6" ""}}  type="hidden" name="set_quantity[{{$loop379@iteration}}]" {{if $loop379->getItem("size/@ordered_points")}}{{capture name="valueAttributeTmp6" assign="valueAttributeTmp6"}}{{$loop379->getItemEscape("size/@ordered_points")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp6" assign="valueAttributeTmp6"}}{{$loop379->getItemEscape("size/@ordered")}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp6}}"></input>
																		<strong>
																			{{if  $loop379->getItem("size/@ordered_points")}}
																				{{$loop379->getItemEscape("size/@ordered_points")}}
																			{{else}}
																				{{$loop379->getItemEscape("size/@ordered")}}
																			{{/if}}
																			<span>
																				{{if !( $loop379->getItem("size/@ordered")  gt (string) 1)}}
																					{{$loop379->getItemEscape("size/@unit_singular")}}
																				{{else}}
																					{{$loop379->getItemEscape("size/@unit")}}
																				{{/if}}
																				</span></strong>
																		{{if  $loop379->getItem("change_group/@changelink")}}
																			<a class="productslist_change_product" href="{{$loop379->getItemEscape("change_group/@changelink")}}">{{$txt['107781::50001_99wy']}}</a>
																		{{/if}}
																	{{else}}
																		<input type="hidden" name="size[{{$loop379@iteration}}]" value="{{$loop379->getItemEscape("size/@type")}}"></input>
																		{{if  $loop379->getItem("additional/@hash")}}
																			<input type="hidden" name="additional[{{$loop379@iteration}}]" value="{{$loop379->getItemEscape("additional/@hash")}}"></input>
																		{{/if}}
																		{{if  $loop379->getItem("size/@ordered_points")}}
																			<input type="hidden" value="1" name="forpoints[{{$loop379@iteration}}]"></input>
																		{{/if}}
																		<span class="productslist_quantity">
																			<a href="#delQuantity" class="delQuantity">{{$txt['107781::50001_081']}}</a>
																			<input type="text" name="set_quantity[{{$loop379@iteration}}]" value="{{$loop379->getItemEscape("@selected_quantity")}}"></input>
																			<input type="hidden" name="data_amount" value="{{$loop379->getItemEscape("@quantity")}}"></input>
																			<input type="hidden" name="data_unit_sellby" value="{{$loop379->getItemEscape("size/@unit_sellby")}}"></input>
																			<input type="hidden" name="data_unit" value="{{$loop379->getItemEscape("size/@unit")}}"></input>
																			<input type="hidden" name="data_unit_precision" value="{{$loop379->getItemEscape("size/@unit_precision")}}"></input>
																			<a href="#addQuantity" class="addQuantity">{{$txt['107781::50001_082']}}</a>
																			<i class="productslist_product_unit">
																				{{if !( $loop379->getItem("size/@ordered")  gt (string) 1)}}
																					{{$loop379->getItemEscape("size/@unit_singular")}}
																				{{else}}
																					{{$loop379->getItemEscape("size/@unit")}}
																				{{/if}}
																				</i></span>
																		{{if !( $loop379->getItem("size/@unit_sellby")  == (string) '1')}}
																			<div class="productslist_product_sellby_info">{{$txt['107781::50001_900bb_xxx']}}{{$loop379->getItemEscape("size/@unit_sellby")}}{{literal}}{{/literal}}
																				{{if !( $loop379->getItem("size/@ordered")  gt (string) 1)}}
																					{{$loop379->getItemEscape("size/@unit_singular")}}
																				{{else}}
																					{{$loop379->getItemEscape("size/@unit")}}
																				{{/if}}
																			</div>
																		{{/if}}
																	{{/if}}
																</div>
															{{/if}}
														</td>
														<td class="productslist_product_action" {{if $allowReturnInfo and $loop379->getItem("@allowReturn") == (string)'0'}} style="display:none;" {{/if}}>
															<input type="checkbox" name="product[{{$loop379@iteration}}]" value="{{$loop379->getItemEscape("@id")}}" {{if $loop379->getItem("@checked") == (string) 'true' or $loop379->getItem("@selected_quantity") gt (string) 0}} checked="checked"{{/if}}></input>
														</td>
													</tr>
													<tr class="productslist_product_action mobile">
														<td class="productslist_product_action mobile" colspan="8">
															<div>
																<a href="#addQuantity" class="addQuantity">{{$txt['107781::50001_082']}}</a>
																<a href="#delQuantity" class="delQuantity">{{$txt['107781::50001_081']}}</a>
															</div>
														</td>
													</tr>
												{{/foreach}}
												{{if !($allowReturnInfo) or ($allowReturnInfo and (count( $xml->getList("/shop/page/products/product")) - count( $xml->getList("/shop/page/products/product[@allowReturn='0']")))  gt (string) 0)}}
													<tr class="productslist_tools_bottom">
														<td colspan="5" {{if $xml->getItem("/shop/page/products/product/@required_from_special_offer") == (string) 'true' and $required_from_special_offer neq (string) ''}} colspan="6" {{/if}}>
															{{if !($allowReturnInfo) or ($allowReturnInfo and (count( $xml->getList("/shop/page/products/product")) - count( $xml->getList("/shop/page/products/product[@allowReturn='0']")))  gt (string) 1)}}
																<a href="#selectall" class="btn-small select_all">{{$txt['107781::50001_10']}}</a>
															{{/if}}
															<label class="return_product">
																<input type="checkbox" class="return_product" {{if $xml->getItem("/shop/page/remarks")}} checked="checked"{{/if}}></input>{{$txt['107781::50001_10as']}}
															</label>
														</td>
													</tr>
												{{/if}}
											</table>
											<textarea name="return_comment" class="return_comment"{{if $xml->getItem("/shop/page/remarks")}}{{$xml->getItem("/shop/page/remarks")}}{{else}} style="display:none"{{/if}}></textarea>
										</div>
										<div class="returns_summary_buttons table_display">
											<div class="btn_wrapper backlink">
												{{if  $xml->getItem("page/backlink/@url")}}
													<a class="btn" href="{{$xml->getItemEscape("page/backlink/@url")}}">{{$txt['107781::order2_button_back']}}</a>
												{{/if}}
											</div>
											{{if !($allowReturnInfo) or ($allowReturnInfo and (count( $xml->getList("/shop/page/products/product")) - count( $xml->getList("/shop/page/products/product[@allowReturn='0']")))  gt (string) 0)}}
												<div class="btn_wrapper">
													<button id="return_go_next" type="submit" class="btn-large btn_arrow">{{$txt['107781::50001_10a']}}
													</button>
												</div>
											{{/if}}
										</div>
									</form>
								{{/if}}
							</div>
						{{/if}}
						<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">
							NIEDASIE
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
