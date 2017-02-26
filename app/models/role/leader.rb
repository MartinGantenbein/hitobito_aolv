# encoding: utf-8

class Role::Leader < ::Role
  self.permissions = [:layer_and_below_read]
end