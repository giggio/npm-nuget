npm-nuget
=========

This project allows you to add [npm](https://github.com/isaacs/npm) to Visual Studio using Nuget.

## Install

    nuget install npm.js

or

    Install-Package npm.js

## Running

Just install the package using nuget as shown above and you can already use it in package manager console. Just open the package manger and you can already run npm commands just as you would expect.

To add a package:

    npm install <packageName> --save-dev

To remove a package:

    npm remove <packageName> --save-dev

Remember to use the --save-dev, as it will update your packages.json file. This will ensure your packages are restored on the build server or on new working directories (team computers, etc).

For more references go to the [npm](https://npmjs.org/) website.

Packages will be saved to 'node_modules' folder on the solution directory, next to the nuget packages folder. You can't change that.

This package will run npm install on every build, and this will make your build a little bit slower. If you don't want it to do that set the "DONT\_INSTALL\_NPM" environment variable to any value. You have to do it before you start Visual Studio, not on the package manager console, otherwise it will not work.

Npm-nuget will work well with build servers. During build the packages will be installed on the server, as they are on the client. Remember that the node_modules folder is not copied automatically to any binaries drop location, if you need that you have to work it yourself with your build server.

## Support

* On Github Issues: [https://github.com/giggio/npm-nuget/issues](https://github.com/giggio/npm-nuget/issues)

## Maintainers

* [Giovanni Bassi](http://blog.lambda3.com.br/L3/giovannibassi/), [Lambda3](http://www.lambda3.com.br), [@giovannibassi](http://twitter.com/giovannibassi)

This software is free software.
