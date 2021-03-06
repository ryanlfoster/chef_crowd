crowd Cookbook
==============

This cookbook installs Atlassian's Crowd. It defaults to using PostgreSQL.

Supports
--------

- Ubuntu 14.04

Other platforms or versions may or may not work, but I've simply not tested them
at this time. If your run this cookbook on another platform or version
successfully, please let me know in GitHub issues.

Usage
-----
#### chef_crowd::default

Just include `crowd` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[crowd]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Licensed under MIT, see LICENSE for details.

Authors: Martijn van der Kleijn <martijn.vanderkleijn@klm.com>
