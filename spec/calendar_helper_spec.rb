require 'rspec'
require 'calendar_helper'

describe CalendarHelper::DateWrapper do

  context '#first_day_of_month' do
    it { expect(described_class.new('January', 2014).first_day_of_month).to eq(1) }
    it { expect(described_class.new('February', 2014).first_day_of_month).to eq(1) }
    it { expect(described_class.new('March', 2014).first_day_of_month).to eq(1) }
    it { expect(described_class.new('April', 2014).first_day_of_month).to eq(1) }
    it { expect(described_class.new('May', 2014).first_day_of_month).to eq(1) }
    it { expect(described_class.new('June', 2014).first_day_of_month).to eq(1) }
    it { expect(described_class.new('July', 2014).first_day_of_month).to eq(1) }
    it { expect(described_class.new('August', 2014).first_day_of_month).to eq(1) }
    it { expect(described_class.new('September', 2014).first_day_of_month).to eq(1) }
    it { expect(described_class.new('October', 2014).first_day_of_month).to eq(1) }
    it { expect(described_class.new('November', 2014).first_day_of_month).to eq(1) }
    it { expect(described_class.new('December', 2014).first_day_of_month).to eq(1) }

    it { expect(described_class.new('February', 2012).first_day_of_month).to eq(1) }

  end

  context '#last_day_of_month' do
    it { expect(described_class.new('January', 2014).last_day_of_month).to eq(31) }
    it { expect(described_class.new('February', 2014).last_day_of_month).to eq(28) }
    it { expect(described_class.new('March', 2014).last_day_of_month).to eq(31) }
    it { expect(described_class.new('April', 2014).last_day_of_month).to eq(30) }
    it { expect(described_class.new('May', 2014).last_day_of_month).to eq(31) }
    it { expect(described_class.new('June', 2014).last_day_of_month).to eq(30) }
    it { expect(described_class.new('July', 2014).last_day_of_month).to eq(31) }
    it { expect(described_class.new('August', 2014).last_day_of_month).to eq(31) }
    it { expect(described_class.new('September', 2014).last_day_of_month).to eq(30) }
    it { expect(described_class.new('October', 2014).last_day_of_month).to eq(31) }
    it { expect(described_class.new('November', 2014).last_day_of_month).to eq(30) }
    it { expect(described_class.new('December', 2014).last_day_of_month).to eq(31) }

    it { expect(described_class.new('February', 2012).last_day_of_month).to eq(29) }

  end

  context '#total_days' do
    it { expect(described_class.new('January', 2014).total_days).to eq(31) }
    it { expect(described_class.new('February', 2014).total_days).to eq(28) }
    it { expect(described_class.new('March', 2014).total_days).to eq(31) }
    it { expect(described_class.new('April', 2014).total_days).to eq(30) }
    it { expect(described_class.new('May', 2014).total_days).to eq(31) }
    it { expect(described_class.new('June', 2014).total_days).to eq(30) }
    it { expect(described_class.new('July', 2014).total_days).to eq(31) }
    it { expect(described_class.new('August', 2014).total_days).to eq(31) }
    it { expect(described_class.new('September', 2014).total_days).to eq(30) }
    it { expect(described_class.new('October', 2014).total_days).to eq(31) }
    it { expect(described_class.new('November', 2014).total_days).to eq(30) }
    it { expect(described_class.new('December', 2014).total_days).to eq(31) }

    it { expect(described_class.new('February', 2012).total_days).to eq(29) }

  end

  context '#weekends' do
    it { expect(described_class.new('January', 2014).weekends).to eq(8) }
    it { expect(described_class.new('February', 2014).weekends).to eq(8) }
    it { expect(described_class.new('March', 2014).weekends).to eq(10) }
    it { expect(described_class.new('April', 2014).weekends).to eq(8) }
    it { expect(described_class.new('May', 2014).weekends).to eq(9) }
    it { expect(described_class.new('June', 2014).weekends).to eq(9) }
    it { expect(described_class.new('July', 2014).weekends).to eq(8) }
    it { expect(described_class.new('August', 2014).weekends).to eq(10) }
    it { expect(described_class.new('September', 2014).weekends).to eq(8) }
    it { expect(described_class.new('October', 2014).weekends).to eq(8) }
    it { expect(described_class.new('November', 2014).weekends).to eq(10) }
    it { expect(described_class.new('December', 2014).weekends).to eq(8) }

  end

end