require 'rails_helper'

RSpec.describe HttpRepositoryProviderAdapters::GithubAdapter, :vcr do

  describe "#methods" do

    let(:github_adapter) { HttpRepositoryProviderAdapters::GithubAdapter.new('gugudev/commit-history') }

    it "#fetch_commits" do
      wrapper = github_adapter.fetch_commits

      expect(wrapper).to be_a(Wrappers::RepositoryWrapper)
      expect(wrapper.commits).to be_an(Array)
      expect(wrapper.commits.length).to be > 0
    end
  end


end
