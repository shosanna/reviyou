//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(function() {
  $("[data-toggle=tooltip]").tooltip();

  $(".post").mouseup(function(e) {
    var selection = window.getSelection();

    var startOffset = selection.anchorOffset,
        range       = selection.getRangeAt(0),
        length      = range.toString().length,
        text        = range.toString();

    var p = e.target;
    var r = document.createRange();

    r.selectNode(p);
    r.setEndBefore(selection.focusNode, 0);

    var prefixLength = r.toString().length;
    var newStartOffset = prefixLength + startOffset;

    if (length > 0) {
      updateForm(text, newStartOffset, length);
    }
  });

  function updateForm(text, start, length) {
    $("#comment_selected_text").val(text);
    $("#comment_start_offset").val(start);
    $("#comment_end_offset").val(length);
  }
});
