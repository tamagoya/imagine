// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
jQuery(function($) {

    //data-hrefの属性を持つtrを選択しclassにclickableを付加
    $('tr[data-href]').addClass('clickable')

        //クリックイベント
        .click(function(e) {

            //e.targetはクリックした要素自体、それがa要素以外であれば
            if(!$(e.target).is('a')){

                //その要素の先祖要素で一番近いtrの
                //data-href属性の値に書かれているURLに遷移する
                window.location = $(e.target).closest('tr').data('href');}
        });
});
