class Upload < ActiveRecord::Base

  has_attached_file :upload
  validates_attachment_presence :upload
  
end
