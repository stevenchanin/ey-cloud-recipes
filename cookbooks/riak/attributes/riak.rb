riak :version => "0.14.2", :js_vm_count => "8", :js_max_vm_mem => "8"
luwak :enabled => "true"
bitcask :max_file_size => "16#80000000", :open_timeout => 4, :sync_strategy => "none", :merge_window => "always", :frag_merge_trigger => "60", :dead_bytes_merge_trigger => "536870912", :frag_threshold => "40", :dead_bytes_threshold => "134217728", :small_file_threshold => "10485760", :expiry_secs => "-1", :data_root => "data/bitcask"
