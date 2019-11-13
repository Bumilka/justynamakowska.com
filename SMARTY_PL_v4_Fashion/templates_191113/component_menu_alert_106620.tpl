
<!--Action alert (menu_alert, 106620.1)-->
{{if  $xml->getItem("/shop/action_alert[@type='add_basket']")}}
	<div id="menu_preloader_add">
		{{if  $xml->getItem("/shop/action_alert/products/@count")  == (string) 1}}
			<div class="big_label">{{$txt['106620::n83927_label']}}
			</div>
		{{else}}
			class="menu_preloader_add_multi"
			<div class="big_label">{{$txt['106620::n83927_label_multi']}}
			</div>
		{{/if}}
		<div class="menu_preloader_add_wrapper">
			<div {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}products_wrapper{{/capture}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}products_wrapper align_row{{/capture}} data-align="a.product-icon img#css"  class="{{$classAttributeTmp1}}">
				<div class="product_wrapper">
					<a class="product-icon" href=" {{$xml->getItemEscape("/shop/action_alert/products/product/@link")}} " title=" {{$xml->getItemEscape("/shop/action_alert/products/product/name")}} ">
						<img src="{{$xml->getItem("/shop/action_alert/products/product/icon")}} " alt=" {{$xml->getItem("/shop/action_alert/products/product/name")}} "></img></a>
					<div id="dialog_product_details">
						<a class="product-name" href=" {{$xml->getItemEscape("/shop/action_alert/products/product/@link")}} " title=" {{$xml->getItemEscape("/shop/action_alert/products/product/name")}} ">{{$xml->getItemEscape("/shop/action_alert/products/product/name")}}</a>
						<div class="product_prices">
							{{if  $xml->getItem("/shop/action_alert/products/product/price/@max_price_formatted")}}
								<del class="max-price">{{$xml->getItemEscape("/shop/action_alert/products/product/price/@max_price_formatted")}}</del>
							{{/if}}
							<span class="price">{{$xml->getItemEscape("/shop/action_alert/products/product/price/@price_formatted")}}</span>
							{{if  $xml->getItem("/shop/action_alert/products/product/price/@points")  neq (string) ''}}
								<span class="point-price">{{$xml->getItemEscape("/shop/action_alert/products/product/price/@points")}}
									<span class="currency">{{$txt['106620::58826_012']}}</span></span>
							{{/if}}
						</div>
						<div class="menu_preloader_add_btn">
							<a class="btn-large menu_preloader_btn_add" href="/basketedit.php?mode=1">{{$txt['106620::n83927_1_add']}}</a>
							<a class="btn-large menu_preloader_add_btn_close" href="#close">{{$txt['106620::n83927_1_close']}}</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<iaiajaxstart iai-ajax-id="products_associated_zone4" iai-ajax-generated="true"/>
		{{if  $xml->getItem("/shop/page/projector/products_associated_zone4")}}
			<div class="main_hotspot clearfix" id="products_associated_zone4">
				{{if  $xml->getItem("/shop/page/projector/products_associated_zone4/product") or  $xml->getItem("/shop/page/projector/products_associated_zone4/opinion")}}
					{{if  $xml->getItem("/shop/page/projector/products_associated_zone4/@link")}}
						<a class="big_label" href=" {{$xml->getItemEscape("/shop/page/projector/products_associated_zone4/@link")}} " title=" {{$txt['106620::58826_001']}} ">
							{{if  $xml->getItem("/shop/page/projector/products_associated_zone4/@name")}}
								{{$xml->getItemEscape("hotspot/products_zone1/@name")}}
							{{else}}
								{{$txt['106620::58826_label']}}
							{{/if}}
							{{$txt['106620::58826_label-after']}}</a>
					{{else}}
						<div class="big_label">
							{{if  $xml->getItem("/shop/page/projector/products_associated_zone4/@name")}}
								{{$xml->getItemEscape("/shop/page/projector/products_associated_zone4/@name")}}
							{{else}}
								{{$txt['106620::58826_label']}}
							{{/if}}
						</div>
					{{/if}}
					<div class="col-bg-1 align_row main_hotspot_sub" data-align="a.product-icon img#css">
						<div {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}products_wrapper row clearfix{{/capture}} data-column="{{$txt['106620::7487444_hotspot_column']}}" data-wrapType="{{$txt['106620::7487444_hotspot_wrapType']}}" {{if (count( $xml->getList("/shop/page/projector/products_associated_zone4/product")) == (string) 1) or (count( $xml->getList("/shop/page/projector/products_associated_zone4/opinion")) == (string) 1)}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}products_wrapper row clearfix col-md-3 col-xs-6 {{/capture}}{{/if}}{{if (count( $xml->getList("/shop/page/projector/products_associated_zone4/product")) == (string) 2) or (count( $xml->getList("/shop/page/projector/products_associated_zone4/opinion")) == (string) 2)}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}products_wrapper row clearfix col-md-6 col-xs-12 {{/capture}}{{/if}}   class="{{$classAttributeTmp2}}">
							{{foreach from=$xml->getList("/shop/page/projector/products_associated_zone4/*") item=loop121}}
								{{capture name="var_name" assign="var_name"}}
									{{if  $loop121->getItem("product")}}
										{{$loop121->getItem("product/name/text()")}}
									{{else}}
										{{$loop121->getItem("name/text()")}}
									{{/if}}
								{{/capture}}
								{{capture name="var_icon" assign="var_icon"}}
									{{if  $loop121->getItem("product")}}
										{{$loop121->getItemEscape("product/icon")}}
									{{else}}
										{{$loop121->getItemEscape("icon")}}
									{{/if}}
								{{/capture}}
								{{capture name="var_icon_small" assign="var_icon_small"}}
									{{if  $loop121->getItem("product")}}
										{{$loop121->getItemEscape("product/icon_small")}}
									{{else}}
										{{$loop121->getItemEscape("icon_small")}}
									{{/if}}
								{{/capture}}
								{{capture name="var_link" assign="var_link"}}
									{{if  $loop121->getItem("product")}}
										{{$loop121->getItemEscape("product/@link")}}
									{{else}}
										{{$loop121->getItemEscape("@link")}}
									{{/if}}
								{{/capture}}
								<div class="product_wrapper">
									<a class="product-icon" data-product-id="{{$loop121->getItemEscape("@id")}}" href="{{$var_link}}" title="{{$var_name}}">
										<img src="/gfx/__IAI_TEMPLATE_LANG_639_1__/loader.gif?r=1573641886" class="b-lazy" data-src-small="{{$loop121->getItem("$var_icon_small")}}" data-src="{{$loop121->getItem("$var_icon")}}" alt="{{$loop121->getItem("$var_name")}}"></img></a>
									<h3>
										<a class="product-name" href="{{$var_link}}" title="{{$var_name}}">{{$var_name}}</a>
									</h3>
									{{capture name="main_hotspot_zone1_b2b_var" assign="main_hotspot_zone1_b2b_var"}}
										{{$txt['106620::main_hotspot_zone1_b2b']}}
									{{/capture}}
									{{capture name="var_net_prices" assign="var_net_prices"}}
										{{$txt['106620::hotspot_net_prices']}}
									{{/capture}}
									{{if $var_net_prices  == (string) ''}}
										{{capture name="var_size_min_formatted" assign="var_size_min_formatted"}}
											{{if  $loop121->getItem("product")}}
												{{$loop121->getItemEscape("product/price/@size_min_formatted")}}
											{{else}}
												{{$loop121->getItemEscape("price/@size_min_formatted")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_size_max_formatted" assign="var_size_max_formatted"}}
											{{if  $loop121->getItem("product")}}
												{{$loop121->getItemEscape("product/price/@size_max_formatted")}}
											{{else}}
												{{$loop121->getItemEscape("price/@size_max_formatted")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_size_min_maxprice_formatted" assign="var_size_min_maxprice_formatted"}}
											{{if  $loop121->getItem("product")}}
												{{$loop121->getItemEscape("product/price/@size_min_maxprice_formatted")}}
											{{else}}
												{{$loop121->getItemEscape("price/@size_min_maxprice_formatted")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_size_max_maxprice_formatted" assign="var_size_max_maxprice_formatted"}}
											{{if  $loop121->getItem("product")}}
												{{$loop121->getItemEscape("product/price/@size_max_maxprice_formatted")}}
											{{else}}
												{{$loop121->getItemEscape("price/@size_max_maxprice_formatted")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_points" assign="var_points"}}
											{{if  $loop121->getItem("product")}}
												{{$loop121->getItemEscape("product/price/@points")}}
											{{else}}
												{{$loop121->getItemEscape("price/@points")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_value" assign="var_value"}}
											{{if  $loop121->getItem("product")}}
												{{$loop121->getItemEscape("product/price/@size_min")}}
											{{else}}
												{{$loop121->getItemEscape("price/@size_min")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_price_formatted" assign="var_price_formatted"}}
											{{if  $loop121->getItem("price/@price_unit_formatted") and  $loop121->getItem("sizes/@unit")}}
												{{$loop121->getItemEscape("price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop121->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop121->getItemEscape("sizes/@unit")}}
											{{elseif  $loop121->getItem("product/price/@price_unit_formatted") and  $loop121->getItem("product/sizes/@unit")}}
												{{$loop121->getItemEscape("product/price/@price_unit_formatted")}}{{literal}}/{{/literal}}{{$loop121->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop121->getItemEscape("product/sizes/@unit")}}
											{{else}}
												{{$var_size_min_formatted}}
											{{/if}}
										{{/capture}}
										{{capture name="var_maxprice_formatted" assign="var_maxprice_formatted"}}
											{{if  $loop121->getItem("price/@maxprice_unit_formatted")}}
												{{$loop121->getItemEscape("price/@maxprice_unit_formatted")}}
											{{elseif  $loop121->getItem("product/price/@maxprice_unit_formatted")}}
												{{$loop121->getItemEscape("product/price/@maxprice_unit_formatted")}}
											{{elseif  $loop121->getItem("product")}}
												{{$loop121->getItemEscape("product/price/@maxprice_formatted")}}
											{{else}}
												{{$loop121->getItemEscape("price/@maxprice_formatted")}}
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
														<span class="currency">{{$txt['106620::58826_012']}}</span></span>
												{{/if}}
											{{elseif (($var_value  == (string) 0) and $var_points  == (string) '') or ($var_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop121->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
												<a {{assign "hrefAttributeTmp8" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp8" assign="hrefAttributeTmp8"}}{{$loop121->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106620::58826_009']}}"{{capture name="hrefAttributeTmp8" assign="hrefAttributeTmp8"}}{{$loop121->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106620::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp8}}"></a>
											{{else}}
												<span class="price">{{$txt['106620::58826_003']}}{{$var_price_formatted}}</span>
												{{if $var_maxprice_formatted  neq (string) ''}}
													<del class="max-price">{{$txt['106620::58826_006']}}{{$var_maxprice_formatted}}</del>
												{{/if}}
												{{if $var_points  neq (string) ''}}
													<span class="point-price">{{$var_points}}
														<span class="currency">{{$txt['106620::58826_012']}}</span></span>
												{{/if}}
											{{/if}}
											{{if  $loop121->getItem("price/@unit_converted_price_formatted")}}
												<small class="s_unit_converted_price">{{$loop121->getItemEscape("price/@unit_converted_price_formatted")}}{{literal}}/{{/literal}}{{$loop121->getItemEscape("price/@unit_converted_format")}}</small>
											{{/if}}
										</div>
									{{else}}
										{{capture name="var_size_min_net_formatted" assign="var_size_min_net_formatted"}}
											{{if  $loop121->getItem("product")}}
												{{$loop121->getItemEscape("product/price/@size_min_net_formatted")}}
											{{else}}
												{{$loop121->getItemEscape("price/@size_min_net_formatted")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_size_max_net_formatted" assign="var_size_max_net_formatted"}}
											{{if  $loop121->getItem("product")}}
												{{$loop121->getItemEscape("product/price/@size_max_net_formatted")}}
											{{else}}
												{{$loop121->getItemEscape("price/@size_max_net_formatted")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_size_min_net_maxprice_formatted" assign="var_size_min_net_maxprice_formatted"}}
											{{if  $loop121->getItem("product")}}
												{{$loop121->getItemEscape("product/price/@size_min_maxprice_net_formatted")}}
											{{else}}
												{{$loop121->getItemEscape("price/@size_min_maxprice_net_formatted")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_size_max_maxprice_net_formatted" assign="var_size_max_maxprice_net_formatted"}}
											{{if  $loop121->getItem("product")}}
												{{$loop121->getItemEscape("product/price/@size_max_maxprice_net_formatted")}}
											{{else}}
												{{$loop121->getItemEscape("price/@size_max_maxprice_net_formatted")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_points_net" assign="var_points_net"}}
											{{if  $loop121->getItem("product")}}
												{{$loop121->getItemEscape("product/price/@points")}}
											{{else}}
												{{$loop121->getItemEscape("price/@points")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_net_value" assign="var_net_value"}}
											{{if  $loop121->getItem("product")}}
												{{$loop121->getItemEscape("product/price/@size_min_net")}}
											{{else}}
												{{$loop121->getItemEscape("price/@size_min_net")}}
											{{/if}}
										{{/capture}}
										{{capture name="var_price_formatted" assign="var_price_formatted"}}
											{{if  $loop121->getItem("price/@price_unit_net_formatted") and  $loop121->getItem("sizes/@unit")}}
												{{$loop121->getItemEscape("price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop121->getItemEscape("sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop121->getItemEscape("sizes/@unit")}}
											{{elseif  $loop121->getItem("product/price/@price_unit_net_formatted") and  $loop121->getItem("product/sizes/@unit")}}
												{{$loop121->getItemEscape("product/price/@price_unit_net_formatted")}}{{literal}}/{{/literal}}{{$loop121->getItemEscape("product/sizes/@unit_sellby")}}{{literal}}{{/literal}}{{$loop121->getItemEscape("product/sizes/@unit")}}
											{{else}}
												{{$var_size_min_net_formatted}}
											{{/if}}
										{{/capture}}
										{{capture name="var_maxprice_net_formatted" assign="var_maxprice_net_formatted"}}
											{{if  $loop121->getItem("price/@maxprice_unit_net_formatted")}}
												{{$loop121->getItemEscape("price/@maxprice_unit_net_formatted")}}
											{{elseif  $loop121->getItem("product/price/@maxprice_unit_net_formatted")}}
												{{$loop121->getItemEscape("product/price/@maxprice_unit_net_formatted")}}
											{{elseif  $loop121->getItem("product")}}
												{{$loop121->getItemEscape("product/price/@maxprice_net_formatted")}}
											{{else}}
												{{$loop121->getItemEscape("price/@maxprice_net_formatted")}}
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
														<span class="currency">{{$txt['106620::58826_012']}}</span></span>
												{{/if}}
											{{elseif (($var_net_value  == (string) 0) and $var_points_net  == (string) '') or ($var_net_value  == (string) 0 and $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var  == (string) '') and !( $loop121->getItem("/shop/basket/@wholesaler")  == (string) 'true'))}}
												<a {{assign "hrefAttributeTmp8" ""}}  class="fon_price" data-mobile-class="btn-small" {{if $main_hotspot_zone1_b2b_var and !($main_hotspot_zone1_b2b_var == (string) '')}} title="{{$main_hotspot_zone1_b2b_var}}"{{capture name="hrefAttributeTmp8" assign="hrefAttributeTmp8"}}{{$loop121->getItemEscape("/shop/action/signin/@url")}}{{/capture}}{{$main_hotspot_zone1_b2b_var}}{{else}} title="{{$txt['106620::58826_009']}}"{{capture name="hrefAttributeTmp8" assign="hrefAttributeTmp8"}}{{$loop121->getItemEscape("/shop/contact/link/@url")}}{{/capture}} {{$txt['106620::58826_010']}} {{/if}}  href="{{$hrefAttributeTmp8}}"></a>
											{{else}}
												<span class="price">{{$txt['106620::58826_003']}}{{$var_price_formatted}}{{$var_net_prices}}</span>
												{{if $var_maxprice_net_formatted  neq (string) ''}}
													<del class="max-price">{{$txt['106620::58826_006']}}{{$var_maxprice_net_formatted}}{{$var_net_prices}}</del>
												{{/if}}
												{{if $var_points_net  neq (string) ''}}
													<span class="point-price">{{$var_points_net}}
														<span class="currency">{{$txt['106620::58826_012']}}</span></span>
												{{/if}}
											{{/if}}
											{{if  $loop121->getItem("price/@unit_converted_price_net_formatted")}}
												<small class="s_unit_converted_price">{{$loop121->getItemEscape("price/@unit_converted_price_net_formatted")}}{{literal}}/{{/literal}}{{$loop121->getItemEscape("price/@unit_converted_format")}}{{$var_net_prices}}</small>
											{{/if}}
										</div>
									{{/if}}
									{{if  $loop121->getItem("client/@client")}}
										<div class="client">{{$loop121->getItem("client/@client")}}
										</div>
									{{/if}}
									{{if  $loop121->getItem("@note")}}
										<div class="note">
											<span>
												<i {{assign "classAttributeTmp3" ""}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}icon-star{{/capture}}{{if $loop121->getItem("@note") gt (string) 0.5}}{{capture name="classAttributeTmp3" assign="classAttributeTmp3"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp3}}"></i>
												<i {{assign "classAttributeTmp4" ""}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}icon-star{{/capture}}{{if $loop121->getItem("@note") gt (string) 1.5}}{{capture name="classAttributeTmp4" assign="classAttributeTmp4"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp4}}"></i>
												<i {{assign "classAttributeTmp5" ""}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}icon-star{{/capture}}{{if $loop121->getItem("@note") gt (string) 2.5}}{{capture name="classAttributeTmp5" assign="classAttributeTmp5"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp5}}"></i>
												<i {{assign "classAttributeTmp6" ""}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}icon-star{{/capture}}{{if $loop121->getItem("@note") gt (string) 3.5}}{{capture name="classAttributeTmp6" assign="classAttributeTmp6"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp6}}"></i>
												<i {{assign "classAttributeTmp7" ""}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}icon-star{{/capture}}{{if $loop121->getItem("@note") gt (string) 4.5}}{{capture name="classAttributeTmp7" assign="classAttributeTmp7"}}icon-star active{{/capture}}{{/if}}  class="{{$classAttributeTmp7}}"></i></span>
											<small>{{$txt['106620::58826_oc']}}{{$loop121->getItem("@note")}}{{$txt['106620::58826_oce']}}</small>
										</div>
									{{/if}}
									{{if  $loop121->getItem("content")}}
										<div class="cleardescription">{{$loop121->getItem("content")}}
										</div>
									{{/if}}
								</div>
							{{/foreach}}
						</div>
					</div>
				{{else}}
					data-ajaxLoad="true"data-pageType="menu"
				{{/if}}
			</div>
		{{/if}}
		<iaiajaxend/>
	</div>
{{/if}}
