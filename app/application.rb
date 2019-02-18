class Application
  def call(env)
    resp = Rack::Response.new
    curr_hr = Time.now.hour

    if curr_hr < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
