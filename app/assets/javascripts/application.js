//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(function() {

  $("[data-toggle=tooltip]").tooltip();

  $(".post").mouseup(function(e) {
    var originalText = $("[data-post-text]").attr("data-post-text");

    var selection = window.getSelection();

    var startOffset = Math.min(selection.baseOffset, selection.extentOffset),
        endOffset   = Math.max(selection.baseOffset, selection.extentOffset),
        text = selection.baseNode.textContent.substr(startOffset, endOffset - startOffset);

    if (startOffset != endOffset) {
      showCommentBox(text, startOffset, endOffset);
    }
  });

  function showCommentBox(text, start, end) {
    $("#comment_selected_text").val(text);
    $("#comment_start_offset").val(start);
    $("#comment_end_offset").val(end);
  }
});
