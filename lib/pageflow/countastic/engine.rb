require 'rails/engine'

module Pageflow
  module Countastic
    class Engine < ::Rails::Engine
      isolate_namespace Pageflow::Countastic
    end
  end
end
