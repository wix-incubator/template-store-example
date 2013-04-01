### WIX Template Store

<br />
If you want to have your own template store, just follow these simple steps:

1. [Getting code](#getting-code)
2. [Getting API wix.com keys](#keys)
3. [Publishing your site](#deploy)


#### Getting code<a id="getting-code"></a>
Get our sample code from GitHub. You need to have account on github.com and [git client for your computer](http://git-scm.com/downloads). Do ``git clone https://github.com/wix/template-store-example.git`` in command line or select "git clone" from your GUI utility. This will fetch it to your hard disk drive.

#### Getting keys<a id="keys"></a>
Now go to [api.wix.com](http://api.wix.com) and signup to get the keys. You'll get a pair of strings called public and secret key.


Next do whatever you want to customize your template store - templates are in *app/views*, assets are in *app/assets*.


#### Publishing your site<a id="deploy"></a>
In case you are familiar with Rails you can just deploy like you want, it's just a Rails app.
Otherwise we recommend to use [Heroku](heroku.com). For this just [register and follow their instructions](https://id.heroku.com/signup). After email confirmation you have to install [heroku toolbelt](https://toolbelt.heroku.com/) - command line utility to link your code with Heroku account. Then after you committed something just do ``git push heroku master`` to update/install your code on Heroku.


`heroku config:add WIX_SECRET_KEY=_YOUR_SECRET_KEY_`<br />
`heroku config:add WIX_PUBLIC_KEY=_YOUR_PUBLIC_KEY_`
