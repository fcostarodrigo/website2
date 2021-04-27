attributes = require './attributes'

module.exports = (name, args...) ->
  attributesObj = {}
  children = []

  for arg in args
    if Array.isArray arg
      children.push arg...
    else if typeof arg is 'string'
      children.push arg
    else if typeof arg is 'object'
      attributesObj = arg

  "<#{name}#{attributes(attributesObj)}>#{children.join('')}</#{name}>"
