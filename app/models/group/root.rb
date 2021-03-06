# encoding: utf-8

class Group::Root < ::Group

  self.layer = true

  self.event_types = []

  children Group::Club, Group::Team, Group::Grouping

  ### ROLES

  # has to be named Leader because there is a
  # hard coded reference to Group::Root::Leader from the core...
  class Leader < Role::Leader
  end
  
  class Administrator < Role::Administrator
    self.permissions = [:layer_full]
  end

  roles Leader, Administrator
end
