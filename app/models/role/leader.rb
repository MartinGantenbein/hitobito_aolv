# encoding: utf-8

class Role::Leader < ::Role
  self.permissions = [:layer_read]
end