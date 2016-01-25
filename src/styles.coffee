
hsl = require 'hsl'

if typeof window is 'undefined'
  logo = ''
else
  logo = require '../images/talk-128.png'

exports.box =
  width: '100%'
  height: '80px'
  padding: '10px 10px'
  paddingLeft: 7
  position: 'absolute'
  backgroundColor: '#F2F2F2'
  position: 'fixed'
  top: 0
  left: 0
  borderBottom: "1px solid #{hsl 0, 0, 92}"

exports.iconClose =
  width: '20px'
  fontSize: '24px'
  color: hsl 0, 0, 60
  fontWeight: 100
  cursor: 'pointer'
  verticalAlign: 'middle'
  display: 'inline-block'
  verticalAlign: 'middle'
  textAlign: 'center'
  marginRight: 13

exports.avatar =
  width: '60px'
  height: '60px'
  display: 'inline-block'
  borderRadius: '12px'
  backgroundSize: 'contain'
  backgroundImage: "url(#{logo})"
  backgroundRepeat: 'no-repeat'
  backgroundPosition: 'center center'
  verticalAlign: 'middle'

exports.guide =
  color: hsl 0, 0, 40
  padding: '0 20px'
  display: 'inline-block'
  verticalAlign: 'middle'

exports.title =
  fontWeight: 'bold'
  lineHeight: '20px'

exports.description =
  lineHeight: '20px'
  color: hsl 0, 0, 60

exports.install =
  position: 'absolute'
  right: 10
  top: 0
  height: 80
  lineHeight: '80px'
  color: hsl 240, 80, 70
  cursor: 'pointer'
