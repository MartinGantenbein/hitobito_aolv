# encoding: utf-8

class Role::Administrator < ::Role
  self.permissions = [:group_and_below_full]
end