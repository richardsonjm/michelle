require 'rails_helper'

RSpec.describe Work, type: :model do
  before { @work = FactoryGirl.build(:work) }

  subject { @work }

  describe "client" do
    it { is_expected.to have_db_column :client }
    it { is_expected.to respond_to :client }

    it { is_expected.to validate_presence_of(:client) }
    it { is_expected.to normalize_attribute(:client) }
    it { is_expected.to normalize_attribute(:client).from(" client ").to("client") }
  end

  describe "campaign" do
    it { is_expected.to have_db_column :campaign }
    it { is_expected.to respond_to :campaign }

    it { is_expected.to validate_presence_of(:campaign) }
    it { is_expected.to normalize_attribute(:campaign) }
    it { is_expected.to normalize_attribute(:campaign).from(" campaign ").to("campaign") }
  end

  describe "challange" do
    it { is_expected.to have_db_column :challange }
    it { is_expected.to respond_to :challange }

    it { is_expected.to normalize_attribute(:challange) }
    it { is_expected.to normalize_attribute(:challange).from(" challange ").to("challange") }
  end

  describe "insight" do
    it { is_expected.to have_db_column :insight }
    it { is_expected.to respond_to :insight }

    it { is_expected.to normalize_attribute(:insight) }
    it { is_expected.to normalize_attribute(:insight).from(" insight ").to("insight") }
  end

  describe "strategy" do
    it { is_expected.to have_db_column :strategy }
    it { is_expected.to respond_to :strategy }

    it { is_expected.to normalize_attribute(:strategy) }
    it { is_expected.to normalize_attribute(:strategy).from(" strategy ").to("strategy") }
  end

  describe "results" do
    it { is_expected.to have_db_column :results }
    it { is_expected.to respond_to :results }

    it { is_expected.to normalize_attribute(:results) }
    it { is_expected.to normalize_attribute(:results).from(" results ").to("results") }
  end

  describe "slug" do
    it { is_expected.to have_db_column :slug }
    it { is_expected.to respond_to :slug }
    it { is_expected.to validate_uniqueness_of(:slug).case_insensitive.with_message("this client and campaign already exist") }
  end

  describe "logo_uid" do
    it { is_expected.to have_db_column :logo_uid }
    it { is_expected.to respond_to :logo_uid }
  end

  describe "logo_name" do
    it { is_expected.to have_db_column :logo_name }
    it { is_expected.to respond_to :logo_name }
  end

  describe "#set_slug" do

  end
end
