module ApplicationHelper

# Returns the full title on a per-page basis.
	def full_title(page_title)
		base_tile = 'Ruby on Rails Tutorial Sample App'
		if page_title.empty?
			base_tile
		else
			"#{base_tile} | #{page_title}"
		end
	end
end
