require "sinatra"

set :bind, "0.0.0.0"
set :port, 3000
set :logging, true

get "/" do
  "Hello, world!"
end
