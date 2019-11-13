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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/search_filters.js.gzip?r=1573641886">			</script>

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
						{{include file="component_menu_filter_97634.tpl"}}
					</aside>
				{{/if}}
				{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'content')}}
					<div {{assign "classAttributeTmp2" ""}}  id="content"{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}span9{{/capture}}{{if $xml->getItem("page/@type") == (string) 'projector'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_projector_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'search'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_search_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'main'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_main_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'navigation'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_navigation_page_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-list'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_list_c_class']}}{{/capture}}{{elseif $xml->getItem("page/@type") == (string) 'blog-item'}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_blog_item_c_class']}}{{/capture}}{{else}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}{{$txt['107419::70925_otherwise_c_class']}}{{/capture}}{{/if}}  class="{{$classAttributeTmp2}}">
						{{include file="component_menu_messages_106608.tpl"}}
						<!--Opis kategorii w wyszukiwaniu (search_categoriesdescription, 106637.1)-->
						<div class="search_categoriesdescription">
							<h1 class="big_label">
								{{if !( $xml->getItem("page/products/additional/category_list/name")  == (string) '')}}
									{{$xml->getItem("page/products/additional/category_list/name")}}
								{{else}}
									{{$txt['106637::30022_016wy']}}
								{{/if}}
							</h1>
							{{if !( $xml->getItem("page/products/@hideproducts")  == (string) 'true')}}
								<span class="navigation_total">{{$txt['106637::30022_018d']}}{{$xml->getItemEscape("page/products/navigation/@total")}}{{$txt['106637::30022_018e']}}</span>
							{{/if}}
							{{if !( $xml->getItem("page/products/additional/category_list/description")  == (string) '') and ( $xml->getItem("page/products/additional/category_list/description")) and count( $xml->getList("/shop/page/products/navigation/filtering/filter[@selected]"))  == (string) 0}}
								{{if ( $xml->getItem("/shop/page/products/@hideproducts")  == (string) 'true' ) or (( $xml->getItem("/shop/page/products/navigation/item[1]/@counter")  == (string)1) and ( $xml->getItem("/shop/page/products/navigation/item[1]/@type")  == (string)'current'))}}
									<div class="search_categoriesdescription_sub cm">{{$xml->getItem("page/products/additional/category_list/description")}}
									</div>
								{{/if}}
							{{/if}}
						</div>
						<!--Filtrowanie wyników wyszukiwania (search_filters, 106540.1)-->
						{{capture name="setFilter_showaFiltering" assign="setFilter_showaFiltering"}}
							{{$txt['106540::103182_filtering']}}
						{{/capture}}
						{{capture name="setFilter_showall" assign="setFilter_showall"}}
							{{$txt['106540::66412_500_001']}}
						{{/capture}}
						{{capture name="filter_ukryj" assign="filter_ukryj"}}
							{{$txt['106540::66412_ukryj']}}
						{{/capture}}
						{{capture name="filter_pokaz" assign="filter_pokaz"}}
							{{$txt['106540::66412_pokaz']}}
						{{/capture}}
						{{capture name="wprowadz_zakres_cen" assign="wprowadz_zakres_cen"}}
							{{$txt['106540::66412_z_0']}}
						{{/capture}}
						{{if count( $xml->getList("/shop/page/products/navigation/filtering/filter"))}}
							<script class="ajaxLoad">
                var filter_ukryj = '{{$txt['106540::66412_ukryj']}}';
                var filter_pokaz = '{{$txt['106540::66412_pokaz']}}';
            							</script>

							<div id="menu_filter" >
								<div id="menu_filter_sub">
									<form id="filter_form" method="get" action="{{$xml->getItemEscape("/shop/page/products/navigation/search_link/@value")}}">
										{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter") item=loop292}}
											<input type="hidden" id="{{$loop292->getItemEscape("@id")|replace:'[]':''}}_form" name="{{$loop292->getItemEscape("@id")}}" value=""></input>
										{{/foreach}}
										{{if !( $xml->getItem("/shop/page/products/navigation/filtering/filter[@id = 'filter_nextday']/item[@value='y']")) and (( $xml->getItem("/shop/page/nextday/@couriers_available")  == (string) 'true' and  $xml->getItem("/shop/page/nextday/@client_localized")  == (string) 'false') or ( $xml->getItem("/shop/page/nextday/@couriers_available")  == (string) 'true' and  $xml->getItem("/shop/page/nextday/@client_localized")  == (string) 'true' and  $xml->getItem("/shop/page/nextday/@service_available_for_current_location")  == (string) 'true'))}}
											<input type="hidden" id="filter_nextday_form" name="filter_nextday" value=""></input>
										{{/if}}
										{{if !( $xml->getItem("/shop/page/products/navigation/filtering/filter[@id = 'filter_sameday']/item[@value='y']")) and (( $xml->getItem("/shop/page/sameday/@couriers_available")  == (string) 'true' and  $xml->getItem("/shop/page/sameday/@client_localized")  == (string) 'false') or ( $xml->getItem("/shop/page/sameday/@couriers_available")  == (string) 'true' and  $xml->getItem("/shop/page/sameday/@client_localized")  == (string) 'true' and  $xml->getItem("/shop/page/sameday/@service_available_for_current_location")  == (string) 'true'))}}
											<input type="hidden" id="filter_sameday_form" name="filter_sameday" value=""></input>
										{{/if}}
									</form>
									<div {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}menu_filter_wrapper{{/capture}}{{if $xml->getItem("group")}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}menu_filter_wrapper group{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}">
										{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter[(@type='list') or (@type='text')]") item=loop319}}
											{{if  $loop319->getItem("@type") == (string)'text'}}
												<div class="filter_item list_type" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}">
													<div class="filter_header">
														<a {{assign "hrefAttributeTmp30" ""}}{{assign "classAttributeTmp4" ""}}{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}#{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_toggle{{/capture}} id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}#toggle_{{$loop319->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106540::66412_001_001']}}" {{if $loop319->getItem("@selected")}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}"  href="{{$hrefAttributeTmp30}}"></a>
														<span>{{$loop319->getItemEscape("@name")}}</span>
														<span class="filter_loader" style="display: none;" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
														{{if  $loop319->getItem("@selected") and !( $loop319->getItem("@selected")  == (string) '')}}
															<a class="rem_filter" href="{{$loop319->getItemEscape("@link_remove")}}">{{$txt['106540::30020_001_bb']}}</a>
														{{/if}}
													</div>
													<div class="filter_content bg_alter" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_content">
														<input type="text" class="input_filter_text" value=" {{if ( $loop319->getItem("@selected")) and not ( $loop319->getItem("@selected") == (string) '')}}{{$loop319->getItemEscape("@selected")}}{{/if}} " placeholder="{{$txt['106540::30020_006_01']}}" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_input"></input>
														<a class="filter_submit_small" href="#filter_submit" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop319->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106540::66412_004_001a']}}">{{$txt['106540::66412_004_001b']}}</a>
													</div>
												</div>
											{{elseif  $loop319->getItem("@display") == (string)'gfx'}}
												<div class="filter_item list_type" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}">
													<div class="filter_header">
														<a {{assign "hrefAttributeTmp30" ""}}{{assign "classAttributeTmp4" ""}}{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}#{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_toggle{{/capture}} id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}#toggle_{{$loop319->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106540::66412_001_001']}}" {{if $loop319->getItem("@selected")}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}"  href="{{$hrefAttributeTmp30}}"></a>
														<span>{{$loop319->getItemEscape("@name")}}</span>
														<span class="filter_loader" style="display: none;" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
														{{if  $loop319->getItem("item[@selected='selected']")}}
															<a class="rem_filter" href="{{$loop319->getItemEscape("@link_remove")}}">{{$txt['106540::30020_001_bb']}}</a>
														{{/if}}
													</div>
													<div class="filter_content filter_gfxonly bg_alter" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_content">
														<ul class="{{$loop319->getItemEscape("@id")|replace:'[]':''}}">
															{{foreach from=$loop319->getList("item") item=loop401}}
																<!--IAI_TEMPLATE_sort_SELECT:@selected_DATATYPE:_ORDER:descending-->
																<li {{if $loop401->getItem("@quantity") == (string) '0'}} class="disabled"{{/if}} id="{{$loop401->getItemEscape("../@id")|replace:'[]':''}}_{{$loop401->getItemEscape("@value")}}_box">
																	<input type="checkbox" class="checkbox_hidden" id="{{$loop401->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop401->getItemEscape("@value")}}" value="{{$loop401->getItemEscape("@value")}}" {{if $loop401->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop401->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
																	{{if  $loop401->getItem("@gfx_normal")}}
																		<label {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}imgfix{{/capture}}{{if $loop401->getItem("@selected") == (string)'selected'}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}imgfix active{{/capture}}{{/if}} for="{{$loop401->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop401->getItemEscape("@value")}}"  class="{{$classAttributeTmp6}}">
																			<span class="imgfix" style="background: url('{{$loop401->getItemEscape("@gfx_normal")}}') no-repeat -5000px;"></span>
																			<img class="filter_gfxonly" src="{{$loop401->getItemEscape("@gfx_normal")}}" alt="{{$loop401->getItemEscape("@name")}}" title="{{$loop401->getItemEscape("@name")}}"></img>
																		</label>
																	{{/if}}
																</li>
															{{/foreach}}
														</ul>
														<div class="filter_options" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_options">
															<a {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}filter_submit{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}filter_submit{{/capture}} href="#filter_submit" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop319->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106540::66412_002_001a']}}"  class="{{$classAttributeTmp7}}">{{$txt['106540::66412_002_001b']}}</a>
														</div>
													</div>
												</div>
											{{elseif  $loop319->getItem("@display") == (string)'name_gfx'}}
												<div class="filter_item list_type" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}">
													<div class="filter_header">
														<a {{assign "hrefAttributeTmp30" ""}}{{assign "classAttributeTmp4" ""}}{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}#{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_toggle{{/capture}} id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}#toggle_{{$loop319->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106540::66412_001_001']}}" {{if $loop319->getItem("@selected")}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}"  href="{{$hrefAttributeTmp30}}"></a>
														<span>{{$loop319->getItemEscape("@name")}}</span>
														<span class="filter_loader" style="display: none;" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
														{{if  $loop319->getItem("item[@selected='selected']")}}
															<a class="rem_filter" href="{{$loop319->getItemEscape("@link_remove")}}">{{$txt['106540::30020_001_bb']}}</a>
														{{/if}}
													</div>
													<div class="filter_content filter_namegfx bg_alter" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_content">
														<ul class="{{$loop319->getItemEscape("@id")|replace:'[]':''}}">
															{{foreach from=$loop319->getList("item") item=loop485}}
																<!--IAI_TEMPLATE_sort_SELECT:@selected_DATATYPE:_ORDER:descending-->
																<li {{assign "classAttributeTmp9" ""}}{{if ( $loop485->getItem("@quantity") == (string) '0') and ( $loop485@iteration gt (string) $setFilter_showall)}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}disabled filterhidden{{/capture}}{{elseif $loop485@iteration gt (string) $setFilter_showall}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}filterhidden{{/capture}}{{elseif $loop485->getItem("@quantity") == (string) '0'}}{{capture name="classAttributeTmp9" assign="classAttributeTmp9"}}disabled{{/capture}}{{/if}} id="{{$loop485->getItemEscape("../@id")|replace:'[]':''}}_{{$loop485->getItemEscape("@value")}}_box"  class="{{$classAttributeTmp9}}">
																	<table class="filter_namegfx">
																		<tbody>
																			<tr>
																				<td class="filter_namegfx_input">
																					<input type="checkbox" class="filter_checkbox" id="{{$loop485->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop485->getItemEscape("@value")}}" value="{{$loop485->getItemEscape("@value")}}" {{if $loop485->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop485->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
																				</td>
																				<td class="filter_namegfx_gfx">
																					{{if  $loop485->getItem("@gfx_normal")}}
																						<label class="imgfix" for="{{$loop485->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop485->getItemEscape("@value")}}">
																							<span class="imgfix" style="background: url('{{$loop485->getItemEscape("@gfx_normal")}}') no-repeat -5000px;"></span>
																							<img class="filter_namegfx_gfx" src="{{$loop485->getItemEscape("@gfx_normal")}}" alt="{{$loop485->getItemEscape("@name")}}" title="{{$loop485->getItemEscape("@name")}}"></img>
																						</label>
																					{{else}}
																						<label class="imgfix" for="{{$loop485->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop485->getItemEscape("@value")}}">
																						</label>
																					{{/if}}
																				</td>
																				<td class="filter_namegfx_name">
																					<label for="{{$loop485->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop485->getItemEscape("@value")}}">{{$loop485->getItemEscape("@name")}}
																					</label>
																					<span class="filter_quantity" {{if !( $loop485->getItem("@quantity"))}} style="display: none;"{{/if}} id="{{$loop485->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop485->getItemEscape("@value")}}_quantity" data-filter="{{$loop485->getItemEscape("@name")}}">{{$txt['106540::66412_003_001a']}}
																						<span class="filter_quantity_value">
																							{{if  $loop485->getItem("@quantity")}}
																								{{$loop485->getItemEscape("@quantity")}}
																							{{else}}
																								0
																							{{/if}}
																							</span>{{$txt['106540::66412_003_001b']}}</span>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</li>
															{{/foreach}}
														</ul>
														<div class="filter_options" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_options">
															<a {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}filter_submit{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}filter_submit{{/capture}} href="#filter_submit" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop319->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106540::66412_002_001a']}}"  class="{{$classAttributeTmp7}}">{{$txt['106540::66412_002_001b']}}</a>
															{{if count( $loop319->getList("item"))  gt (string) $setFilter_showall}}
																<a {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}show_all{{/capture}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}show_all{{/capture}} href="#filter_showall" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_showall" data-filter="{{$loop319->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106540::66412_002_002a']}}"  class="{{$classAttributeTmp11}}">{{$txt['106540::66412_002_002b']}}</a>
															{{/if}}
														</div>
													</div>
												</div>
											{{elseif  $loop319->getItem("@id") == (string)'filter_price'}}
												<div class="filter_item list_type" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}">
													<div class="filter_header">
														<a {{assign "hrefAttributeTmp30" ""}}{{assign "classAttributeTmp4" ""}}{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}#{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_toggle{{/capture}} id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}#toggle_{{$loop319->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106540::66412_001_001']}}" {{if $loop319->getItem("@selected")}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}"  href="{{$hrefAttributeTmp30}}"></a>
														<span>{{$loop319->getItemEscape("@name")}}</span>
														<span class="filter_loader" style="display: none;" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
														{{if  $loop319->getItem("@selected") and !( $loop319->getItem("@selected")  == (string) '')}}
															<a class="rem_filter" href="{{$loop319->getItemEscape("@link_remove")}}">{{$txt['106540::30020_001_bb']}}</a>
														{{/if}}
													</div>
													<div class="filter_content bg_alter" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_content">
														<ul class="{{$loop319->getItemEscape("@id")|replace:'[]':''}}">
															{{foreach from=$loop319->getList("item") item=loop600}}
																<li {{if $loop600->getItem("@quantity") == (string) '0'}} class="disabled"{{/if}} id="{{$loop600->getItemEscape("../@id")|replace:'[]':''}}_{{$loop600->getItemEscape("@value")}}_box">
																	<input type="checkbox" class="filter_checkbox" id="{{$loop600->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop600->getItemEscape("@value")}}" value="{{$loop600->getItemEscape("@value")}}" {{if $loop600->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop600->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
																	<div class="filter_name_wrapper">
																		<label for="{{$loop600->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop600->getItemEscape("@value")}}">{{$loop600->getItemEscape("@name_formatted")}}
																		</label>
																		<span class="filter_quantity" {{if !( $loop600->getItem("@quantity"))}} style="display: none;"{{/if}} id="{{$loop600->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop600->getItemEscape("@value")}}_quantity" data-filter="{{$loop600->getItemEscape("@name")}}">{{$txt['106540::66412_003_001a']}}
																			<span class="filter_quantity_value">
																				{{if  $loop600->getItem("@quantity")}}
																					{{$loop600->getItemEscape("@quantity")}}
																				{{else}}
																					0
																				{{/if}}
																				</span>{{$txt['106540::66412_003_001b']}}</span>
																	</div>
																</li>
															{{/foreach}}
														</ul>
														<div class="filter_options" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_options">
															<a {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}filter_submit{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}filter_submit{{/capture}} href="#filter_submit" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop319->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106540::66412_002_001a']}}"  class="{{$classAttributeTmp7}}">{{$txt['106540::66412_002_001b']}}</a>
														</div>
													</div>
												</div>
												{{if $wprowadz_zakres_cen}}
													<div class="filter_item list_type">
														<div class="filter_header">
															<a {{assign "hrefAttributeTmp34" ""}}{{assign "classAttributeTmp14" ""}}{{capture name="hrefAttributeTmp34" assign="hrefAttributeTmp34"}}#{{/capture}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}filter_toggle{{/capture}} id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_range_toggle"{{capture name="hrefAttributeTmp34" assign="hrefAttributeTmp34"}}#toggle_{{$loop319->getItemEscape("@id")|replace:'[]':''}}_range_content{{/capture}} title="{{$txt['106540::66412_001_001']}}" {{if $loop319->getItem("@selected")}}{{capture name="classAttributeTmp14" assign="classAttributeTmp14"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp14}}"  href="{{$hrefAttributeTmp34}}"></a>
															<span>{{$wprowadz_zakres_cen}}</span>
														</div>
														<div class="filter_content bg_alter" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_range_content">
															<ul class="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_range">
																<li class="filter_price_range">
																	{{if  $loop319->getItem("/shop/page/products/navigation/filtering/filter[(@id = 'filter_price')]/@selected")}}
																		<input type="hidden" id="min_price_set" value="{{$loop319->getItemEscape("substring-before(/shop/page/products/navigation/filtering/filter[(@id = 'filter_price')]/@selected,'-')")}}"></input>
																		<input type="hidden" id="max_price_set" value="{{$loop319->getItemEscape("substring-after(/shop/page/products/navigation/filtering/filter[(@id = 'filter_price')]/@selected,'-')")}}"></input>
																	{{/if}}
																	<input type="hidden" id="min_price_start" value="0"></input>
																	<input type="hidden" id="max_price_start" value="{{$loop319->getItemEscape("substring-before(substring-after(/shop/page/products/navigation/filtering/filter[@id = 'filter_price']/item[position() = last()]/@name,'- '), '.')")}}"></input>
																	<div id="slider-price_wrapper">
																		<div id="slider-price">
																		</div>
																	</div>
																	<div class="filter_range" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_range" data-filter="{{$loop319->getItemEscape("@id")|replace:'[]':''}}">
																		<span class="filter_range_from">{{$txt['106540::66412_007_001']}}</span>
																		<span class="filter_range_from_wrapper">
																			<input {{assign "valueAttributeTmp43" ""}}  type="text" class="filter_range_from" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_range_from" data-filter="{{$loop319->getItemEscape("@id")|replace:'[]':''}}" {{if !( $loop319->getItem("item[@selected = 'selected']")) and ( $loop319->getItem("@selected") and !( $loop319->getItem("@selected") == (string) ''))}}{{capture name="valueAttributeTmp43" assign="valueAttributeTmp43"}}{{$loop319->getItemEscape("substring-before(@selected, '-')")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp43" assign="valueAttributeTmp43"}}0{{/capture}}{{/if}}  value="{{$valueAttributeTmp43}}"></input>
																			<span class="filter_range_curr">{{$loop319->getItemEscape("/shop/currency/option[@selected = 'true']/@symbol")}}</span></span>
																		<span class="filter_range_to">{{$txt['106540::66412_007_002']}}</span>
																		<span class="filter_range_to_wrapper">
																			<input {{assign "valueAttributeTmp44" ""}}  type="text" class="filter_range_to" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_range_to" data-filter="{{$loop319->getItemEscape("@id")|replace:'[]':''}}" {{if !( $loop319->getItem("item[@selected = 'selected']")) and ( $loop319->getItem("@selected") and !( $loop319->getItem("@selected") == (string) ''))}}{{capture name="valueAttributeTmp44" assign="valueAttributeTmp44"}}{{$loop319->getItemEscape("substring-after(@selected, '-')")}}{{/capture}}{{else}}{{capture name="valueAttributeTmp44" assign="valueAttributeTmp44"}}{{$loop319->getItemEscape("substring-before(substring-after(/shop/page/products/navigation/filtering/filter[@id = 'filter_price']/item[position() = last()]/@name,'- '), '.')")}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp44}}"></input>
																			<span class="filter_range_curr">{{$loop319->getItemEscape("/shop/currency/option[@selected = 'true']/@symbol")}}</span></span>
																		<span class="filter_submit_range_wrapper">
																			<a class="filter_submit_range" href="#filter_submit" data-filter="{{$loop319->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106540::66412_004_001a']}}">{{$txt['106540::66412_004_001br']}}</a></span>
																	</div>
																</li>
															</ul>
														</div>
													</div>
												{{/if}}
											{{elseif  $loop319->getItem("@id") == (string)'filter_date'}}
												<div class="filter_item list_type" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}">
													<div class="filter_header">
														<a {{assign "hrefAttributeTmp30" ""}}{{assign "classAttributeTmp4" ""}}{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}#{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_toggle{{/capture}} id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}#toggle_{{$loop319->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106540::66412_001_001']}}" {{if $loop319->getItem("@selected")}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}"  href="{{$hrefAttributeTmp30}}"></a>
														<span>{{$loop319->getItemEscape("@name")}}</span>
														<span class="filter_loader" style="display: none;" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
														{{if  $loop319->getItem("@selected") and !( $loop319->getItem("@selected")  == (string) '')}}
															<a class="rem_filter" href="{{$loop319->getItemEscape("@link_remove")}}">{{$txt['106540::30020_001_bb']}}</a>
														{{/if}}
													</div>
													<div class="filter_content bg_alter" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_content">
														<ul class="{{$loop319->getItemEscape("@id")|replace:'[]':''}}">
															{{foreach from=$loop319->getList("item[@desc = '1week' or @desc = '1month' or @desc = '3months' or @desc = '6months' or @desc = '1year']") item=loop751}}
																<li {{if $loop751->getItem("@quantity") == (string) '0'}} class="disabled"{{/if}} id="{{$loop751->getItemEscape("../@id")|replace:'[]':''}}_{{$loop751->getItemEscape("@value")}}_box">
																	<input type="checkbox" data-filter="filter_date_option" class="filter_checkbox" id="{{$loop751->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop751->getItemEscape("@value")}}" value="{{$loop751->getItemEscape("@value")}}" {{if $loop751->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop751->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
																	<div class="filter_name_wrapper">
																		<label for="{{$loop751->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop751->getItemEscape("@value")}}">
																			{{if  $loop751->getItem("@desc")  == (string) '1week'}}
																				{{$txt['106540::66412_012_0011']}}
																			{{elseif  $loop751->getItem("@desc")  == (string) '1month'}}
																				{{$txt['106540::66412_012_001']}}
																			{{elseif  $loop751->getItem("@desc")  == (string) '3months'}}
																				{{$txt['106540::66412_012_002']}}
																			{{elseif  $loop751->getItem("@desc")  == (string) '6months'}}
																				{{$txt['106540::66412_012_003']}}
																			{{elseif  $loop751->getItem("@desc")  == (string) '1year'}}
																				{{$txt['106540::66412_012_004']}}
																			{{/if}}
																		</label>
																		<span class="filter_quantity" {{if !( $loop751->getItem("@quantity")) or ( $loop751->getItem("@quantity") == (string) '')}} style="display: none;"{{/if}} id="{{$loop751->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop751->getItemEscape("@value")}}_quantity" data-filter="{{$loop751->getItemEscape("@name")}}">{{$txt['106540::66412_003_001a']}}
																			<span class="filter_quantity_value">
																				{{if  $loop751->getItem("@quantity")}}
																					{{$loop751->getItemEscape("@quantity")}}
																				{{else}}
																					0
																				{{/if}}
																				</span>{{$txt['106540::66412_003_001b']}}</span>
																	</div>
																</li>
															{{/foreach}}
															<li>
																<label class="filter_calendar" for="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_datepicker">
																	<div class="filter_calendar" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_calendar" data-filter="{{$loop319->getItemEscape("@id")|replace:'[]':''}}">
																		<input {{assign "valueAttributeTmp45" ""}}  type="checkbox" class="filter_calendar checkbox_hidden" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_calendar_picker" {{if !( $loop319->getItem("item[@selected = 'selected']")) and ( $loop319->getItem("@selected") and !( $loop319->getItem("@selected") == (string) ''))}}{{capture name="valueAttributeTmp45" assign="valueAttributeTmp45"}}{{$loop319->getItemEscape("@selected")}}{{/capture}} checked="checked" {{else}}{{capture name="valueAttributeTmp45" assign="valueAttributeTmp45"}}{{/capture}}{{/if}}  value="{{$valueAttributeTmp45}}"></input>
																		{{if !( $loop319->getItem("item[@selected = 'selected']")) and ( $loop319->getItem("@selected") and !( $loop319->getItem("@selected")  == (string) ''))}}
																			<span class="filter_calendar_from">{{$txt['106540::66412_008_002']}}</span>
																			<input type="text" class="filter_datepicker" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_datepicker" data-filter="{{$loop319->getItemEscape("@selected")}}" value="{{$loop319->getItemEscape("@selected")}}"></input>
																		{{else}}
																			<span class="filter_calendar_from" style="display: none;">{{$txt['106540::66412_008_002']}}</span>
																			<input type="text" class="filter_datepicker" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_datepicker" placeholder="{{$txt['106540::66412_008_001']}}"></input>
																		{{/if}}
																	</div>
																</label>
																<script class="ajaxLoad">
                                                         var datepicker_min = '{{$loop319->getItemEscape("@oldest")}}';
                                                         var datepicker_max = '{{$loop319->getItemEscape("@today")}}';
                                                    																</script>

															</li>
														</ul>
														<div class="filter_options" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_options">
															<a {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}filter_submit{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}filter_submit{{/capture}} href="#filter_submit" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop319->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106540::66412_002_001a']}}"  class="{{$classAttributeTmp7}}">{{$txt['106540::66412_002_001b']}}</a>
														</div>
													</div>
												</div>
											{{else}}
												<div {{assign "classAttributeTmp17" ""}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}filter_item list_type{{/capture}} id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}" {{if $loop319->getItem("group")}}{{capture name="classAttributeTmp17" assign="classAttributeTmp17"}}filter_item list_type group{{/capture}}{{/if}}  class="{{$classAttributeTmp17}}">
													<div class="filter_header">
														<a {{assign "hrefAttributeTmp30" ""}}{{assign "classAttributeTmp4" ""}}{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}#{{/capture}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_toggle{{/capture}} id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_toggle"{{capture name="hrefAttributeTmp30" assign="hrefAttributeTmp30"}}#toggle_{{$loop319->getItemEscape("@id")|replace:'[]':''}}_content{{/capture}} title="{{$txt['106540::66412_001_001']}}" {{if $loop319->getItem("@selected")}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}"  href="{{$hrefAttributeTmp30}}"></a>
														<span>{{$loop319->getItemEscape("@name")}}</span>
														<span class="filter_loader" style="display: none;" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
														{{if  $loop319->getItem("item[@selected='selected']")}}
															<a class="rem_filter" href="{{$loop319->getItemEscape("@link_remove")}}">{{$txt['106540::30020_001_bb']}}</a>
														{{/if}}
													</div>
													{{if  $loop319->getItem("group")}}
														<div class="group_wrapper filter_sizes_content filter_content" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_content">
															<div class="group_header_wrapper">
																{{foreach from=$loop319->getList("group") item=loop874}}
																	<div class="filter_sub_header" group-id="{{$loop874->getItemEscape("@id")}}">{{$loop874->getItemEscape("@title")}}
																		<span class="filter_count_wrapper">{{$txt['106540::filter_count_text_before']}}
																			<span class="filter_count"></span>{{$txt['106540::filter_count_text_after']}}</span>
																	</div>
																{{/foreach}}
															</div>
															<div class="group_content_wrapper">
																{{foreach from=$loop319->getList("group") item=loop890}}
																	<div class="filter_content_sub" group-id="{{$loop890->getItemEscape("@id")}}" id="filter_sub_{{$loop890->getItemEscape("@id")|replace:'[]':''}}_content">
																		<div class="filter_content_sub_items">
																			{{if count( $loop890->getList("item"))  gt (string) $setFilter_showaFiltering - 1}}
																				<div class="filter_search">
																					<input type="text"/>
																					<div class="btn filter_search_btn">{{$txt['106540::30020_filter_search_btn']}}
																					</div>
																				</div>
																			{{/if}}
																			<span class="filter_loader" style="display: none;" id="filter_loader_{{$loop890->getItemEscape("@id")|replace:'[]':''}}_loader"></span>
																			{{if  $loop890->getItem("item[@selected='selected']")}}
																				<a class="rem_filter" href="{{$loop890->getItemEscape("@link_remove")}}">{{$txt['106540::30020_001_bb']}}</a>
																			{{/if}}
																			<ul class="filter_items_{{$loop890->getItemEscape("@id")|replace:'[]':''}}">
																				{{foreach from=$loop890->getList("item") item=loop917}}
																					<!--IAI_TEMPLATE_sort_SELECT:@selected_DATATYPE:_ORDER:descending-->
																					<li {{assign "classAttributeTmp19" ""}}{{if ( $loop917->getItem("@quantity") == (string) '0') and ( $loop917@iteration gt (string) $setFilter_showall)}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}disabled filterhidden{{/capture}}{{elseif $loop917@iteration gt (string) $setFilter_showall}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}filterhidden{{/capture}}{{elseif $loop917->getItem("@quantity") == (string) '0'}}{{capture name="classAttributeTmp19" assign="classAttributeTmp19"}}disabled{{/capture}}{{/if}} id="filter_item_{{$loop917->getItemEscape("../@id")|replace:'[]':''}}_{{$loop917->getItemEscape("@value")}}_box"  class="{{$classAttributeTmp19}}">
																						<input type="checkbox" class="filter_checkbox" id="filter_checkbox_{{$loop917->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop917->getItemEscape("@value")}}" value="{{$loop917->getItemEscape("@value")}}" {{if $loop917->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop917->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
																						<div class="filter_name_wrapper">
																							<label for="filter_checkbox_{{$loop917->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop917->getItemEscape("@value")}}">{{$loop917->getItem("@name")}}
																							</label>
																							<span class="filter_quantity" {{if !( $loop917->getItem("@quantity"))}} style="display: none;"{{/if}} id="filter_quantity_{{$loop917->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop917->getItemEscape("@value")}}_quantity" data-filter="{{$loop917->getItemEscape("@name")}}">{{$txt['106540::66412_003_001a']}}
																								<span class="filter_quantity_value">
																									{{if  $loop917->getItem("@quantity")}}
																										{{$loop917->getItemEscape("@quantity")}}
																									{{else}}
																										0
																									{{/if}}
																									</span>{{$txt['106540::66412_003_001b']}}</span>
																						</div>
																					</li>
																				{{/foreach}}
																			</ul>
																			<div class="filter_options" id="filter_options_{{$loop890->getItemEscape("@id")|replace:'[]':''}}_options">
																				<a class="filter_close" style="display: none;">{{$txt['106540::66412_002_001b_close']}}</a>
																				<a {{assign "classAttributeTmp20" ""}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}filter_submit{{/capture}}{{capture name="classAttributeTmp20" assign="classAttributeTmp20"}}filter_submit{{/capture}} href="#filter_submit" id="filter_submit_{{$loop890->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="filter_sub_{{$loop890->getItemEscape("@id")|replace:'[]':''}}_content" title="{{$txt['106540::66412_002_001a']}}"  class="{{$classAttributeTmp20}}">{{$txt['106540::66412_002_001b']}}</a>
																				{{if count( $loop890->getList("item"))  gt (string) $setFilter_showall}}
																					<a {{assign "classAttributeTmp21" ""}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}show_all{{/capture}}{{capture name="classAttributeTmp21" assign="classAttributeTmp21"}}show_all{{/capture}} href="#filter_showall" id="filter_showall_{{$loop890->getItemEscape("@id")|replace:'[]':''}}_showall" data-filter="filter_sub_{{$loop890->getItemEscape("@id")|replace:'[]':''}}_content" title="{{$txt['106540::66412_002_002a']}}"  class="{{$classAttributeTmp21}}">{{$txt['106540::66412_002_002b']}}</a>
																				{{/if}}
																			</div>
																		</div>
																	</div>
																{{/foreach}}
															</div>
														</div>
													{{else}}
														<div class="filter_content" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_content">
															<ul class="{{$loop319->getItemEscape("@id")|replace:'[]':''}}">
																{{foreach from=$loop319->getList("item") item=loop989}}
																	<!--IAI_TEMPLATE_sort_SELECT:@selected_DATATYPE:_ORDER:descending-->
																	<li {{assign "classAttributeTmp22" ""}}{{if ( $loop989->getItem("@quantity") == (string) '0') and ( $loop989@iteration gt (string) $setFilter_showall)}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}disabled filterhidden{{/capture}}{{elseif $loop989@iteration gt (string) $setFilter_showall}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}filterhidden{{/capture}}{{elseif $loop989->getItem("@quantity") == (string) '0'}}{{capture name="classAttributeTmp22" assign="classAttributeTmp22"}}disabled{{/capture}}{{/if}} id="{{$loop989->getItemEscape("../@id")|replace:'[]':''}}_{{$loop989->getItemEscape("@value")}}_box"  class="{{$classAttributeTmp22}}">
																		<input type="checkbox" class="filter_checkbox" id="{{$loop989->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop989->getItemEscape("@value")}}" value="{{$loop989->getItemEscape("@value")}}" {{if $loop989->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop989->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
																		<div class="filter_name_wrapper">
																			<label for="{{$loop989->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop989->getItemEscape("@value")}}">{{$loop989->getItem("@name")}}
																			</label>
																			<span class="filter_quantity" {{if !( $loop989->getItem("@quantity"))}} style="display: none;"{{/if}} id="{{$loop989->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop989->getItemEscape("@value")}}_quantity" data-filter="{{$loop989->getItemEscape("@name")}}">{{$txt['106540::66412_003_001a']}}
																				<span class="filter_quantity_value">
																					{{if  $loop989->getItem("@quantity")}}
																						{{$loop989->getItemEscape("@quantity")}}
																					{{else}}
																						0
																					{{/if}}
																					</span>{{$txt['106540::66412_003_001b']}}</span>
																		</div>
																	</li>
																{{/foreach}}
															</ul>
															<div class="filter_options" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_options">
																<a {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}filter_submit{{/capture}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}filter_submit{{/capture}} href="#filter_submit" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_submit" data-filter="{{$loop319->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106540::66412_002_001a']}}"  class="{{$classAttributeTmp7}}">{{$txt['106540::66412_002_001b']}}</a>
																{{if count( $loop319->getList("item"))  gt (string) $setFilter_showall}}
																	<a {{assign "classAttributeTmp11" ""}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}show_all{{/capture}}{{capture name="classAttributeTmp11" assign="classAttributeTmp11"}}show_all{{/capture}} href="#filter_showall" id="{{$loop319->getItemEscape("@id")|replace:'[]':''}}_showall" data-filter="{{$loop319->getItemEscape("@id")|replace:'[]':''}}" title="{{$txt['106540::66412_002_002a']}}"  class="{{$classAttributeTmp11}}">{{$txt['106540::66412_002_002b']}}</a>
																{{/if}}
															</div>
														</div>
													{{/if}}
												</div>
											{{/if}}
										{{/foreach}}
										{{capture name="samedayCouriersAvail" assign="samedayCouriersAvail"}}
											{{$xml->getItemEscape("/shop/page/sameday/@couriers_available")}}
										{{/capture}}
										{{capture name="samedayClientLocal" assign="samedayClientLocal"}}
											{{$xml->getItemEscape("/shop/page/sameday/@client_localized")}}
										{{/capture}}
										{{capture name="samedayServiceAvail" assign="samedayServiceAvail"}}
											{{$xml->getItemEscape("/shop/page/sameday/@service_available_for_current_location")}}
										{{/capture}}
										{{capture name="nextdayCouriersAvail" assign="nextdayCouriersAvail"}}
											{{$xml->getItemEscape("/shop/page/nextday/@couriers_available")}}
										{{/capture}}
										{{capture name="nextdayClientLocal" assign="nextdayClientLocal"}}
											{{$xml->getItemEscape("/shop/page/nextday/@client_localized")}}
										{{/capture}}
										{{capture name="nextdayServiceAvail" assign="nextdayServiceAvail"}}
											{{$xml->getItemEscape("/shop/page/nextday/@service_available_for_current_location")}}
										{{/capture}}
										{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter[@type='dual']") or ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'false') or ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'true' and $samedayServiceAvail  == (string) 'true') or ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'false') or ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'true' and $nextdayServiceAvail  == (string) 'true')}}
											{{if ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'false') or ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'true' and $samedayServiceAvail  == (string) 'true') or ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'false') or ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'true' and $nextdayServiceAvail  == (string) 'true')}}
												<div id="filter_dual_xpress" class="filter_item dual_type">
													<div class="filter_header">
														<a {{assign "hrefAttributeTmp37" ""}}{{assign "classAttributeTmp25" ""}}{{capture name="hrefAttributeTmp37" assign="hrefAttributeTmp37"}}#{{/capture}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}filter_toggle{{/capture}}{{capture name="hrefAttributeTmp37" assign="hrefAttributeTmp37"}}#toggle_filter_dual_xpress_content{{/capture}} title="{{$txt['106540::66412_001_001']}}" {{if $xml->getItem("@selected")}}{{capture name="classAttributeTmp25" assign="classAttributeTmp25"}}filter_toggle selected_filter{{/capture}}{{/if}}  class="{{$classAttributeTmp25}}"  href="{{$hrefAttributeTmp37}}"></a>
														<span>{{$txt['106540::53560_08m76589gh']}}</span>
														<span class="filter_loader" style="display: none;" id="dual_loader"></span>
													</div>
													<div id="filter_dual_xpress_content" class="filter_content xpress bg_alter">
														<ul>
															{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter[@id = 'filter_nextday' or @id = 'filter_sameday']/item[@value='y']")}}
																{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter[@id = 'filter_nextday' or @id = 'filter_sameday']/item[@value='y']") item=loop1086}}
																	<li {{if $loop1086->getItem("@quantity") == (string) '0'}} class="disabled"{{/if}} id="{{$loop1086->getItemEscape("../@id")|replace:'[]':''}}_{{$loop1086->getItemEscape("@value")}}_box" {{if $loop1086->getItem("../@id") == (string) 'filter_nextday'}} data-xpress="true" data-localized="{{$nextdayClientLocal}}" data-available="{{$nextdayCouriersAvail}}" {{elseif $loop1086->getItem("../@id") == (string) 'filter_sameday'}} data-xpress="true" data-localized="{{$samedayClientLocal}}" data-available="{{$samedayCouriersAvail}}" {{/if}}>
																		<input type="checkbox" class="filter_checkbox" id="{{$loop1086->getItemEscape("../@id")}}" {{if $loop1086->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop1086->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
																		<div class="filter_name_wrapper">
																			<label for="{{$loop1086->getItemEscape("../@id")}}">
																				{{if  $loop1086->getItem("../@id")  == (string) 'filter_nextday'}}
																					{{$txt['106540::7547547_nexday']}}
																					<span id="nextday_icon">{{$txt['106540::77687568_nextday']}}</span>
																				{{elseif  $loop1086->getItem("../@id")  == (string) 'filter_sameday'}}
																					{{$txt['106540::7547547_sameday']}}
																					<i class="{{$txt['106540::4673745_sameday']}}"></i>
																				{{/if}}
																			</label>
																			<span class="filter_quantity" {{if !( $loop1086->getItem("@quantity"))}} style="display: none;"{{/if}} id="{{$loop1086->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop1086->getItemEscape("@value")}}_quantity" data-filter="{{$loop1086->getItemEscape("@name")}}"></span>
																		</div>
																	</li>
																{{/foreach}}
															{{elseif ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'false') or ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'true' and $samedayServiceAvail  == (string) 'true') or ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'false') or ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'true' and $nextdayServiceAvail  == (string) 'true')}}
																<ul>
																	{{if ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'false') or ($nextdayCouriersAvail  == (string) 'true' and $nextdayClientLocal  == (string) 'true' and $nextdayServiceAvail  == (string) 'true')}}
																		<li id="filter_nextday_y_box" class="enabled" data-xpress="true" data-localized="{{$nextdayClientLocal}}" data-available="{{$nextdayCouriersAvail}}">
																			<input class="filter_checkbox" id="filter_nextday" type="checkbox"/>
																			<div class="filter_name_wrapper">
																				<label for="filter_nextday">{{$txt['106540::7547547_nexday']}}
																					<span id="nextday_icon">{{$txt['106540::77687568_nextday']}}</span>
																				</label>
																			</div>
																		</li>
																	{{/if}}
																	{{if ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'false') or ($samedayCouriersAvail  == (string) 'true' and $samedayClientLocal  == (string) 'true' and $samedayServiceAvail  == (string) 'true')}}
																		<li id="filter_sameday_y_box" class="enabled" data-xpress="true" data-localized="{{$samedayClientLocal}}" data-available="{{$samedayCouriersAvail}}">
																			<input class="filter_checkbox" id="filter_sameday" type="checkbox"/>
																			<div class="filter_name_wrapper">
																				<label for="filter_sameday">{{$txt['106540::7547547_sameday']}}
																					<i class="{{$txt['106540::4673745_sameday']}}"></i>
																				</label>
																			</div>
																		</li>
																	{{/if}}
																</ul>
															{{/if}}
														</ul>
														<div class="filter_options" id="filter_dual_options">
															<a {{assign "classAttributeTmp26" ""}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}filter_submit{{/capture}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}filter_submit{{/capture}} href="#filter_submit" id="filter_dual_submit" data-filter="filter_dual" title="{{$txt['106540::66412_002_001a']}}"  class="{{$classAttributeTmp26}}">{{$txt['106540::66412_002_001b']}}</a>
														</div>
													</div>
												</div>
											{{/if}}
											{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter[@type='dual' and not(@id = 'filter_nextday') and not(@id = 'filter_sameday')]")}}
												<div id="filter_dual" class="filter_item dual_type">
													<div class="filter_header">
														<a {{assign "hrefAttributeTmp38" ""}}{{capture name="hrefAttributeTmp38" assign="hrefAttributeTmp38"}}#{{/capture}} class="filter_toggle"{{capture name="hrefAttributeTmp38" assign="hrefAttributeTmp38"}}#toggle_filter_dual_content{{/capture}} title="{{$txt['106540::66412_001_001']}}"  href="{{$hrefAttributeTmp38}}"></a>
														<span>{{$txt['106540::53560_08m']}}</span>
														<span class="filter_loader" style="display: none;" id="dual_loader"></span>
													</div>
													<div id="filter_dual_content" class="filter_content bg_alter">
														<ul>
															{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter[@type='dual']/item[@value='y']") item=loop1203}}
																{{if !( $loop1203->getItem("../@id")  == (string) 'filter_nextday') and !( $loop1203->getItem("../@id")  == (string) 'filter_sameday')}}
																	<li {{if $loop1203->getItem("@quantity") == (string) '0'}} class="disabled"{{/if}} id="{{$loop1203->getItemEscape("../@id")|replace:'[]':''}}_{{$loop1203->getItemEscape("@value")}}_box">
																		<input type="checkbox" class="filter_checkbox" id="{{$loop1203->getItemEscape("../@id")}}" {{if $loop1203->getItem("@selected") == (string)'selected'}} checked="checked" {{/if}}{{if $loop1203->getItem("@quantity") == (string) '0'}} disabled="disabled" {{/if}}></input>
																		<div class="filter_name_wrapper">
																			<label for="{{$loop1203->getItemEscape("../@id")}}">{{$loop1203->getItemEscape("../@name")}}
																			</label>
																			<span class="filter_quantity" {{if !( $loop1203->getItem("@quantity"))}} style="display: none;"{{/if}} id="{{$loop1203->getItemEscape("../@id")|replace:'[]':''}}_val{{$loop1203->getItemEscape("@value")}}_quantity" data-filter="{{$loop1203->getItemEscape("@name")}}">{{$txt['106540::66412_003_001a']}}
																				<span class="filter_quantity_value">
																					{{if  $loop1203->getItem("@quantity")}}
																						{{$loop1203->getItemEscape("@quantity")}}
																					{{else}}
																						0
																					{{/if}}
																					</span>{{$txt['106540::66412_003_001b']}}</span>
																		</div>
																	</li>
																{{/if}}
															{{/foreach}}
														</ul>
														<div class="filter_options" id="filter_dual_options">
															<a {{assign "classAttributeTmp26" ""}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}filter_submit{{/capture}}{{capture name="classAttributeTmp26" assign="classAttributeTmp26"}}filter_submit{{/capture}} href="#filter_submit" id="filter_dual_submit" data-filter="filter_dual" title="{{$txt['106540::66412_002_001a']}}"  class="{{$classAttributeTmp26}}">{{$txt['106540::66412_002_001b']}}</a>
														</div>
													</div>
												</div>
											{{/if}}
										{{/if}}
										<div id="filter_buttons" class="filter_buttons">
											<a class="btn-small filters_submit" id="filters_submit" href="#filter_submit" title="{{$txt['106540::n56366_submit']}}">{{$txt['106540::n56366_submit_value']}}</a>
										</div>
									</div>
								</div>
							</div>
							<script src="//maps.googleapis.com/maps/api/js?sensor=false"/>
							</script>
lass="ajaxLoad">menu_filter_init();
						</script>
					{{/if}}
					{{if (count( $xml->getList("/shop/page/products/navigation/filtering/filter/@selected"))  gt (string) 0) or count( $xml->getList("/shop/page/products/navigation/filtering/filter/item/@selected"))  gt (string) 0}}
						<div id="filter_list">
							<div class="filter_list_content">
								<a {{assign "hrefAttributeTmp39" ""}}  class="remove_all_list_filters btn"{{capture name="hrefAttributeTmp39" assign="hrefAttributeTmp39"}}/settings.php?filter_remove=all{{/capture}}{{if $xml->getItem("/shop/page/products/navigation/search_link/@value")}}{{capture name="hrefAttributeTmp39" assign="hrefAttributeTmp39"}}{{$xml->getItemEscape("/shop/page/products/navigation/search_link/@value ")}}{{/capture}}{{/if}} title="{{$txt['106540::n56366_remove_all_tit_list']}}"  href="{{$hrefAttributeTmp39}}">{{$txt['106540::n56366_remove_all_list']}}</a>
								{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter[(@type='list') or (@type='text')]") item=loop1282}}
									{{if ( $loop1282->getItem("@selected")  neq (string) '') or count( $loop1282->getList("item/@selected"))  gt (string) 0}}
										{{if ( $loop1282->getItem("@id")  == (string) 'filter_price') and ( $loop1282->getItem("@selected")) and !( $loop1282->getItem("@selected")  == (string) '')}}
											{{if  $loop1282->getItem("item[@selected = 'selected']")}}
												{{foreach from=$loop1282->getList("item[@selected = 'selected']") item=loop1287}}
													<a class="filter_list_remove btn-regular" href="{{$loop1287->getItemEscape("@link_remove")}}">
														<span>{{$loop1287->getItemEscape("@name_formatted")}}</span></a>
												{{/foreach}}
											{{else}}
												<a class="filter_list_remove btn-regular" href="{{$loop1282->getItemEscape("@link_remove")}}">
													<span>
														{{if  $loop1282->getItem("substring-before(@selected, '-')")  neq (string) ''}}
															{{$loop1282->getItemEscape("substring-before(@selected, '-')")}}{{$loop1282->getItemEscape("/shop/currency/@name")}}
														{{/if}}
														-
														{{if  $loop1282->getItem("substring-after(@selected, '-')")  neq (string) ''}}
															{{$loop1282->getItemEscape("substring-after(@selected, '-')")}}{{$loop1282->getItemEscape("/shop/currency/@name")}}
														{{/if}}
														</span></a>
											{{/if}}
										{{elseif ( $loop1282->getItem("@id")  == (string) 'filter_date') and ( $loop1282->getItem("@selected")) and !( $loop1282->getItem("@selected")  == (string) '')}}
											{{if  $loop1282->getItem("item[@selected = 'selected']")}}
												{{foreach from=$loop1282->getList("item[@selected = 'selected']") item=loop1311}}
													<a class="filter_list_remove btn-regular" href="{{$loop1311->getItemEscape("@link_remove")}}">
														<span>
															{{if  $loop1311->getItem("@desc")  == (string) '1week'}}
																{{$txt['106540::66412_012_0011']}}
															{{elseif  $loop1311->getItem("@desc")  == (string) '1month'}}
																{{$txt['106540::66412_012_001']}}
															{{elseif  $loop1311->getItem("@desc")  == (string) '3months'}}
																{{$txt['106540::66412_012_002']}}
															{{elseif  $loop1311->getItem("@desc")  == (string) '6months'}}
																{{$txt['106540::66412_012_003']}}
															{{elseif  $loop1311->getItem("@desc")  == (string) '1year'}}
																{{$txt['106540::66412_012_004']}}
															{{/if}}
															</span></a>
												{{/foreach}}
											{{else}}
												<a class="filter_list_remove btn-regular" href="{{$loop1282->getItemEscape("@link_remove")}}">
													<span>{{$loop1282->getItemEscape("@selected")}}</span></a>
											{{/if}}
										{{elseif ( $loop1282->getItem("@id")  == (string) 'filter_text') and ( $loop1282->getItem("@selected")) and !( $loop1282->getItem("@selected")  == (string) '')}}
											<a class="filter_list_remove btn-regular" href="{{$loop1282->getItemEscape("@link_remove")}}">
												<span>{{$loop1282->getItemEscape("@selected")}}</span></a>
										{{else}}
											{{foreach from=$loop1282->getList("item[@selected = 'selected']") item=loop1333}}
												<a class="filter_list_remove btn-regular" href="{{$loop1333->getItemEscape("@link_remove")}}">
													<span>{{$loop1333->getItemEscape("@name")}}</span></a>
											{{/foreach}}
										{{/if}}
									{{/if}}
								{{/foreach}}
								{{foreach from=$xml->getList("/shop/page/products/navigation/filtering/filter[@type='dual']/item[@selected = 'selected']") item=loop1345}}
									<a class="filter_list_remove btn-regular" href="{{$loop1345->getItemEscape("../@link_remove")}}">
										<span>{{$loop1345->getItemEscape("../@name")}}</span></a>
								{{/foreach}}
							</div>
						</div>
					{{/if}}
					<!--Stronicowanie wyników (search_paging, 109046.1)-->
					<div id="paging_setting_top" class="paging_setting clearfix">
						<form class="search_setting clearfix" action="/settings.php">
							{{if !( $xml->getItem("page/products/@hideproducts")  == (string) 'true')}}
								{{if !( $xml->getItem("/shop/page/products/navigation/@disable_sort_change")  == (string) 'y')}}
									<div class="select_sort">
										<label for="select_top_sort">{{$txt['109046::40014_8a']}}
										</label>
										<select class="sort_order" id="select_top_sort" name="sort_order" onchange="submit();">
											<option value="name-a" class="option_name-a" {{if $xml->getItem("page/products/navigation/@sort") == (string) 'name' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected" {{/if}}>{{$txt['109046::53599_07']}}
											</option>
											<option value="name-d" class="option_name-d" {{if $xml->getItem("page/products/navigation/@sort") == (string) 'name' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected" {{/if}}>{{$txt['109046::53599_08']}}
											</option>
											<option value="price-a"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'price' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['109046::40014_03']}}
											</option>
											<option value="price-d"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'price' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['109046::40014_04']}}
											</option>
											<option value="date-a"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'date' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['109046::40014_05']}}
											</option>
											<option value="date-d"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'date' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['109046::40014_06']}}
											</option>
										</select>
									</div>
								{{/if}}
							{{/if}}
						</form>
						<form class="search_setting clearfix" action="/settings.php">
							{{if !( $xml->getItem("page/products/@hideproducts")  == (string) 'true')}}
								{{if !( $xml->getItem("/shop/page/products/navigation/@disable_portions_change")  == (string) 'y')}}
									{{if count( $xml->getList("page/products/navigation/portions"))  gt (string) 1}}
										<div class="select_portions">
											<label for="select_top_portions">{{$txt['109046::40014_8']}}
											</label>
											<select class="portions" id="select_top_portions" name="portions" onchange="submit();">
												{{foreach from=$xml->getList("page/products/navigation/portions") item=loop1392}}
													<option value="{{$loop1392->getItemEscape("@counter")}}" {{if $loop1392->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}>{{$txt['109046::40014_8ab']}}{{$loop1392->getItemEscape("@counter")}}
													</option>
												{{/foreach}}
											</select>
										</div>
									{{/if}}
								{{/if}}
								{{if count( $xml->getList("/shop/page/products/navigation/filtering/filter"))}}
									<div class="show_filters_wrapper d-md-none">
										<a class="btn show_filters" href="#menu_filter">{{$txt['109046::n58551_01']}}</a>
									</div>
								{{/if}}
							{{/if}}
						</form>
						{{if !( $xml->getItem("page/products/@hideproducts")  == (string) 'true')}}
							{{if count( $xml->getList("page/products/navigation/item"))}}
								<ul class="pagination d-none">
									{{if count( $xml->getList("page/products/navigation/item"))  gt (string) 1}}
										{{if  $xml->getItem("page/products/navigation/prev")}}
											<li>
												<a href=" {{$xml->getItem("page/products/navigation/path/@value")}}{{$xml->getItemEscape("page/products/navigation/prev/@counter")}}">{{$txt['109046::affiliate_products_002']}}</a>
											</li>
										{{/if}}
										{{if !( $xml->getItem("page/products/navigation/prev"))}}
											<li class="disabled">
												<span>{{$txt['109046::affiliate_products_002a']}}</span>
											</li>
										{{/if}}
										{{foreach from=$xml->getList("page/products/navigation/item") item=loop1443}}
											{{if  $loop1443->getItem("@gap")}}
												<li class="disabled">
													<span>{{$txt['109046::affiliate_calculations_007']}}</span>
												</li>
											{{/if}}
											{{if !( $loop1443->getItem("@type")  == (string) 'current') and !( $loop1443->getItem("@gap"))}}
												<li>
													<a href="{{$loop1443->getItem("../path/@value")}}{{$loop1443->getItemEscape("@counter") - 1}}">{{$loop1443->getItemEscape("@counter")}}</a>
												</li>
											{{/if}}
											{{if  $loop1443->getItem("@type")  == (string) 'current'}}
												<li class="active">
													<span>{{$loop1443->getItemEscape("@counter")}}</span>
												</li>
											{{/if}}
										{{/foreach}}
										{{if  $xml->getItem("page/products/navigation/next")}}
											<li>
												<a href="{{$xml->getItem("page/products/navigation/path/@value")}}{{$xml->getItemEscape("page/products/navigation/next/@counter")}}">{{$txt['109046::affiliate_products_003']}}</a>
											</li>
										{{/if}}
										{{if !( $xml->getItem("page/products/navigation/next"))}}
											<li class="disabled">
												<span>{{$txt['109046::affiliate_products_003a']}}</span>
											</li>
										{{/if}}
									{{/if}}
								</ul>
							{{/if}}
						{{/if}}
					</div>
					<!--Ustawienia wyszukiwania (search_settings, 109047.1)-->
					{{if  $xml->getItem("compare/@count")  gt (string) 0 or  $xml->getItem("/shop/page/@cache_html")  == (string) 'true'}}
						<div id="menu_compare_product" {{if $xml->getItem("/shop/page[@cache_html='true']")}} style="display:none" {{/if}}>
							<div class="big_label">{{$txt['109047::55103_002']}}
							</div>
							<div class="compare_product_sub align_row" data-align="img#css">
								{{foreach from=$xml->getList("compare/product") item=loop1496}}
									<a href="{{$loop1496->getItemEscape("@link")}}">
										<img src="{{$loop1496->getItemEscape("iconsmall")}}" alt="{{$loop1496->getItem("name")}}"></img></a>
								{{/foreach}}
							</div>
							<div class="compare_buttons">
								<a {{assign "hrefAttributeTmp40" ""}}  class="btn-small" id="comparers_remove_btn"{{capture name="hrefAttributeTmp40" assign="hrefAttributeTmp40"}}settings.php?comparers=remove&#160;amp;product= {{foreach from=$xml->getList("compare/product") item=loop1511}}{{$loop1511->getItemEscape("@id")}}{{if !(count( $loop1511->getList("../product")) == (string) $loop1511@iteration )}},{{/if}}{{/foreach}}{{/capture}}{{if $xml->getItem("/shop/action/settings/@url")}}{{capture name="hrefAttributeTmp40" assign="hrefAttributeTmp40"}}{{$xml->getItemEscape("/shop/action/settings/@url")}}?comparers=remove&#160;amp;product= {{foreach from=$xml->getList("compare/product") item=loop1516}}{{$loop1516->getItemEscape("@id")}}{{if !(count( $loop1516->getList("../product")) == (string) $loop1516@iteration )}},{{/if}}{{/foreach}}{{/capture}}{{if $xml->getItem("/shop/page[@cache_html='true']")}}{{capture name="hrefAttributeTmp40" assign="hrefAttributeTmp40"}}{{$xml->getItemEscape("/shop/action/settings/@url")}}?comparers=remove&#160;amp;product=###{{/capture}}{{/if}}{{/if}} title="{{$txt['109047::55103_00_1b']}}"  href="{{$hrefAttributeTmp40}}">{{$txt['109047::55103_00_2b']}}</a>
								{{if  $xml->getItem("compare/@count")  gt (string) 1 or  $xml->getItem("/shop/page/@cache_html")  == (string) 'true'}}
									<a {{assign "hrefAttributeTmp41" ""}}  class="btn"{{capture name="hrefAttributeTmp41" assign="hrefAttributeTmp41"}}product-compare.php{{/capture}}{{if $xml->getItem("/shop/action/productCompare/@url")}}{{capture name="hrefAttributeTmp41" assign="hrefAttributeTmp41"}}{{$xml->getItemEscape("/shop/action/productCompare/@url")}}{{/capture}}{{/if}} title="{{$txt['109047::55103_003']}}" target="{{$txt['109047::55103_023']}}"  href="{{$hrefAttributeTmp41}}">
										<span>{{$txt['109047::55103_004']}}</span>
										<span class="d-sm-none">({{$xml->getItemEscape("compare/@count")}})</span></a>
								{{/if}}
							</div>
							{{if  $xml->getItem("/shop/page[@cache_html='true']")}}
								<script>
                        app_shop.run(function(){ menu_compare_cache(); }, 'all');
                    								</script>

							{{/if}}
						</div>
					{{/if}}
					<!--Lista produktów (search, 108334.1)-->
					{{capture name="param_search" assign="param_search"}}
						{{$txt['108334::58230_setParam']}}
					{{/capture}}
					{{capture name="param_search_gfx" assign="param_search_gfx"}}
						{{$txt['108334::58230_setParamGfx']}}
					{{/capture}}
					{{capture name="addcompare_txt" assign="addcompare_txt"}}
						{{$txt['108334::54084_00_2']}}
					{{/capture}}
					{{capture name="var_yousave" assign="var_yousave"}}
						{{$txt['108334::TXT_hotspot_yousave']}}
					{{/capture}}
					{{if  $xml->getItem("/shop/page/products/display_mode[@active='normal']")}}
						<div id="search" class="row">
							{{foreach from=$xml->getList("/shop/page/products/product") item=loop1554}}
								<div {{assign "classAttributeTmp28" ""}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}}product_wrapper col-12 col-sm-4 col-md-3{{/capture}} data-product_id="{{$loop1554->getItemEscape("@id")}}" {{if $loop1554->getItem("/shop/page/@ecommerce_module_class")}}{{capture name="classAttributeTmp28" assign="classAttributeTmp28"}} product_wrapper col-6 col-sm-4 {{capture name='ecommerce_module_separator' assign='ecommerce_module_separator'}}{productId}{{/capture}}{{capture name='ecommerce_module_class_before' assign='ecommerce_module_class_before'}}{{$loop1554->getItemEscape("substring-before(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)")}}{{/capture}}{{capture name='ecommerce_module_class_after' assign='ecommerce_module_class_after'}}{{$loop1554->getItemEscape("substring-after(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)")}}{{/capture}}{{$ecommerce_module_class_before}}{{$loop1554->getItemEscape("@id")}}{{$ecommerce_module_class_after}}{{/capture}}{{/if}}  class="{{$classAttributeTmp28}}">
									{{if  $loop1554->getItem("/shop/compare/@active")  == (string) 'y' and $addcompare_txt}}
										<a {{assign "hrefAttributeTmp42" ""}}{{assign "classAttributeTmp29" ""}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}btn-regular compare_add{{/capture}} rel="nofollow" {{if $loop1554->getItem("@id") == (string) $loop1554->getItem("/shop/compare/product/@id")}}{{capture name="classAttributeTmp29" assign="classAttributeTmp29"}}btn-regular compare_add remove{{/capture}}{{if $loop1554->getItem("/shop/action/settings/@url")}}{{capture name="hrefAttributeTmp42" assign="hrefAttributeTmp42"}}{{$loop1554->getItemEscape("/shop/action/settings/@url")}}?comparers=remove&#160;amp;product={{$loop1554->getItemEscape("@id")}}{{/capture}}{{/if}} title="{{$txt['108334::58826_rem_title']}}" {{$txt['108334::54084_00_2a']}} {{else}}{{if $loop1554->getItem("/shop/action/settings/@url")}}{{capture name="hrefAttributeTmp42" assign="hrefAttributeTmp42"}}{{$loop1554->getItemEscape("/shop/action/settings/@url")}}?comparers=add&#160;amp;product={{$loop1554->getItemEscape("@id")}}{{/capture}}{{/if}} title="{{$txt['108334::58826_title_comp']}}" {{$txt['108334::54084_00_2ico']}}{{$addcompare_txt}}{{/if}}  class="{{$classAttributeTmp29}}"  href="{{$hrefAttributeTmp42}}"></a>
									{{/if}}
									{{if $var_yousave and !($var_yousave  == (string) '') and  $loop1554->getItem("price/@yousave_formatted")  neq (string) ''}}
										<div class="hotspot_yousave">
											<span class="yousave_label">{{$var_yousave}}</span>
											<span class="yousave_value">{{$loop1554->getItemEscape("price/@yousave_formatted")}}</span>
										</div>
									{{/if}}
									<a class="product-icon align_row" data-align="img#css" href="{{$loop1554->getItemEscape("@link")}}" data-product-id="{{$loop1554->getItemEscape("@id")}}">
										<img class="b-lazy" src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1573641886" data-src-small="{{$loop1554->getItem("icon_small")}}" data-src="{{$loop1554->getItem("icon")}}" alt="{{$loop1554->getItem("name")}}"></img>
										<strong class="label_icons">
											{{if  $loop1554->getItem("@promo")}}
												<span class="label promo">{{$txt['108334::53885_307pro']}}</span>
											{{/if}}
											{{if  $loop1554->getItem("@new")}}
												<span class="label newproducts">{{$txt['108334::53885_307n']}}</span>
											{{/if}}
											{{if  $loop1554->getItem("@promo") and  $loop1554->getItem("@new")}}
											{{elseif  $loop1554->getItem("@promo") or  $loop1554->getItem("@new")}}
												{{if  $loop1554->getItem("@bestseller")}}
													<span class="label bestseller">{{$txt['108334::53885_307b']}}</span>
												{{elseif  $loop1554->getItem("@discount")}}
													<span class="label discount">{{$txt['108334::53885_307pr']}}</span>
												{{elseif  $loop1554->getItem("@distinguished")}}
													<span class="label distinguished">{{$txt['108334::53885_307p']}}</span>
												{{/if}}
											{{else}}
												{{if  $loop1554->getItem("@bestseller")}}
													<span class="label bestseller">{{$txt['108334::53885_307b']}}</span>
												{{/if}}
												{{if  $loop1554->getItem("@discount")}}
													<span class="label discount">{{$txt['108334::53885_307pr']}}</span>
												{{/if}}
												{{if  $loop1554->getItem("@distinguished") and !( $loop1554->getItem("@bestseller") and  $loop1554->getItem("@discount"))}}
													<span class="label distinguished">{{$txt['108334::53885_307p']}}</span>
												{{/if}}
											{{/if}}
											</strong></a>
									<h3>
										<a class="product-name" href="{{$loop1554->getItemEscape("@link")}}" title="{{$loop1554->getItem("name")}}">{{$loop1554->getItem("name")}}</a>
									</h3>
									<div class="product_prices">
										{{if ( $loop1554->getItem("sizes/prices/@minprice_formatted")  neq (string)  $loop1554->getItem("sizes/prices/@maxprice_formatted")) or ( $loop1554->getItem("sizes/prices/@minprice_unit_formatted")  neq (string)  $loop1554->getItem("sizes/prices/@maxprice_unit_formatted"))}}
											<span class="price">{{$txt['108334::32344_000']}}
												{{if  $loop1554->getItem("sizes/prices/@minprice_unit_formatted")}}
													{{$loop1554->getItemEscape("sizes/prices/@minprice_unit_formatted")}}
												{{else}}
													{{$loop1554->getItemEscape("sizes/prices/@minprice_formatted")}}
												{{/if}}
												{{$txt['108334::32344_001']}}
												{{if  $loop1554->getItem("sizes/prices/@maxprice_unit_formatted")}}
													{{$loop1554->getItemEscape("sizes/prices/@maxprice_unit_formatted")}}
												{{else}}
													{{$loop1554->getItemEscape("sizes/prices/@maxprice_formatted")}}
												{{/if}}
												{{if  $loop1554->getItem("sizes/prices/@minprice_unit_formatted")}}
													{{literal}}/{{/literal}}{{$loop1554->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop1554->getItemEscape("sizes/@unit")}}
												{{/if}}
												</span>
											{{if ( $loop1554->getItem("sizes/prices/@size_min_maxprice_formatted")  neq (string)  $loop1554->getItem("sizes/prices/@size_max_maxprice_formatted")) or ( $loop1554->getItem("sizes/prices/@size_min_maxprice_unit_formatted")  neq (string)  $loop1554->getItem("sizes/prices/@size_max_maxprice_unit_formatted"))}}
												<del class="max-price">
													{{if  $loop1554->getItem("sizes/prices/@size_min_maxprice_unit_formatted")}}
														<span>{{$loop1554->getItemEscape("sizes/prices/@size_min_maxprice_unit_formatted")}}</span>
														<b>{{$txt['108334::32344_001']}}</b>
														<span>{{$loop1554->getItemEscape("sizes/prices/@size_max_maxprice_unit_formatted")}}</span>
													{{else}}
														<span>{{$loop1554->getItemEscape("sizes/prices/@size_min_maxprice_formatted")}}</span>
														<b>{{$txt['108334::32344_001']}}</b>
														<span>{{$loop1554->getItemEscape("sizes/prices/@size_max_maxprice_formatted")}}</span>
													{{/if}}
													</del>
											{{/if}}
										{{elseif ( $loop1554->getItem("sizes/prices/@minprice")  == (string) 0) and !( $loop1554->getItem("price/@points"))}}
											<a class="fon_price" data-mobile-class="btn-small" href="/contact.php" title="{{$txt['108334::58826_009']}}">{{$txt['108334::58826_010']}}</a>
										{{else}}
											<span class="price">{{$txt['108334::58826_003']}}
												{{if  $loop1554->getItem("price/@price_unit_formatted")}}
													{{$loop1554->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop1554->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop1554->getItemEscape("sizes/@unit")}}
												{{else}}
													{{$loop1554->getItemEscape("sizes/prices/@minprice_formatted")}}{{literal}}/{{/literal}}{{$loop1554->getItemEscape("sizes/@unit")}}
												{{/if}}
												</span>
											{{if  $loop1554->getItem("price/@maxprice") or  $loop1554->getItem("price/@maxprice_unit")}}
												<del class="max-price">{{$txt['108334::58826_006']}}
													{{if  $loop1554->getItem("price/@maxprice_unit_formatted")}}
														{{$loop1554->getItemEscape("price/@maxprice_unit_formatted")}}
													{{else}}
														{{$loop1554->getItemEscape("price/@maxprice_formatted")}}
													{{/if}}
													</del>
											{{/if}}
											{{if  $loop1554->getItem("price/@points")}}
												{{$txt['108334::58826_005']}}
												<span class="point-price">{{$loop1554->getItemEscape("price/@points")}}
													<span class="currency">{{$txt['108334::58826_012']}}</span></span>
											{{/if}}
										{{/if}}
										{{if  $loop1554->getItem("price/@unit_converted_price_formatted")}}
											<small class="s_unit_converted_price">{{$loop1554->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop1554->getItemEscape("price/@unit_converted_format")}}</small>
										{{/if}}
									</div>
									{{if count( $loop1554->getList("versions/version/@gfx_small"))  gt (string) 1 or (!( $loop1554->getItem("sizes/size/@type") == (string)'uniw'))}}
										<div class="search_details">
											{{if !( $loop1554->getItem("sizes/size/@type") == (string)'uniw')}}
												<div class="sizes_wrapper">
													<label>{{$txt['108334::74559_001']}}
													</label>
													{{foreach from=$loop1554->getList("sizes/size") item=loop1717}}
														<span>{{$loop1717->getItemEscape("@description")}}</span>
													{{/foreach}}
												</div>
											{{/if}}
											{{if count( $loop1554->getList("versions/version/@gfx_small"))  gt (string) 1}}
												<div class="versions_wrapper">
													{{foreach from=$loop1554->getList("versions/version") item=loop1726}}
														<a href="{{$loop1726->getItemEscape("@link")}}">
															<img src="{{$loop1726->getItemEscape("@gfx_small")}}" alt="{{$loop1726->getItemEscape("@name")}}"></img></a>
													{{/foreach}}
												</div>
											{{/if}}
										</div>
									{{/if}}
									{{if !($param_search)}}
										{{if  $loop1554->getItem("traits/trait[not(@gfx)]") and  $loop1554->getItem("traits/trait[not(contains(@groupdescription, 'gs1:'))]")}}
											<div class="list_traits">
												<ul>
													{{foreach from=$loop1554->getList("traits/trait[not(@gfx)]") item=loop1746}}
														{{if !( $loop1746->getItem("@groupid")  == (string)  $loop1746->getItem("preceding-sibling::trait/@groupid")) and !( $loop1746->getItem("contains(@groupdescription, 'gs1:')"))}}
															<li>
																<span>{{$loop1746->getItemEscape("@groupdescription")}}{{$txt['108334::58668_traitseparator']}}</span>
																<div>
																	<a href="{{$loop1746->getItemEscape("@link")}}">{{$loop1746->getItemEscape("@traitdescription")}}</a>
																	{{if  $loop1746->getItem("@groupid")  == (string)  $loop1746->getItem("following-sibling::trait/@groupid")}}
																		{{capture name="temporaryGroup" assign="temporaryGroup"}}
																			{{$loop1746->getItemEscape("@groupid")}}
																		{{/capture}}
																		{{foreach from=$loop1746->getList("following-sibling::trait[(@groupid = {{$temporaryGroup}})]") item=loop1755}}{{$txt['108334::n58633_traitseparator']}}
																			<a href="{{$loop1755->getItemEscape("@link")}}">{{$loop1755->getItemEscape("@traitdescription")}}</a>
																		{{/foreach}}
																	{{/if}}
																</div>
															</li>
														{{/if}}
													{{/foreach}}
												</ul>
											</div>
										{{/if}}
									{{/if}}
									{{if !($param_search_gfx)}}
										{{if  $loop1554->getItem("traits/trait[@gfx2]")}}
											<div class="list_traits_gfx">
												<ul>
													{{foreach from=$loop1554->getList("traits/trait[@gfx2]") item=loop1772}}
														<li>
															<a title="{{$loop1772->getItemEscape("@groupdescription")}}{{literal}} {{/literal}}{{$loop1772->getItemEscape("@traitdescription")}}" href="{{$loop1772->getItemEscape("@link")}}">
																<img src="{{$loop1772->getItemEscape("@gfx2")}}" alt="{{$loop1772->getItemEscape("@traitdescription")}}"></img></a>
														</li>
													{{/foreach}}
												</ul>
											</div>
										{{/if}}
									{{/if}}
								</div>
							{{/foreach}}
						</div>
					{{/if}}
					<!--Stronicowanie, sekcja 2 (search_paging2, 106643.1)-->
					<div class="paging_setting_bottom" id="search_paging_bottom">
						<form id="search_setting_bottom" class="search_setting" action="/settings.php">
							{{if  $xml->getItem("page/products/navigation/next")}}
								{{if !( $xml->getItem("/shop/page/products/navigation/@disable_sort_change")  == (string) 'y')}}
									<div class="select_sort">
										<label for="select_bottom_sort">{{$txt['106643::40014_8a']}}
										</label>
										<select class="sort_order" id="select_bottom_sort" name="sort_order" onchange="submit();">
											<option value="name-a" class="option_name-a" {{if $xml->getItem("page/products/navigation/@sort") == (string) 'name' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected" {{/if}}>{{$txt['106643::53599_07']}}
											</option>
											<option value="name-d" class="option_name-d" {{if $xml->getItem("page/products/navigation/@sort") == (string) 'name' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected" {{/if}}>{{$txt['106643::53599_08']}}
											</option>
											<option value="price-a"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'price' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['106643::40014_03']}}
											</option>
											<option value="price-d"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'price' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['106643::40014_04']}}
											</option>
											<option value="date-a"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'date' and $xml->getItem("page/products/navigation/@order") == (string) 'a'}} selected="selected"{{/if}}>{{$txt['106643::40014_05']}}
											</option>
											<option value="date-d"{{if $xml->getItem("page/products/navigation/@sort") == (string) 'date' and $xml->getItem("page/products/navigation/@order") == (string) 'd'}} selected="selected"{{/if}}>{{$txt['106643::40014_06']}}
											</option>
										</select>
									</div>
								{{/if}}
								{{if !( $xml->getItem("/shop/page/products/navigation/@disable_portions_change")  == (string) 'y')}}
									{{if count( $xml->getList("page/products/navigation/portions"))  gt (string) 1}}
										<div class="select_portions">
											<label for="select_bottom_portions">{{$txt['106643::40014_8']}}
											</label>
											<select class="portions" id="select_bottom_portions" name="portions" onchange="submit();">
												{{foreach from=$xml->getList("page/products/navigation/portions") item=loop1827}}
													<option value="{{$loop1827->getItemEscape("@counter")}}" {{if $loop1827->getItem("@selected") == (string) 'true'}} selected="selected" {{/if}}>{{$txt['106643::40014_8ab_bottom']}}{{$loop1827->getItemEscape("@counter")}}
													</option>
												{{/foreach}}
											</select>
										</div>
									{{/if}}
								{{/if}}
							{{/if}}
						</form>
						{{if !( $xml->getItem("page/products/@hideproducts")  == (string) 'true')}}
							{{if count( $xml->getList("page/products/navigation/item"))}}
								<ul class="pagination d-sm-inline-block d-md-block">
									{{if count( $xml->getList("page/products/navigation/item"))  gt (string) 1}}
										{{if  $xml->getItem("page/products/navigation/prev")}}
											<li>
												<a class="prev" href=" {{$xml->getItem("page/products/navigation/path/@value")}}{{$xml->getItemEscape("page/products/navigation/prev/@counter")}}">{{$txt['106643::affiliate_products_002']}}</a>
											</li>
										{{/if}}
										{{if !( $xml->getItem("page/products/navigation/prev"))}}
											<li class="disabled">
												<span class="prev">{{$txt['106643::affiliate_products_002a']}}</span>
											</li>
										{{/if}}
										{{foreach from=$xml->getList("page/products/navigation/item") item=loop1872}}
											{{if  $loop1872->getItem("@gap")}}
												<li class="disabled">
													<span>{{$txt['106643::affiliate_calculations_007']}}</span>
												</li>
											{{/if}}
											{{if !( $loop1872->getItem("@type")  == (string) 'current') and !( $loop1872->getItem("@gap"))}}
												<li>
													<a href="{{$loop1872->getItem("../path/@value")}}{{$loop1872->getItemEscape("@counter") - 1}}">{{$loop1872->getItemEscape("@counter")}}</a>
												</li>
											{{/if}}
											{{if  $loop1872->getItem("@type")  == (string) 'current'}}
												<li class="active">
													<span>{{$loop1872->getItemEscape("@counter")}}</span>
												</li>
											{{/if}}
										{{/foreach}}
										{{if  $xml->getItem("page/products/navigation/next")}}
											<li>
												<a class="next" href="{{$xml->getItem("page/products/navigation/path/@value")}}{{$xml->getItemEscape("page/products/navigation/next/@counter")}}">{{$txt['106643::affiliate_products_003']}}</a>
											</li>
										{{/if}}
										{{if !( $xml->getItem("page/products/navigation/next"))}}
											<li class="disabled">
												<span class="next">{{$txt['106643::affiliate_products_003a']}}</span>
											</li>
										{{/if}}
									{{/if}}
								</ul>
							{{/if}}
						{{/if}}
					</div>
					<!--Hotspot w search strefa 1 (search_hotspot_zone1, 92231.1)-->
					{{if  $xml->getItem("/shop/page/products/additional/hotspot/products_zone1/@iairs_ajax")}}
					{{/if}}
					{{if  $xml->getItem("/shop/page/products/additional/hotspot/products_zone1/@hotspot_ajax")}}
					{{/if}}
					{{if  $xml->getItem("/shop/page/products/additional/hotspot/products_zone1/@name")}}
					{{/if}}
				</div>
			{{/if}}
		</div>
	</div>
	{{if !( $xml->getItem("action/set_render/item")) or ( $xml->getItem("action/set_render/item/@name")  == (string) 'footer')}}
		<footer class="{{$txt['107419::70925_footer_class']}}">
			{{include file="component_menu_search_hotspot1_bis_106612.tpl"}}
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
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/{{$xml->getItemEscape("/shop/@preview")}}/shop.js">			</script>

		{{else}}
			<script type="text/javascript" src="/gfx/{{$xml->getItemEscape("language/@id")}}/shop.js?r=1573641886">			</script>

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
