$(document).ready(function() {
    // all custom jQuery will go here
    $("p").hover(
    	function() {
    		$(this).hide();
    	}
    );

    $("button").click(
    	function() {
    		$('body').css("background-color", "#ecefd0");
    	}
    );

});