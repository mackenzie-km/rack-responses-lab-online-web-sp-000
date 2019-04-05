class Application
  def call(env)
    resp = Rack::Response.new
    now = Time.now.hour.to_i
    if now < 12 then resp.write "Morning" else resp.write "Afternoon #{now}" end
    resp.finish
  end
end
