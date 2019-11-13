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
						<!--Banery na stronie głównej (main_banner1, 106482.1)-->
						{{if count( $xml->getList("commercial_banner/link"))  gt (string) 0}}
							{{capture name="txt_69867_01" assign="txt_69867_01"}}
								{{$txt['106482::69867_01']}}
							{{/capture}}
							<div id="main_banner1" class="mb-4">
								{{capture name="banner_class" assign="banner_class"}}
									{{$txt['106482::CLASS_106482_main_banner']}}
								{{/capture}}
								{{if  $xml->getItem("commercial_banner/link/image") or  $xml->getItem("commercial_banner/link/image_desktop") or  $xml->getItem("commercial_banner/link/image_tablet") or  $xml->getItem("commercial_banner/link/image_mobile")}}
									class="
									{{if $banner_class and !($banner_class  == (string) '')}}
										{{$banner_class}}
									{{else}}
										skeletonmb-4
									{{/if}}
									"
								{{/if}}
								{{if $txt_69867_01}}
									<h2>{{$txt_69867_01}}
									</h2>
								{{/if}}
								<div class="main_banner_wrapper">
									<ul class="main_slider">
										{{foreach from=$xml->getList("commercial_banner/link") item=loop260}}
											{{if !( $loop260->getItem("html"))}}
												<li>
													<a {{assign "targetAttributeTmp36" ""}}{{if $loop260->getItem("@target") == (string) '_blank'}}{{capture name="targetAttributeTmp36" assign="targetAttributeTmp36"}}_blank{{/capture}}{{else}}{{capture name="targetAttributeTmp36" assign="targetAttributeTmp36"}}_self{{/capture}}{{/if}}{{if $loop260->getItem("@href")}} href="{{$loop260->getItemEscape("@href")}}"{{/if}} title="{{$loop260->getItemEscape("text")}}"  target="{{$targetAttributeTmp36}}">
														{{if  $loop260->getItem("image") or  $loop260->getItem("image_desktop") or  $loop260->getItem("image_tablet") or  $loop260->getItem("image_mobile")}}
															<img {{assign "classAttributeTmp3" ""}}  src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1573641886" alt="{{$loop260->getItemEscape("text")}}" {{if $loop260->getItem("image_desktop") or $loop260->getItem("image_tablet") or $loop260->getItem("image_mobile")}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}rwd-src{{/capture}}{{/if}}{{if $loop260->getItem("image/@src")}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}loaded{{/capture}} src="{{$loop260->getItemEscape("image/@src")}}" {{/if}}{{if $loop260->getItem("image_desktop/@src")}} data-src_desktop="{{$loop260->getItemEscape("image_desktop/@src")}}" {{/if}}{{if $loop260->getItem("image_tablet/@src")}} data-src_tablet="{{$loop260->getItemEscape("image_tablet/@src")}}" {{/if}}{{if $loop260->getItem("image_mobile/@src")}} data-src_mobile="{{$loop260->getItemEscape("image_mobile/@src")}}" {{/if}}  class="{{$classAttributeTmp3}}"></img>
														{{else}}
															{{$loop260->getItem("text")}}
														{{/if}}
														</a>
												</li>
											{{/if}}
											{{if  $loop260->getItem("html")}}
												<li>{{$loop260->getItem("html")}}
												</li>
											{{/if}}
										{{/foreach}}
									</ul>
								</div>
							</div>
							<style>
								{{if  $xml->getItem("commercial_banner/link/image")}}
									#main_banner1.skeletonli{
									{{foreach from=$xml->getList("commercial_banner/link") item=loop304}}
										<!--IAI_TEMPLATE_sort_SELECT:image/@height_DATATYPE:_ORDER:-->
										{{if  $loop304@iteration   == (string) 1}}
											padding-top:calc({{$loop304->getItemEscape("image/@height")}}/{{$loop304->getItemEscape("image/@width")}}*100%);
										{{/if}}
									{{/foreach}}
									}
								{{/if}}
								{{if  $xml->getItem("commercial_banner/link/image_desktop")}}
									#main_banner1.skeletonli>a{
									{{foreach from=$xml->getList("commercial_banner/link") item=loop316}}
										<!--IAI_TEMPLATE_sort_SELECT:image_desktop/@height_DATATYPE:_ORDER:-->
										{{if  $loop316@iteration   == (string) 1}}
											padding-top:calc({{$loop316->getItemEscape("image_desktop/@height")}}/{{$loop316->getItemEscape("image_desktop/@width")}}*100%);
										{{/if}}
									{{/foreach}}
									}@mediaonlyscreenand(max-width:979px){#main_banner1.skeletonli>a{
									{{foreach from=$xml->getList("commercial_banner/link") item=loop326}}
										<!--IAI_TEMPLATE_sort_SELECT:image_tablet/@height_DATATYPE:_ORDER:-->
										{{if  $loop326@iteration   == (string) 1}}
											padding-top:calc({{$loop326->getItemEscape("image_tablet/@height")}}/{{$loop326->getItemEscape("image_desktop/@width")}}*100%);
										{{/if}}
									{{/foreach}}
									}}@mediaonlyscreenand(max-width:757px){#main_banner1.skeletonli>a{
									{{foreach from=$xml->getList("commercial_banner/link") item=loop336}}
										<!--IAI_TEMPLATE_sort_SELECT:image_mobile/@height_DATATYPE:_ORDER:-->
										{{if  $loop336@iteration   == (string) 1}}
											padding-top:calc({{$loop336->getItemEscape("image_mobile/@height")}}/{{$loop336->getItemEscape("image_mobile/@width")}}*100%);
										{{/if}}
									{{/foreach}}
									}}
								{{/if}}
							</style>
						{{/if}}
						<!--CMS na stronie głównej (main_cms, 106501.1)-->
						{{if  $xml->getItem("page/text[@id='13']")}}
							{{foreach from=$xml->getList("page/text[@id='13']") item=loop350}}
								<div class="cm mb-4" id="main_cms">{{$loop350->getItem("body")}}
								</div>
							{{/foreach}}
						{{/if}}
						<!--Buttony strefa 2 na stronie głównej (main_buttons2, 106484.1)-->
						{{if count( $xml->getList("commercial_button2/link"))}}
							<div id="menu_buttons2" class="row mx-0 mb-4">
								{{foreach from=$xml->getList("commercial_button2/link") item=loop361}}
									<div {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}menu_button_wrapper{{/capture}}{{if count( $loop361->getList("/shop/commercial_button2/link")) == (string) 1}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}menu_button_wrapper col-12{{/capture}}{{elseif count( $loop361->getList("/shop/commercial_button2/link")) == (string) 2}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}menu_button_wrapper col-6{{/capture}}{{elseif count( $loop361->getList("/shop/commercial_button2/link")) == (string) 3}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}menu_button_wrapper col-md-4 col-6{{/capture}}{{else}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}menu_button_wrapper col-md-3 col-6{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}">
										{{if !( $loop361->getItem("html"))}}
											{{if  $loop361->getItem("@href")}}
												<a {{assign "targetAttributeTmp37" ""}}{{capture name="targetAttributeTmp37" assign="targetAttributeTmp37"}}_self{{/capture}}{{if $loop361->getItem("@target")}}{{capture name="targetAttributeTmp37" assign="targetAttributeTmp37"}}{{$loop361->getItemEscape("@target")}}{{/capture}}{{/if}} href="{{$loop361->getItemEscape("@href")}}" {{if $loop361->getItem("text")}} title="{{$loop361->getItemEscape("text")}}"{{/if}}  target="{{$targetAttributeTmp37}}">
													{{if  $loop361->getItem("image") or  $loop361->getItem("image_desktop") or  $loop361->getItem("image_tablet") or  $loop361->getItem("image_mobile")}}
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1573641886" alt="{{$loop361->getItemEscape("text")}}" src="{{$loop361->getItemEscape("image/@src")}}" {{if $loop361->getItem("image_desktop") or $loop361->getItem("image_tablet") or $loop361->getItem("image_mobile")}} class="rwd-src" {{/if}}{{if $loop361->getItem("image/@src")}} src="{{$loop361->getItemEscape("image/@src")}}" {{/if}}{{if $loop361->getItem("image_desktop/@src")}} data-src_desktop="{{$loop361->getItemEscape("image_desktop/@src")}}" {{/if}}{{if $loop361->getItem("image_tablet/@src")}} data-src_tablet="{{$loop361->getItemEscape("image_tablet/@src")}}" {{/if}}{{if $loop361->getItem("image_mobile/@src")}} data-src_mobile="{{$loop361->getItemEscape("image_mobile/@src")}}" {{/if}}></img>
													{{else}}
														{{$loop361->getItem("text")}}
													{{/if}}
													</a>
											{{else}}
												{{if  $loop361->getItem("image") or  $loop361->getItem("image_desktop") or  $loop361->getItem("image_tablet") or  $loop361->getItem("image_mobile")}}
													<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1573641886" alt="{{$loop361->getItemEscape("text")}}" src="{{$loop361->getItemEscape("image/@src")}}" {{if $loop361->getItem("image_desktop") or $loop361->getItem("image_tablet") or $loop361->getItem("image_mobile")}} class="rwd-src" {{/if}}{{if $loop361->getItem("image/@src")}} src="{{$loop361->getItemEscape("image/@src")}}" {{/if}}{{if $loop361->getItem("image_desktop/@src")}} data-src_desktop="{{$loop361->getItemEscape("image_desktop/@src")}}" {{/if}}{{if $loop361->getItem("image_tablet/@src")}} data-src_tablet="{{$loop361->getItemEscape("image_tablet/@src")}}" {{/if}}{{if $loop361->getItem("image_mobile/@src")}} data-src_mobile="{{$loop361->getItemEscape("image_mobile/@src")}}" {{/if}}></img>
												{{else}}
													{{$loop361->getItem("text")}}
												{{/if}}
											{{/if}}
										{{else}}
											{{$loop361->getItem("html")}}
										{{/if}}
									</div>
								{{/foreach}}
							</div>
						{{/if}}
						<!--Hotspot na stronie głównej - strefa 1 (main_hotspot_zone1, 108135.1)-->
						<iaiajaxstart iai-ajax-id="main_hotspot_zone1" iai-ajax-generated="true"/>
						{{if  $xml->getItem("page/hotspot/products_zone1")}}
							<div id="main_hotspot_zone1" class="main_hotspot mb-4">
								{{if  $xml->getItem("page/hotspot/products_zone1/product") or  $xml->getItem("page/hotspot/products_zone1/opinion")}}
									<h2>
										{{if  $xml->getItem("page/hotspot/products_zone1/@link")}}
											<a class="big_label" href="{{$xml->getItemEscape("page/hotspot/products_zone1/@link")}}" title="{{$txt['108135::58826_001']}}">
												{{if  $xml->getItem("page/hotspot/products_zone1/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone1/@name")}}
												{{else}}
													{{$txt['108135::58826_label']}}
												{{/if}}
												{{$txt['108135::58826_label-after']}}</a>
										{{else}}
											<span class="big_label">
												{{if  $xml->getItem("page/hotspot/products_zone1/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone1/@name")}}
												{{else}}
													{{$txt['108135::58826_label']}}
												{{/if}}
												</span>
										{{/if}}
									</h2>
									<div class="align_row main_hotspot_sub">
										<div class="products_wrapper row">
											{{foreach from=$xml->getList("page/hotspot/products_zone1/*") item=loop460}}
												{{capture name="var_name" assign="var_name"}}
													{{if  $loop460->getItem("product")}}
														{{$loop460->getItem("product/name/text()")}}
													{{else}}
														{{$loop460->getItem("name/text()")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon" assign="var_icon"}}
													{{if  $loop460->getItem("product")}}
														{{$loop460->getItemEscape("product/icon")}}
													{{else}}
														{{$loop460->getItemEscape("icon")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon_small" assign="var_icon_small"}}
													{{if  $loop460->getItem("product")}}
														{{$loop460->getItemEscape("product/icon_small")}}
													{{else}}
														{{$loop460->getItemEscape("icon_small")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_link" assign="var_link"}}
													{{if  $loop460->getItem("product")}}
														{{$loop460->getItemEscape("product/@link")}}
													{{else}}
														{{$loop460->getItemEscape("@link")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_yousave" assign="var_yousave"}}
													{{$txt['108135::TXT_hotspot_yousave']}}
												{{/capture}}
												<div class="product_wrapper col-12 col-sm-3">
													{{if $var_yousave and !($var_yousave  == (string) '') and  $loop460->getItem("price/@yousave_formatted")  neq (string) ''}}
														<div class="hotspot_yousave">
															<span class="yousave_label">{{$var_yousave}}</span>
															<span class="yousave_value">{{$loop460->getItemEscape("price/@yousave_formatted")}}</span>
														</div>
													{{/if}}
													<a class="product-icon d-flex justify-content-center align-items-center" data-product-id="{{$loop460->getItemEscape("@id")}}" href="{{$var_link}}" title="{{$var_name}}">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1573641886" class="b-lazy" data-src-small="{{$loop460->getItem("$var_icon_small")}}" data-src="{{$loop460->getItem("$var_icon")}}" alt="{{$loop460->getItem("$var_name")}}"></img></a>
													<h3>
														<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
													</h3>
													{{capture name="main_hotspot_zone1_b2b_var" assign="main_hotspot_zone1_b2b_var"}}
														{{$txt['108135::main_hotspot_zone1_b2b']}}
													{{/capture}}
													{{capture name="var_net_prices" assign="var_net_prices"}}
														{{$txt['108135::hotspot_net_prices']}}
													{{/capture}}
													{{if $var_net_prices  == (string) ''}}
														{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
															{{if  $loop460->getItem("product")}}
																{{$loop460->getItemEscape("product/price/@size_min_formatted")}}
															{{else}}
																{{$loop460->getItemEscape("price/@size_min_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
															{{if  $loop460->getItem("product")}}
																{{$loop460->getItemEscape("product/price/@size_max_formatted")}}
															{{else}}
																{{$loop460->getItemEscape("price/@size_max_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
															{{if  $loop460->getItem("product")}}
																{{$loop460->getItemEscape("product/price/@size_min_maxprice_formatted")}}
															{{else}}
																{{$loop460->getItemEscape("price/@size_min_maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
															{{if  $loop460->getItem("product")}}
																{{$loop460->getItemEscape("product/price/@size_max_maxprice_formatted")}}
															{{else}}
																{{$loop460->getItemEscape("price/@size_max_maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_points" assign="var_points"}}
															{{if  $loop460->getItem("product")}}
																{{$loop460->getItemEscape("product/price/@points")}}
															{{else}}
																{{$loop460->getItemEscape("price/@points")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_value" assign="var_value"}}
															{{if  $loop460->getItem("product")}}
																{{$loop460->getItemEscape("product/price/@size_min")}}
															{{else}}
																{{$loop460->getItemEscape("price/@size_min")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{if  $loop460->getItem("price/@price_unit_formatted") and  $loop460->getItem("sizes/@unit")}}
																{{$loop460->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop460->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop460->getItemEscape("sizes/@unit")}}
															{{elseif  $loop460->getItem("product/price/@price_unit_formatted") and  $loop460->getItem("product/sizes/@unit")}}
																{{$loop460->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop460->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop460->getItemEscape("product/sizes/@unit")}}
															{{else}}
																{{$var_size_min_formatted}}
															{{/if}}
														{{/capture}}
														{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
															{{if  $loop460->getItem("price/@maxprice_unit_formatted")}}
																{{$loop460->getItemEscape("price/@maxprice_unit_formatted")}}
															{{elseif  $loop460->getItem("product/price/@maxprice_unit_formatted")}}
																{{$loop460->getItemEscape("product/price/@maxprice_unit_formatted")}}
															{{elseif  $loop460->getItem("product")}}
																{{$loop460->getItemEscape("product/price/@maxprice_formatted")}}
															{{else}}
																{{$loop460->getItemEscape("price/@maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														<div class="product_prices">
															{{if $var_size_min_formatted  neq (string) $var_size_max_formatted}}
																<span class="price">{{$var_size_min_formatted}}{{literal}}-{{/literal}}{{$var_size_max_formatted}}</span>
																{{if $var_size_min_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">
																		<span>{{$var_size_min_maxprice_formatted}}</span>
																		<b>{{literal}}-{{/literal}}</b>
																		<span>{{$var_size_max_maxprice_formatted}}</span></del>
																{{/if}}
																{{if $var_points  neq (string) ''}}
																	<span class="point-price">{{$var_points}}
																		<span class="currency">{{$txt['108135::58826_012']}}</span></span>
																{{/if}}
															{{elseif (($var_value  == (string) 0) and $var_points  == (string) '') or ($var_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop460->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
																<a {{assign "hrefAttributeTmp26" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}{{$loop460->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['108135::58826_009']}}"{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}{{$loop460->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['108135::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp26}}"></a>
															{{else}}
																<span class="price">{{$txt['108135::58826_003']}}{{$var_price_formatted}}</span>
																{{if $var_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['108135::58826_006']}}{{$var_maxprice_formatted}}</del>
																{{/if}}
																{{if $var_points  neq (string) ''}}
																	<span class="point-price">{{$var_points}}
																		<span class="currency">{{$txt['108135::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop460->getItem("price/@unit_converted_price_formatted")}}
																<small class="s_unit_converted_price">{{$loop460->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop460->getItemEscape("price/@unit_converted_format")}}</small>
															{{/if}}
														</div>
													{{else}}
														{{capture name="var_size_min_net_formatted" assign="var_size_min_net_formatted"}}
															{{if  $loop460->getItem("product")}}
																{{$loop460->getItemEscape("product/price/@size_min_net_formatted")}}
															{{else}}
																{{$loop460->getItemEscape("price/@size_min_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_net_formatted" assign="var_size_max_net_formatted"}}
															{{if  $loop460->getItem("product")}}
																{{$loop460->getItemEscape("product/price/@size_max_net_formatted")}}
															{{else}}
																{{$loop460->getItemEscape("price/@size_max_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_min_net_maxprice_formatted" assign="var_size_min_net_maxprice_formatted"}}
															{{if  $loop460->getItem("product")}}
																{{$loop460->getItemEscape("product/price/@size_min_maxprice_net_formatted")}}
															{{else}}
																{{$loop460->getItemEscape("price/@size_min_maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_maxprice_net_formatted" assign="var_size_max_maxprice_net_formatted"}}
															{{if  $loop460->getItem("product")}}
																{{$loop460->getItemEscape("product/price/@size_max_maxprice_net_formatted")}}
															{{else}}
																{{$loop460->getItemEscape("price/@size_max_maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_points_net" assign="var_points_net"}}
															{{if  $loop460->getItem("product")}}
																{{$loop460->getItemEscape("product/price/@points")}}
															{{else}}
																{{$loop460->getItemEscape("price/@points")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_net_value" assign="var_net_value"}}
															{{if  $loop460->getItem("product")}}
																{{$loop460->getItemEscape("product/price/@size_min_net")}}
															{{else}}
																{{$loop460->getItemEscape("price/@size_min_net")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{if  $loop460->getItem("price/@price_unit_net_formatted") and  $loop460->getItem("sizes/@unit")}}
																{{$loop460->getItemEscape("price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop460->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop460->getItemEscape("sizes/@unit")}}
															{{elseif  $loop460->getItem("product/price/@price_unit_net_formatted") and  $loop460->getItem("product/sizes/@unit")}}
																{{$loop460->getItemEscape("product/price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop460->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop460->getItemEscape("product/sizes/@unit")}}
															{{else}}
																{{$var_size_min_net_formatted}}
															{{/if}}
														{{/capture}}
														{{capture name="var_maxprice_net_formatted" assign="var_maxprice_net_formatted"}}
															{{if  $loop460->getItem("price/@maxprice_unit_net_formatted")}}
																{{$loop460->getItemEscape("price/@maxprice_unit_net_formatted")}}
															{{elseif  $loop460->getItem("product/price/@maxprice_unit_net_formatted")}}
																{{$loop460->getItemEscape("product/price/@maxprice_unit_net_formatted")}}
															{{elseif  $loop460->getItem("product")}}
																{{$loop460->getItemEscape("product/price/@maxprice_net_formatted")}}
															{{else}}
																{{$loop460->getItemEscape("price/@maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														<div class="product_prices">
															{{if $var_size_min_net_formatted  neq (string) $var_size_max_net_formatted}}
																<span class="price">{{$var_size_min_net_formatted}}{{literal}}-{{/literal}}{{$var_size_max_net_formatted}}{{$var_net_prices}}</span>
																{{if $var_size_min_net_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">
																		<span>{{$var_size_min_net_maxprice_formatted}}</span>
																		<b>{{literal}}-{{/literal}}</b>
																		<span>{{$var_size_max_maxprice_net_formatted}}</span>{{$var_net_prices}}</del>
																{{/if}}
																{{if $var_points_net  neq (string) ''}}
																	<span class="point-price">{{$var_points_net}}
																		<span class="currency">{{$txt['108135::58826_012']}}</span></span>
																{{/if}}
															{{elseif (($var_net_value  == (string) 0) and $var_points_net  == (string) '') or ($var_net_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop460->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
																<a {{assign "hrefAttributeTmp26" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}{{$loop460->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['108135::58826_009']}}"{{capture name="hrefAttributeTmp26" assign="hrefAttributeTmp26"}}{{$loop460->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['108135::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp26}}"></a>
															{{else}}
																<span class="price">{{$txt['108135::58826_003']}}{{$var_price_formatted}}{{$var_net_prices}}</span>
																{{if $var_maxprice_net_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['108135::58826_006']}}{{$var_maxprice_net_formatted}}{{$var_net_prices}}</del>
																{{/if}}
																{{if $var_points_net  neq (string) ''}}
																	<span class="point-price">{{$var_points_net}}
																		<span class="currency">{{$txt['108135::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop460->getItem("price/@unit_converted_price_net_formatted")}}
																<small class="s_unit_converted_price">{{$loop460->getItemEscape("price/@unit_converted_price_net_formatted")}}{{literal}}/{{/literal}}{{$loop460->getItemEscape("price/@unit_converted_format")}}{{$var_net_prices}}</small>
															{{/if}}
														</div>
													{{/if}}
													{{if  $loop460->getItem("client/@client")}}
														<div class="client">{{$loop460->getItem("client/@client")}}
														</div>
													{{/if}}
													{{if  $loop460->getItem("@note")}}
														<div class="note">
															<span>
																<i {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}icon-star{{/capture}}{{if $loop460->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}"></i>
																<i {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}icon-star{{/capture}}{{if $loop460->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}"></i>
																<i {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}icon-star{{/capture}}{{if $loop460->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp7}}"></i>
																<i {{assign "classAttributeTmp8" ""}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}icon-star{{/capture}}{{if $loop460->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp8" assign="classAttributeTmp8"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp8}}"></i>
																<i {{assign "classAttributeTmp9" ""}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}icon-star{{/capture}}{{if $loop460->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp9}}"></i></span>
															<small>{{$txt['108135::58826_oc']}}{{$loop460->getItem("@note")}}{{$txt['108135::58826_oce']}}</small>
														</div>
													{{/if}}
													{{if  $loop460->getItem("content")}}
														<div class="cleardescription">{{$loop460->getItem("content")}}
														</div>
													{{/if}}
												</div>
											{{/foreach}}
										</div>
									</div>
								{{else}}
									data-ajaxLoad="true"data-pageType="main"
									<div class="main_hotspot mb-4 skeleton">
										<span class="big_label"></span>
										<div class="main_hotspot_sub">
											<div class="products_wrapper row mx-0">
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
											</div>
										</div>
									</div>
								{{/if}}
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/comments/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/@hotspot_ajax")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/sizes/size/availability/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/category/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/@version_name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/firm/@name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/traits/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/price/@detalprice_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/price/@price_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/price/@value") == (string)0}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/price/@maxprice_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/product/description")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/@iairs_ajax")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone1/@cache_html")}}
						{{/if}}
						<iaiajaxend/>
						<!--Hotspot na stronie głównej - strefa 2 (main_hotspot_zone2, 106487.1)-->
						<iaiajaxstart iai-ajax-id="main_hotspot_zone2" iai-ajax-generated="true"/>
						{{if  $xml->getItem("page/hotspot/products_zone2")}}
							<div id="main_hotspot_zone2" class="main_hotspot mb-4">
								{{if  $xml->getItem("page/hotspot/products_zone2/product") or  $xml->getItem("page/hotspot/products_zone2/opinion")}}
									<h2>
										{{if  $xml->getItem("page/hotspot/products_zone2/@link")}}
											<a class="big_label" href="{{$xml->getItemEscape("page/hotspot/products_zone2/@link")}}" title="{{$txt['106487::58826_001']}}">
												{{if  $xml->getItem("page/hotspot/products_zone2/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone2/@name")}}
												{{else}}
													{{$txt['106487::58826_label']}}
												{{/if}}
												{{$txt['106487::58826_label-after']}}</a>
										{{else}}
											<span class="big_label">
												{{if  $xml->getItem("page/hotspot/products_zone2/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone2/@name")}}
												{{else}}
													{{$txt['106487::58826_label']}}
												{{/if}}
												</span>
										{{/if}}
									</h2>
									<div class="align_row main_hotspot_sub">
										<div class="products_wrapper row">
											{{foreach from=$xml->getList("page/hotspot/products_zone2/*") item=loop734}}
												{{capture name="var_name" assign="var_name"}}
													{{if  $loop734->getItem("product")}}
														{{$loop734->getItem("product/name/text()")}}
													{{else}}
														{{$loop734->getItem("name/text()")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon" assign="var_icon"}}
													{{if  $loop734->getItem("product")}}
														{{$loop734->getItemEscape("product/icon")}}
													{{else}}
														{{$loop734->getItemEscape("icon")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon_small" assign="var_icon_small"}}
													{{if  $loop734->getItem("product")}}
														{{$loop734->getItemEscape("product/icon_small")}}
													{{else}}
														{{$loop734->getItemEscape("icon_small")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_link" assign="var_link"}}
													{{if  $loop734->getItem("product")}}
														{{$loop734->getItemEscape("product/@link")}}
													{{else}}
														{{$loop734->getItemEscape("@link")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_yousave" assign="var_yousave"}}
													{{$txt['106487::TXT_hotspot_yousave']}}
												{{/capture}}
												<div class="product_wrapper col-12 col-sm-3">
													{{if $var_yousave and !($var_yousave  == (string) '') and  $loop734->getItem("price/@yousave_formatted")  neq (string) ''}}
														<div class="hotspot_yousave">
															<span class="yousave_label">{{$var_yousave}}</span>
															<span class="yousave_value">{{$loop734->getItemEscape("price/@yousave_formatted")}}</span>
														</div>
													{{/if}}
													<a class="product-icon d-flex justify-content-center align-items-center" data-product-id="{{$loop734->getItemEscape("@id")}}" href="{{$var_link}}" title="{{$var_name}}">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1573641886" class="b-lazy" data-src-small="{{$loop734->getItem("$var_icon_small")}}" data-src="{{$loop734->getItem("$var_icon")}}" alt="{{$loop734->getItem("$var_name")}}"></img></a>
													<h3>
														<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
													</h3>
													{{capture name="main_hotspot_zone1_b2b_var" assign="main_hotspot_zone1_b2b_var"}}
														{{$txt['106487::main_hotspot_zone1_b2b']}}
													{{/capture}}
													{{capture name="var_net_prices" assign="var_net_prices"}}
														{{$txt['106487::hotspot_net_prices']}}
													{{/capture}}
													{{if $var_net_prices  == (string) ''}}
														{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
															{{if  $loop734->getItem("product")}}
																{{$loop734->getItemEscape("product/price/@size_min_formatted")}}
															{{else}}
																{{$loop734->getItemEscape("price/@size_min_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
															{{if  $loop734->getItem("product")}}
																{{$loop734->getItemEscape("product/price/@size_max_formatted")}}
															{{else}}
																{{$loop734->getItemEscape("price/@size_max_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
															{{if  $loop734->getItem("product")}}
																{{$loop734->getItemEscape("product/price/@size_min_maxprice_formatted")}}
															{{else}}
																{{$loop734->getItemEscape("price/@size_min_maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
															{{if  $loop734->getItem("product")}}
																{{$loop734->getItemEscape("product/price/@size_max_maxprice_formatted")}}
															{{else}}
																{{$loop734->getItemEscape("price/@size_max_maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_points" assign="var_points"}}
															{{if  $loop734->getItem("product")}}
																{{$loop734->getItemEscape("product/price/@points")}}
															{{else}}
																{{$loop734->getItemEscape("price/@points")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_value" assign="var_value"}}
															{{if  $loop734->getItem("product")}}
																{{$loop734->getItemEscape("product/price/@size_min")}}
															{{else}}
																{{$loop734->getItemEscape("price/@size_min")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{if  $loop734->getItem("price/@price_unit_formatted") and  $loop734->getItem("sizes/@unit")}}
																{{$loop734->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop734->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop734->getItemEscape("sizes/@unit")}}
															{{elseif  $loop734->getItem("product/price/@price_unit_formatted") and  $loop734->getItem("product/sizes/@unit")}}
																{{$loop734->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop734->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop734->getItemEscape("product/sizes/@unit")}}
															{{else}}
																{{$var_size_min_formatted}}
															{{/if}}
														{{/capture}}
														{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
															{{if  $loop734->getItem("price/@maxprice_unit_formatted")}}
																{{$loop734->getItemEscape("price/@maxprice_unit_formatted")}}
															{{elseif  $loop734->getItem("product/price/@maxprice_unit_formatted")}}
																{{$loop734->getItemEscape("product/price/@maxprice_unit_formatted")}}
															{{elseif  $loop734->getItem("product")}}
																{{$loop734->getItemEscape("product/price/@maxprice_formatted")}}
															{{else}}
																{{$loop734->getItemEscape("price/@maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														<div class="product_prices">
															{{if $var_size_min_formatted  neq (string) $var_size_max_formatted}}
																<span class="price">{{$var_size_min_formatted}}{{literal}}-{{/literal}}{{$var_size_max_formatted}}</span>
																{{if $var_size_min_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">
																		<span>{{$var_size_min_maxprice_formatted}}</span>
																		<b>{{literal}}-{{/literal}}</b>
																		<span>{{$var_size_max_maxprice_formatted}}</span></del>
																{{/if}}
																{{if $var_points  neq (string) ''}}
																	<span class="point-price">{{$var_points}}
																		<span class="currency">{{$txt['106487::58826_012']}}</span></span>
																{{/if}}
															{{elseif (($var_value  == (string) 0) and $var_points  == (string) '') or ($var_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop734->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
																<a {{assign "hrefAttributeTmp28" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp28" assign="hrefAttributeTmp28"}}{{$loop734->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106487::58826_009']}}"{{capture name="hrefAttributeTmp28" assign="hrefAttributeTmp28"}}{{$loop734->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106487::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp28}}"></a>
															{{else}}
																<span class="price">{{$txt['106487::58826_003']}}{{$var_price_formatted}}</span>
																{{if $var_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['106487::58826_006']}}{{$var_maxprice_formatted}}</del>
																{{/if}}
																{{if $var_points  neq (string) ''}}
																	<span class="point-price">{{$var_points}}
																		<span class="currency">{{$txt['106487::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop734->getItem("price/@unit_converted_price_formatted")}}
																<small class="s_unit_converted_price">{{$loop734->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop734->getItemEscape("price/@unit_converted_format")}}</small>
															{{/if}}
														</div>
													{{else}}
														{{capture name="var_size_min_net_formatted" assign="var_size_min_net_formatted"}}
															{{if  $loop734->getItem("product")}}
																{{$loop734->getItemEscape("product/price/@size_min_net_formatted")}}
															{{else}}
																{{$loop734->getItemEscape("price/@size_min_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_net_formatted" assign="var_size_max_net_formatted"}}
															{{if  $loop734->getItem("product")}}
																{{$loop734->getItemEscape("product/price/@size_max_net_formatted")}}
															{{else}}
																{{$loop734->getItemEscape("price/@size_max_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_min_net_maxprice_formatted" assign="var_size_min_net_maxprice_formatted"}}
															{{if  $loop734->getItem("product")}}
																{{$loop734->getItemEscape("product/price/@size_min_maxprice_net_formatted")}}
															{{else}}
																{{$loop734->getItemEscape("price/@size_min_maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_maxprice_net_formatted" assign="var_size_max_maxprice_net_formatted"}}
															{{if  $loop734->getItem("product")}}
																{{$loop734->getItemEscape("product/price/@size_max_maxprice_net_formatted")}}
															{{else}}
																{{$loop734->getItemEscape("price/@size_max_maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_points_net" assign="var_points_net"}}
															{{if  $loop734->getItem("product")}}
																{{$loop734->getItemEscape("product/price/@points")}}
															{{else}}
																{{$loop734->getItemEscape("price/@points")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_net_value" assign="var_net_value"}}
															{{if  $loop734->getItem("product")}}
																{{$loop734->getItemEscape("product/price/@size_min_net")}}
															{{else}}
																{{$loop734->getItemEscape("price/@size_min_net")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{if  $loop734->getItem("price/@price_unit_net_formatted") and  $loop734->getItem("sizes/@unit")}}
																{{$loop734->getItemEscape("price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop734->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop734->getItemEscape("sizes/@unit")}}
															{{elseif  $loop734->getItem("product/price/@price_unit_net_formatted") and  $loop734->getItem("product/sizes/@unit")}}
																{{$loop734->getItemEscape("product/price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop734->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop734->getItemEscape("product/sizes/@unit")}}
															{{else}}
																{{$var_size_min_net_formatted}}
															{{/if}}
														{{/capture}}
														{{capture name="var_maxprice_net_formatted" assign="var_maxprice_net_formatted"}}
															{{if  $loop734->getItem("price/@maxprice_unit_net_formatted")}}
																{{$loop734->getItemEscape("price/@maxprice_unit_net_formatted")}}
															{{elseif  $loop734->getItem("product/price/@maxprice_unit_net_formatted")}}
																{{$loop734->getItemEscape("product/price/@maxprice_unit_net_formatted")}}
															{{elseif  $loop734->getItem("product")}}
																{{$loop734->getItemEscape("product/price/@maxprice_net_formatted")}}
															{{else}}
																{{$loop734->getItemEscape("price/@maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														<div class="product_prices">
															{{if $var_size_min_net_formatted  neq (string) $var_size_max_net_formatted}}
																<span class="price">{{$var_size_min_net_formatted}}{{literal}}-{{/literal}}{{$var_size_max_net_formatted}}{{$var_net_prices}}</span>
																{{if $var_size_min_net_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">
																		<span>{{$var_size_min_net_maxprice_formatted}}</span>
																		<b>{{literal}}-{{/literal}}</b>
																		<span>{{$var_size_max_maxprice_net_formatted}}</span>{{$var_net_prices}}</del>
																{{/if}}
																{{if $var_points_net  neq (string) ''}}
																	<span class="point-price">{{$var_points_net}}
																		<span class="currency">{{$txt['106487::58826_012']}}</span></span>
																{{/if}}
															{{elseif (($var_net_value  == (string) 0) and $var_points_net  == (string) '') or ($var_net_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop734->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
																<a {{assign "hrefAttributeTmp28" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp28" assign="hrefAttributeTmp28"}}{{$loop734->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106487::58826_009']}}"{{capture name="hrefAttributeTmp28" assign="hrefAttributeTmp28"}}{{$loop734->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106487::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp28}}"></a>
															{{else}}
																<span class="price">{{$txt['106487::58826_003']}}{{$var_price_formatted}}{{$var_net_prices}}</span>
																{{if $var_maxprice_net_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['106487::58826_006']}}{{$var_maxprice_net_formatted}}{{$var_net_prices}}</del>
																{{/if}}
																{{if $var_points_net  neq (string) ''}}
																	<span class="point-price">{{$var_points_net}}
																		<span class="currency">{{$txt['106487::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop734->getItem("price/@unit_converted_price_net_formatted")}}
																<small class="s_unit_converted_price">{{$loop734->getItemEscape("price/@unit_converted_price_net_formatted")}}{{literal}}/{{/literal}}{{$loop734->getItemEscape("price/@unit_converted_format")}}{{$var_net_prices}}</small>
															{{/if}}
														</div>
													{{/if}}
													{{if  $loop734->getItem("client/@client")}}
														<div class="client">{{$loop734->getItem("client/@client")}}
														</div>
													{{/if}}
													{{if  $loop734->getItem("@note")}}
														<div class="note">
															<span>
																<i {{assign "classAttributeTmp10" ""}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}icon-star{{/capture}}{{if $loop734->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp10" assign="classAttributeTmp10"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp10}}"></i>
																<i {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}icon-star{{/capture}}{{if $loop734->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp11}}"></i>
																<i {{assign "classAttributeTmp12" ""}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}icon-star{{/capture}}{{if $loop734->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp12" assign="classAttributeTmp12"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp12}}"></i>
																<i {{assign "classAttributeTmp13" ""}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}icon-star{{/capture}}{{if $loop734->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp13" assign="classAttributeTmp13"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp13}}"></i>
																<i {{assign "classAttributeTmp14" ""}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}icon-star{{/capture}}{{if $loop734->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp14}}"></i></span>
															<small>{{$txt['106487::58826_oc']}}{{$loop734->getItem("@note")}}{{$txt['106487::58826_oce']}}</small>
														</div>
													{{/if}}
													{{if  $loop734->getItem("content")}}
														<div class="cleardescription">{{$loop734->getItem("content")}}
														</div>
													{{/if}}
												</div>
											{{/foreach}}
										</div>
									</div>
								{{else}}
									data-ajaxLoad="true"data-pageType="main"
									<div class="main_hotspot mb-4 skeleton">
										<span class="big_label"></span>
										<div class="main_hotspot_sub">
											<div class="products_wrapper row mx-0">
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
											</div>
										</div>
									</div>
								{{/if}}
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/comments/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/@hotspot_ajax")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/sizes/size/availability/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/category/@id")}}
						{{/if}}
						{{if  $xml->getItem("page/hotspot/products_zone2/opinion")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/@version_name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/firm/@name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/traits/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/price/@detalprice_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/price/@price_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/price/@value") == (string)0}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/price/@maxprice_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/product/description")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/@iairs_ajax")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone2/@cache_html")}}
						{{/if}}
						<iaiajaxend/>
						<!--Hotspot na stronie głównej - strefa 3 (main_hotspot_zone3, 106488.1)-->
						<iaiajaxstart iai-ajax-id="main_hotspot_zone3" iai-ajax-generated="true"/>
						{{if  $xml->getItem("page/hotspot/products_zone3")}}
							<div id="main_hotspot_zone3" class="main_hotspot mb-4">
								{{if  $xml->getItem("page/hotspot/products_zone3/product") or  $xml->getItem("page/hotspot/products_zone3/opinion")}}
									<h2>
										{{if  $xml->getItem("page/hotspot/products_zone3/@link")}}
											<a class="big_label" href="{{$xml->getItemEscape("page/hotspot/products_zone3/@link")}}" title="{{$txt['106488::58826_001']}}">
												{{if  $xml->getItem("page/hotspot/products_zone3/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone3/@name")}}
												{{else}}
													{{$txt['106488::58826_label']}}
												{{/if}}
												{{$txt['106488::58826_label-after']}}</a>
										{{else}}
											<span class="big_label">
												{{if  $xml->getItem("page/hotspot/products_zone3/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone3/@name")}}
												{{else}}
													{{$txt['106488::58826_label']}}
												{{/if}}
												</span>
										{{/if}}
									</h2>
									<div class="align_row main_hotspot_sub">
										<div class="products_wrapper row m-0">
											{{foreach from=$xml->getList("page/hotspot/products_zone3/*") item=loop1008}}
												{{capture name="var_name" assign="var_name"}}
													{{if  $loop1008->getItem("product")}}
														{{$loop1008->getItem("product/name/text()")}}
													{{else}}
														{{$loop1008->getItem("name/text()")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon" assign="var_icon"}}
													{{if  $loop1008->getItem("product")}}
														{{$loop1008->getItemEscape("product/icon")}}
													{{else}}
														{{$loop1008->getItemEscape("icon")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon_small" assign="var_icon_small"}}
													{{if  $loop1008->getItem("product")}}
														{{$loop1008->getItemEscape("product/icon_small")}}
													{{else}}
														{{$loop1008->getItemEscape("icon_small")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_link" assign="var_link"}}
													{{if  $loop1008->getItem("product")}}
														{{$loop1008->getItemEscape("product/@link")}}
													{{else}}
														{{$loop1008->getItemEscape("@link")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_yousave" assign="var_yousave"}}
													{{$txt['106488::TXT_hotspot_yousave']}}
												{{/capture}}
												<div class="product_wrapper col-12 col-sm-3">
													{{if $var_yousave and !($var_yousave  == (string) '') and  $loop1008->getItem("price/@yousave_formatted")  neq (string) ''}}
														<div class="hotspot_yousave">
															<span class="yousave_label">{{$var_yousave}}</span>
															<span class="yousave_value">{{$loop1008->getItemEscape("price/@yousave_formatted")}}</span>
														</div>
													{{/if}}
													<a class="product-icon d-flex justify-content-center align-items-center" data-product-id="{{$loop1008->getItemEscape("@id")}}" href="{{$var_link}}" title="{{$var_name}}">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1573641886" class="b-lazy" data-src-small="{{$loop1008->getItem("$var_icon_small")}}" data-src="{{$loop1008->getItem("$var_icon")}}" alt="{{$loop1008->getItem("$var_name")}}"></img></a>
													<h3>
														<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
													</h3>
													{{capture name="main_hotspot_zone1_b2b_var" assign="main_hotspot_zone1_b2b_var"}}
														{{$txt['106488::main_hotspot_zone1_b2b']}}
													{{/capture}}
													{{capture name="var_net_prices" assign="var_net_prices"}}
														{{$txt['106488::hotspot_net_prices']}}
													{{/capture}}
													{{if $var_net_prices  == (string) ''}}
														{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
															{{if  $loop1008->getItem("product")}}
																{{$loop1008->getItemEscape("product/price/@size_min_formatted")}}
															{{else}}
																{{$loop1008->getItemEscape("price/@size_min_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
															{{if  $loop1008->getItem("product")}}
																{{$loop1008->getItemEscape("product/price/@size_max_formatted")}}
															{{else}}
																{{$loop1008->getItemEscape("price/@size_max_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
															{{if  $loop1008->getItem("product")}}
																{{$loop1008->getItemEscape("product/price/@size_min_maxprice_formatted")}}
															{{else}}
																{{$loop1008->getItemEscape("price/@size_min_maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
															{{if  $loop1008->getItem("product")}}
																{{$loop1008->getItemEscape("product/price/@size_max_maxprice_formatted")}}
															{{else}}
																{{$loop1008->getItemEscape("price/@size_max_maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_points" assign="var_points"}}
															{{if  $loop1008->getItem("product")}}
																{{$loop1008->getItemEscape("product/price/@points")}}
															{{else}}
																{{$loop1008->getItemEscape("price/@points")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_value" assign="var_value"}}
															{{if  $loop1008->getItem("product")}}
																{{$loop1008->getItemEscape("product/price/@size_min")}}
															{{else}}
																{{$loop1008->getItemEscape("price/@size_min")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{if  $loop1008->getItem("price/@price_unit_formatted") and  $loop1008->getItem("sizes/@unit")}}
																{{$loop1008->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop1008->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop1008->getItemEscape("sizes/@unit")}}
															{{elseif  $loop1008->getItem("product/price/@price_unit_formatted") and  $loop1008->getItem("product/sizes/@unit")}}
																{{$loop1008->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop1008->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop1008->getItemEscape("product/sizes/@unit")}}
															{{else}}
																{{$var_size_min_formatted}}
															{{/if}}
														{{/capture}}
														{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
															{{if  $loop1008->getItem("price/@maxprice_unit_formatted")}}
																{{$loop1008->getItemEscape("price/@maxprice_unit_formatted")}}
															{{elseif  $loop1008->getItem("product/price/@maxprice_unit_formatted")}}
																{{$loop1008->getItemEscape("product/price/@maxprice_unit_formatted")}}
															{{elseif  $loop1008->getItem("product")}}
																{{$loop1008->getItemEscape("product/price/@maxprice_formatted")}}
															{{else}}
																{{$loop1008->getItemEscape("price/@maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														<div class="product_prices">
															{{if $var_size_min_formatted  neq (string) $var_size_max_formatted}}
																<span class="price">{{$var_size_min_formatted}}{{literal}}-{{/literal}}{{$var_size_max_formatted}}</span>
																{{if $var_size_min_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">
																		<span>{{$var_size_min_maxprice_formatted}}</span>
																		<b>{{literal}}-{{/literal}}</b>
																		<span>{{$var_size_max_maxprice_formatted}}</span></del>
																{{/if}}
																{{if $var_points  neq (string) ''}}
																	<span class="point-price">{{$var_points}}
																		<span class="currency">{{$txt['106488::58826_012']}}</span></span>
																{{/if}}
															{{elseif (($var_value  == (string) 0) and $var_points  == (string) '') or ($var_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop1008->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
																<a {{assign "hrefAttributeTmp30" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}{{$loop1008->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106488::58826_009']}}"{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}{{$loop1008->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106488::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp30}}"></a>
															{{else}}
																<span class="price">{{$txt['106488::58826_003']}}{{$var_price_formatted}}</span>
																{{if $var_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['106488::58826_006']}}{{$var_maxprice_formatted}}</del>
																{{/if}}
																{{if $var_points  neq (string) ''}}
																	<span class="point-price">{{$var_points}}
																		<span class="currency">{{$txt['106488::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop1008->getItem("price/@unit_converted_price_formatted")}}
																<small class="s_unit_converted_price">{{$loop1008->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop1008->getItemEscape("price/@unit_converted_format")}}</small>
															{{/if}}
														</div>
													{{else}}
														{{capture name="var_size_min_net_formatted" assign="var_size_min_net_formatted"}}
															{{if  $loop1008->getItem("product")}}
																{{$loop1008->getItemEscape("product/price/@size_min_net_formatted")}}
															{{else}}
																{{$loop1008->getItemEscape("price/@size_min_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_net_formatted" assign="var_size_max_net_formatted"}}
															{{if  $loop1008->getItem("product")}}
																{{$loop1008->getItemEscape("product/price/@size_max_net_formatted")}}
															{{else}}
																{{$loop1008->getItemEscape("price/@size_max_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_min_net_maxprice_formatted" assign="var_size_min_net_maxprice_formatted"}}
															{{if  $loop1008->getItem("product")}}
																{{$loop1008->getItemEscape("product/price/@size_min_maxprice_net_formatted")}}
															{{else}}
																{{$loop1008->getItemEscape("price/@size_min_maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_maxprice_net_formatted" assign="var_size_max_maxprice_net_formatted"}}
															{{if  $loop1008->getItem("product")}}
																{{$loop1008->getItemEscape("product/price/@size_max_maxprice_net_formatted")}}
															{{else}}
																{{$loop1008->getItemEscape("price/@size_max_maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_points_net" assign="var_points_net"}}
															{{if  $loop1008->getItem("product")}}
																{{$loop1008->getItemEscape("product/price/@points")}}
															{{else}}
																{{$loop1008->getItemEscape("price/@points")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_net_value" assign="var_net_value"}}
															{{if  $loop1008->getItem("product")}}
																{{$loop1008->getItemEscape("product/price/@size_min_net")}}
															{{else}}
																{{$loop1008->getItemEscape("price/@size_min_net")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{if  $loop1008->getItem("price/@price_unit_net_formatted") and  $loop1008->getItem("sizes/@unit")}}
																{{$loop1008->getItemEscape("price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop1008->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop1008->getItemEscape("sizes/@unit")}}
															{{elseif  $loop1008->getItem("product/price/@price_unit_net_formatted") and  $loop1008->getItem("product/sizes/@unit")}}
																{{$loop1008->getItemEscape("product/price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop1008->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop1008->getItemEscape("product/sizes/@unit")}}
															{{else}}
																{{$var_size_min_net_formatted}}
															{{/if}}
														{{/capture}}
														{{capture name="var_maxprice_net_formatted" assign="var_maxprice_net_formatted"}}
															{{if  $loop1008->getItem("price/@maxprice_unit_net_formatted")}}
																{{$loop1008->getItemEscape("price/@maxprice_unit_net_formatted")}}
															{{elseif  $loop1008->getItem("product/price/@maxprice_unit_net_formatted")}}
																{{$loop1008->getItemEscape("product/price/@maxprice_unit_net_formatted")}}
															{{elseif  $loop1008->getItem("product")}}
																{{$loop1008->getItemEscape("product/price/@maxprice_net_formatted")}}
															{{else}}
																{{$loop1008->getItemEscape("price/@maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														<div class="product_prices">
															{{if $var_size_min_net_formatted  neq (string) $var_size_max_net_formatted}}
																<span class="price">{{$var_size_min_net_formatted}}{{literal}}-{{/literal}}{{$var_size_max_net_formatted}}{{$var_net_prices}}</span>
																{{if $var_size_min_net_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">
																		<span>{{$var_size_min_net_maxprice_formatted}}</span>
																		<b>{{literal}}-{{/literal}}</b>
																		<span>{{$var_size_max_maxprice_net_formatted}}</span>{{$var_net_prices}}</del>
																{{/if}}
																{{if $var_points_net  neq (string) ''}}
																	<span class="point-price">{{$var_points_net}}
																		<span class="currency">{{$txt['106488::58826_012']}}</span></span>
																{{/if}}
															{{elseif (($var_net_value  == (string) 0) and $var_points_net  == (string) '') or ($var_net_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop1008->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
																<a {{assign "hrefAttributeTmp30" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}{{$loop1008->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106488::58826_009']}}"{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}{{$loop1008->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106488::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp30}}"></a>
															{{else}}
																<span class="price">{{$txt['106488::58826_003']}}{{$var_price_formatted}}{{$var_net_prices}}</span>
																{{if $var_maxprice_net_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['106488::58826_006']}}{{$var_maxprice_net_formatted}}{{$var_net_prices}}</del>
																{{/if}}
																{{if $var_points_net  neq (string) ''}}
																	<span class="point-price">{{$var_points_net}}
																		<span class="currency">{{$txt['106488::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop1008->getItem("price/@unit_converted_price_net_formatted")}}
																<small class="s_unit_converted_price">{{$loop1008->getItemEscape("price/@unit_converted_price_net_formatted")}}{{literal}}/{{/literal}}{{$loop1008->getItemEscape("price/@unit_converted_format")}}{{$var_net_prices}}</small>
															{{/if}}
														</div>
													{{/if}}
													{{if  $loop1008->getItem("client/@client")}}
														<div class="client">{{$loop1008->getItem("client/@client")}}
														</div>
													{{/if}}
													{{if  $loop1008->getItem("@note")}}
														<div class="note">
															<span>
																<i {{assign "classAttributeTmp15" ""}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}icon-star{{/capture}}{{if $loop1008->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp15" assign="classAttributeTmp15"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp15}}"></i>
																<i {{assign "classAttributeTmp16" ""}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}icon-star{{/capture}}{{if $loop1008->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp16" assign="classAttributeTmp16"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp16}}"></i>
																<i {{assign "classAttributeTmp17" ""}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}icon-star{{/capture}}{{if $loop1008->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp17}}"></i>
																<i {{assign "classAttributeTmp18" ""}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}icon-star{{/capture}}{{if $loop1008->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp18" assign="classAttributeTmp18"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp18}}"></i>
																<i {{assign "classAttributeTmp19" ""}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}icon-star{{/capture}}{{if $loop1008->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp19}}"></i></span>
															<small>{{$txt['106488::58826_oc']}}{{$loop1008->getItem("@note")}}{{$txt['106488::58826_oce']}}</small>
														</div>
													{{/if}}
													{{if  $loop1008->getItem("content")}}
														<div class="cleardescription">{{$loop1008->getItem("content")}}
														</div>
													{{/if}}
												</div>
											{{/foreach}}
										</div>
									</div>
								{{else}}
									data-ajaxLoad="true"data-pageType="main"
									<div class="main_hotspot mb-4 skeleton">
										<span class="big_label"></span>
										<div class="main_hotspot_sub">
											<div class="products_wrapper row mx-0">
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
											</div>
										</div>
									</div>
								{{/if}}
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/comments/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/@hotspot_ajax")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/sizes/size/availability/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/category/@id")}}
						{{/if}}
						{{if  $xml->getItem("page/hotspot/products_zone3/opinion")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/@version_name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/firm/@name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/traits/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/price/@detalprice_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/price/@price_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/price/@value") == (string)0}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/price/@maxprice_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/product/description")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/@iairs_ajax")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone3/@cache_html")}}
						{{/if}}
						<iaiajaxend/>
						<!--Hotspot na stronie głównej - strefa 4 (main_hotspot_zone4, 106513.1)-->
						<iaiajaxstart iai-ajax-id="main_hotspot_zone4" iai-ajax-generated="true"/>
						{{if  $xml->getItem("page/hotspot/products_zone4")}}
							<div id="main_hotspot_zone4" class="main_hotspot mb-4">
								{{if  $xml->getItem("page/hotspot/products_zone4/product") or  $xml->getItem("page/hotspot/products_zone4/opinion")}}
									<h2>
										{{if  $xml->getItem("page/hotspot/products_zone4/@link")}}
											<a class="big_label" href="{{$xml->getItemEscape("page/hotspot/products_zone4/@link")}}" title="{{$txt['106513::58826_001']}}">
												{{if  $xml->getItem("page/hotspot/products_zone4/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone4/@name")}}
												{{else}}
													{{$txt['106513::58826_label']}}
												{{/if}}
												{{$txt['106513::58826_label-after']}}</a>
										{{else}}
											<span class="big_label">
												{{if  $xml->getItem("page/hotspot/products_zone4/@name")}}
													{{$xml->getItemEscape("page/hotspot/products_zone4/@name")}}
												{{else}}
													{{$txt['106513::58826_label']}}
												{{/if}}
												</span>
										{{/if}}
									</h2>
									<div class="align_row main_hotspot_sub">
										<div class="products_wrapper row m-0">
											{{foreach from=$xml->getList("page/hotspot/products_zone4/*") item=loop1284}}
												{{capture name="var_name" assign="var_name"}}
													{{if  $loop1284->getItem("product")}}
														{{$loop1284->getItem("product/name/text()")}}
													{{else}}
														{{$loop1284->getItem("name/text()")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon" assign="var_icon"}}
													{{if  $loop1284->getItem("product")}}
														{{$loop1284->getItemEscape("product/icon")}}
													{{else}}
														{{$loop1284->getItemEscape("icon")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_icon_small" assign="var_icon_small"}}
													{{if  $loop1284->getItem("product")}}
														{{$loop1284->getItemEscape("product/icon_small")}}
													{{else}}
														{{$loop1284->getItemEscape("icon_small")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_link" assign="var_link"}}
													{{if  $loop1284->getItem("product")}}
														{{$loop1284->getItemEscape("product/@link")}}
													{{else}}
														{{$loop1284->getItemEscape("@link")}}
													{{/if}}
												{{/capture}}
												{{capture name="var_yousave" assign="var_yousave"}}
													{{$txt['106513::TXT_hotspot_yousave']}}
												{{/capture}}
												<div class="product_wrapper col-12 col-sm-3">
													{{if $var_yousave and !($var_yousave  == (string) '') and  $loop1284->getItem("price/@yousave_formatted")  neq (string) ''}}
														<div class="hotspot_yousave">
															<span class="yousave_label">{{$var_yousave}}</span>
															<span class="yousave_value">{{$loop1284->getItemEscape("price/@yousave_formatted")}}</span>
														</div>
													{{/if}}
													<a class="product-icon d-flex justify-content-center align-items-center" data-product-id="{{$loop1284->getItemEscape("@id")}}" href="{{$var_link}}" title="{{$var_name}}">
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1573641886" class="b-lazy" data-src-small="{{$loop1284->getItem("$var_icon_small")}}" data-src="{{$loop1284->getItem("$var_icon")}}" alt="{{$loop1284->getItem("$var_name")}}"></img></a>
													<h3>
														<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
													</h3>
													{{capture name="main_hotspot_zone1_b2b_var" assign="main_hotspot_zone1_b2b_var"}}
														{{$txt['106513::main_hotspot_zone1_b2b']}}
													{{/capture}}
													{{capture name="var_net_prices" assign="var_net_prices"}}
														{{$txt['106513::hotspot_net_prices']}}
													{{/capture}}
													{{if $var_net_prices  == (string) ''}}
														{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
															{{if  $loop1284->getItem("product")}}
																{{$loop1284->getItemEscape("product/price/@size_min_formatted")}}
															{{else}}
																{{$loop1284->getItemEscape("price/@size_min_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
															{{if  $loop1284->getItem("product")}}
																{{$loop1284->getItemEscape("product/price/@size_max_formatted")}}
															{{else}}
																{{$loop1284->getItemEscape("price/@size_max_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
															{{if  $loop1284->getItem("product")}}
																{{$loop1284->getItemEscape("product/price/@size_min_maxprice_formatted")}}
															{{else}}
																{{$loop1284->getItemEscape("price/@size_min_maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
															{{if  $loop1284->getItem("product")}}
																{{$loop1284->getItemEscape("product/price/@size_max_maxprice_formatted")}}
															{{else}}
																{{$loop1284->getItemEscape("price/@size_max_maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_points" assign="var_points"}}
															{{if  $loop1284->getItem("product")}}
																{{$loop1284->getItemEscape("product/price/@points")}}
															{{else}}
																{{$loop1284->getItemEscape("price/@points")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_value" assign="var_value"}}
															{{if  $loop1284->getItem("product")}}
																{{$loop1284->getItemEscape("product/price/@size_min")}}
															{{else}}
																{{$loop1284->getItemEscape("price/@size_min")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{if  $loop1284->getItem("price/@price_unit_formatted") and  $loop1284->getItem("sizes/@unit")}}
																{{$loop1284->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop1284->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop1284->getItemEscape("sizes/@unit")}}
															{{elseif  $loop1284->getItem("product/price/@price_unit_formatted") and  $loop1284->getItem("product/sizes/@unit")}}
																{{$loop1284->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop1284->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop1284->getItemEscape("product/sizes/@unit")}}
															{{else}}
																{{$var_size_min_formatted}}
															{{/if}}
														{{/capture}}
														{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
															{{if  $loop1284->getItem("price/@maxprice_unit_formatted")}}
																{{$loop1284->getItemEscape("price/@maxprice_unit_formatted")}}
															{{elseif  $loop1284->getItem("product/price/@maxprice_unit_formatted")}}
																{{$loop1284->getItemEscape("product/price/@maxprice_unit_formatted")}}
															{{elseif  $loop1284->getItem("product")}}
																{{$loop1284->getItemEscape("product/price/@maxprice_formatted")}}
															{{else}}
																{{$loop1284->getItemEscape("price/@maxprice_formatted")}}
															{{/if}}
														{{/capture}}
														<div class="product_prices">
															{{if $var_size_min_formatted  neq (string) $var_size_max_formatted}}
																<span class="price">{{$var_size_min_formatted}}{{literal}}-{{/literal}}{{$var_size_max_formatted}}</span>
																{{if $var_size_min_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">
																		<span>{{$var_size_min_maxprice_formatted}}</span>
																		<b>{{literal}}-{{/literal}}</b>
																		<span>{{$var_size_max_maxprice_formatted}}</span></del>
																{{/if}}
																{{if $var_points  neq (string) ''}}
																	<span class="point-price">{{$var_points}}
																		<span class="currency">{{$txt['106513::58826_012']}}</span></span>
																{{/if}}
															{{elseif (($var_value  == (string) 0) and $var_points  == (string) '') or ($var_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop1284->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
																<a {{assign "hrefAttributeTmp32" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp32" assign="hrefAttributeTmp32"}}{{$loop1284->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106513::58826_009']}}"{{capture name="hrefAttributeTmp32" assign="hrefAttributeTmp32"}}{{$loop1284->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106513::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp32}}"></a>
															{{else}}
																<span class="price">{{$txt['106513::58826_003']}}{{$var_price_formatted}}</span>
																{{if $var_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['106513::58826_006']}}{{$var_maxprice_formatted}}</del>
																{{/if}}
																{{if $var_points  neq (string) ''}}
																	<span class="point-price">{{$var_points}}
																		<span class="currency">{{$txt['106513::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop1284->getItem("price/@unit_converted_price_formatted")}}
																<small class="s_unit_converted_price">{{$loop1284->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop1284->getItemEscape("price/@unit_converted_format")}}</small>
															{{/if}}
														</div>
													{{else}}
														{{capture name="var_size_min_net_formatted" assign="var_size_min_net_formatted"}}
															{{if  $loop1284->getItem("product")}}
																{{$loop1284->getItemEscape("product/price/@size_min_net_formatted")}}
															{{else}}
																{{$loop1284->getItemEscape("price/@size_min_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_net_formatted" assign="var_size_max_net_formatted"}}
															{{if  $loop1284->getItem("product")}}
																{{$loop1284->getItemEscape("product/price/@size_max_net_formatted")}}
															{{else}}
																{{$loop1284->getItemEscape("price/@size_max_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_min_net_maxprice_formatted" assign="var_size_min_net_maxprice_formatted"}}
															{{if  $loop1284->getItem("product")}}
																{{$loop1284->getItemEscape("product/price/@size_min_maxprice_net_formatted")}}
															{{else}}
																{{$loop1284->getItemEscape("price/@size_min_maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_size_max_maxprice_net_formatted" assign="var_size_max_maxprice_net_formatted"}}
															{{if  $loop1284->getItem("product")}}
																{{$loop1284->getItemEscape("product/price/@size_max_maxprice_net_formatted")}}
															{{else}}
																{{$loop1284->getItemEscape("price/@size_max_maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_points_net" assign="var_points_net"}}
															{{if  $loop1284->getItem("product")}}
																{{$loop1284->getItemEscape("product/price/@points")}}
															{{else}}
																{{$loop1284->getItemEscape("price/@points")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_net_value" assign="var_net_value"}}
															{{if  $loop1284->getItem("product")}}
																{{$loop1284->getItemEscape("product/price/@size_min_net")}}
															{{else}}
																{{$loop1284->getItemEscape("price/@size_min_net")}}
															{{/if}}
														{{/capture}}
														{{capture name="var_price_formatted" assign="var_price_formatted"}}
															{{if  $loop1284->getItem("price/@price_unit_net_formatted") and  $loop1284->getItem("sizes/@unit")}}
																{{$loop1284->getItemEscape("price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop1284->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop1284->getItemEscape("sizes/@unit")}}
															{{elseif  $loop1284->getItem("product/price/@price_unit_net_formatted") and  $loop1284->getItem("product/sizes/@unit")}}
																{{$loop1284->getItemEscape("product/price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop1284->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop1284->getItemEscape("product/sizes/@unit")}}
															{{else}}
																{{$var_size_min_net_formatted}}
															{{/if}}
														{{/capture}}
														{{capture name="var_maxprice_net_formatted" assign="var_maxprice_net_formatted"}}
															{{if  $loop1284->getItem("price/@maxprice_unit_net_formatted")}}
																{{$loop1284->getItemEscape("price/@maxprice_unit_net_formatted")}}
															{{elseif  $loop1284->getItem("product/price/@maxprice_unit_net_formatted")}}
																{{$loop1284->getItemEscape("product/price/@maxprice_unit_net_formatted")}}
															{{elseif  $loop1284->getItem("product")}}
																{{$loop1284->getItemEscape("product/price/@maxprice_net_formatted")}}
															{{else}}
																{{$loop1284->getItemEscape("price/@maxprice_net_formatted")}}
															{{/if}}
														{{/capture}}
														<div class="product_prices">
															{{if $var_size_min_net_formatted  neq (string) $var_size_max_net_formatted}}
																<span class="price">{{$var_size_min_net_formatted}}{{literal}}-{{/literal}}{{$var_size_max_net_formatted}}{{$var_net_prices}}</span>
																{{if $var_size_min_net_maxprice_formatted  neq (string) ''}}
																	<del class="max-price">
																		<span>{{$var_size_min_net_maxprice_formatted}}</span>
																		<b>{{literal}}-{{/literal}}</b>
																		<span>{{$var_size_max_maxprice_net_formatted}}</span>{{$var_net_prices}}</del>
																{{/if}}
																{{if $var_points_net  neq (string) ''}}
																	<span class="point-price">{{$var_points_net}}
																		<span class="currency">{{$txt['106513::58826_012']}}</span></span>
																{{/if}}
															{{elseif (($var_net_value  == (string) 0) and $var_points_net  == (string) '') or ($var_net_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop1284->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
																<a {{assign "hrefAttributeTmp32" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp32" assign="hrefAttributeTmp32"}}{{$loop1284->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106513::58826_009']}}"{{capture name="hrefAttributeTmp32" assign="hrefAttributeTmp32"}}{{$loop1284->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106513::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp32}}"></a>
															{{else}}
																<span class="price">{{$txt['106513::58826_003']}}{{$var_price_formatted}}{{$var_net_prices}}</span>
																{{if $var_maxprice_net_formatted  neq (string) ''}}
																	<del class="max-price">{{$txt['106513::58826_006']}}{{$var_maxprice_net_formatted}}{{$var_net_prices}}</del>
																{{/if}}
																{{if $var_points_net  neq (string) ''}}
																	<span class="point-price">{{$var_points_net}}
																		<span class="currency">{{$txt['106513::58826_012']}}</span></span>
																{{/if}}
															{{/if}}
															{{if  $loop1284->getItem("price/@unit_converted_price_net_formatted")}}
																<small class="s_unit_converted_price">{{$loop1284->getItemEscape("price/@unit_converted_price_net_formatted")}}{{literal}}/{{/literal}}{{$loop1284->getItemEscape("price/@unit_converted_format")}}{{$var_net_prices}}</small>
															{{/if}}
														</div>
													{{/if}}
													{{if  $loop1284->getItem("client/@client")}}
														<div class="client">{{$loop1284->getItem("client/@client")}}
														</div>
													{{/if}}
													{{if  $loop1284->getItem("@note")}}
														<div class="note">
															<span>
																<i {{assign "classAttributeTmp20" ""}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}icon-star{{/capture}}{{if $loop1284->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp20}}"></i>
																<i {{assign "classAttributeTmp21" ""}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}icon-star{{/capture}}{{if $loop1284->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp21}}"></i>
																<i {{assign "classAttributeTmp22" ""}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}icon-star{{/capture}}{{if $loop1284->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp22}}"></i>
																<i {{assign "classAttributeTmp23" ""}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}icon-star{{/capture}}{{if $loop1284->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp23" assign="classAttributeTmp23"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp23}}"></i>
																<i {{assign "classAttributeTmp24" ""}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}icon-star{{/capture}}{{if $loop1284->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp24" assign="classAttributeTmp24"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp24}}"></i></span>
															<small>{{$txt['106513::58826_oc']}}{{$loop1284->getItem("@note")}}{{$txt['106513::58826_oce']}}</small>
														</div>
													{{/if}}
													{{if  $loop1284->getItem("content")}}
														<div class="cleardescription">{{$loop1284->getItem("content")}}
														</div>
													{{/if}}
												</div>
											{{/foreach}}
										</div>
									</div>
								{{else}}
									data-ajaxLoad="true"data-pageType="main"
									<div class="main_hotspot mb-4 skeleton">
										<span class="big_label"></span>
										<div class="main_hotspot_sub">
											<div class="products_wrapper row mx-0">
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
												<div class="product_wrapper col-6 col-sm-3">
													<span class="product-icon"></span>
													<span class="product-name"></span>
													<div class="product_prices">
													</div>
												</div>
											</div>
										</div>
									</div>
								{{/if}}
							</div>
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/comments/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/@hotspot_ajax")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/sizes/size/availability/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/category/@id")}}
						{{/if}}
						{{if  $xml->getItem("page/hotspot/products_zone4/opinion")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/@version_name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/firm/@name")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/traits/@id")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/price/@detalprice_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/price/@price_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/price/@price_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/price/@value") == (string)0}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/price/@maxprice_net_formatted")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/product/description")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/@iairs_ajax")}}
						{{/if}}
						{{if  $xml->getItem("/shop/page/hotspot/products_zone4/@cache_html")}}
						{{/if}}
						<iaiajaxend/>
						<!--Newsy na stronie głównej (strefa 2) (main_news2, 106523.1)-->
						{{capture name="main_blog_see_more" assign="main_blog_see_more"}}
							{{$txt['106523::53698_xx']}}
						{{/capture}}
						{{capture name="main_blog_view_all" assign="main_blog_view_all"}}
							{{$txt['106523::53698_yy']}}
						{{/capture}}
						{{if count( $xml->getList("page/mainpage2/item"))  gt (string) 0}}
							<div id="main_blog" class="article_wrapper mb-4">
								<h2 class="label_wrapper">
									<a {{assign "hrefAttributeTmp34" ""}}{{capture name="hrefAttributeTmp34" assign="hrefAttributeTmp34"}}/blog-list.php{{/capture}} class="big_label" {{if $xml->getItem("/shop/page/mainpage2/@link") and $xml->getItem("/shop/page/mainpage2/@link") neq (string)''}}{{capture name="hrefAttributeTmp34" assign="hrefAttributeTmp34"}}{{$xml->getItemEscape("/shop/page/mainpage2/@link")}}{{/capture}}{{/if}} title="{{$txt['106523::53716_label']}}"  href="{{$hrefAttributeTmp34}}">{{$txt['106523::53825_001']}}</a>
								</h2>
								<div class="row article_sub_wrapper col-bg-1">
									{{foreach from=$xml->getList("page/mainpage2/item") item=loop1554}}
										<div class="article_element_wrapper col-md-4 col-sm-6 col-12">
											<div class="date datasquare">{{$loop1554->getItem("date")}}
											</div>
											{{if ( $loop1554->getItem("link/@href"))  neq (string) ''}}
												<h3 class="article_name_wrapper">
													<a class="article_name" href="{{$loop1554->getItemEscape("link/@href")}}" title="{{$loop1554->getItem("title")}}">{{$loop1554->getItem("title")}}</a>
												</h3>
											{{else}}
												{{if  $loop1554->getItem("title")  neq (string) ''}}
													<h3 class="article_name_wrapper">
														<span class="article_name">{{$loop1554->getItem("title")}}</span>
													</h3>
												{{/if}}
											{{/if}}
											{{if  $loop1554->getItem("image/@src") and  $loop1554->getItem("image/@src") neq (string)''}}
												{{if ( $loop1554->getItem("link/@href"))  neq (string) ''}}
													{{literal}}
													<a class="article_image_wrapper" href="{{/literal}}{{$loop1554->getItemEscape("link/@href")}}{{literal}}" {{/literal}}{{else}}{{literal}}
<span class="article_image_wrapper" {{/literal}}{{/if}}{{literal}}>{{/literal}}
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1573641886" data-src-small="{{$loop1554->getItem("image/@src")}}" data-src="{{$loop1554->getItem("image/@src")}}" class="article_image b-lazy" alt="{{$loop1554->getItem("title/text()")}}"></img>
														{{if ( $loop1554->getItem("link/@href"))  neq (string) ''}}
															{{literal}}</a>{{/literal}}
													{{else}}
														{{literal}}</span>{{/literal}}
												{{/if}}
											{{/if}}
											<div class="article_text_wrapper">
												<div class="description_text">{{$loop1554->getItem("description")}}
												</div>
												{{if  $loop1554->getItem("more/@href") and $main_blog_see_more}}
													<div class="see_more_wrapper">
														<a class="see_more_link" href="{{$loop1554->getItemEscape("more/@href")}}" title="{{$loop1554->getItem("title")}}">{{$txt['106523::53698_xx']}}</a>
													</div>
												{{/if}}
											</div>
										</div>
									{{/foreach}}
								</div>
								{{if count( $xml->getList("page/mainpage2/item"))  gt (string) 0 and $main_blog_view_all}}
									<div class="view_all_wrapper">
										<a href="/blog-list.php" class="view_all_link btn-small" title="{{$txt['106523::53698_yy']}}">{{$txt['106523::53698_yy']}}</a>
									</div>
								{{/if}}
							</div>
						{{/if}}
						<!--Newsy na stronie głównej (strefa 1) (main_news1, 106524.1)-->
						{{capture name="main_news_see_more" assign="main_news_see_more"}}
							{{$txt['106524::53698_xx']}}
						{{/capture}}
						{{capture name="main_news_view_all" assign="main_news_view_all"}}
							{{$txt['106524::53698_yy']}}
						{{/capture}}
						{{if count( $xml->getList("page/mainpage1/item"))  gt (string) 0}}
							<div id="main_news1" class="article_wrapper mb-4">
								<h2 class="label_wrapper">
									<a {{assign "hrefAttributeTmp35" ""}}{{capture name="hrefAttributeTmp35" assign="hrefAttributeTmp35"}}/news.php{{/capture}} class="big_label" {{if $xml->getItem("/shop/page/mainpage1/@link") and $xml->getItem("/shop/page/mainpage1/@link") neq (string)''}}{{capture name="hrefAttributeTmp35" assign="hrefAttributeTmp35"}}{{$xml->getItemEscape("/shop/page/mainpage1/@link")}}{{/capture}}{{/if}} title="{{$txt['106524::53716_label']}}"  href="{{$hrefAttributeTmp35}}">{{$txt['106524::53825_001']}}</a>
								</h2>
								<div class="row article_sub_wrapper col-bg-1">
									{{foreach from=$xml->getList("page/mainpage1/item") item=loop1649}}
										<div class="article_element_wrapper col-md-4 col-sm-6 col-12">
											<div class="date datasquare d-none">{{$loop1649->getItem("date")}}
											</div>
											{{if ( $loop1649->getItem("link/@href"))  neq (string) ''}}
												<h3 class="article_name_wrapper">
													<a class="article_name" href="{{$loop1649->getItemEscape("link/@href")}}" title="{{$loop1649->getItem("title")}}">{{$loop1649->getItem("title")}}</a>
												</h3>
											{{else}}
												{{if  $loop1649->getItem("title")  neq (string) ''}}
													<h3 class="article_name_wrapper">
														<span class="article_name">{{$loop1649->getItem("title")}}</span>
													</h3>
												{{/if}}
											{{/if}}
											{{if  $loop1649->getItem("image/@src") and  $loop1649->getItem("image/@src") neq (string)''}}
												{{if ( $loop1649->getItem("link/@href"))  neq (string) ''}}
													{{literal}}
													<a class="article_image_wrapper" href="{{/literal}}{{$loop1649->getItemEscape("link/@href")}}{{literal}}" {{/literal}}{{else}}{{literal}}
<span class="article_image_wrapper" {{/literal}}{{/if}}{{literal}}>{{/literal}}
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1573641886" data-src-small="{{$loop1649->getItem("image/@src")}}" data-src="{{$loop1649->getItem("image/@src")}}" class="article_image b-lazy" alt="{{$loop1649->getItem("title/text()")}}"></img>
														{{if ( $loop1649->getItem("link/@href"))  neq (string) ''}}
															{{literal}}</a>{{/literal}}
													{{else}}
														{{literal}}</span>{{/literal}}
												{{/if}}
											{{/if}}
											<div class="article_text_wrapper">
												<div class="description_text">{{$loop1649->getItem("description")}}
												</div>
												{{if  $loop1649->getItem("more/@href") and $main_news_see_more}}
													<div class="see_more_wrapper">
														<a class="see_more_link" href="{{$loop1649->getItemEscape("more/@href")}}" title="{{$loop1649->getItem("title")}}">{{$txt['106524::53698_xx']}}</a>
													</div>
												{{/if}}
											</div>
										</div>
									{{/foreach}}
								</div>
								{{if count( $xml->getList("page/mainpage1/item"))  gt (string) 0 and $main_news_view_all}}
									<div class="view_all_wrapper">
										<a href="/news.php" class="view_all_link btn-small" title="{{$txt['106524::53698_yy']}}">{{$txt['106524::53698_yy']}}</a>
									</div>
								{{/if}}
							</div>
						{{/if}}
						<!--CMS na stronie głównej 2 (main_cms2, 106519.1)-->
						{{if  $xml->getItem("page/text[@id='14']")}}
							{{foreach from=$xml->getList("page/text[@id='14']") item=loop1728}}
								<div id="main_cms2" class="cm mb-4">{{$loop1728->getItem("body")}}
								</div>
							{{/foreach}}
						{{/if}}
						<!--Banery 3 na stronie głównej (main_banner3, 106520.1)-->
						{{if count( $xml->getList("commercial_banner3/link"))}}
							<div id="menu_banners3" class="row mb-4 mx-0">
								{{foreach from=$xml->getList("commercial_banner3/link") item=loop1739}}
									<div {{assign "classAttributeTmp25" ""}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}menu_button_wrapper{{/capture}}{{if count( $loop1739->getList("/shop/commercial_banner3/link")) == (string) 1}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}menu_button_wrapper col-12{{/capture}}{{elseif count( $loop1739->getList("/shop/commercial_banner3/link")) == (string) 2}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}menu_button_wrapper col-6{{/capture}}{{elseif count( $loop1739->getList("/shop/commercial_banner3/link")) == (string) 3}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}menu_button_wrapper col-md-4 col-6{{/capture}}{{else}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}menu_button_wrapper col-md-3 col-6{{/capture}}{{/if}}  class="{{$classAttributeTmp25}}">
										{{if !( $loop1739->getItem("html"))}}
											{{if  $loop1739->getItem("@href")}}
												<a {{assign "targetAttributeTmp38" ""}}{{capture name="targetAttributeTmp38" assign="targetAttributeTmp38"}}_self{{/capture}} href="{{$loop1739->getItemEscape("@href")}}" {{if $loop1739->getItem("@target")}}{{capture name="targetAttributeTmp38" assign="targetAttributeTmp38"}}{{$loop1739->getItemEscape("@target")}}{{/capture}}{{/if}}{{if $loop1739->getItem("text")}} title="{{$loop1739->getItemEscape("text")}}"{{/if}}  target="{{$targetAttributeTmp38}}">
													{{if  $loop1739->getItem("image") or  $loop1739->getItem("image_desktop") or  $loop1739->getItem("image_tablet") or  $loop1739->getItem("image_mobile")}}
														<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1573641886" alt="{{$loop1739->getItemEscape("text")}}" src="{{$loop1739->getItemEscape("image/@src")}}" {{if $loop1739->getItem("image_desktop") or $loop1739->getItem("image_tablet") or $loop1739->getItem("image_mobile")}} class="rwd-src" {{/if}}{{if $loop1739->getItem("image/@src")}} src="{{$loop1739->getItemEscape("image/@src")}}" {{/if}}{{if $loop1739->getItem("image_desktop/@src")}} data-src_desktop="{{$loop1739->getItemEscape("image_desktop/@src")}}" {{/if}}{{if $loop1739->getItem("image_tablet/@src")}} data-src_tablet="{{$loop1739->getItemEscape("image_tablet/@src")}}" {{/if}}{{if $loop1739->getItem("image_mobile/@src")}} data-src_mobile="{{$loop1739->getItemEscape("image_mobile/@src")}}" {{/if}}></img>
													{{else}}
														{{$loop1739->getItem("text")}}
													{{/if}}
													</a>
											{{else}}
												{{if  $loop1739->getItem("image") or  $loop1739->getItem("image_desktop") or  $loop1739->getItem("image_tablet") or  $loop1739->getItem("image_mobile")}}
													<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1573641886" alt="{{$loop1739->getItemEscape("text")}}" src="{{$loop1739->getItemEscape("image/@src")}}" {{if $loop1739->getItem("image_desktop") or $loop1739->getItem("image_tablet") or $loop1739->getItem("image_mobile")}} class="rwd-src" {{/if}}{{if $loop1739->getItem("image/@src")}} src="{{$loop1739->getItemEscape("image/@src")}}" {{/if}}{{if $loop1739->getItem("image_desktop/@src")}} data-src_desktop="{{$loop1739->getItemEscape("image_desktop/@src")}}" {{/if}}{{if $loop1739->getItem("image_tablet/@src")}} data-src_tablet="{{$loop1739->getItemEscape("image_tablet/@src")}}" {{/if}}{{if $loop1739->getItem("image_mobile/@src")}} data-src_mobile="{{$loop1739->getItemEscape("image_mobile/@src")}}" {{/if}}></img>
												{{else}}
													{{$loop1739->getItem("text")}}
												{{/if}}
											{{/if}}
										{{else}}
											{{$loop1739->getItem("html")}}
										{{/if}}
									</div>
								{{/foreach}}
							</div>
						{{/if}}
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
