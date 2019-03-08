require 'time'

class Application

  def call(env)
    time = Time.now
   resp = Rack::Response.new
   num_1 = Kernel.rand(1..20)
   num_2 = Kernel.rand(1..20)
   num_3 = Kernel.rand(1..20)

   resp.write "#{num_1}\n"
   resp.write "#{num_2}\n"
   resp.write "#{num_3}\n"
   if time.hour >=12
     resp.write "Good Afternoon!"
   else
     resp.write "Good Morning!"
   end

   resp.finish
 end

end
