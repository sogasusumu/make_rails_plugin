new:
	@echo build new rails plugin.
	@read -p "input your plugin name is :" name; \
	echo rails plugin new "$$name" -T --skip-test-unit --skip-bundle --dummy-path=spec/dummy;

destroy:
	@read -p "input your plugin name is :" name; \
	echo rm -rf "$$name";

rspec_install:
	@echo "cd spec/dummy && ln -s ../../spec && bin/rails generate rspec:install && rm spec"
	@echo "should edit rails_helper.rb"
	@echo "require File.expand_path('../../config/environment', __FILE__)"
	@echo "to"
	@echo "require File.expand_path('../dummy/config/environment', __FILE__)"
