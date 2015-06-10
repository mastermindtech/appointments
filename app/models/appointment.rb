class Appointment < ActiveRecord::Base

  rails_admin do
    list do
      include_fields :id, :place, :date, :user, :confirmed
    end
  end
end
