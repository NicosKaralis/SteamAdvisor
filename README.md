SteamAdvisor
============

[![Inline docs](http://inch-ci.org/github/NicosKaralis/SteamAdvisor.svg?branch=master&style=flat)](http://inch-ci.org/github/NicosKaralis/SteamAdvisor)
[![Build Status](https://travis-ci.org/NicosKaralis/SteamAdvisor.svg?branch=master)](https://travis-ci.org/NicosKaralis/SteamAdvisor)
[![Code Climate](https://codeclimate.com/github/NicosKaralis/SteamAdvisor/badges/gpa.svg)](https://codeclimate.com/github/NicosKaralis/SteamAdvisor)
[![Test Coverage](https://codeclimate.com/github/NicosKaralis/SteamAdvisor/badges/coverage.svg)](https://codeclimate.com/github/NicosKaralis/SteamAdvisor)


    # Detects the size of the blob.
    #
    # @example
    #   blob_size(filename, blob) # => some value
    #
    # @param filename [String] the filename
    # @param blob [String] the blob data
    # @param mode [String, nil] optional String mode
    # @return [Fixnum,nil]
    def blob_size(filename, blob, mode = nil)
