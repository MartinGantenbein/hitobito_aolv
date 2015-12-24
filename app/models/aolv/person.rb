# encoding: utf-8

module Aolv::Person
  extend ActiveSupport::Concern

  included do
    Person::PUBLIC_ATTRS << :title
    
    alias_method_chain :full_name, :title
  end
  
  private
  
  def full_name_with_title
    "#{title} #{full_name_without_title}".strip
  end
end
