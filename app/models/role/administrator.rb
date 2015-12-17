# encoding: utf-8

class Role::Administrator < ::Role
  self.permissions = [:layer_and_below_full]
end