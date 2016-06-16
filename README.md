# rails_VM-cookbook

TODO: Enter the cookbook description here.
Installation: 
```
$ vagrant plugin install vagrant omnibus
$ vagrant plugin install vagrant-berkshelf
```
Install [chefDK package](https://downloads.chef.io/chef-dk)


## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['rails_VM']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### rails_VM::default

Include `rails_VM` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[rails_VM::default]"
  ]
}
```

## License and Authors

Author:: YOUR_NAME (<YOUR_EMAIL>)
