# encoding: utf-8

class PagesController < ApplicationController
  skip_before_action :authenticate_person!
  skip_authorization_check
  
  def datenschutz; end
end