require 'spec_helper'

RSpec.describe Stack do
  let(:stack) { Stack.new }

  describe "#push" do
    subject { stack.push 1 }
    it { expect(subject).to eq stack }
  end

  describe "#length" do
    subject { stack.length }
    context "1 を push 済みの stack" do
      before { stack.push 1 }
      it { expect(subject).to eq 1 }
    end
    context "1 と 5 を push 済みの stack" do
      before do
        stack.push 1
        stack.push 5
      end
      it { expect(subject).to eq 2 }
    end
  end

  describe "#pop" do
    subject { stack.pop }

    context 'stackが空の場合' do
      it { expect(subject).to be_nil  }
    end

    context '1 と 5 を push 済みの stack' do
      before do
        stack.push 1
        stack.push 5
      end

      it { expect(subject).to eq 5 }
      it { expect { subject }.to change { stack.length }.by(-1) }
    end
  end
end