require 'pageflow/widget_type'

module Pageflow
  module Countastic
    class WidgetType < ::Pageflow::WidgetType
      def name
        'pageflow_countastic'
      end

      def roles
        ['countastic']
      end

      def render(template, entry)
        template.render(
          partial: "pageflow/countastic/widget",
          locals: {
            entry: entry
          }
        )
      end

      def render_head_fragment(template, entry)
        template.render(
          partial: 'pageflow/countastic/head',
          locals: {
            entry: entry
          }
        )
      end
    end
  end
end
