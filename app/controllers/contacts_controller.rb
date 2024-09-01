class ContactsController < ApplicationController
 
  def first_contact
    contact = Contact.find_by(id: 1)
    render json: {
    full_contact: contact,
    first_name: contact.first_name,
    last_name: contact.last_name,
    email: contact.email,
    phone_number: contact.phone_number
  }
  end

end
