##Testem Babel Generator

This is a fork of [generator-mocha-testem](https://github.com/callumlocke/generator-mocha-testem) and [mocha-sinon-traceur-example](https://github.com/uxebu/mocha-sinon-traceur-example)

An simple babel(es6) / mocha(bdd) scaffold that uses:

*   gulp
*   babel (es6 transpiler)
*   testem
*   requireJS

###Setup

####Create a project directory for the generator (until published in npm)
```
git clone git@github.com:btburton42/generator-mocha-testem-babel.git
npm install
npm link
```

####Then from inside another directory where you wish to initialize the project
```
yo mocha-testem-babel
```

After it finishes installing dependencies run `gulp` in one terminal sheel, and `testem` in the another. 
