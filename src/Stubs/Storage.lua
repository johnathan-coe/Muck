local Storage
do
  local _class_0
  local _base_0 = {
    exists = function(self, key)
      return self.values[key] ~= nil
    end,
    getValue = function(self, key)
      return self.values[key]
    end,
    setValue = function(self, key, value)
      self.values[key] = value
      self.unsaved = true
      return true
    end,
    save = function(self)
      self.unsaved = false
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self, filename)
      self.filename = filename
      self.values = { }
      self.unsaved = false
    end,
    __base = _base_0,
    __name = "Storage"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Storage = _class_0
end
return Storage
