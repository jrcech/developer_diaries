# frozen_string_literal: true

RSpec.shared_examples 'OmniAuth examples' do |service|
  service_name = service.to_s.humanize(capitalize: false)

  context "with #{service_name}" do
    after do
      OmniAuth.config.mock_auth[service] = nil
    end

    it 'signs in with valid credentials' do
      OmniAuth.config.add_mock(service, uid: '12345')
      ominauth_sign_in(service_name)
      expect(
        page
      ).to have_text "authenticated from #{service_name.capitalize}"
    end

    it 'fails with invalid credentials' do
      OmniAuth.config.mock_auth[service] = :invalid_credentials
      ominauth_sign_in(service_name)
      expect(
        page
      ).not_to have_text "authenticated from #{service_name.capitalize}"
    end

    def ominauth_sign_in(service_name)
      visit new_user_session_path
      click_link "Sign in with #{service_name.capitalize}"
    end
  end
end
