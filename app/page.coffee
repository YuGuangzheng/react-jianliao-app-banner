
React = require 'react'

Banner = React.createFactory require '../src/banner'

div = React.createFactory 'div'

module.exports = React.createClass
  displayName: 'app-page'

  render: ->
    div className: 'app-page',
      Banner()
      'Empty Page'
