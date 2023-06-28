# encoding: utf-8

class Group::Team < ::Group

  self.layer = true

  self.event_types = [::Event]

  children Group::Team, Group::Grouping

  ### ROLES
  class Administrator < Role::Administrator
  end

  class Leader < Role::Leader
  end

  class Member < Role::Member
  end

  class Treasurer < Role::Treasurer
  end

  class ExternalMember < Role::ExternalMember
  end

  roles Administrator, Leader, Member, Treasurer, ExternalMember
end
