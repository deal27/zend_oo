package=crate_rand_chacha_zendoo
$(package)_crate_name=rand_chacha
$(package)_version=0.2.2
$(package)_download_path=https://static.crates.io/crates/$($(package)_crate_name)
$(package)_file_name=$($(package)_crate_name)-$($(package)_version).crate
$(package)_sha256_hash=f4c8ed856279c9737206bf725bf36935d8666ead7aa69b52be55af369d193402
$(package)_crate_versioned_name=$($(package)_crate_name)

define $(package)_preprocess_cmds
  $(call generate_crate_checksum,$(package))
endef

define $(package)_stage_cmds
  $(call vendor_crate_source,$(package))
endef
