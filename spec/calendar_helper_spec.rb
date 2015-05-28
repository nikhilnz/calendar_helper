require 'rspec'
require 'calendar_helper'

describe CalendarHelper::DateWrapper do

  context '#first_day_of_month' do
    shared_examples_for 'first day of month' do |month, year|
      it { expect(described_class.new(month, year).first_day_of_month).to eq(1) }
    end

    it_should_behave_like 'first day of month', 'January', 2014
    it_should_behave_like 'first day of month', 'February', 2014
    it_should_behave_like 'first day of month', 'March', 2014
    it_should_behave_like 'first day of month', 'April', 2014
    it_should_behave_like 'first day of month', 'May', 2014
    it_should_behave_like 'first day of month', 'June', 2014
    it_should_behave_like 'first day of month', 'July', 2014
    it_should_behave_like 'first day of month', 'August', 2014
    it_should_behave_like 'first day of month', 'September', 2014
    it_should_behave_like 'first day of month', 'October', 2014
    it_should_behave_like 'first day of month', 'November', 2014
    it_should_behave_like 'first day of month', 'December', 2014
    it_should_behave_like 'first day of month', 'February', 2012

  end

  context '#last_day_of_month' do
    shared_examples_for 'last day of month' do |month, year, last_day|
      it { expect(described_class.new(month, year).last_day_of_month).to eq(last_day) }
    end
    it_should_behave_like 'last day of month', 'January', 2014, 31
    it_should_behave_like 'last day of month', 'February', 2014, 28
    it_should_behave_like 'last day of month', 'March', 2014, 31
    it_should_behave_like 'last day of month', 'April', 2014, 30
    it_should_behave_like 'last day of month', 'May', 2014, 31
    it_should_behave_like 'last day of month', 'June', 2014, 30
    it_should_behave_like 'last day of month', 'July', 2014, 31
    it_should_behave_like 'last day of month', 'August', 2014, 31
    it_should_behave_like 'last day of month', 'September', 2014, 30
    it_should_behave_like 'last day of month', 'October', 2014, 31
    it_should_behave_like 'last day of month', 'November', 2014, 30
    it_should_behave_like 'last day of month', 'December', 2014, 31
    it_should_behave_like 'last day of month', 'February', 2012, 29

  end

  context '#total_days' do
    shared_examples_for 'total days' do |month, year, total_days|
      it { expect(described_class.new(month, year).total_days).to eq(total_days) }
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
      it { expect(described_class.new(month, year).weekends).to eq(weekends) }
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

end