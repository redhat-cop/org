# Red Hat Community of Practice GitHub Organization

This repository contains the metadata configuration for the Red Hat Community of Practice Github
Organization. The data here is consumed by the
[peribolos](https://git.k8s.io/test-infra/prow/cmd/peribolos)
tool to maintain organization and team membership, as well as team creation and deletion.

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

### Management and Support

Need to manage repositories, teams, permissions or any other kind of support?

If you don't know how to do it with a pull request yourself, or hesitate,
open an [issue](https://github.com/redhat-cop/org/issues) and select the appropriate type.
