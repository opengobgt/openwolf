class AddAttachmentToSolicitud < ActiveRecord::Migration
	def self.up
		add_attachment :solicitudes, :attachment
	end

	def self.down
		remove_attachment :solicitudes, :attachment
	end	
end