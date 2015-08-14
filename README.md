##Testem Generator

This is a fork of [generator-mocha-testem](https://github.com/callumlocke/generator-mocha-testem) and [mocha-sinon-traceur-example](https://github.com/uxebu/mocha-sinon-traceur-example)

An simple coffescript / mocha(bdd) scaffold that uses:

*   gulp
*   coffeescript
*   testem
*   requireJS

###Setup

####Initialize the project from within your empty project directory
```
yo gulp-coffee-mocha-testem
```

After it finishes installing dependencies run `gulp` in one terminal sheel, and `gulp test` in the another. 

###Issues and caveats
* For the time being the project inherits the name of the project directory. It capitalizes this for creation of the class object.
