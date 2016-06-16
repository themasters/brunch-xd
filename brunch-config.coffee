exports.config =
  modules:
    definition: false
    wrapper: false
  files:
    javascripts:
      defaultExtension: 'coffee'
      joinTo:
        'public/js/app.js': /^app/
        'public/js/vendor.js': /^(bower_components|vendor)/
      order:
        before: [
          'app/js/shared/main.coffee'
          'app/js/user/main.coffee'
          'app/js/admin/main.coffee'
        ]
    stylesheets:
      joinTo:
        'public/css/app.css': /^app/
        'public/css/vendor.css': /^(bower_components|vendor)/
      order: [
        before: 'app/stylesheets/shared/less'
      ]
    templates:
      joinTo:
        'public/js/templates.js': /^app\//

  plugins:
    jadeNgtemplates:
      modules: [
        name: "templates"
        pattern: /^app\/templates\//
        url: (path) ->
          path.replace /\\/g, "/"  # Convert Window-like paths to Unix-like
          "/#{path}"
      ]
      jade:
        doctype: "html"
      htmlmin: false
    afterBrunch: []