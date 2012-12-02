$(function() {
  $('.html-editor').wysihtml5();

  $('.html-output img').each(function() {
    $(this).wrap('<span class="photo">');
  });
});
