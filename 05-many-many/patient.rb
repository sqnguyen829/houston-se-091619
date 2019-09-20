class Patient

    attr_accessor :name, :mobile

    def initialize(name, mobile)
        @name = name
        @mobile = mobile
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end

    def doctors
        self.appointments.map do |appointment|
            appointment.doctor
        end.uniq
    end
end