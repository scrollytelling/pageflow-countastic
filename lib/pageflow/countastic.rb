require "pageflow/countastic/plugin"
require "pageflow/countastic/widget_type"

module Pageflow
  module Countastic
    def self.widget_type
      WidgetType.new
    end

    def self.plugin
      Plugin.new
    end
  end
end
