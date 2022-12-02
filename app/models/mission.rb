class Mission < ApplicationRecord
    belongs_to :scientist
    belongs_to :planet

    validates :name, presence: true
    validates :scientist_id, presence: true
    validates :planet_id, presence: true

    # validate :cant_join_same_mission_twice

    # def cant_join_same_mission_twice
    #     if scientist_id == self.scientist.id
    #         errors.add(:scientist_id, "FAIL!")
    #     end
    # end
end
