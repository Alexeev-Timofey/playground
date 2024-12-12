LibvirtPoolPathProvider = provider(fields = ["path"])

def _libvitr_pool_path_settings_impl(ctx):
    return ctx.build_setting_value

libvitr_pool_path_settings = rule(
    implementation = _libvitr_pool_path_settings_impl,
    build_setting = config.string(),
)

def _create_libvirt_poll_impl(ctx):
    return actions.run(
        outputs = ctx.outputs.pool_dir,
	executable = "virsh",
	argumants = ["pool-create-as", "NaN", "dir", "--target", ctx.outputs.pool_dir], # FIXME Is .pool_dir need .to_string ?
	mnemonic = "CreatePool",
	progress_message = "Creating libvirt storage pool",
    )

create_libvirt_pool = rule(
    implementation = _create_libvirt_poll_impl,
    attrs = {"pool_path" = attr.output(
        doc = "Directory for libvirt dir type pool",
        mandatory = True,
    )}
    doc = "Rule for initiating libvirt storage pool",
)
