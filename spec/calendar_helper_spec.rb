require 'rspec'
require 'calendar_helper'

describe CalendarHelper do

  context '#total_days' do
    it { expect(CalendarHelper::DateWrapper.new('January', 2014).total_days).to eq(31) }
    it { expect(CalendarHelper::DateWrapper.new('February', 2014).total_days).to eq(28) }
    it { expect(CalendarHelper::DateWrapper.new('March', 2014).total_days).to eq(31) }
    it { expect(CalendarHelper::DateWrapper.new('April', 2014).total_days).to eq(30) }
    it { expect(CalendarHelper::DateWrapper.new('May', 2014).total_days).to eq(31) }
    it { expect(CalendarHelper::DateWrapper.new('June', 2014).total_days).to eq(30) }
    it { expect(CalendarHelper::DateWrapper.new('July', 2014).total_days).to eq(31) }
    it { expect(CalendarHelper::DateWrapper.new('August', 2014).total_days).to eq(31) }
    it { expect(CalendarHelper::DateWrapper.new('September', 2014).total_days).to eq(30) }
    it { expect(CalendarHelper::DateWrapper.new('October', 2014).total_days).to eq(31) }
    it { expect(CalendarHelper::DateWrapper.new('November', 2014).total_days).to eq(30) }
    it { expect(CalendarHelper::DateWrapper.new('December', 2014).total_days).to eq(31) }

    it { expect(CalendarHelper::DateWrapper.new('February', 2012).total_days).to eq(29) }

  end

  context '#weekends' do
    it { expect(CalendarHelper::DateWrapper.new('January', 2014).weekends).to eq(8) }
    it { expect(CalendarHelper::DateWrapper.new('February', 2014).weekends).to eq(8) }
    it { expect(CalendarHelper::DateWrapper.new('March', 2014).weekends).to eq(10) }
    it { expect(CalendarHelper::DateWrapper.new('April', 2014).weekends).to eq(8) }
    it { expect(CalendarHelper::DateWrapper.new('May', 2014).weekends).to eq(9) }
    it { expect(CalendarHelper::DateWrapper.new('June', 2014).weekends).to eq(9) }
    it { expect(CalendarHelper::DateWrapper.new('July', 2014).weekends).to eq(8) }
    it { expect(CalendarHelper::DateWrapper.new('August', 2014).weekends).to eq(10) }
    it { expect(CalendarHelper::DateWrapper.new('September', 2014).weekends).to eq(8) }
    it { expect(CalendarHelper::DateWrapper.new('October', 2014).weekends).to eq(8) }
    it { expect(CalendarHelper::DateWrapper.new('November', 2014).weekends).to eq(10) }
    it { expect(CalendarHelper::DateWrapper.new('December', 2014).weekends).to eq(8) }

  end

end