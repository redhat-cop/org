# Red Hat Community of Practice GitHub Organization

This repository contains the metadata configuration for the Red Hat Community of Practice GitHub Organization.
The data here is consumed by the [peribolos](https://docs.prow.k8s.io/docs/components/cli-tools/peribolos/) tool to maintain organization and team membership,
as well as team creation and deletion.

## config.yaml

Please keep the `config.yaml` file recursively sorted.

`yq` can be helpful here:

```shell
# downcase all lists
yq -i e '(... | select(type == "!!seq"))[] |= downcase' config.yaml && \
# sort all lists
yq -i e '(... | select(type == "!!seq")) |= sort' config.yaml && \
# sort all keys
yq -i 'sort_keys(..)' config.yaml
```

## [pre-commit](.pre-commit-config.yaml)

Pre-commit is enabled which will lint and cleanup any files automatically.
Token and secret checking via [Red Hat Security tooling](https://source.redhat.com/departments/it/it-information-security/leaktk/leaktk_components/rh_pre_commit) is enabled
but requires being connected to the Red Hat VPN on the setup.

The pre-commit hooks can be run manually via:

```bash
pre-commit run --all
```

### Management and Support

Need to manage repositories, teams, permissions or any other kind of support?

If you don't know how to do it with a pull request yourself, or hesitate,
open an [issue](https://github.com/redhat-cop/org/issues) and select the appropriate type.
