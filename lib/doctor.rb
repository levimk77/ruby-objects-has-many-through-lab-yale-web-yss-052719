class Doctor
@@all = []
    attr_reader :name

    def initialize(name)
        @@all << self
        @name = name
    end

    def self.all
    @@all
    end

    def new_appointment(date,patient)
        appt = Appointment.new(patient,date,self)

    end

    def appointments
        Appointment.all.select {|appt| appt.doctor == self}
    end
     
    def patients
        x = []
        Appointment.all.select {|appt| appt.doctor == self}.each {|appt| x<< appt.patient}
        x
    end
end