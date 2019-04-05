class Application
  def call(env)
    resp = Rack::Response.new
    resp.write "Good morning"
    resp.write "Good afternoon"
    resp.finish
  end
end
