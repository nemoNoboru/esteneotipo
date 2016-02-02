# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $("#noteEditor").on("ajax:success", (e, data, status, xhr) ->
    $(".notice").html("<p class='text-success'>Saved</p>")
  ).on "ajax:error", (e, xhr, status, error) ->
    $(".notice").html("<p class='text-danger'>ERROR</p>")
