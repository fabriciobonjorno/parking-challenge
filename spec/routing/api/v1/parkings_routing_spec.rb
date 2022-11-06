require 'rails_helper'

RSpec.describe Api::V1::ParkingsController, type: :routing do
  describe 'routing' do
    it 'routes to #report' do
      expect(get: '/api/v1/parkings/AAA-9999').to route_to('api/v1/parkings#report_plate', plate: 'AAA-9999')
    end

    it 'routes to #parking' do
      expect(post: '/api/v1/parkings').to route_to('api/v1/parkings#parking')
    end

    it 'routes to #update_out' do
      expect(put: '/api/v1/parkings/out/1').to route_to('api/v1/parkings#out', id: '1')
    end

    it 'routes to #update_pay' do
      expect(put: '/api/v1/parkings/pay/1').to route_to('api/v1/parkings#pay', id: '1')
    end

  end
end
