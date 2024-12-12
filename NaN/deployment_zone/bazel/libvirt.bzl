def _create_libvirt_storage(ctx):
    return actions.run(
        outputs = ctx.outputs.pool_dir,
	executable = "virsh",
	argumants = ["pool-create-as", "NaN", "dir", "--target", ctx.outputs.pool_dir], # FIXME Is .pool_dir need .to_string ?
	mnemonic = "CreatePool",
	progress_message = "Creating libvirt storage pool",
    )

# def _create_libvirt_image(ctx):
#     pass # TODO

# def _run_libvirt_image(ctx):
#     pass # TODO

create_libvirt_pool = rule(
    implementation = _create_libvirt_image,
    attrs = attr.output(
        doc = "Directory for libvirt dir type pool",
        mandatory = True,
    )
    doc = "Rule for initiating libvirt storage pool",
) # TODO

# run_libvirt_image = rule(
#     implementation = _run_libvirt_image
# ) # TODO