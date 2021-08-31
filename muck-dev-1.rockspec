package = "muck"
version = "dev-1"
source = {
   url = "https://github.com/johnathan-coe/"
}
description = {
   homepage = "homepage",
   license = "license"
}
build = {
   type = "builtin",
   modules = {
      ["muck.Stubs.globals"] = "src/Stubs/globals.lua",
      ["muck.Stubs.Logger"] = "src/Stubs/Logger.lua",
      ["muck.Stubs.Plugin"] = "src/Stubs/Plugin.lua",
      ["muck.Stubs.Storage"] = "src/Stubs/Storage.lua",
   }
}
