
<!--Filtrowanie wyników wyszukiwania (menu_filter, 97634.1)-->
{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter/item/@quantity")}}
{{/if}}

{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter/item/@name")}}
{{/if}}

{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter/@mode")}}
{{/if}}

{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter[@id='filter_instock']")}}
{{/if}}

{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter[@id='filter_date']")}}
{{/if}}

{{if  $xml->getItem("/shop/page/products/navigation/filtering/filter[@type='text']")}}
{{/if}}

{{if  $xml->getItem("/shop/page/products/navigation/filtering")}}
{{/if}}

{{if  $xml->getItem("/shop/page/products/navigation/search_link/@value")}}
{{/if}}

{{if  $xml->getItem("/shop/page/@cache_filter")}}
{{/if}}
