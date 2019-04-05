class Application
  def call(env)
    resp = Rack::Response.new
    now = Time.now.hour.to_i
    if now < 12 then resp.write "Good morning" else resp.write "Good afternoon" end
    resp.finish
  end
end
