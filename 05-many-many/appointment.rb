class Appointment

    attr_reader :doctor, :patient
    attr_accessor :time

    @@all = []

    def initialize(doctor, patient, time)
        @doctor = doctor
        @patient = patient
        @time = time

        @@all << self
    end

    def self.all
        @@all
    end

end