class Application
  
  @@item = []
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env) 
    
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last 
      item = @@item.detect {|i| i.name = item_name}
        if item != nil 
          @code_status = 200
          resp.write item.price
        else 
          @code_status = 400
          resp.write "Item not found"
      else 
        @code_status = 404 
        resp.write "Route not found"
      
    elsif 