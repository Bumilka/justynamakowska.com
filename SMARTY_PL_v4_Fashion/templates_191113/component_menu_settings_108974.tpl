
<!--Ustawienia języka oraz walut (menu_settings, 108974.1)-->
{{capture name="display_menu_additional" assign="display_menu_additional"}}
	{{$txt['108974::57295_012']}}
{{/capture}}

{{capture name="register_wholesaler" assign="register_wholesaler"}}
	{{$txt['108974::4534234_register_wholesaler']}}
{{/capture}}

<div id="menu_settings" class="{{literal}} {{/literal}}{{$txt['108974::class_01']}}">
	<div {{assign "classAttributeTmp1" ""}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}menu_settings_bar{{/capture}}{{capture name="classAttributeTmp1" assign="classAttributeTmp1"}}menu_settings_bar {{$txt['108974::class_02']}}{{/capture}}  class="{{$classAttributeTmp1}}">
		{{if (count( $xml->getList("/shop/currency/option"))  gt (string) 1) or (count( $xml->getList("/shop/language/option"))  gt (string) 1) or (count( $xml->getList("/shop/countries/country"))  gt (string) 1)}}
			<div class="open_trigger">
				<div class="menu_settings_wrapper">
					{{if  $xml->getItem("/shop/language/option/@selected") or  $xml->getItem("/shop/currency/option/@selected")}}
						<div class="menu_settings_inline">
							<div class="menu_settings_header">{{$txt['108974::TXT_106003_lang_curr']}}
							</div>
							<div class="menu_settings_content">
								<span {{assign "classAttributeTmp2" ""}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}menu_settings_flag{{/capture}}{{capture name="classAttributeTmp2" assign="classAttributeTmp2"}}menu_settings_flag flag flag_{{$xml->getItemEscape("/shop/language/option[@selected='true']/@id")}}{{/capture}}  class="{{$classAttributeTmp2}}"></span>
								<strong class="menu_settings_value">
									<span class="menu_settings_language">{{$xml->getItemEscape("/shop/language/option[@selected='true']/@name")}}</span>
									<span>{{literal}}|{{/literal}}</span>
									<span class="menu_settings_currency">{{$xml->getItemEscape("/shop/currency/option[@selected='true']/@symbol")}}</span></strong>
							</div>
						</div>
					{{/if}}
					{{if  $xml->getItem("/shop/countries/country/@selected")}}
						<div class="menu_settings_inline">
							<div class="menu_settings_header">{{$txt['108974::TXT_106003_country']}}
							</div>
							<div class="menu_settings_content">
								<strong class="menu_settings_value">{{$xml->getItemEscape("/shop/countries/country[@selected='true']/@name")}}</strong>
							</div>
						</div>
					{{/if}}
				</div>{{$txt['108974::menu_settings_toggle']}}
			</div>
			{{if (count( $xml->getList("/shop/currency/option"))  gt (string) 1) or (count( $xml->getList("/shop/language/option"))  gt (string) 1) or (count( $xml->getList("/shop/countries/country"))  gt (string) 1)}}
				<form action="/settings.php" method="post" {{if $xml->getItem("/shop/action/settings/@url")}} action="{{$xml->getItemEscape("/shop/action/settings/@url")}}" {{/if}}>
					<ul class="bg_alter">
						{{if count( $xml->getList("/shop/language/option"))  gt (string) 1}}
							<li>
								<div class="form-group">
									<label class="menu_settings_lang_label">{{$txt['108974::menu_settings_panel2']}}
									</label>
									{{foreach from=$xml->getList("/shop/language/option") item=loop55}}
										<div class="radio">
											<label>
												<input type="radio" name="lang" {{if $loop55->getItem("@selected") == (string)'true'}} checked="checked"{{/if}} value="{{$loop55->getItemEscape("@id")}}"></input>
												<span class="flag flag_{{$loop55->getItemEscape("@id")}}"></span>
												<span>{{$loop55->getItemEscape("@name")}}</span>
											</label>
										</div>
									{{/foreach}}
								</div>
							</li>
						{{/if}}
						{{if count( $xml->getList("/shop/currency/option"))  gt (string) 1 or count( $xml->getList("/shop/countries/country"))  gt (string) 1}}
							<li>
								{{if count( $xml->getList("/shop/currency/option"))  gt (string) 1}}
									<div class="form-group">
										<label for="menu_settings_curr">{{$txt['108974::menu_settings_panel3']}}
										</label>
										<div class="select-after">
											<select class="form-control" name="curr" id="menu_settings_curr">
												{{foreach from=$xml->getList("/shop/currency/option") item=loop81}}
													<option value="{{$loop81->getItemEscape("@id")}}" {{if $loop81->getItem("@selected") == (string)'true'}} selected="selected" {{$loop81->getItemEscape("@symbol")}}{{else}}{{$loop81->getItemEscape("@symbol")}} {{$txt['108974::menu_settings_currency1']}}{{$loop81->getItemEscape("/shop/currency/option[@selected='true']/@symbol")}}{{$txt['108974::menu_settings_currency2']}}{{$loop81->getItemEscape("@rate")}}{{$txt['108974::menu_settings_currency3']}} {{$loop81->getItemEscape("@symbol")}}{{$txt['108974::menu_settings_currency4']}} {{/if}}>
													</option>
												{{/foreach}}
											</select>
										</div>
									</div>
								{{/if}}
								{{if count( $xml->getList("/shop/countries/country"))  gt (string) 1}}
									<div class="form-group">
										<label for="menu_settings_country">{{$txt['108974::menu_settings_panel1']}}
										</label>
										<div class="select-after">
											<select class="form-control" name="country" id="menu_settings_country">
												{{foreach from=$xml->getList("/shop/countries/country") item=loop103}}
													<option {{if $loop103->getItem("@selected") == (string)'true'}} selected="selected"{{/if}} value="{{$loop103->getItemEscape("@id")}}">{{$loop103->getItemEscape("@name")}}
													</option>
												{{/foreach}}
											</select>
										</div>
									</div>
								{{/if}}
							</li>
						{{/if}}
						<li class="buttons">
							<button class="btn-small" type="submit">{{$txt['108974::menu_settings_submit']}}
							</button>
						</li>
					</ul>
				</form>
			{{/if}}
		{{/if}}
		{{if $display_menu_additional}}
			<div id="menu_additional">
				{{if  $xml->getItem("basket/@login")}}
					{{$txt['108974::57295_1a']}}
					<a {{assign "hrefAttributeTmp3" ""}}{{capture name="hrefAttributeTmp3" assign="hrefAttributeTmp3"}}/login.php{{/capture}}{{if $xml->getItem("/shop/action/login/@url")}}{{capture name="hrefAttributeTmp3" assign="hrefAttributeTmp3"}}{{$xml->getItemEscape("/shop/action/login/@url")}}{{/capture}}{{/if}} title="{{$txt['108974::57295_004']}}"  href="{{$hrefAttributeTmp3}}">{{$txt['108974::57295_005']}}</a>{{$txt['108974::57295_1']}}
					<a {{assign "hrefAttributeTmp4" ""}}{{capture name="hrefAttributeTmp4" assign="hrefAttributeTmp4"}}/login.php?operation=logout{{/capture}}{{if $xml->getItem("/shop/action/login/@url")}}{{capture name="hrefAttributeTmp4" assign="hrefAttributeTmp4"}}{{$xml->getItemEscape("/shop/action/login/@url")}}?operation=logout{{/capture}}{{/if}} title="{{$txt['108974::57295_010']}}"  href="{{$hrefAttributeTmp4}}">{{$txt['108974::57295_031']}}</a>
				{{else}}
					{{$txt['108974::57295_1a']}}
					<a {{assign "hrefAttributeTmp5" ""}}{{capture name="hrefAttributeTmp5" assign="hrefAttributeTmp5"}}/login.php{{/capture}}{{if $xml->getItem("/shop/action/login/@url")}}{{capture name="hrefAttributeTmp5" assign="hrefAttributeTmp5"}}{{$xml->getItemEscape("/shop/action/login/@url")}}{{/capture}}{{/if}} title="{{$txt['108974::57295_002']}}"  href="{{$hrefAttributeTmp5}}">{{$txt['108974::57295_012']}}</a>{{$txt['108974::57295_1']}}
					<a {{assign "hrefAttributeTmp6" ""}}{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}/client-new.php?register{{/capture}}{{if $xml->getItem("/shop/action/registration_options/retail")}}{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}{{$xml->getItemEscape("/shop/action/registration_options/retail/@registration_url")}}{{/capture}}{{else}}{{capture name="hrefAttributeTmp6" assign="hrefAttributeTmp6"}}{{$xml->getItemEscape("/shop/action/registration_options/wholesale/@registration_url")}}{{/capture}}{{/if}} title="{{$txt['108974::57295_001']}}"  href="{{$hrefAttributeTmp6}}">{{$txt['108974::57295_011']}}</a>
				{{/if}}
				<a href="/basketedit.php?mode=2" class="menu_settings_wishlist">{{$txt['108974::TXT_108974_wishlist']}}
					<span>
						{{if  $xml->getItem("wishes/@count")}}
							{{$xml->getItemEscape("wishes/@count")}}
						{{else}}
							0
						{{/if}}
						</span></a>
			</div>
		{{/if}}
	</div>
</div>