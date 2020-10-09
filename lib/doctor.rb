class Doctor
    attr_accessor :name
    @@all_doctors = []

    def initialize(name)
        @name = name 
        @@all_doctors << self
    end

    def self.all
        @@all_doctors
    end

    def new_appointment(date, patient)
        new_appt = Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select {|appt| appt.doctor == self}
    end 

    def patients
        appointments.map(&:patient)
    end 
end
