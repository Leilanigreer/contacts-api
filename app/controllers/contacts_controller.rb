class ContactsController < ApplicationController
 
  def all_contacts 
    @contacts = Contact.all
    render template: "contacts/index"
  end

  # def old_all
  #   contacts = Contact.all
  #   contacts_array = []
  #   contacts.each do |contact|
  #     contacts_array << {
  #       first_name: contact.first_name,
  #       last_name: contact.last_name,
  #       email: contact.email,
  #       phone_number: contact.phone_number,
  #     }
  #   end
  #   render json: contacts_array
  # end


  def first_contact
    @contact = Contact.find_by(id: 1)
    render template: "contacts/show"
  end

  # def old_first_contact
  #   contact = Contact.find_by(id: 1)
  #   render json: {
  #   full_contact: contact,    
  #   first_name: contact.first_name,
  #   last_name: contact.last_name,
  #   email: contact.email,
  #   phone_number: contact.phone_number
  # }
  # end

end
