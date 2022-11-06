class UpdateTimeService

  def initialize(parking)
    @parking = parking
  end

  def call
    update_time
  end

  private

  def update_time
    plate = Parking.find(@parking.id)
    update_time = ActiveSupport::Duration.build((plate.updated_at - plate.created_at).round).inspect
    plate.update_columns(time: update_time)
    plate
  end
end
