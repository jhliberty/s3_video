require File.expand_path('../boot', __FILE__)

require 'rails/all'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module RiftReel
  class Application < Rails::Application

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]
    
    # AWS setup
    AWS::S3::Base.establish_connection!(
    	:access_key_id 		=> 'AKIAIGLU45ZDQ4GSTWKA',
    	:secret_access_key  => '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'
    )
    
    BUCKET = "jhliberty"
    
  end
end



