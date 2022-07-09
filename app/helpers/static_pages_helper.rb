module StaticPagesHelper
require "uri"
require 'nokogiri'
require 'open-uri'
require "i18n"
require 'json'
require 'wikipedia'

	def circuit_info(racename)		
		page = Wikipedia.find( racename, :tllimit => 500 )
		page.summary
	end

	def car_image(constructor)
		html = ''
		case constructor
		when  "Ferrari"
			html += image_tag "Ferrari.png"	
		when "AlphaTauri"
			html += image_tag "Alpha.png"
		when "Red Bull"
			html += image_tag "RedBull.png"
		when "McLaren"
			html += image_tag "Maclaren.png"
		when "Mercedes"
			html += image_tag "Mercedez.png"	
		when "Williams"
			html += image_tag "Williams.png"
		when "Alpine F1 Team"
			html += image_tag "Alpine.png"
		when "Aston Martin"
			html += image_tag "AstonMartin.png"
		when "Alfa Romeo"
			html += image_tag "AlfaRome.png"
		when "Haas F1 Team"
			html += image_tag "Hass.png"									
		end
		html.html_safe
	end


end
