require 'rails_helper'

feature 'Emails show in view' do
  scenario 'Contains total emails' do
    visit '/'
    expect(page).to have_content 'Total Emails'
  end

  scenario 'Contains sent total' do
    visit '/'
    expect(page).to have_content 'Sent Total'
  end

  scenario 'Contains open rate %' do
    visit '/'
    expect(page).to have_content 'Opened Rate'
  end

  scenario 'shows total emails ' do
    visit '/'
    expect(page).to have_content '0'
  end
end
