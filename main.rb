# frozen_string_literal: true

require 'lennarb'

APP =
  Lennarb.new do |route|
    route.get '/' do |_req, res|
      res.status = 200
      res.html '<h1>Hello, World!</h1>'
    end

    route.get '/up' do |_req, res|
      res.status = 200
      html = <<~HTML
        <html>
          <body style="background-color: green;">
            <h1>OK</h1>
          </body>
        </html>
      HTML
      res.html html
    end
  end
