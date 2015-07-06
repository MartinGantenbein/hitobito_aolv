# encoding: utf-8

class Role::Administrator < ::Role
  self.permissions = [:admin, :layer_and_below_full]
end