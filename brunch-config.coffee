exports.config =
  npm:
    enabled: false
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^(bower_components|vendor)/
    stylesheets:
      joinTo:
        'css/vendor.css': /^(bower_components|vendor)/
        'css/app.css': /^app/
      order:
        before: 'app/stylesheets/shared/less'
    templates:
      joinTo:
        'js/templates.js': /^app\//