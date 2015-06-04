require 'rspec'
require 'calendar_helper'

describe CalendarHelper::DateWrapper do

  context '#total_days' do
    shared_examples_for 'total days' do |month, year, total_days|
      subject { described_class.new(month, year) }
      its(:total_days) { should eq(total_days) }
    end
    it_should_behave_like 'total days', 'January', 2014, 31
    it_should_behave_like 'total days', 'February', 2014, 28
    it_should_behave_like 'total days', 'March', 2014, 31
    it_should_behave_like 'total days', 'April', 2014, 30
    it_should_behave_like 'total days', 'May', 2014, 31
    it_should_behave_like 'total days', 'June', 2014, 30
    it_should_behave_like 'total days', 'July', 2014, 31
    it_should_behave_like 'total days', 'August', 2014, 31
    it_should_behave_like 'total days', 'September', 2014, 30
    it_should_behave_like 'total days', 'October', 2014, 31
    it_should_behave_like 'total days', 'November', 2014, 30
    it_should_behave_like 'total days', 'December', 2014, 31
    it_should_behave_like 'total days', 'February', 2012, 29

  end

  context '#weekends' do
    shared_examples_for 'weekends' do |month, year, weekends|
      subject { described_class.new(month, year) }
      its(:weekends) { should eq(weekends) }
    end
    it_should_behave_like 'weekends', 'January', 2014, 8
    it_should_behave_like 'weekends', 'February', 2014, 8
    it_should_behave_like 'weekends', 'March', 2014, 10
    it_should_behave_like 'weekends', 'April', 2014, 8
    it_should_behave_like 'weekends', 'May', 2014, 9
    it_should_behave_like 'weekends', 'June', 2014, 9
    it_should_behave_like 'weekends', 'July', 2014, 8
    it_should_behave_like 'weekends', 'August', 2014, 10
    it_should_behave_like 'weekends', 'September', 2014, 8
    it_should_behave_like 'weekends', 'October', 2014, 8
    it_should_behave_like 'weekends', 'November', 2014, 10
    it_should_behave_like 'weekends', 'December', 2014, 8

  end

  context '#month_number' do
    shared_examples_for 'month number' do |month, year, month_number|
      subject { described_class.new(month, year) }
      its(:month_number) { should eq(month_number) }
    end
    it_should_behave_like 'month number', 'January', 2014, 1
    it_should_behave_like 'month number', 'February', 2014, 2
    it_should_behave_like 'month number', 'March', 2014, 3
    it_should_behave_like 'month number', 'April', 2014, 4
    it_should_behave_like 'month number', 'May', 2014, 5
    it_should_behave_like 'month number', 'June', 2014, 6
    it_should_behave_like 'month number', 'July', 2014, 7
    it_should_behave_like 'month number', 'August', 2014, 8
    it_should_behave_like 'month number', 'September', 2014, 9
    it_should_behave_like 'month number', 'October', 2014, 10
    it_should_behave_like 'month number', 'November', 2014, 11
    it_should_behave_like 'month number', 'December', 2014, 12
  end

end