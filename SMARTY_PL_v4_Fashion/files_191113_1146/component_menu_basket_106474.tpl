
<!--Menu koszyka (menu_basket, 106474.1)-->
<div id="menu_basket" >
	<a {{assign "hrefAttributeTmp1" ""}}{{capture name="hrefAttributeTmp1" assign="hrefAttributeTmp1"}}/basketedit.php?mode=1{{/capture}}{{if $xml->getItem("/shop/action/basket/@url")}}{{capture name="hrefAttributeTmp1" assign="hrefAttributeTmp1"}}{{$xml->getItemEscape("/shop/action/basket/@url")}}?mode=1{{/capture}}{{/if}}  href="{{$hrefAttributeTmp1}}">{{$txt['106474::53667_001befcount']}}
		<strong>{{$xml->getItem("basket/@cost_formatted")}}
			{{if  $xml->getItem("@points_used")  gt (string) 0}}
				<small>{{$txt['106474::56431_plus']}}{{$xml->getItem("basket/@points_used")}}{{$txt['106474::56431_pkt']}}</small>
			{{/if}}
			</strong>
		{{if  $xml->getItem("basket/@count")  gt (string) 0}}
			<span class="badge badge-info">{{$xml->getItem("basket/@count")}}</span>
		{{/if}}
		</a>
	<div class="d-none">
		{{if  $xml->getItem("wishes/@count")}}
			<a {{assign "hrefAttributeTmp2" ""}}  class="wishes_link link"{{capture name="hrefAttributeTmp2" assign="hrefAttributeTmp2"}}/basketedit.php?mode=2{{/capture}} rel="nofollow" {{if $xml->getItem("/shop/action/basket/@url")}}{{capture name="hrefAttributeTmp2" assign="hrefAttributeTmp2"}}{{$xml->getItemEscape("/shop/action/basket/@url")}}?mode=2{{/capture}}{{/if}} title="{{$txt['106474::56431_ulubione_tit']}}"  href="{{$hrefAttributeTmp2}}">
				<span>{{$txt['106474::56431_ulubione']}}({{$xml->getItemEscape("wishes/@count")}})</span>
				<span class="badge badge-info">{{$xml->getItemEscape("wishes/@count")}}</span></a>
		{{else}}
			<a {{assign "hrefAttributeTmp2" ""}}  class="wishes_link link"{{capture name="hrefAttributeTmp2" assign="hrefAttributeTmp2"}}/basketedit.php?mode=2{{/capture}} rel="nofollow" {{if $xml->getItem("/shop/action/basket/@url")}}{{capture name="hrefAttributeTmp2" assign="hrefAttributeTmp2"}}{{$xml->getItemEscape("/shop/action/basket/@url")}}?mode=2{{/capture}}{{/if}} title="{{$txt['106474::56431_ulubione_tit']}}"  href="{{$hrefAttributeTmp2}}">
				<span>{{$txt['106474::56431_ulubione']}}(0)</span></a>
		{{/if}}
		{{$txt['106474::53667_001sep']}}
		<a {{assign "hrefAttributeTmp4" ""}}  class="basket_link link"{{capture name="hrefAttributeTmp4" assign="hrefAttributeTmp4"}}/basketedit.php?mode=1{{/capture}} rel="nofollow" {{if $xml->getItem("/shop/action/basket/@url")}}{{capture name="hrefAttributeTmp4" assign="hrefAttributeTmp4"}}{{$xml->getItemEscape("/shop/action/basket/@url")}}?mode=1{{/capture}}{{/if}} title="{{$txt['106474::30004_003title']}}" {{if $xml->getItem("basket[@count='0']")}} title="{{$txt['106474::30004_003empty']}}" {{/if}}  href="{{$hrefAttributeTmp4}}">{{$txt['106474::53667_001']}}</a>
	</div>
	{{if  $xml->getItem("/shop/action/sites/@session_share_disabled")}}
		<script>
                        app_shop.vars.session_share = "{{$xml->getItemEscape("/shop/action/sites/@session_share")}}";
                        {{if  $xml->getItem("/shop/action/sites/site")}}
                        app_shop.vars.sites = [
{{foreach from=$xml->getList("/shop/action/sites/site") item=loop57}}{{if !( $loop57@iteration  == (string)1)}},{{/if}}"{{$loop57->getItemEscape("@url")}}"
{{/foreach}}
];
                        {{/if}}		</script>

	{{/if}}
	{{if  $xml->getItem("/shop/page/@cache_html")  == (string) 'true' }}
		<script>
                        app_shop.vars.cache_html = true;
                    		</script>

	{{/if}}
	{{if  $xml->getItem("/shop/basket/product")}}
		{{if  $xml->getItem("/shop/page/@cache_basketwishes")}}
		{{/if}}
		{{if  $xml->getItem("/shop/page/@cache_basket")}}
		{{/if}}
	{{/if}}
</div>