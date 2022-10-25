# Red Hat Community of Practice GitHub Organization

This repository contains the metadata configuration for the Red Hat Community of Practice Github
Organization. The data here is consumed by the
[peribolos](https://git.k8s.io/test-infra/prow/cmd/peribolos)
tool to maintain organization and team membership, as well as team creation and deletion.

Please keep the `config.yaml` file recursively sorted.

`yq` can be helpful here:

```
yq -i 'sort_keys(..)' config.yaml
```

### Support

Need support? Open an [issue](https://github.com/redhat-cop/org/issues).
