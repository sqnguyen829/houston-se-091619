class Doctor

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def patients
        # a = Appointment.all.select do |appointment|
        #         appointment.doctor == self
        #     end

        self.appointments.map do |appointment|
            appointment.patient
        end.uniq
    end
end