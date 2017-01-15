@employee = Employee.create!(email: 'test@test.com', password: 'asdfasdf',
                    password_confirmation: 'asdfasdf', first_name: 'Jon',
                    last_name: 'Snow', phone: "4322386131",
                    ssn: 1234, company: "ABC Company")

puts "1 employee created"

AdminUser.create(email: "admin@test.com", password: "asdfasdf", password_confirmation: "asdfasdf",
                 first_name: "Admin", last_name: "Name", phone: "4322386156",
                 ssn: 1234, company: "ABC Company")

puts "1 Admin user created"

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content. #{Faker::Lorem.characters(42)}", user_id: @employee.id, daily_hours: 12.5)
end

puts '100 Posts have been created'
