# cc = Proc.new {
#   [
#     200,
#     {"content-type" => "text-html"},
#     ["hello rack"]
#   ]
# }

# run cc

class Cat
  def call(env)
    [
      200,
      {"content-type" => "text-html"},
      ["hello in class #{env}"]
    ]
  end
end

run Cat.new 