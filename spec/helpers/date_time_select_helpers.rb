module Features
  module DateTimeSelectHelpers
    def select_date(date, options = {})
      field = options[:from]
      select date.strftime('%Y'),  from: "#{field.split('_').join("[")}(1i)]" #year
      select date.strftime('%B'),  from: "#{field.split('_').join("[")}(2i)]" #month
      select date.strftime('%-d'), from: "#{field.split('_').join("[")}(3i)]" #day
    end
  end
end
