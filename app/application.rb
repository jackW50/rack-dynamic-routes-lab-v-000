class Application
  
  @@item = []
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env) 
    
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last 
      item = @@item.detect {|i| i.name = item_name}
        if item != nil 
          resp.write item.price
        else 
          @code_status = 400
          resp.write "item not found"
      elsif 
    elsif 