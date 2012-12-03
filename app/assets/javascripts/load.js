$(function() {
  $('.html-editor').wysihtml5({
    html: true
  });

  $('.html-output img').each(function() {
    $(this).wrap('<span class="photo">');
  });
});
