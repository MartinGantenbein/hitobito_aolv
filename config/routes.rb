# encoding: utf-8

Rails.application.routes.draw do

  extend LanguageRouteScope

  language_scope do
    get 'datenschutz', to: 'pages#datenschutz'
  end

end
