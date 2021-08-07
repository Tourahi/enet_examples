enet = assert require 'enet'

class server
  new: =>
    @host = {}
    @receivedData = false
    @peer = {}
    
  start: =>
    @host = enet.host_create('127.0.0.1:6789')
  
  isConnected: =>
    @receivedData
    
  update: =>
    if not @host
      return
    event = @host\service!
    if event
      @receivedData = true
      Dump event
      @peer = event.peer -- server
      event.peer\send 'meow'
      
      
  
server
