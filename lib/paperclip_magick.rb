require 'Rmagick'

module PaperclipMagick
	def to_rmagick(style_name= default_style)

	@image_list ||= ImageList.new(self.path(style_name))
	end
	end

	Paperclip::Attachment.send(:include,Magick)
	Paperclip::Attachment.send(:include,PaperclipMagick)