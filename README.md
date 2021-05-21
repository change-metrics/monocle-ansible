# ansible-monocle

Ansible Monocle provides automation to deploy Monocle using Ansible on a machine (VM).
The automation uses Monocle container images through Docker.

These roles have been tested on Fedora 33.

## Run the deployment

Create the vars.yaml file with your settings. Here is an example:

```YAML
monocle_public_url: http://10.0.108.112
monocle_config_url: "https://domain.com/myconfig.yaml"
monocle_title: "Monocle"
bz_crawlers: []
#   - name: crawler-name
#     bz_api_key_env: BZ_API_KEY_ENVNAME
#     monocle_api_key_env: MONOCLE_API_KEY_ENVNAME
#     index: my-index-name
#     bz_product: '"BZ product name"'
```

```Shell
ansible-playbook site.yml -u fedora -e @vars.yaml -i 10.0.108.112,
```
