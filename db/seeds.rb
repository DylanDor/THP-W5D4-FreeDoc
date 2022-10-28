Doctor.destroy_all
Patient.destroy_all
Speciality.destroy_all
City.destroy_all


City.create(name: "Toulouse", zip_code: "31000")

10.times do |i|
    Speciality.create(name: "spec#{i}")
end

10.times do |i|
    Doctor.create(first_name: "doc#{i}", last_name: "doc#{i}", city_id: City.all.sample.id)
end

10.times do
    JoinDoctorToSpeciality.create(doctor_id: Doctor.all.sample.id, speciality_id: Speciality.all.sample.id)
end