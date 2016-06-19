require 'rails_helper'

feature 'Emails' do
  context 'Emails have been added' do
    scenario 'Contains total emails' do
      visit '/'
      expect(page).to have_content 'Total Emails'
    end
  end

  scenario 'Contains sent total' do
    visit '/'
    expect(page).to have_content 'Sent Total'
  end
end


#
#   scenario 'display restaurants' do
#     visit '/restaurants'
#     expect(page).to have_content('KFC')
#     expect(page).not_to have_content('No restaurants yet')
#   end
# end
#
# context 'creating restaurants' do
#   scenario 'prompts user to fill out a form, then displays the new restaurant' do
#     visit '/restaurants'
#
#     sign_up
#
#     click_link 'Add a restaurant'
#     fill_in 'Name', with: 'KFC'
#     click_button 'Create Restaurant'
#     expect(page).to have_content 'KFC'
#     expect(current_path).to eq '/restaurants'
#   end
# end
#
# context 'viewing restaurants' do
#
#   let!(:kfc){Restaurant.create(name:'KFC')}
#
#   scenario 'lets a user view a restaurant' do
#    visit '/restaurants'
#    click_link 'KFC'
#    expect(page).to have_content 'KFC'
#    expect(current_path).to eq "/restaurants/#{kfc.id}"
#   end
#
# end
#
# context 'deleting restaurants' do
#
#   scenario 'removes a restaurant when a user clicks a delete link' do
#     sign_up
#     visit '/restaurants'
#
#     create_restaurant
#
#     click_link 'Delete KFC'
#     expect(page).not_to have_content 'KFC'
#     expect(page).to have_content 'Restaurant deleted successfully'
#   end
# end
#
# context 'an invalid restaurant' do
#   it 'does not let you submit a name that is too short' do
#     visit '/restaurants'
#
#     sign_up
#
#     click_link 'Add a restaurant'
#     fill_in 'Name', with: 'kf'
#     click_button 'Create Restaurant'
#     expect(page).not_to have_css 'h2', text: 'kf'
#     expect(page).to have_content 'error'
#   end
# end
#
#   context 'number of endorsements correctly shown' do
#     it 'should return the correct number of endorsements per restaurant' do
#
#     end
#   end
# end
