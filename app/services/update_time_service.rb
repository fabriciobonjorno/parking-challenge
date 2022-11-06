class UpdateTimeService

  def initialize(parking)
    @parking = parking
  end

  def call
    update_time
  end

  private

  def update_time
    parking = Parking.find(@parking.id)
    update_time = ActiveSupport::Duration.build((parking.updated_at - parking.created_at).round).inspect
    parking.update_columns(time: update_time)
    parking
  end
end
