debug = false
debug = true if process.env.NODE_ENV == 'development'

module.exports = (grunt) ->
  grunt.initConfig
    uglify:
      app:
        options:
          mangle: true
          compress: true
          sourceMap: !debug
          sourceMapIncludeSources: !debug
        src: 'htdocs/app.js'
        dest: 'htdocs/app.js'
    browserify:
      client:
        options:
          browserifyOptions:
            extensions: [ '.coffee' ]
            debug: debug
          transform: [ 'vueify', 'coffeeify' ]
        src: [ 'web/coffee/init.coffee' ]
        dest: 'htdocs/app.js'

  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-browserify'

  grunt.registerTask 'default', ['browserify', 'uglify']
