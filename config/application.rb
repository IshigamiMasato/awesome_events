require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
# require "action_mailer/railtie"
# require "action_mailbox/engine"
# require "action_text/engine"
require "action_view/railtie"
# require "action_cable/engine"
require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AwesomeEvents
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    # Railsアプリケーション内の時間を日本時間に変更、DB登録時は自動的にUTCに変換される、ApplicationRecordを通すとUTCからJSTに自動変換される
    config.time_zone = "Tokyo"
    # v6.1からremoteがデフォルトでfalseになった
    config.action_view.form_with_generates_remote_forms = true
    # i18n化
    config.i18n.default_locale = :ja
    # 画像変換ツールにvipsを用いる
    config.active_storage.variant_processor = :vips

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
