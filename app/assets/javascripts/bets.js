$(function() {
	$(".choice").click(function() {
		$(this).find("input[type='radio']").prop("checked", true);
		$(this).addClass("selected");
		$(this).closest(".row").find(".choice").not(this).removeClass("selected");
	});
});