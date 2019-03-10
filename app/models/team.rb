class Team < ApplicationRecord
	mount_uploader :team_image, ImageUploader
	belongs_to :match
end
