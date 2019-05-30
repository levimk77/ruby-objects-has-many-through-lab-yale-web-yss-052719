class Patient
@@all = []
attr_reader :name
    def initialize(name)
        @@all << self
        @name = name
    end

    def self.all
        @@all
    end 

    def new_appointment(date,doctor)
        appt = Appointment.new(doctor,self,date)
    end

    def appointments
    Appointment.all.select {|appt| appt.patient == self}
    end

    def doctors
        x = []
        Appointment.all.select {|appt| appt.patient == self}.each {|appt| x<< appt.doctor}
        x
    end
end