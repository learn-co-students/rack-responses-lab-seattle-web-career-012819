class Application
  def call(env)
    dom = Rack::Response.new
    if Time.now.hour < 12
      dom.write "Good Morning!"
    else
      dom.write "Good Afternoon!"
    end
    dom.finish
  end
end
