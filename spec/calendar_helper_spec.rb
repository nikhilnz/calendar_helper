require 'rspec'
require 'calendar_helper'

describe CalendarHelper do

  context '#total_days' do
    it { expect(subject.total_days('January', 2014)).to eq(31) }
    it { expect(subject.total_days('February', 2014)).to eq(28) }
    it { expect(subject.total_days('March', 2014)).to eq(31) }
    it { expect(subject.total_days('April', 2014)).to eq(30) }
    it { expect(subject.total_days('May', 2014)).to eq(31) }
    it { expect(subject.total_days('June', 2014)).to eq(30) }
    it { expect(subject.total_days('July', 2014)).to eq(31) }
    it { expect(subject.total_days('August', 2014)).to eq(31) }
    it { expect(subject.total_days('September', 2014)).to eq(30) }
    it { expect(subject.total_days('October', 2014)).to eq(31) }
    it { expect(subject.total_days('November', 2014)).to eq(30) }
    it { expect(subject.total_days('December', 2014)).to eq(31) }

    it { expect(subject.total_days('February', 2012)).to eq(29) }

  end

  context '#weekends' do
    it { expect(subject.weekends('January', 2014)).to eq(8) }
    it { expect(subject.weekends('February', 2014)).to eq(8) }
    it { expect(subject.weekends('March', 2014)).to eq(10) }
    it { expect(subject.weekends('April', 2014)).to eq(8) }
    it { expect(subject.weekends('May', 2014)).to eq(9) }
    it { expect(subject.weekends('June', 2014)).to eq(9) }
    it { expect(subject.weekends('July', 2014)).to eq(8) }
    it { expect(subject.weekends('August', 2014)).to eq(10) }
    it { expect(subject.weekends('September', 2014)).to eq(8) }
    it { expect(subject.weekends('October', 2014)).to eq(8) }
    it { expect(subject.weekends('November', 2014)).to eq(10) }
    it { expect(subject.weekends('December', 2014)).to eq(8) }

  end

end