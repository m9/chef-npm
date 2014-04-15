if defined?(ChefSpec)
  def install_npm_package(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:npm_package, :install, resource_name)
  end

  def install_local_npm_package(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:npm_package, :install_local, resource_name)
  end

  def install_from_json_npm_package(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:npm_package, :install_from_json, resource_name)
  end

  def uninstall_npm_package(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:npm_package, :uninstall, resource_name)
  end

  def uninstall_local_npm_package(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:npm_package, :uninstall_local, resource_name)
  end
end
