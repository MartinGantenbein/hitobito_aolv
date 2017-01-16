# encoding: utf-8

class Group::Club < ::Group

  self.layer = true

  self.event_types = []

  children Group::Team, Group::Grouping

  ### ROLES
  class Administrator < Role::Administrator
  end

  class Leader < Role::Leader
  end

  class Member < Role::Member
  end

  roles Administrator, Leader, Member
end
