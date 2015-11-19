require "sinatra"

# All paths in the application require a username/password

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  username == "admin" && password == "admin"
end

get "/" do
  "Admins Only!"
end
