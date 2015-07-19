# encoding: utf-8

class Role::ExternalMember < Role::Member
    self.visible_from_above = false;
    self.kind = :external
end