# frozen_string_literal: true

require 'lennarb'

APP =
  Lennarb.new do |route|
    route.get '/' do |_req, res|
      res.status = 200
      res.write '<h1>Hello, World!</h1>'
    end
  end
