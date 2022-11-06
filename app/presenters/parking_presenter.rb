# frozen_string_literal: true

class ParkingPresenter
  def self.payment_voucher(pay)
    {
      id: pay[:id],
      plate: pay[:plate],
      time: pay[:time]
    }
  end

  def self.entrace_ticket(entrace)
    {
      id: entrace[:id],
      plate: entrace[:plate],
      entrance_time: entrace[:created_at].strftime('%d/%m/%Y')
    }
  end

  def self.list_plate(list_plate)
    list_plate.map do |plate|
      {
        id: plate[:id],
        time: plate[:time],
        paid: plate[:paid],
        left: plate[:left]
      }
    end
  end
end
