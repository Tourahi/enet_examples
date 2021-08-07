server = assert require 'server'
moon = assert require "moon"
export Dump = moon.p

Graphics = love.graphics

with love
  .load = () ->
    export Serv = server!
    Serv\start!
    
    
  .draw = () ->
    trs = love.math.newTransform 0, 0, 0, 3
    if Serv\isConnected!
      Graphics.print 'client connected to us (see console)', trs
    else
      Graphics.print 'server started... awaiting clients', tr
      
  .update = (dt) =>
    Serv\update!
    
