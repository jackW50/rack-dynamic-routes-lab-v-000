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
          resp.write "Item not found"
          resp.status = 400
        end 
      else 
        resp.write "Route not found"
        resp.status = 404
    elsif 