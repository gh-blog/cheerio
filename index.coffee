through2 = require 'through2'
cheerio = require 'cheerio'

module.exports = (options) ->
    processFile = (file, enc, done) ->
        if file.isPost or file.isHTML
            file.$ = cheerio.load String file.contents

        done null, file

    through2.obj processFile