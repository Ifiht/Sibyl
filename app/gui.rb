require 'wx'
require 'sibyl'

Wx::App.run do
  Wx::Frame.new(nil, title: 'Hello world!').show
end
