# encoding: utf-8

class Role::Member < ::Role
    self.permissions = [:group_read]
end