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

      def render(template, entry)
        template.render \
          partial: 'pageflow/countastic/widget',
          locals: {entry: entry}
      end
    end
  end
end
