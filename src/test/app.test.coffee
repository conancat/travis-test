app = require "../app"
assert = require "assert"

describe "hello()", ->

  it "should return Hello world!", ->
    assert app.hello(), "Hello world!"


