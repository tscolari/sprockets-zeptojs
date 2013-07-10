SprocketsZeptojs
================

This is a simple sprockets gem to serve [zepto.js](http://zeptojs.com) to your rails application.

Current Sprockets version: 1.0

Instalation
------------

```ruby
# Gemfile
gem 'sprockets-zeptojs'
```

```javascript
// application.js
//= require zepto
```

Customization
----------

Instead of requiring zepto in your manifest, you can require for the individual files:

```
  ajax       data       event      fx         gesture    polyfill   stack
  assets     detect     form       fx_methods selector   touch      zepto
```

Contributions
----------

If you want to contribute/update the zeptojs version, there is a rake task to automate the assets downloading.
The steps are:

- fork
- clone
- run: `rake development:update_zeptojs[v1.0]` # for updating to v1.0 for example  
- commit
- push
- pull request

:)

License
------------

This uses MIT-LICENSE.
