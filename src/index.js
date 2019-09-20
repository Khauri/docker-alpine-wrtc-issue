const wrtc = require('wrtc')

console.log('Log 1')
new wrtc.nonstandard.RTCVideoSource()
console.log('Log 2') // never reached with release build