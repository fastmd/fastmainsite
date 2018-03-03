require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Fast
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.assets.enabled = true  
    config.assets.paths << "#{Rails.root}/app/assets/fonts" 
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
    #config.autoload_paths << "#{Rails.root}/app/reports" 
    config.i18n.default_locale = :ru      
  end
end
