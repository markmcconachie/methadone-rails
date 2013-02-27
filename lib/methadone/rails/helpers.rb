module Methadone
  module Rails
    module Helpers
      def self.included(k)
        setup_rails_logger
      end

      def setup_rails_logger
        Rails.logger = Logger.new(STDOUT)
        disable_active_record_logging
        change_logger Rails.logger
      end

      def enable_active_record_logging
        ActiveRecord::Base.logger.level = 0
      end

      def disable_active_record_logging
        ActiveRecord::Base.logger.level = 1
      end
    end
  end
end
