class Member < ApplicationRecord

def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |member|
     csv << member.attributes.values_at(*column_names)

    end
    end

end

def self.import(file)
  CSV.foreach(file.path, headers: true) do |r|
  Member.create! r.to_hash
  end
end
def self.im(file)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
   row = Hash[[header, spreadsheet.row(i)].transpose]
   member = find_by_first_name(row["first_name"]) || new
   member.attributes = row.to_hash.slice(*accessible_attributes)
   member.save!
end
end

def self.open_spreadsheet(file)
case File.extname(file.original_filename)
when ".csv" then Csv.new(file.path, nil, :ignore)
when ".xls" then Excel.new(file.path, nil, :ignore)
when ".xlsx" then Excelx.new(file.path, nil, :ignore)
else raise "unknown file type: #{file.original_filename}"
end
end
  scope :find_by_phno, lambda{|query|
  where(["phno LIKE ?","%#{query}%"])}

  scope :find_by_pollno, lambda{|query|
  where(["pollno LIKE ?","%#{query}%"])}

  scope :find_by_address, lambda{|query|
  where(["address LIKE ?","%#{query}%"])}

  scope :find_by_postalCode, lambda{|query|
  where(["postal_code LIKE ?","%#{query}%"])}

  scope :find_by_caption, lambda{|query|
  where(["caption_name LIKE ?","%#{query}%"])}


end
