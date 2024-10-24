# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'application'
pin '@hotwired/turbo-rails', to: 'turbo.min.js'
pin '@hotwired/stimulus', to: 'stimulus.min.js'
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js'
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin_all_from 'app/javascript/helpers', under: 'helpers', to: 'helpers'
pin 'tailwindcss-animate' # @1.0.7
pin 'tailwindcss/plugin', to: 'tailwindcss--plugin.js' # @3.4.3
pin 'hotkeys-js', to: 'https://ga.jspm.io/npm:hotkeys-js@3.13.7/dist/hotkeys.esm.js'
pin 'stimulus-use' # @0.52.2
pin 'tom-select' # @2.3.1
pin 'big.js', to: 'https://ga.jspm.io/npm:big.js@6.2.1/big.mjs'
