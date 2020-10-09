class Appointment
    attr_accessor :date, :patient, :doctor 
    @@all_appointments = []

    def initialize ( patient, date, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all_appointments << self
    end 

    def self.all
        @@all_appointments
    end 
end 