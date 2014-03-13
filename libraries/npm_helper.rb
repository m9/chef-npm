module Npm
  module Helper
    def npm_url
      return node['npm']['url'] if node['npm']['url']

      require "open-uri"

      resp = URI.parse("https://registry.npmjs.org/npm/#{node['npm']['version']}").read
      result = JSON.parse(resp)
      tarball = result['dist']['tarball']
      Chef::Log.debug("Npm Tarball = #{tarball}")
      return tarball
    end
  end
end
