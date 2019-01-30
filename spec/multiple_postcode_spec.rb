require 'spec_helper'

describe Postcodesio do 

 context 'requesting information from the multiple service to check it works correctly' do
   before(:all) do
    @multiple_postcode_service = Postcodesio.new.multiple_postcode_service
    @multiple_postcode_service.multiple_postcode_request(["OX49 5NU", "M32 0JG"])
   end 


   it 'should respond with a status code of 200' do
    expect(@multiple_postcode_service.retrieve_status_code).to eq 200
   end


   it 'should come back as OX49 5NU' do 
    expect(@multiple_postcode_service.retrieve_query).to eq 'OX49 5NU'
   end
    
    
 end 
end