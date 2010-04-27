// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function(){
	
	var data = {items: $.map($('.autosuggest fieldset ol li'),function(n,i){ 
	return {
	value: $(n).find('input[value!=""]').attr('value'),
	name: $.trim(n.textContent)  
	} } ) };
	$('.autosuggest fieldset').replaceWith('<li id="invitation_guests_input" class="string required"><label for="invitation_guests">Guests<abbr title="required">*</abbr></label><input type="text" size="50" name="invitation[guest_ids][]" maxlength="255" id="invitation_guests"></li>');
	$("#invitation_guests").autoSuggest(data.items, {selectedItemProp: "name", searchObjProps: "name", asHtmlID: "invitation_guest_ids"});
	
})
