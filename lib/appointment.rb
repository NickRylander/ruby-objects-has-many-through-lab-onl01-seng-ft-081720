# Appointment
#   .all
#     knows about all appointments that have been created (FAILED - 19)
#   #new
#     initializes with a date, patient, and doctor (FAILED - 20)
#   #patient
#     belongs to a patient (FAILED - 21)
#   #doctor
#     belongs to a doctor (FAILED - 22)

class Appointment

    attr_accessor :date, :patient, :doctor
    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end
    def self.all
        @@all
    end

end