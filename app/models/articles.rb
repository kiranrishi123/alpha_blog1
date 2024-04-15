class Articles < ApplicationRecord

	validates :articles , presence: true , length: {minimum: 6 , maximum: 15}
	validates :descprition , presence: true , length: {minimum: 6 , maximum: 200}
end