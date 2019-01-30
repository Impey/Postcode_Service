require 'spec_helper'

describe Postcodesio do 

 context 'requesting information from the single service to check it works correctly' do
   before(:all) do
    @single_postcode_service = Postcodesio.new.single_postcode_service
    @single_postcode_service.single_postcode_request("SS74LE")
   end 


   it 'should respond with a status code of 200' do
    expect(@single_postcode_service.retrieve_status_code).to eq 200
   end

   it 'should return the post code of SS7 4LE' do
    expect(@single_postcode_service.retrieve_postcode).to eq "SS7 4LE"
   end

   it 'should be stored as string' do 
    expect(@single_postcode_service.retrieve_postcode).to be_kind_of(String)
   end

   it 'should return quality as data type integer' do
    expect(@single_postcode_service.retrieve_quality).to be_kind_of(Integer)
   end
   
   it 'should be data type Int on eastings' do 
    expect(@single_postcode_service.retrieve_eastings).to be_kind_of(Integer)
  end
  
  it 'should be data type Int on northings' do 
    expect(@single_postcode_service.retrieve_northings).to be_kind_of(Integer)
  end

  it 'should be data type string for country' do 
    expect(@single_postcode_service.retrieve_country).to be_kind_of(String)
  end

  it 'should be data type of string for nhs_ha' do 
   expect(@single_postcode_service.retrieve_nhs).to be_kind_of(String)
  end

  it 'should be data type of float for longitude' do 
    expect(@single_postcode_service.retrieve_longitude).to be_kind_of(Float)
  end

  it 'shoulde be data type of float for latitude' do 
    expect(@single_postcode_service.retrieve_latitude).to be_kind_of(Float)
  end

  it 'should be data type of string for european_electoral_region' do 
    expect(@single_postcode_service.retrieve_european_electoral_region).to be_kind_of(String)
  end

  it 'should be a data type of string for primary_care_trust' do 
    expect(@single_postcode_service.retrieve_primary_care_trust).to be_kind_of(String)
  end

  it 'should be a data type of string for region' do 
    expect(@single_postcode_service.retrieve_region).to be_kind_of(String)
  end

  it 'should be data type of string for losa' do 
    expect(@single_postcode_service.retrieve_lsoa).to be_kind_of(String)
  end

  it 'should be data type of string for msoa' do 
    expect(@single_postcode_service.retrieve_msoa).to be_kind_of(String)
  end

  it 'should be data type of string for incode' do 
    expect(@single_postcode_service.retrieve_incode).to be_kind_of(String)
  end

  it 'should be data type of string for outcode' do 
    expect(@single_postcode_service.retrieve_outcode).to be_kind_of(String)
  end

  it 'should be data type of string for parliamentary_constituency' do 
    expect(@single_postcode_service.retrieve_parliamentary_constituency).to be_kind_of(String)
  end

  it 'should be data type of string for admin_district' do 
    expect(@single_postcode_service.retrieve_admin_district).to be_kind_of(String)
  end

  it 'should be data type of string for parish' do 
    expect(@single_postcode_service.retrieve_parish).to be_kind_of(String)
  end

  it 'should be data type of string for admin_county' do 
    expect(@single_postcode_service.retrieve_admin_county).to be_kind_of(String)
  end

  it 'should be data type of string for admin_ward' do 
    expect(@single_postcode_service.retrieve_admin_ward).to be_kind_of(String)
  end

  it 'should be data type of string for ced' do 
    expect(@single_postcode_service.retrieve_ced).to be_kind_of(String)
  end

  it 'should be data type of string for ccg' do 
    expect(@single_postcode_service.retrieve_ccg).to be_kind_of(String)
  end

  it 'should be data type of string for nuts' do 
    expect(@single_postcode_service.retrieve_nuts).to be_kind_of(String)
  end
  it 'should be data type of string for codes admin district' do 
    expect(@single_postcode_service.retrieve_codes_admin_district).to be_kind_of(String)
  end







 




  
  
  
  





  # it 'should returns eastings length to be 6' do
  #  expect(@single_postcode_service.retrieve_eastings.to_s.length).to eq 6
  # end

  #  it 'should be England' do 
  #   expect(@single_postcode_service.retrieve_country).to eq "England"
  #  end

  #  it 'should contain England' do 
  #   expect(@single_postcode_service.retrieve_nhs).to include("England")
  #  end

  

   
    
    
 end 
end

