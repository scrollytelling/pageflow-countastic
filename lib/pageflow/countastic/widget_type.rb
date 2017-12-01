require 'pageflow/widget_type'

module Pageflow
  module Countastic
    class WidgetType < ::Pageflow::WidgetType
      def name
        'countastic'
      end

      def roles
        ['countastic']
      end
    end
  end
end
