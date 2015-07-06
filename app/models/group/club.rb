# encoding: utf-8

class Group::Club < ::Group

  self.layer = true
  
  self.event_types = []

  children Group::Team
  
  ### ROLES
  class Administrator < Role::LayerAdmin
  end

  class Member < Role::Member
  end

  roles Administrator, Member
end
