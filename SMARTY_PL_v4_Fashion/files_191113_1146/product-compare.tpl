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
						<!--Porównywarka produktów - cms (product_compare_cms, 75774.1)-->
						<h1 class="big_label product_compare_label">{{$txt['75774::75199_1b']}}
						</h1>
						{{if  $xml->getItem("page/projector/text/body")}}
							<div id="component_projector_cms" class="cm">{{$xml->getItem("page/projector/text/body")}}
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/compare/@active")}}
						{{/if}}
						<!--Porównywarka produktów - lista w ramce (product_compare_list, 108094.1)-->
						<div id="product_compare_list_wrapper" class="hidePrev">
							<div {{assign "classAttributeTmp3" ""}}  id="product_compare_list"{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}compare{{/capture}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}compare compare_item_{{$xml->getItemEscape("count(page/products/product)")}}{{/capture}}  class="{{$classAttributeTmp3}}">
								<table>
									<tbody>
										<tr class="cmp_product">
											<th class="cmp_product configure">
												<div class="item_width">
													{{if  $xml->getItem("lastsearch")}}
														<a href="{{$xml->getItemEscape("lastsearch")}}">{{$txt['108094::55103_00_2b']}}</a>
													{{/if}}
													<a href="#differences" data-toggleTxt="{{$txt['108094::55102_00_uk']}}">{{$txt['108094::55103_00_1b']}}</a>
												</div>
											</th>
											{{foreach from=$xml->getList("page/products/product") item=loop289}}
												<td class="cmp_product">
													<div class="configure_item item_width">
														<a href="#hiddeProduct={{$loop289->getItemEscape("@id")}}" data-position="{{$loop289@iteration}}" data-toggleTxt="{{$txt['108094::55102_00_p']}}">{{$txt['108094::55102_00_u']}}</a>
														<a class="hideCol" data-del_position="{{$loop289@iteration}}" href="settings.php?comparers=remove&#160;amp;product={{$loop289->getItemEscape("@id")}}">{{$txt['108094::55102_00_1']}}</a>
													</div>
													<div class="product_wrapper item_width">
														<a class="product-icon align_row" data-align="img#css" href="{{$loop289->getItemEscape("link")}}">
															<img class="b-lazy" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1573641886" data-src-small="{{$loop289->getItem("icon_small")}}" data-src="{{$loop289->getItem("icon")}}" alt="{{$loop289->getItem("name")}}"></img>
															<strong class="label_icons hideCol">
																{{if ( $loop289->getItem("additional/promotion"))}}
																	<span class="label promo">{{$txt['108094::53885_307pro']}}</span>
																{{/if}}
																{{if ( $loop289->getItem("additional/new"))}}
																	<span class="label newproducts">{{$txt['108094::53885_307n']}}</span>
																{{/if}}
																{{if ( $loop289->getItem("additional/promotion")) and ( $loop289->getItem("additional/new"))}}
																{{elseif ( $loop289->getItem("additional/promotion")) or ( $loop289->getItem("additional/new"))}}
																	{{if ( $loop289->getItem("additional/bestseller"))}}
																		<span class="label bestseller">{{$txt['108094::53885_307b']}}</span>
																	{{elseif ( $loop289->getItem("additional/discount"))}}
																		<span class="label discount">{{$txt['108094::53885_307pr']}}</span>
																	{{elseif ( $loop289->getItem("additional/distinguished"))}}
																		<span class="label distinguished">{{$txt['108094::53885_307p']}}</span>
																	{{/if}}
																{{else}}
																	{{if ( $loop289->getItem("additional/bestseller"))}}
																		<span class="label bestseller">{{$txt['108094::53885_307b']}}</span>
																	{{/if}}
																	{{if ( $loop289->getItem("additional/discount"))}}
																		<span class="label discount">{{$txt['108094::53885_307pr']}}</span>
																	{{/if}}
																	{{if ( $loop289->getItem("additional/distinguished")) and !(( $loop289->getItem("additional/bestseller")) and ( $loop289->getItem("additional/discount")))}}
																		<span class="label distinguished">{{$txt['108094::53885_307p']}}</span>
																	{{/if}}
																{{/if}}
																</strong></a>
														<a class="product-name" href="{{$loop289->getItemEscape("link")}}" title="{{$loop289->getItem("name")}}">{{$loop289->getItem("name")}}</a>
														{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
															{{$loop289->getItemEscape("price/price/@size_min_formatted")}}
														{{/capture}}
														{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
															{{$loop289->getItemEscape("price/price/@size_max_formatted")}}
														{{/capture}}
														{{capture name="var_points" assign="var_points"}}
															{{$loop289->getItemEscape("price/price/@points")}}
														{{/capture}}
														{{capture name="var_value" assign="var_value"}}
															{{$loop289->getItemEscape("price/price/@value")}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{$loop289->getItemEscape("price/price/@price_formatted")}}
														{{/capture}}
														{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
															{{$loop289->getItemEscape("price/price/@maxprice_formatted")}}
														{{/capture}}
														<div class="product_prices hideCol">
															{{if $var_size_min_formatted  neq (string) $var_size_max_formatted}}
																<span class="price">{{$var_size_min_formatted}}{{literal}}-{{/literal}}{{$var_size_max_formatted}}</span>
																{{if $var_points}}
																	<span class="point-price">{{$var_points}}
																		<span class="currency">{{$txt['108094::58826_012']}}</span></span>
																{{/if}}
															{{elseif ($var_value  == (string) 0) and $var_points  == (string) ''}}
																<a class="fon_price" data-mobile-class="btn-small" title="{{$txt['108094::58826_009']}}" href="{{$loop289->getItemEscape("/shop/contact/link/@url")}}">{{$txt['108094::58826_010']}}</a>
															{{else}}
																<span class="price">{{$txt['108094::58826_003']}}{{$var_price_formatted}}</span>
																{{if $var_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['108094::58826_006']}}{{$var_maxprice_formatted}}</del>
																{{/if}}
																{{if $var_points  neq (string) ''}}
																	<span class="point-price">{{$var_points}}
																		<span class="currency">{{$txt['108094::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop289->getItem("price/price/@unit_converted_price_formatted")}}
																<small class="unit_price">{{$loop289->getItemEscape("price/price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop289->getItemEscape("price/price/@unit_converted_format")}}</small>
															{{/if}}
														</div>
														{{if  $loop289->getItem("producer")  neq (string) '' or  $loop289->getItem("barcode")  neq (string) '' or  $loop289->getItem("@note")}}
															<div class="list_traits hideCol">
																<ul>
																	{{if  $loop289->getItem("producer")  neq (string) ''}}
																		<li class="producer">
																			<span>{{$txt['108094::55102_00_4']}}</span>
																			<div>{{$loop289->getItem("producer")}}
																			</div>
																		</li>
																	{{/if}}
																	{{if  $loop289->getItem("barcode")  neq (string) ''}}
																		<li class="barcode">
																			<span>{{$txt['108094::55102_00_5']}}</span>
																			<div>{{$loop289->getItem("barcode")}}
																			</div>
																		</li>
																	{{/if}}
																	{{if  $loop289->getItem("@note")}}
																		<li class="note">
																			<span>{{$txt['108094::55102_00_5note']}}</span>
																			<div>
																				<i {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}icon-star{{/capture}}{{if $loop289->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}"></i>
																				<i {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}icon-star{{/capture}}{{if $loop289->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}"></i>
																				<i {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}icon-star{{/capture}}{{if $loop289->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}"></i>
																				<i {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}icon-star{{/capture}}{{if $loop289->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp7}}"></i>
																				<i {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}icon-star{{/capture}}{{if $loop289->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp8}}"></i>
																			</div>
																		</li>
																	{{/if}}
																</ul>
															</div>
														{{/if}}
													</div>
												</td>
											{{/foreach}}
										</tr>
										{{if  $xml->getItem("page/products/product/size")}}
											{{if !( $xml->getItem("page/products/product/size/size/@name")  == (string) 'uniw')}}
												<tr>
													<th>
														<div class="item_width">{{$txt['108094::55102_00_2']}}
														</div>
													</th>
													{{foreach from=$xml->getList("page/products/product") item=loop461}}
														<td>
															<div class="hideCol item_width">
																{{foreach from=$loop461->getList("size/size") item=loop465}}
																	{{if !( $loop465->getItem("@name")  == (string) 'uniw')}}
																		{{$loop465->getItemEscape("text()")}}
																		{{if !(count( $loop465->getList("../size"))  == (string)  $loop465@iteration )}}
																			,
																		{{/if}}
																	{{/if}}
																{{/foreach}}
															</div>
														</td>
													{{/foreach}}
												</tr>
											{{/if}}
										{{/if}}
										{{if  $xml->getItem("page/products/versions")}}
											{{foreach from=$xml->getList("page/products/versions/version") item=loop481}}
												<tr>
													<th>
														<div class="item_width">{{$txt['108094::TXT_108094_version_for']}}{{$loop481->getItemEscape("@name")}}
														</div>
													</th>
													{{foreach from=$loop481->getList("product") item=loop485}}
														<td>
															<div class="hideCol item_width">
																{{foreach from=$loop485->getList("version") item=loop489}}
																	{{if !( $loop489->getItem("@icon"))}}
																		<img src="{{$loop489->getItemEscape("@icon")}}"></img>
																	{{else}}
																		{{$loop489->getItemEscape("@name")}}
																		{{if !(count( $loop489->getList("../version"))  == (string)  $loop489@iteration )}}
																			,
																		{{/if}}
																	{{/if}}
																{{/foreach}}
															</div>
														</td>
													{{/foreach}}
												</tr>
											{{/foreach}}
										{{/if}}
										{{if  $xml->getItem("page/products/product/description")}}
											<tr>
												<th>
													<div class="item_width">{{$txt['108094::55102_00_3']}}
													</div>
												</th>
												{{foreach from=$xml->getList("page/products/product") item=loop510}}
													<td>
														<div class="hideCol item_width">{{$loop510->getItem("description")}}
														</div>
													</td>
												{{/foreach}}
											</tr>
										{{/if}}
										{{if  $xml->getItem("page/products/traits")}}
											{{foreach from=$xml->getList("page/products/traits/traits_group") item=loop523}}
												<tr>
													<th>
														<div class="item_width">{{$loop523->getItem("@name")}}
														</div>
													</th>
													{{foreach from=$loop523->getList("product") item=loop529}}
														<td>
															<div class="hideCol item_width">
																{{foreach from=$loop529->getList("trait") item=loop533}}
																	{{$loop533->getItem("text()")}}
																	{{if !(count( $loop533->getList("../trait"))  == (string)  $loop533@iteration )}}
																		,
																	{{/if}}
																{{/foreach}}
															</div>
														</td>
													{{/foreach}}
												</tr>
											{{/foreach}}
										{{/if}}
										{{foreach from=$xml->getList("/shop/page/products/dictionary/element_group") item=loop547}}
											<tr>
												<th>
													<div class="item_width">{{$loop547->getItem("@name")}}
													</div>
												</th>
												{{foreach from=$loop547->getList("product") item=loop551}}
													<td>
														<div class="hideCol item_width">
															{{foreach from=$loop551->getList("item") item=loop554}}
																{{if  $loop554@iteration  neq (string)1}}
																	,
																{{/if}}
																{{$loop554->getItem("text()")}}
															{{/foreach}}
														</div>
													</td>
												{{/foreach}}
											</tr>
										{{/foreach}}
									</tbody>
								</table>
							</div>
							<div class="navigation">
								<a class="prev" href="#prev">{{$txt['108094::55102_nav_2']}}</a>
								<a class="next" href="#next">{{$txt['108094::55102_nav_1']}}</a>
							</div>
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
