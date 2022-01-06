class ShortenedUrl < ApplicationRecord
    validate :short_url, :long_url, :user_id, presence: true
    validate :short_url, uniqueness: true
    
    belongs_to :user,
        class_name: 'User',
        foreign_key: :user_id,
        primary_key: :id

    def self.random_code
        until short_url
            if ShortenedUrl.exists?(short_url: short_url)
                short_url = nil
            else
                short_url = SecureRandom.urlsafe_base64
            end
        end

        short_url
    end
end