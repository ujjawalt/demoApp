class Blog < ApplicationRecord

    validates :title, presence: true, length: { minimum: 4, maximum: 50}
    validates :description, presence: true, length: { minimum: 6, maximum: 500}

end