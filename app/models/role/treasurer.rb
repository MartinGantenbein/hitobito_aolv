# encoding: utf-8

class Role::Treasurer < ::Role
  self.permissions = [:finance]
end