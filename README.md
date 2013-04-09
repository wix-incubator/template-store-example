WIX Template Store
==================


If you want to have your own template store, just follow these simple steps:

1. [Getting code](#getting-code)
2. [Getting API wix.com keys](#keys)
3. [Selecting your templates with prices, descriptions](#select-templates)
4. [Publishing your site](#deploy)


#### Getting code<a id="getting-code"></a>
Get our sample code from GitHub. You need to have account on github.com and [git client for your computer](http://git-scm.com/downloads). To get our template store you need to do

```bash

$ git clone https://github.com/wix/template-store-example.git
```

in command line or select "git clone" from your GUI utility. This will fetch it to your hard disk drive. Remember folder where it was downloaded, so that you can edit templates later.

#### Getting keys<a id="keys"></a>
Now go to [api.wix.com](http://api.wix.com) and signup to get the keys. You'll get a pair of very long strings called public and secret key. Don't reveal your secret key to anyone and better don't check it in VCS.


Next do whatever you want to customize your template store - HTML templates are in *app/views*, JS/CSS assets are in *app/assets*.

#### Selecting your templates<a id="select-templates"></a>

Go to http://api.wix.com and add your linked WIX.com account. Once you did it and if you have at least one site, you'll see new ["Templates"](http://api.wix.com/templates) link in navigation menu. There will be a list of templates taken from your WIX accounts. Specify descriptions and prices, make sure "Include?" checkboxes are enabled and click "Generate" to get your templates file. Copy this file in your _config_ folder and commit it like that:

```bash

$ git commit -m "Templates.yml added" config/templates.yml
$ git push heroku master
```


#### Publishing your site<a id="deploy"></a>
In case you are familiar with Rails you can just deploy like you want, it's just a Rails app.
Otherwise we recommend to use [Heroku](https://www.heroku.com).

1. For this just [register and follow their instructions](https://id.heroku.com/signup).
2. After email confirmation you have to install [heroku toolbelt](https://toolbelt.heroku.com/) - command line utility to link your code with Heroku account. Do

```bash

$ heroku login
```

and enter your credentials.

3. Next go to the folder with template store and do

```bash

$ heroku apps:create
```

inside.

Then once you changed templates and committed something just do

```bash

$ git push heroku master
```

to update/install your code on Heroku.

To populate your database with the list of selected template, you need to execute the following command:

```bash

$ RAILS_ENV=production rake db:seed
```

in case you use Heroku do this instead:

```bash

$ heroku run rake db:seed RAILS_ENV=production
```

Now execute this in console replacing _YOUR_SECRET_KEY_ and _YOUR_PUBLIC_KEY_ with your real keys from api.wix.com:

```bash

$ heroku config:add WIX_SECRET_KEY=_YOUR_SECRET_KEY_
$ heroku config:add WIX_PUBLIC_KEY=_YOUR_PUBLIC_KEY_
```

Same things should be done for setting your PayPal account:

```bash

$ heroku config:add PAYPAL_ACCOUNT=your_paypal_account@email.here
$ heroku config:add PAYPAL_SANDBOX=false
```

This will update your Heroku application and restart it, so that in a minute you should have working template store!
