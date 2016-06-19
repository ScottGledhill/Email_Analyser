require 'rails_helper'

describe Email, type: :model do
  it { should have_db_column :address }
  it { should have_db_column :email_type }
  it { should have_db_column :event }
  it { should have_db_column :timestamp }

  before :each do
    Email.create!(
      address:"barney@lostmy.name",
      email_type: "Shipment",
      event: "send",
      timestamp: 1466100850)
    Email.create!(
      address:"vitor@lostmy.name",
      email_type: "ReferAFriend",
      event: "open",
      timestamp: 1466100860
    )
    Email.create!(
      address:"test@lostmy.name",
      email_type: "ReferAFriend",
      event: "click",
      timestamp: 1466100860
    )
    Email.create!(
      address:"tom@lostmy.name",
      email_type: "UserConfirmation",
      event: "click",
      timestamp: 1466100856
    )
    Email.create!(
      address:"test2@lostmy.name",
      email_type: "UserConfirmation",
      event: "open",
      timestamp: 1466100856
    )
  end

  it 'calculates the total number of emails' do
    expect(Email.total_emails).to eq 5
  end

  it 'calculates the sent total number of emails' do
    expect(Email.sent_total).to eq 1
  end

  it 'calculates the opened total number of emails' do
    expect(Email.opened_total).to eq 2
  end

  it 'calculates the clicked total number of emails' do
    expect(Email.clicked_total).to eq 2
  end

  it 'calculates the open rate per email type' do
    expect(Email.opened_rate("UserConfirmation")).to eq 0.5
    expect(Email.opened_rate("Shipment")).to eq 0
    expect(Email.opened_rate("ReferAFriend")).to eq 0.5
  end

  it 'calculates click rate per email type' do
    expect(Email.click_rate("UserConfirmation")).to eq 0.5
    expect(Email.click_rate("Shipment")).to eq 0
    expect(Email.click_rate("ReferAFriend")).to eq 0.5
  end
end
