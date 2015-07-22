class Redacter
	attr_accessor :original_text

	def initialize text
		@original_text = text
	end

	def redact *phrases
		modified_text = @original_text.clone

		phrases.each do |phrase|
			modified_text.gsub! /#{phrase}/ do |word|
				word = "X" * word.length
			end
		end

		modified_text
	end
end