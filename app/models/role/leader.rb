# encoding: utf-8

class Role::Leader < ::Role
  self.permissions = [:group_and_below_read]
end