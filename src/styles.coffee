
hsl = require 'hsl'
vendor = require 'react-vendor-prefix'

if typeof window is 'undefined'
  logo = ''
else
  logo = require './talk-128.png'

exports.box = vendor.prefixOne
  width: '100%'
  height: '80px'
  padding: '10px 10px'
  position: 'absolute'
  backgroundColor: '#F2F2F2'
  position: 'fixed'
  top: 0
  left: 0
  display: 'flex'
  alignItems: 'center'

exports.iconClose =
  width: '20px'
  fontSize: '20px'
  color: hsl 0, 0, 60
  fontWeight: 100
  cursor: 'pointer'
  verticalAlign: 'middle'

exports.avatar =
  width: '60px'
  height: '60px'
  borderRadius: '12px'
  backgroundSize: 'contain'
  backgroundImage: "url(#{logo})"
  backgroundRepeat: 'no-repeat'
  backgroundPosition: 'center center'

exports.guide =
  color: hsl 0, 0, 40
  padding: '0 20px'
  flex: 1

exports.title =
  fontWeight: 'bold'
  lineHeight: '20px'

exports.description =
  lineHeight: '20px'
