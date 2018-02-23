// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
$( document ).ready(function() {


	$("#information_installation_type").change(function() {
	  	if ($("#information_installation_type")[0].value == "Instance X-Road") {
			$("#submit-button")[0].value = "Suivant";
			$("#domain-name").hide();
			$("#number-people").hide();
			$("#machine-name").hide();
		} else if ($("#information_installation_type")[0].value == "Proxy Server"){
			$("#submit-button")[0].value = "Installation";
		} else {
			$("#submit-button")[0].value = "Installation";
			$("#domain-name").show();
			$("#number-people").show();
			$("#machine-name").show();
		}
	});
});