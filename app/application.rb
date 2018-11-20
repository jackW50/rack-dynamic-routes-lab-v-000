class Application
  
  resp = Rack::Response.new 
  req = Rack::Request 
  
  def call(env)