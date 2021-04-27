module.exports = (selectors..., properties) ->
  map = ([key, value]) -> "#{key}:#{value}"
  properties = Object.entries(properties).map map
  "#{selectors.join(',')}{#{properties.join(';')}}"
