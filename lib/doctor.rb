class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def appointments
    return Appointment.all.filter do |apt|
      apt.doctor == self
    end
  end

  def new_appointment(date, patient)
    return Appointment.new(date, patient, self)
  end

  def patients
    self.appointments.collect do |apt|
      apt.patient
    end
  end
end
