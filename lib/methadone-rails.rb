require 'methadone/rails/helpers'


module Methadone
  module Rails
    class Railtie < ::Rails::Railtie
      generators do
        require_relative 'generators/methadone_generator'
      end
    end
  end
end
