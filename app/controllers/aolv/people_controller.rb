# encoding: utf-8

module Aolv::PeopleController
  extend ActiveSupport::Concern

  included do
    self.permitted_attrs += [:title]
  end
end