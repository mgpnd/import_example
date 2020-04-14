require 'rails_helper'

RSpec.describe KeyBasedImportExampleController, type: :controller do
  describe '#index' do
    subject { get :index, params: { format: 'text/hmtl' } }

    it 'calls auto imported operation' do
      subject
      expect(assigns(:auto_imported)).to eq('Example::Show')
    end

    it 'calls manually resolved operation' do
      subject
      expect(assigns(:manually_resolved)).to eq('Example::Show')
    end

    context "when operations is stubbed" do
      before do
        ImportExample::Container.stub('example.show', -> { 'operation stub' })
      end

      it 'calls auto imported stub' do
        subject
        expect(assigns(:auto_imported)).to eq('operation stub')
      end

      it 'calls manually resolved stub' do
        subject
        expect(assigns(:manually_resolved)).to eq('operation stub')
      end
    end
  end
end
