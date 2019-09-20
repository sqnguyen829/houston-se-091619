require 'pry'

require_relative 'doctor.rb'
require_relative 'patient.rb'
require_relative 'appointment.rb'

d1 = Doctor.new("Jenn")
d2 = Doctor.new("Mark")


p1 = Patient.new("john", 1234567890)
p2 = Patient.new("Maria", 1234567899)

a1 = Appointment.new(d1, p2, "2PM")
a2 = Appointment.new(d1, p1, "3PM")
a3 = Appointment.new(d2, p2, "12PM")
a4 = Appointment.new(d2, p1, "6PM")
a5 = Appointment.new(d2, p1, "5PM")



binding.pry
0