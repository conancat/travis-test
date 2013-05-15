{spawn, exec} = require 'child_process'
sys = require 'util'

printOutput = (process) ->
  process.stdout.on 'data', (data) -> sys.print data
  process.stderr.on 'data', (data) -> sys.print data
  
watchJS = ->
  # coffee = exec 'coffee -r coffeescript-growl -cw -o ./ src/'
  coffee = exec 'coffee -cw -o ./ src/'
  printOutput(coffee)

task 'watch', 'Watches all coffeescript files for changes', ->
  watchJS()
  
task 'compile', 'Compiles all Coffeescript files into JS one shot', ->
 coffee = exec "coffee -c -o ./ src/"
 printOutput(coffee)
  
task 'test', 'Runs all tests', ->
  vows = exec 'vows test/*.test.js'
  printOutput(vows)

task 'test-browser', 'Run browser tests with PhantomJS', ->
  phantomjs = exec 'phantomjs tests/run-mocha.js http://local.host:8000'
  printOutput(phantomjs)
  
task 'compile-jade', 'Compiles all jade templates into JS', ->
  compile = exec '../tmpl-precompile/bin/tmpl-precompile tmpl-precompile.json'
  printOutput(compile)

task 'index', "Forces Facebook to scrape videos and mixtapes of the site", ->
  index = exec 'node bin/buildIndex.js'
  printOutput(index)
  
task 'docs', 'Create documentation using Docco', ->
  docco = exec """
    docco src/*.coffee
    docco src/lib/*.coffee
    docco src/test/*.coffee
    docco src/test/helpers/*.coffee
  """
  printOutput(docco)
