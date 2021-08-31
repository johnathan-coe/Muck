package = "muck"
version = "dev-1"
source = {
   url = "git://github.com/johnathan-coe/Muck",
   tag = "0.0.1",
}
description = {
   homepage = "homepage",
   license = "license"
}
build = {
   type = "builtin",
   modules = {
      ["muck.stubs.globals"] = "src/stubs/globals.lua",
      ["muck.stubs.Logger"] = "src/stubs/Logger.lua",
      ["muck.stubs.Plugin"] = "src/stubs/Plugin.lua",
      ["muck.stubs.Storage"] = "src/stubs/Storage.lua",
   }
}
