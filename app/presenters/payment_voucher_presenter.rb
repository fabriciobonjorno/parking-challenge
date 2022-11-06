class PaymentVoucherPresenter
  def self.payment_voucher(pay)
    {
      id: pay[:id],
      plate: pay[:plate],
      time: pay[:time]
    }
  end
end
