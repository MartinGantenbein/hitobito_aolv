# encoding: utf-8

class Group::Grouping < ::Group

  self.layer = false

  self.event_types = []

  children Group::Grouping

  ### ROLES
  class Member < Role::Member
  end

  class ExternalMember < Role::ExternalMember
  end

  roles Member, ExternalMember
end
