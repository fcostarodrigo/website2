module.exports = (attributes) ->
  pairs = ['']
  for key, value of attributes
    if value is true
      pairs.push key
    else
      pairs.push "#{key}=\"#{value}\""
  pairs.join ' '
