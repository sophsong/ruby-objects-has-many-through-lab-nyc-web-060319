class Doctor

  @@all = []
attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def new_appointment(patient,date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end

  end


  def patients
    appointments.map do |appointment|
      appointment.patient
    end


  end









end #end of Doctor class
