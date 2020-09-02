# Patient
#   #new
#     initializes with a name (FAILED - 23)
#   #new_appointment
#     given a date and doctor, creates a new appointment belonging to that patient (FAILED - 24)
#   .all
#     knows about all patients (FAILED - 25)
#   #appointments
#     returns all appointments associated with this Patient (FAILED - 26)
#   #doctors
#     has many doctors through appointments (FAILED - 27)

class Patient

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end
    def appointments
        Appointment.all.select { |appointment| appointment.patient == self }
      end
    
      def doctors
        appointments.map(&:doctor)
      end
end