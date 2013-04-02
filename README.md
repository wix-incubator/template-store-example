### WIX Template Store

<br />
If you want to have your own template store, just follow these simple steps:

1. [Getting code](#getting-code)
2. [Getting API wix.com keys](#keys)
3. [Publishing your site](#deploy)


#### Getting code<a id="getting-code"></a>
Get our sample code from GitHub. You need to have account on github.com and [git client for your computer](http://git-scm.com/downloads). To get our template store you need to do
``git clone https://github.com/wix/template-store-example.git`` in command line or select "git clone" from your GUI utility. This will fetch it to your hard disk drive. Remember folder where it was downloaded, so that you can edit templates later.

#### Getting keys<a id="keys"></a>
Now go to [api.wix.com](http://api.wix.com) and signup to get the keys. You'll get a pair of very long strings called public and secret key. Don't reveal your secret key to anyone and better don't check it in VCS.


Next do whatever you want to customize your template store - HTML templates are in *app/views*, JS/CSS assets are in *app/assets*.


#### Publishing your site<a id="deploy"></a>
In case you are familiar with Rails you can just deploy like you want, it's just a Rails app.
Otherwise we recommend to use [Heroku](heroku.com). For this just [register and follow their instructions](https://id.heroku.com/signup). After email confirmation you have to install [heroku toolbelt](https://toolbelt.heroku.com/) - command line utility to link your code with Heroku account. Then after you committed something just do ``git push heroku master`` to update/install your code on Heroku.

Now execute this in console replacing _YOUR_KEYS with your real keys from api.wix.com:
`heroku config:add WIX_SECRET_KEY=_YOUR_SECRET_KEY_`<br />
`heroku config:add WIX_PUBLIC_KEY=_YOUR_PUBLIC_KEY_`

This will update your Heroku application and restart it, so that in a minute you should have working template store!
