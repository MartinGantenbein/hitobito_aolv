# encoding: utf-8

namespace :app do
  namespace :license do
    task :config do
      @licenser = Licenser.new('hitobito_aolv',
                               'Aargauer OL Verband AOLV',
                               'https://github.com/hitobito/hitobito_aolv')
    end
  end
end