require "peatio/plugin/example/version"

module Peatio
  module Plugin
    module Example
      class Engine < Rails::Engine
        isolate_namespace Example
        # Mount new API resource in hook (friendly with development environment).
        # More about configuration stages: http://guides.rubyonrails.org/configuring.html#configuring-action-dispatch
        config.to_prepare do
          APIv2::Mount.mount APIv2::Alphabet
        end
      end
    end
  end
end
