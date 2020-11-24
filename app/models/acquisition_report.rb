class AcquisitionReport < ApplicationRecord
    validates :reporter_identity, :note, presence: true, length: {minimum: 5}
end
