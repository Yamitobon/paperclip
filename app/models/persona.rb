class Persona < ActiveRecord::Base
  attr_accessible :email, :fch_ncto, :identificacion, :municipio, :nombre, :telefono, :avatar

  has_attached_file :avatar, :styles => { :small => "150x150>", :lsmall => "30x30>" },
    :url  => "/assets/personas/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/personas/:id/:style/:basename.:extension"

	validates_attachment_presence :avatar
	validates_attachment_size :avatar, :less_than => 5.megabytes
	validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png']
end
