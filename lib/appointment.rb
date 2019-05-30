class Appointment
    attr_reader :doctor, :date, :patient
    @@all = []
    def initialize(date,patient,doctor)
        @@all << self
        @date = date
        @patient = patient
        @doctor = doctor
    end
    def self.all
        @@all
    end

    
end