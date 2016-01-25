
React = require 'react'

if typeof window isnt 'undefined'
  isMobile = require 'ismobilejs'

styles = require './styles'

{a, div, span, img, noscript} = React.DOM

apkAddress = 'https://dn-talk.oss.aliyuncs.com/downloads/talk-teambition-release.apk'

module.exports = React.createClass
  displayName: 'jianliao-app-banner'

  propTypes:
    isDisabled: React.PropTypes.bool

  getDefaultProps: ->
    isDisabled: false

  getInitialState: ->
    isHidden: false

  onHide: ->
    @setState isHidden: true
    localStorage.setItem 'disabled-jianliao-app-banner', 'disabled'

  render: ->
    isAndroid = if isMobile? then isMobile.android.device else false
    if @props.isDisabled or @state.isHidden or (not isAndroid)
      noscript()
    else
      div style: styles.box,
        div style: styles.iconClose, onClick: @onHide, '×'
        div style: styles.avatar
        div style: styles.guide,
          div style: styles.title, '简聊'
          div style: styles.description, '谈工作, 用简聊'
        a style: styles.install, href: apkAddress, target: '_blank', '安装'
