const { mix } = require('laravel-mix');

if (process.env.NODE_ENV == 'production') {
    mix.disableNotifications();
}

mix.webpackConfig({
       devtool: 'source-map'
   })
   .autoload({
       jquery: ['$', 'window.jQuery', 'jQuery', 'jquery'],
       tether: ['window.Tether', 'Tether'],
       'tether-shepherd': ['Shepherd']
   })
   .js('resources/assets/js/app.js', 'public/js')
   .sass('resources/assets/sass/app.scss', 'public/css')
   .extract([
       'lodash',
       'jquery',
       'jquery.payment',
       'jquery.phone',
       'tether',
       'tether-shepherd',
       'bootstrap',
       'promise',
       'moment',
       'js-cookie',
       'axios',
       'vue',
       'vuex',
       'vue-router',
       'v-tooltip',
       'laravel-echo',
       'pusher-js',
       'raven-js',
       'raven-js/plugins/vue'
   ])
   .version();
