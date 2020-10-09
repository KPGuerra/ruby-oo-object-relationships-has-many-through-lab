class Patient 
    attr_accessor :name
    @@all_patients = []

    def initialize(name)
        @name = name
        @@all_patients << self
    end

    def self.all
        @@all_patients
    end 

    def new_appointment (doctor, date)
        new_appt = Appointment.new(self, date, doctor)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end

    def doctors
        self.appointments.map {|appt| appt.doctor }
    end 
end  
