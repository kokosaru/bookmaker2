class Match < ApplicationRecord
	has_many :teams, dependent: :destroy
	accepts_nested_attributes_for :teams, allow_destroy: true
	enum genre:{野球: 0,サッカー:1,バスケットボール:2,テニス:3,バレーボール:4,卓球:5,バトミントン:6,esport:7,その他:8}
	enum match_status:{試合前: 0,試合中: 1}
end
