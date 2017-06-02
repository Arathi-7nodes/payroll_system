class Salary < ActiveRecord::Base
  belongs_to :user
  validates :start_date, presence: true, uniqueness: { scope: :user_id }
  validates :user_id, presence: true
  validates :annual_amount, presence: true
  validate :no_salaries_outside_employment_dates, if: :user
  before_save :calculate

  default_scope { order('start_date') }

  def self.ordered_dates
    select('distinct start_date').order('start_date').map(&:start_date)
  end

  def self.ordered_dates_with_previous_dates
    ordered_dates.map { |date| [date - 1, date] }.flatten
  end

  def self.all_dates
    (Salary.history_dates << Time.zone.today).sort.uniq
  end

  def self.history_dates
    (Salary.ordered_dates_with_previous_dates + user.ordered_start_dates).sort.uniq
  end


  def calculate
    self.income = annual_amount.to_i/12;
    self.daily_income = income/30;
    self.amount = daily_income * attendance;
    self.hra = amount * 10/100;
    self.medical = amount * 20/100;
    self.conveyance = amount * 15/100;
    self.pf = amount * 15/100;
    self.total_earnings = amount * 40/100;


  end
  private

  def no_salaries_outside_employment_dates
    unless user.start_date
      errors.add(:start_date, 'must be between user start and end dates')
    end
  end

end
