attributes = require './attributes'

module.exports = (name, attributesObj) ->
  "<#{name}#{attributes(attributesObj)} />"
