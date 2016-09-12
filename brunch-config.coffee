exports.config =
  npm:
    enabled: false
  files:
    javascripts:
      joinTo:
        '../../public/js/app.js': /^app/
        '../../public/js/vendor.js': /^(bower_components|vendor)/
    stylesheets:
      joinTo:
        '../../public/css/vendor.css': /^(bower_components|vendor)/
        '../../public/css/app.css': /^app/
    templates:
      joinTo:
        '../../public/js/templates.js': /^app\//