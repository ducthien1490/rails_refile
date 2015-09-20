var $form = $("form.edit_collection");
$(document).on("upload:start", $form, function(e) {
  $("form.edit_collection").find("input").css("color", "green");
});
$(document).on("upload:progress", $form, function(e) {
  $("form.edit_collection").find("input").css("color", "red");
});
$(document).on("upload:success", $form, function(e) {
  $("form.edit_collection").find("input").css("color", "blue");
});
