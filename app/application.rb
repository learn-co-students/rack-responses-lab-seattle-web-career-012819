class Application

  def call(env)
    resp = Rack::Response.new
    time_now = Time.now
    noon = Time.parse "12:00 pm"
    if time_now < noon
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
