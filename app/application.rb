class Application
  
  resp = Rack::Response.new 
  req = Rack::Request.new(env) 
  
  def call(env)