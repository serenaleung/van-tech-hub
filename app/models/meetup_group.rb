class MeetupGroup < ApplicationRecord
    validates(:name, { presence: true, uniqueness: true })
end
