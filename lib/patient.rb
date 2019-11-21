class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    return Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.filter do |apt|
      apt.patient == self
    end
  end

  def doctor
    self.appointments.collect do |apt|
      apt.doctor
    end
  end
end
