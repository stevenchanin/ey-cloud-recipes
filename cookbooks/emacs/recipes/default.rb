#
# Cookbook Name:: emacs
# Recipe:: default
#

# updated to emacs 23, but then ignored by emerge anyway ... so commented out
# remote_file "/engineyard/portage/distfiles/emacs-23.4.tar.gz" do
#   source "http://mirrors.kernel.org/gnu/emacs/emacs-23.4.tar.gz"
#   owner "root"
#   group "root"
#   mode "0655"
#   backup 0
#   not_if { FileTest.exists?("/engineyard/portage/distfiles/emacs-23.4.tar.gz") }
# end

execute "install_emacs" do
  command "emerge app-editors/emacs"
  not_if { FileTest.exists?("/usr/bin/emacs-22") }
end
