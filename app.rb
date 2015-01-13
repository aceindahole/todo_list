require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/todo")

get("/") do
  @todo = ToDo.all()
  erb(:index)
end

post("/index") do
  description = params.fetch("description")
  task = ToDo.new(description)
  task.save()
  # task.clear()
  erb(:index)
end
