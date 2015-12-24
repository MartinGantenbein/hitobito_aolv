# encoding: utf-8

module HitobitoAolv
  class Wagon < Rails::Engine
    include Wagons::Wagon

    # Set the required application version.
    app_requirement '>= 0'

    # Add a load path for this specific wagon
    config.autoload_paths += %W( #{config.root}/app/abilities
                                 #{config.root}/app/domain
                                 #{config.root}/app/jobs
                               )

    config.to_prepare do
      # rubocop:disable SingleSpaceBeforeFirstArg
      # extend application classes here

      # models
      Group.send        :include, Aolv::Group
      Person.send       :include, Aolv::Person

      #domain
      Export::Csv::People::PeopleAddress.send :include, Aolv::Export::Csv::People::PeopleAddressS

      # controllers
      PeopleController.send :include, Aolv::PeopleController
      # rubocop:enable SingleSpaceBeforeFirstArg
    end

    initializer 'aolv.add_settings' do |_app|
      Settings.add_source!(File.join(paths['config'].existent, 'settings.yml'))
      Settings.reload!
    end

    initializer 'aolv.add_inflections' do |_app|
      ActiveSupport::Inflector.inflections do |inflect|
        # inflect.irregular 'census', 'censuses'
      end
    end

    private

    def seed_fixtures
      fixtures = root.join('db', 'seeds')
      ENV['NO_ENV'] ? [fixtures] : [fixtures, File.join(fixtures, Rails.env)]
    end

  end
end
