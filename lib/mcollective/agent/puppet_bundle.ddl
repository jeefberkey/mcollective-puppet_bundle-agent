metadata  :name        => 'puppet_bundle',
          :description => 'Deploy and run Puppet Bundles',
          :author      => 'Onyx Point',
          :license     => 'ASL 2.0',
          :version     => '0.0.1',
          :url         => 'https://github.com/onyxpoint/mcollective-puppet_bundle-agent',
          :timeout     => 300

# Don't know if we need this
#requires :mcollective => '2.3.1'

action 'deploy', :description => 'Push out a Puppet Bundle' do
  display :always

  input :bundle,
    :prompt       => 'Bundle Path',
    :description  => 'The path to the Bundle generated by the "puppet bundle" face',
    :type         => :string,
    :validation   => '^\/',
    :optional     => false,
    :maxlength    => 230

  input :apply,
    :prompt       => 'Apply the deployed Bundle',
    :description  => 'If set, apply the Bundle that just got deployed',
    :type         => :boolean,
    :optional     => true,
    :default      => false

  output :status,
    :description => 'Success of the command',
    :display_as  => 'status'
end

action 'apply', :description => 'Apply a Puppet Bundle' do
  display :always

  input :bundle_name,
    :prompt       => 'Bundle Name',
    :description  => 'The name of the Bundle to apply',
    :type         => :string,
    :optional     => false,
    :maxlength    => 230

  output :status,
    :description => 'Success of the command',
    :display_as  => 'status'
end
# vim: syntax=ruby ts=2 sw=2:
