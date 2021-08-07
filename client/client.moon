enet = assert require 'enet'

class client
  new: =>
    @host = {}
    @receivedData = false
    
  start: =>
    @host = enet.host_create!
    @peer = @host\connect '127.0.0.1:6789'
  isConnected: =>
    @receivedData
    
  update: =>
    if not @host
      return
    event = @host\service!
    if event
      @receivedData = true
      peer = event.peer -- client
      Dump event
      event.peer\send 'bark'
      
      
  
client
