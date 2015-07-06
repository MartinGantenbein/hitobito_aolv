# encoding: utf-8

class Group::Root < ::Group

  self.layer = true

  self.event_types = []

  children Group::Club, Group::Team

  ### ROLES
  class Administrator < Role::Administrator
  end
  
  # has to be named Leader because there is a
  # hard coded reference to Group::Root::Leader from the core...
  class Leader < ::Role
  end
  
  roles Administrator
end
