require 'date'
require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    current_time = Time.now.strftime("%H:%M")
    time_compare = '12:00'
    if current_time < time_compare
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
