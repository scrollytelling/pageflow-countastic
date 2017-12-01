require 'pageflow/plugin'

module Pageflow
  module Countastic
    class Plugin < ::Pageflow::Plugin
      def configure(config)
        config.features.register("countastic") do |feature_config|
          feature_config.widget_types.register(Pageflow::Countastic.widget_type)
        end
      end
    end
  end
end
