def _create_libvirt_storage():
    raise NotImplementedError

def _create_libvirt_image():
    raise NotImplementedError

def _run_libvirt_image():
    raise NotImplementedError

create_libvirt_image = rule(
    implementation = _create_libvirt_image,
) # TODO

libvirt_init = rule() # TODO