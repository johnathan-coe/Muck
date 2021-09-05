local assert = require("luassert")
local Storage = require("muck.stubs.Storage")
local storageObjects = { }
local commands = { }
local events = { }
local onEnable
onEnable = function() end
local Plugin
do
  local _class_0
  local _base_0 = {
    addCommand = function(params, func)
      assert.False(params.name == nil, "No name for command!")
      assert.False(func == nil, "Command callback was nil!")
      commands[params] = func
    end,
    registerEvent = function(name, func)
      events[name] = func
    end,
    getStorageObject = function(file)
      assert.False(string.len(file) == 0, "Storage object filename was empty!")
      if storageObjects[file] == nil then
        storageObjects[file] = Storage(file)
      end
      return storageObjects[file]
    end,
    onEnable = function(func)
      onEnable = func
    end,
    enable = function()
      return onEnable()
    end,
    getCommands = function()
      return commands
    end,
    reset = function()
      commands = { }
      storageObjects = { }
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function() end,
    __base = _base_0,
    __name = "Plugin"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Plugin = _class_0
end
return Plugin
