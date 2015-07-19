# encoding: utf-8

class Group::Team < ::Group

  self.layer = false

  self.event_types = []

  children Group::Team

  ### ROLES
  class Administrator < Role::Administrator
  end

  class Leader < Role::Leader
  end

  class Member < Role::Member
  end

  class ExternalMember < Role::ExternalMember
  end

  roles Administrator, Leader, Member, ExternalMember
end
