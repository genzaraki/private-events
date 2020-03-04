class User < ApplicationRecord
    has_secure_password
    has_many :event
    has_many :event_attendees
    has_many :attended_event, class_name: "Event", through: :event_attendees
end
