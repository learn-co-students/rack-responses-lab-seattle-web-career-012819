# Declare an Application class
class Application
  # Define a #call instance method with argument of "env"

  def call(env)
    # Instantiate a Response object from within the Rack gem's namepsace
    resp = Rack::Response.new

    # Retrieve integer of current hour
    current_hour = Time.now.hour

    # If the current hour is past 12...
    if current_hour > 12
      # Display afternoon message.
      resp.write "Good Afternoon!"
    else
      # Otherwise display morning message.
      resp.write "Good Morning!"
    end
    
    # Finish our response.
    resp.finish
  end
end