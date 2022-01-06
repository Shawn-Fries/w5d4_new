class User < ApplicationRecord
    validate :email, uniqueness: true, presence: true

    has_many :short_urls,
        class_name: 'ShortenedUrl',
        foreign_key: :user_id,
        primary_key: :id
end