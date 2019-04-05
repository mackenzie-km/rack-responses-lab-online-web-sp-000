class Application
  def call(env)
    resp = Rack::Response.new
    now = Time.now.hour.to_i
    now < 12 ? resp.write "Good morning" : resp.write "Good afternoon"
    resp.finish
  end
end
