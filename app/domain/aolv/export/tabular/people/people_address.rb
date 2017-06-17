# encoding: utf-8

module Aolv::Export::Tabular::People
  module PeopleAddress
    extend ActiveSupport::Concern
    
    included do
      alias_method_chain :person_attributes, :title
    end
    
    private
    
    def person_attributes_with_title
      [:title] + person_attributes_without_title
    end
  end
end