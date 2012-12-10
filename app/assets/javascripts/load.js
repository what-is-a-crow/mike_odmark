$(function() {
  $('.html-editor').wysihtml5('deepExtend', {
    html: true,
    parserRules: {
      tags: {
        iframe: {
          "check_attributes": {
            "src":"url"
          },
          "set_attributes": {
            "width": "46",
            "height": "23",
            "frameborder": "0",
            "allowfullscreen": ""
          }
        },
        object: {},
        embed: {}
      }
    }
  });

  $('.html-output img').each(function() {
    $(this).wrap('<span class="photo">');
  });
});
