def _create_libvirt_storage(ctx):
    return actions.run()

def _create_libvirt_image(ctx):
    pass # TODO

def _run_libvirt_image(ctx):
    pass # TODO

create_libvirt_image = rule(
    implementation = _create_libvirt_image,
) # TODO

run_libvirt_image = rule(
    implementation = _run_libvirt_image
) # TODO