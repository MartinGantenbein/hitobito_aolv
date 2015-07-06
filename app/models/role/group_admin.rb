# encoding: utf-8

class Role::GroupAdmin < ::Role
  self.permissions = [:group_full]
end