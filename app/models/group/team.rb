# encoding: utf-8

class Group::Team < ::Group

  self.layer = false

  self.event_types = []



  ### ROLES
  class Administrator < Role::GroupAdmin
  end

  class Member < Role::Member
  end

  roles Administrator, Member
end
