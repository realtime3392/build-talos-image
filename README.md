# Scripts for building a talos image

A couple of scripts needed for build a talos image, mainly for create custom images and trying out patched for u-boot or the kernel.

It is current set up for to build arm64 architecture images from a amd64 host, so make sure you do a:

```bash
sudo apt install gcc-aarch64-linux-gnu
```

# Run a registry

first we run a registry images are pushed to this registry and the talos image will be build using our custom containers.

```bash
docker run --rm -p 5000:5000 --name registry registry:2
```

# Build and push a u-boot image (optional)

Here u-boot next branch is used, talos obviously uses a u-boot release.

```bash
cd u-boot
./doall
```

When succesfull you should see a 
```"PUT /v2/ubootbash/manifests/latest HTTP/1.1"```
call to your docker registry, takes about a minute on my machine, all good.

# Build and push a kernel image

```bash
cd pkgs
./doall
```

get a lot of coffee.


# build a talos image

```bash
cd pkgs
./doall
```

get some coffee.

