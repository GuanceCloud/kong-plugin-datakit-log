package = "kong-plugin-datakit-log"
version = "0.1.1-1"
-- Versioned source is pinned to the corresponding release tag.
source = {
  url = "git+https://github.com/GuanceCloud/kong-plugin-datakit-log.git",
  tag = "v0.1.1",
}
description = {
  summary = "Send Kong access logs to DataKit Log Streaming",
  license = "Apache-2.0",
}
dependencies = { "lua >= 5.1, < 5.5" }
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.datakit-log.handler"] = "kong/plugins/datakit-log/handler.lua",
    ["kong.plugins.datakit-log.schema"] = "kong/plugins/datakit-log/schema.lua",
    ["kong.plugins.datakit-log.record"] = "kong/plugins/datakit-log/record.lua",
    ["kong.plugins.datakit-log.transport"] = "kong/plugins/datakit-log/transport.lua",
    ["kong.plugins.datakit-log.report"] = "kong/plugins/datakit-log/report.lua",
  },
}
