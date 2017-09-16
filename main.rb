
class Cat
	attr_reader :size
	def initialize(variants, prefix = false)
		@variants = variants
		@prefix = prefix
		@size = @variants.size
	end

	def pick
		result = @variants.sample
		if !result.is_a? String
			result = result.pick
		end
		if @prefix
			result = @prefix + ": " + result
		end
		return result
	end
end

class Item
	def initialize(name, suppressor = false, attachments = false, russian = false, longrange = false)
		@name = name
		@suppressor = suppressor
		@attachments = attachments
		@russian = russian
		@longrange = longrange
	end

	def pick
		res = @name

		if @suppressor && rand() <= $suppressorChance
			res += ", #{$suppressors.pick}"
		end

		return res if !@attachments
		attach = rand() <= $attachmentChance
		sight1 = rand() <= $sightChance
		sight2 = sight1 && rand() <= $sightChance

		s = [$sights, $irons]
		s << $scopes if @longrange
		s << $russian if @russian && !(sight2 or attach)
		sight = s.delete(s.sample)
		res += ", #{sight.pick}"
		if sight2
			sight = s.delete(s.sample)
			res += ", #{sight.pick}"
		end

		if attach
			a = [$attachements]
			a << $magnifiers if sight1
			res += ", #{a.sample.pick}"
		end
		return res
	end
end

require_relative 'invSetup.rb'
