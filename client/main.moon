clint = assert require 'client'
moon = assert require "moon"
export Dump = moon.p

Graphics = love.graphics

with love
  .load = () ->
    export Cli = clint!
    Cli\start!
    
    
  .draw = () ->
    trs = love.math.newTransform 0, 0, 0, 3
    if Cli\isConnected!
      Graphics.print 'connected to the server (see console)', trs
    else
      Graphics.print 'Establishing connection...', tr
      
  .update = (dt) =>
    Cli\update!
    
