# encoding: utf-8

class Role::LayerAdmin < ::Role
  self.permissions = [:layer_full]
end