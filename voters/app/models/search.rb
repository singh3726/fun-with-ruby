class Search < ApplicationRecord

def search_members

  mem = Member.all

  mem = mem.where(["address LIKE ?","%#{keywords}%"]) if keywords.present?
  mem = mem.where(["phno LIKE ?","%#{phno}%"]) if phno.present?
  mem = mem.where(["email LIKE ?","%#{email}%"]) if email.present?
 mem = mem.where(["postal_code LIKE ?","%#{postal_code}%"]) if postal_code.present?
 mem = mem.where(["poll_no LIKE ?","%#{poll_no}%"]) if poll_no.present?
 mem = mem.where(["caption_name LIKE ?","%#{caption_name}%"]) if caption_name.present?
  return mem
end

end
