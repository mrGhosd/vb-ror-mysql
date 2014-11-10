// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery-ui
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require stocks
//= require slider
//= require feedback
//= require partners
//= require faq
//= require share
//= require callback
//= require gmaps/google
//= require loan
//= require deposit
//= require registration
//= require popup_window
//= require authorization
//= require current_user
//= require users
//= require admin-user-info
//= require percents
//= require roles
//= require markitup
//= require markitup/sets/html/set
//= require_tree .
$(document).ready(function()
{
    myHtmlSettings = {
        nameSpace:       "html", // Useful to prevent multi-instances CSS conflict
        onShiftEnter:    {keepDefault:false, replaceWith:'<br />\n'},
        onCtrlEnter:     {keepDefault:false, openWith:'\n<p>', closeWith:'</p>\n'},
        onTab:           {keepDefault:false, openWith:'     '},
        markupSet:  [
            {name:'Heading 1', key:'1', openWith:'<h1(!( class="[![Class]!]")!)>', closeWith:'</h1>', placeHolder:'Your title here...' },
            {name:'Heading 2', key:'2', openWith:'<h2(!( class="[![Class]!]")!)>', closeWith:'</h2>', placeHolder:'Your title here...' },
            {name:'Heading 3', key:'3', openWith:'<h3(!( class="[![Class]!]")!)>', closeWith:'</h3>', placeHolder:'Your title here...' },
            {name:'Heading 4', key:'4', openWith:'<h4(!( class="[![Class]!]")!)>', closeWith:'</h4>', placeHolder:'Your title here...' },
            {name:'Heading 5', key:'5', openWith:'<h5(!( class="[![Class]!]")!)>', closeWith:'</h5>', placeHolder:'Your title here...' },
            {name:'Heading 6', key:'6', openWith:'<h6(!( class="[![Class]!]")!)>', closeWith:'</h6>', placeHolder:'Your title here...' },
            {name:'Paragraph', openWith:'<p(!( class="[![Class]!]")!)>', closeWith:'</p>'  },
            {separator:'---------------' },
            {name:'Bold', key:'B', openWith:'<strong>', closeWith:'</strong>' },
            {name:'Italic', key:'I', openWith:'<em>', closeWith:'</em>'  },
            {name:'Stroke through', key:'S', openWith:'<del>', closeWith:'</del>' },
            {separator:'---------------' },
            {name:'Ul', openWith:'<ul>\n', closeWith:'</ul>\n' },
            {name:'Ol', openWith:'<ol>\n', closeWith:'</ol>\n' },
            {name:'Li', openWith:'<li>', closeWith:'</li>' },
            {separator:'---------------' },
            {name:'Picture', key:'P', replaceWith:'<img src="[![Source:!:http://]!]" alt="[![Alternative text]!]" />' },
            {name:'Link', key:'L', openWith:'<a href="[![Link:!:http://]!]"(!( title="[![Title]!]")!)>', closeWith:'</a>', placeHolder:'Your text to link...' },
            {separator:'---------------' },
            {name:'Clean', replaceWith:function(h) { return h.selection.replace(/<(.*?)>/g, "") } },
            {name:'Preview', call:'preview', className:'preview' }
        ]
    }
    $(".markItUp").markItUp(myHtmlSettings)
});
