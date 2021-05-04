require "rich_text_field/version"
require "rich_text_field/railtie"
require "administrate/field/text"

module RichTextField
	class Engine < Rails::Engine
    # initializer 'administrate-field-rich_text_field.add_assets' do |app|
    #   app.config.assets.precompile << 'rich_text_field.js' if app.config.respond_to? :assets
    #   Administrate::Engine.add_javascript 'rich_text_field.js' if defined?(Administrate::Engine)
    # end
		Administrate::Engine.add_stylesheet(
			"rich_text_field",
		)
  end

  class RichTextField < Administrate::Field::Text
	  def to_s
	    data
	  end

	  def searchable?
	  	false
	  end
	end
end
