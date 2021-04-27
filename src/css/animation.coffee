module.exports = (name, rules...) ->
  "@keyframes #{name}{#{rules.join('')}}"
