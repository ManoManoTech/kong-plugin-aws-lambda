package = "kong-plugin-mm-aws-lambda"
version = "3.6.0-1"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/ManoManoTech/kong-plugin-aws-lambda/",
  tag = "3.6.0",
}

description = {
  summary = "Kong plugin to invoke AWS Lambda functions",
  homepage = "http://konghq.com",
  license = "Apache 2.0"
}

dependencies = {
  "lua-resty-openssl",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.mm-aws-lambda.aws-serializer"]       = "kong/plugins/mm-aws-lambda/aws-serializer.lua",
    ["kong.plugins.mm-aws-lambda.handler"]              = "kong/plugins/mm-aws-lambda/handler.lua",
    ["kong.plugins.mm-aws-lambda.iam-ec2-credentials"]  = "kong/plugins/mm-aws-lambda/iam-ec2-credentials.lua",
    ["kong.plugins.mm-aws-lambda.iam-ecs-credentials"]  = "kong/plugins/mm-aws-lambda/iam-ecs-credentials.lua",
    ["kong.plugins.mm-aws-lambda.schema"]               = "kong/plugins/mm-aws-lambda/schema.lua",
    ["kong.plugins.mm-aws-lambda.v4"]                   = "kong/plugins/mm-aws-lambda/v4.lua",
    ["kong.plugins.mm-aws-lambda.http.connect-better"]  = "kong/plugins/mm-aws-lambda/http/connect-better.lua",
    ["kong.plugins.mm-aws-lambda.request-util"]         = "kong/plugins/mm-aws-lambda/request-util.lua",
  }
}
