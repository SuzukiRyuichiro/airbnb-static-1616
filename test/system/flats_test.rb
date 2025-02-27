require 'application_system_test_case'

class FlatsTest < ApplicationSystemTestCase
  test 'visiting the flats page' do
    visit '/'

    assert_selector 'h1', text: 'Flats'
    assert_selector 'li', text: 'Trendy Apt in Buttes Montmartre'
  end

  test 'visiting flat show page' do
    visit '/flats/145'
    assert_selector 'h1', text: 'Charm at the Steps of the Sacre Coeur/Montmartre'
  end
end
