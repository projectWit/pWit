/**
 * i18n - Javascript Internationalization System
 *
 * @author Platform Team
 */

(function() {
    var $i18n = {

        /**
         * Messages
         * @var array
         * {
         *     'DOMAIN NAME' : {
         *         'KEY NAME' : 'value',
         *         'KEY NAME(Plurals) : ['value', 'value', ...]
         *         ...
         *     },
         *     ...
         * }
         */
        _lang : {},

        /**
         * Plurals Expressions
         * @var array
         * {
         *     'DOMAIN NAME' : function(n) {
         *         expressions
         *     },
         *     ...
         * }
         */
        _pluralsExp : {},

        /**
         * Current Domain
         * @var string
         */
        _currDomain : false,

        /**
         * override the current domain for a single message lookup
         *
         * @param string domain
         * @param string key
         * @return string
         */
        __d : function(domain, key, __idx__) {

            var t = $i18n._lang;

            if ($i18n._isEmpty(t) === true) {
                return key;
            }

            if (typeof t[domain] == 'undefined') {
                return key;
            }

            if (typeof t[domain][key] == 'undefined') {
                return key;
            }

            if (typeof t[domain][key] == 'object') {
                __idx__ = __idx__ ? __idx__ : 0;
                return t[domain][key][__idx__];
            }

            return t[domain][key];

        },

        /**
         * Plural version of __d
         *
         * @param string domain
         * @param string key1
         * @param string key2
         * @param int cnt
         * @return string
         */
        __dn : function(domain, key1, key2, cnt) {

            var n = parseInt(cnt);
            var idx = $i18n._getPluralsIndex(domain, n);

            if (idx == 0) {
                return $i18n.__d(domain, key1, 0);
            } else {
                return $i18n.__d(domain, key2, idx);
            }
        },

        _init : function() {
            $i18n._pluralsExp.__reserved_default_exp__ = function(n) {
                return n == 1 ? 0 : 1;
            };

            window['__d'] = function(domain, key) {
                return $i18n.__d(domain, key, 0);
            };

            window['__dn'] = function(domain, key1, key2, cnt) {
                return $i18n.__dn(domain, key1, key2, cnt);
            };

            window['__'] = function(key) {
                return $i18n.__d($i18n._currDomain, key, 0);
            };

            window['__n'] = function(key1, key2, cnt) {
                return $i18n.__dn($i18n._currDomain, key1, key2, cnt);
            };

            window['__i18n_regist__']           = this._regist;
            window['__i18n_bind__']             = this._bind;
            window['__i18n_plurals_exp_bind__'] = this._pluralsExpBind;
        },

        _isEmpty : function(val) {

            if (!val) return true;
            if (val == null) return true;
            if (val == undefined) return true;
            if (val == '') return true;
            if (typeof val == 'object') {
                for (var i in val) {
                    return false;
                }

                return true;
            }

            return false;

        },

        _trim : function(str) {
            if(typeof str != 'string') return '';

            return str.replace(/(^\s*)|(\s*$)/g, '');
        },

        _apply : function(method, func) {

            this[method] = func;

        },

        _regist : function(lang) {

            if (typeof lang != 'object') return false;

            $i18n._lang = lang;

            return true;

        },

        _bind : function(domain) {

            if ($i18n._isEmpty(domain) === true) return false;

            $i18n._currDomain = domain;

            return true;

        },

        _pluralsExpBind : function(domain, exp) {
            if (typeof exp != 'function') {
                return;
            }

            $i18n._pluralsExp[domain] = exp;
        },

        _getPluralsIndex : function(domain, n) {
            if (typeof $i18n._pluralsExp[domain] == 'undefined') {
                return $i18n._pluralsExp.__reserved_default_exp__(n);
            }

            return $i18n._pluralsExp[domain](n);
        }
    };

    $i18n._init();
})();

/*
* php의 sprintf와 사용방법은 비슷하나 문자열 포멧의 type specifier는 %s만 사용
* 참조 : http://wiki.simplexi.com/pages/viewpage.action?pageId=125338699
*/
function sprintf()
{
    var pattern = /%([0-9]+)\$s/g;
    
    var text = arguments[0];
    var extract = text.match(pattern, text);

    if (extract == null || extract.length < 0) {
        var split = text.split('%s');
        var count = split.length;
        var tmp = new Array();
        
        for (var i = 0; i < count; i++) {
            if (typeof arguments[i + 1] != 'undefined') {
                tmp.push(split[i] + arguments[i + 1]);
            } else {
                tmp.push(split[i]);
            }
        }
        
        return tmp.join('');
    } else {
        var count = extract.length;
        
        for (var i = 0; i < count; i++) {
            var index = extract[i].replace(pattern, '$1');
            if (typeof arguments[index] != 'undefined') {
                text = text.replace('%' + index + '$s', arguments[index]);
            }
        }
        
        return text;
    }
}


$(document).ready(function(){
    $('#btn_search').click(function() {
        $('#searchBarForm').submit();
    });
    
    $('input[name="keyword"]').keypress(function(e) {
        if (e.keyCode == 13 && $(this).val() == '') {
            alert(__('검색어를 입력해주세요'));
            return false;
        }
    });
    $('#searchBarForm').submit(function() {
        if ($(this).find('#keyword').val()=='') {
            alert(__('검색어를 입력해주세요'));
            return;
        }
        if (mobileWeb === true) { $Recentword.saveRecentWord($(this).find('#keyword').val()); }
    });
    
    $('.btn_order').click(function() {
        $type = $(this).attr('rel');
        $('#order_by').val($type);
        
        $('#searchForm').submit();
    });

    $('.btn_view').click(function() {
        $view = $(this).attr('rel');

        if ($view != 'list') {
            $sAction = '/product/search_'+$view+'.html';
        } else {
            $sAction = '/product/search.html';
        }

        $('#view_type').val($view);
        $('#searchForm').attr('action', $sAction);
        $('#searchForm').submit();
    });
    
    // 검색어 관련 작업
    var aSearchKey = ReWriteSearchKey();
    if (aSearchKey !== false) {
        if (aSearchKey){//ECHOSTING-44000
           var oSearchHeader = $(".xans-layout-searchheader").parent("form");
           oSearchHeader.find("#banner_action").val(aSearchKey.banner_action);
           oSearchHeader.find("#keyword").val(aSearchKey.msb_contents);
        }
    };

    if (mobileWeb === true) {
        $('#search_cancel').bind('click', function(){
            $('html, body').css({'overflowY': 'auto', height: 'auto', width: '100%'}); 
            $('.dimmed').toggle();
            $('.xans-layout-searchheader').hide();
        });
        
        $('.xans-layout-searchheader').find('button.btnDelete').bind('click', function(){
            $('#keyword').attr('value', '').focus();
        });
        
        // 검색페이지에서 삭제
        $('.xans-search-form').find('button.btnDelete').bind('click', function(){
            $('#searchForm').find('input#keyword').attr('value', '').focus();
        });        

        $('.header .search button').bind('click', function() {                        
            if ($('#search_box').size() > 0) {
                $('html, body').css({'overflowY': 'hidden', height: '100%', width: '100%'});
                $('.dimmed').toggle();
                $('#header .xans-layout-searchheader').toggle();
            } else {                               
                $('#header .xans-layout-searchheader').toggle();
            }                    
        });
    }    
});

function ReWriteSearchKey()
{
    if (typeof(sSearchBannerUseFlag) == "undefined") return false;
    if (sSearchBannerUseFlag == 'F') return false;
    if (typeof(aSearchBannerData) == "undefined") return false;
    if (aSearchBannerData.length === 0) return false;
    if (sSearchBannerType != 'F') return aSearchBannerData[Math.floor(Math.random() * aSearchBannerData.length)];
            
    var aResultData = null;
    var sSearchKey = $.cookie('iSearchKey');
    var iSearchKey = 0;
    
//    if ( sSearchKey !== null ) {//ECHOSTING-44000
    if ( sSearchKey != undefined ) {
        iSearchKey = parseInt(sSearchKey) + parseInt(1);
        if ( iSearchKey >= aSearchBannerData.length ) {
             iSearchKey = 0;
        }
    }
    $.cookie('iSearchKey', iSearchKey, {path : '/'});
    
    return aSearchBannerData[iSearchKey];
}


var popProduct = {
    
    selProduct: function(product_no,iPrdImg, sPrdName,sPrdPrice, sCategoryName, iCategoryNo) 
    {
        try {
            opener.document.getElementById('aPrdLink').href = this.getUrl(product_no);
            opener.document.getElementById('aPrdNameLink').href = this.getUrl(product_no);
            opener.document.getElementById('product_no').value = product_no;
            opener.document.getElementById('iPrdImg').src = iPrdImg;
            opener.document.getElementById('sPrdName').innerHTML = sPrdName.replace(/[\＂]/g, '"');
            opener.document.getElementById('sPrdPrice').innerHTML = sPrdPrice;
            opener.document.getElementById('sPrdCommonImg').innerHTML = '';
            
            opener.$('#iPrdView').removeClass('displaynone').css('display', 'inline');
        } catch (e) {}

        // ECHOSTING-61590
        var iSelectedOptionIndex = $('#subject', opener.document).attr('selectedIndex');
        $('#subject option', opener.document).remove();
        $('input[name^="fix_title_form_"]', opener.document).each(function (iIndex) {
            var sSubject = popProduct.getConvertString($(this).val(), sPrdName, sCategoryName);
            var sOptionTag = '<option value="'+sSubject+'">'+sSubject+'</option>';
            $('#subject', opener.document).append(sOptionTag);
        });
        $('#subject', opener.document).attr('selectedIndex', iSelectedOptionIndex);
        $('#cate_no', opener.document).val(iCategoryNo);
        
        /**
         * thunmail이미지에 링크가 걸렸을경우 링크 처리
         */
        var eAnchor = opener.document.getElementById('iPrdImg').parentNode;
        if ('A' === eAnchor.tagName.toUpperCase()) {
            eAnchor.href = this.getUrl(product_no);
        }
        window.close();
    },
    
    getUrl: function(product_no)
    {
        var aPrdLink = opener.document.getElementById('aPrdLink').href;
        var iUrlIndex = aPrdLink.indexOf('product_no=');
        
        var aPrdLinkSplit = aPrdLink.split('product_no=');
        
        var aPrdParamSplit = aPrdLinkSplit[1].split('&');
        
        aPrdParamSplit.shift();
        
        return aPrdLink.substr(0, iUrlIndex)+'product_no='+product_no+(aPrdParamSplit.length > 0 ? '&'+aPrdParamSplit.join('&') : '');
    },
    // ECHOSTING-61590
    getConvertString : function(sSubject, sPrdName, sCategoryName)
    {
        sSubject = sSubject.replace('PRODUCT_NAME', sPrdName);
        return sSubject.replace('CATEGORY_NAME', sCategoryName);
    }
};

/**
 * 상품 검색 배너
 */
var SEARCH_BANNER = {
    /**
     * 상품 검색 Submit
     */
    submitSearchBanner : function(obj)
    {
        var form = $(obj).parents('form');
        
        if (form.find('#banner_action').val() != '') {
            // 배너 연결 페이지 이동
            location.replace(form.find('#banner_action').val());
        } else {
            if (form.find('#keyword').val()=='') {
                alert(__('검색어를 입력해주세요'));
                form.find('#keyword').focus();
                return;
            }
            form.submit();            
        }
    },

    /**
     * 검색어 입력폼 클릭
     */
    clickSearchForm : function(obj)
    {
        $(obj).parents('form').find('#banner_action').val('');
        if (mobileWeb !== true) { $(obj).val(''); } 
    }
};

/**
 * 최근검색어 
 */
var $Recentword = {
    // recent length
    recentNum : 10,
    
    // cookie expires
    expires : 10,
    
    // duplication key
    duplicateKey : 0,    
    
    // recent string
    string : '',    
    
    // recent string
    prefix : 'RECENT_WORD_',
    
    // sModuel
    sModule : 'xans-search-recentkeyword',
    
    // recent
    $recent : null,
    
    // recent list
    $recentList : null,
    
    // list size
    size : 0,    
    
    // remove
    $remove : null,     
    /**
     * save recent word
     */
    
    init : function()
    {       
        this.setObj();
        this.action();
        this.dimmed();
    },
    
    dimmed : function()
    {       
        try {                              
            $('.xans-layout-searchheader').after('<div class="dimmed"></div>');
        } catch(e) { }        
    },    
    
    setObj : function()
    {       
        this.$recent = $('.' + this.sModule);
        
        this.$recentList = this.$recent.find('ul').find('li');
        
        this.size = this.$recentList.size();
        
        this.$remove = this.$recent.find('p');
    },
    
    action : function()
    {   
        var $hot = $('.xans-search-hotkeyword'), $title = $('#keyword_title');                
        
        if ($('.xans-layout-searchheader').find('ul.searchTab').hasClass('displaynone') === false) {
            this.$recent.hide();
            $title.hide();
        } else {
            $hot.hide();
        }
        
        $('.xans-layout-searchheader').find('ul.searchTab').find('li').click(function(){            
           var index = $(this).index();           
           $(this).addClass('selected').siblings().removeClass('selected');
           if (index == 0) { $Recentword.$recent.hide(); $hot.show(); }
           else { $Recentword.$recent.show(); $hot.hide(); }
        });
    },    
    
    saveRecentWord : function(s)
    {   
        this.string = s;
        
        // 중복처리        
        if (this.duplication() === false) { this.cookieOrder(); }        
        
        // 저장
        this.save();      
    },
    
    save : function()
    {
        var bFull = true;
        for (var i=1; i<=this.recentNum; i++) { 
            if ($.cookie(this.prefix + i) == null) {                
                bFull = false;
                this.add(i);
                break;                
            }         
        }
        
        if (bFull == true) {
            this.removeFrist();
            this.add(this.recentNum);
        }
    },
  
    duplication : function()
    {              
        for (var k=1; k<=this.recentNum; k++) {            
            if ($.cookie(this.prefix + k) == this.string) {                     
                this.duplicateKey = k;
                $.cookie(this.prefix + k, null, { path: '/' });                
                return false;
            }        
        }       
    },
    
    cookieOrder : function()
    {              
        var s = this.duplicateKey + 1;
        for (var i=this.duplicateKey; i<=this.recentNum; i++) {
            if ($.cookie(this.prefix + s) != null) {                
                this.add(i, $.cookie(this.prefix + s));
                this.removeCookie(s);
                s++;
            }
        }       
    },    
    
    removeFrist : function()
    {        
        for (var i=2, k=1; i<=this.recentNum; i++,k++) {            
            $.cookie(this.prefix + k, $.cookie(this.prefix + i), { expires: this.expires, path: '/'}); 
        }
    },         
    
    add : function(key, duplicateString)
    {        
        $.cookie(this.prefix + key, duplicateString || this.string, { expires: this.expires, path: '/'});
    },
    
    removeCookie : function(key)
    {        
        $.cookie(this.prefix + key, null, { path: '/' });
    },    
    
    removeAll : function()
    {        
        for (var i=1; i<=this.recentNum; i++) { $.cookie(this.prefix + i, null, { path: '/' }); }
        this.setNoList();
    },
    
    removeOne : function(key)
    {   
        try {            
            this.removeCookie(key);            
            this.$recentList.each(function(){ if ($(this).data('index') == key) { $(this).remove(); } });          
            this.size--;            
            if (this.size == 0) { this.setNoList(); }
        } catch(e) {
            
        }
    },
    
    setNoList : function()
    {   
        try {
            this.$recentList.each(function(){ $(this).remove(); });
            this.$remove.removeClass('displaynone');    
        } catch(e) {
            
        }        
    }    
};



/*! Copyright (c) 2013 Brandon Aaron (http://brandonaaron.net)
 * Licensed under the MIT License (LICENSE.txt).
 *
 * Version 3.0.0
 */

(function (factory) {
    if (typeof define === 'function' && define.amd) {
        // AMD. Register as an anonymous module.
        define(['jquery'], factory);
    } else {
        // Browser globals
        factory(jQuery);
    }
}(function ($) {
    $.fn.bgiframe = function(s) {
        s = $.extend({
            top         : 'auto', // auto == borderTopWidth
            left        : 'auto', // auto == borderLeftWidth
            width       : 'auto', // auto == offsetWidth
            height      : 'auto', // auto == offsetHeight
            opacity     : true,
            src         : 'javascript:false;',
            conditional : /MSIE 6.0/.test(navigator.userAgent) // expresion or function. return false to prevent iframe insertion
        }, s);

        // wrap conditional in a function if it isn't already
        if (!$.isFunction(s.conditional)) {
            var condition = s.conditional;
            s.conditional = function() { return condition; };
        }

        var $iframe = $('<iframe class="bgiframe"frameborder="0"tabindex="-1"src="'+s.src+'"'+
                           'style="display:block;position:absolute;z-index:-1;"/>');

        return this.each(function() {
            var $this = $(this);
            if ( s.conditional(this) === false ) { return; }
            var existing = $this.children('iframe.bgiframe');
            var $el = existing.length === 0 ? $iframe.clone() : existing;
            $el.css({
                'top': s.top == 'auto' ?
                    ((parseInt($this.css('borderTopWidth'),10)||0)*-1)+'px' : prop(s.top),
                'left': s.left == 'auto' ?
                    ((parseInt($this.css('borderLeftWidth'),10)||0)*-1)+'px' : prop(s.left),
                'width': s.width == 'auto' ? (this.offsetWidth + 'px') : prop(s.width),
                'height': s.height == 'auto' ? (this.offsetHeight + 'px') : prop(s.height),
                'opacity': s.opacity === true ? 0 : undefined
            });

            if ( existing.length === 0 ) {
                $this.prepend($el);
            }
        });
    };

    // old alias
    $.fn.bgIframe = $.fn.bgiframe;

    function prop(n) {
        return n && n.constructor === Number ? n + 'px' : n;
    }

}));



/**
 * Cookie plugin
 *
 * Copyright (c) 2006 Klaus Hartl (stilbuero.de)
 * Dual licensed under the MIT and GPL licenses:
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.gnu.org/licenses/gpl.html
 *
 */

/**
 * Create a cookie with the given name and value and other optional parameters.
 *
 * @example $.cookie('the_cookie', 'the_value');
 * @desc Set the value of a cookie.
 * @example $.cookie('the_cookie', 'the_value', { expires: 7, path: '/', domain: 'jquery.com', secure: true });
 * @desc Create a cookie with all available options.
 * @example $.cookie('the_cookie', 'the_value');
 * @desc Create a session cookie.
 * @example $.cookie('the_cookie', null);
 * @desc Delete a cookie by passing null as value. Keep in mind that you have to use the same path and domain
 *       used when the cookie was set.
 *
 * @param String name The name of the cookie.
 * @param String value The value of the cookie.
 * @param Object options An object literal containing key/value pairs to provide optional cookie attributes.
 * @option Number|Date expires Either an integer specifying the expiration date from now on in days or a Date object.
 *                             If a negative value is specified (e.g. a date in the past), the cookie will be deleted.
 *                             If set to null or omitted, the cookie will be a session cookie and will not be retained
 *                             when the the browser exits.
 * @option String path The value of the path atribute of the cookie (default: path of page that created the cookie).
 * @option String domain The value of the domain attribute of the cookie (default: domain of page that created the cookie).
 * @option Boolean secure If true, the secure attribute of the cookie will be set and the cookie transmission will
 *                        require a secure protocol (like HTTPS).
 * @type undefined
 *
 * @name $.cookie
 * @cat Plugins/Cookie
 * @author Klaus Hartl/klaus.hartl@stilbuero.de
 */

/**
 * Get the value of a cookie with the given name.
 *
 * @example $.cookie('the_cookie');
 * @desc Get the value of a cookie.
 *
 * @param String name The name of the cookie.
 * @return The value of the cookie.
 * @type String
 *
 * @name $.cookie
 * @cat Plugins/Cookie
 * @author Klaus Hartl/klaus.hartl@stilbuero.de
 */
jQuery.cookie = function(name, value, options) {
    if (typeof value != 'undefined') { // name and value given, set cookie
        options = options || {};
        if (value === null) {
            value = '';
            options = $.extend({}, options); // clone object since it's unexpected behavior if the expired property were changed
            options.expires = -1;
        }
        var expires = '';
        if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
            var date;
            if (typeof options.expires == 'number') {
                date = new Date();
                date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
            } else {
                date = options.expires;
            }
            expires = '; expires=' + date.toUTCString(); // use expires attribute, max-age is not supported by IE
        }
        // NOTE Needed to parenthesize options.path and options.domain
        // in the following expressions, otherwise they evaluate to undefined
        // in the packed version for some reason...
        var path = options.path ? '; path=' + (options.path) : '';
        var domain = options.domain ? '; domain=' + (options.domain) : '';
        var secure = options.secure ? '; secure' : '';
        document.cookie = [name, '=', encodeURIComponent(value), expires, path, domain, secure].join('');
    } else { // only name given, get cookie
        var cookieValue = null;
        if (document.cookie && document.cookie != '') {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = jQuery.trim(cookies[i]);
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) == (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }
};











/* Copyright (c) 2007 Paul Bakaus (paul.bakaus@googlemail.com) and Brandon Aaron (brandon.aaron@gmail.com || http://brandonaaron.net)
 * Dual licensed under the MIT (http://www.opensource.org/licenses/mit-license.php)
 * and GPL (http://www.opensource.org/licenses/gpl-license.php) licenses.
 *
 * $LastChangedDate: 2007-12-20 08:46:55 -0600 (Thu, 20 Dec 2007) $
 * $Rev: 4259 $
 *
 * Version: 1.2
 *
 * Requires: jQuery 1.2+
 */

(function($){

$.dimensions = {
    version: '1.2'
};

// Create innerHeight, innerWidth, outerHeight and outerWidth methods
$.each( [ 'Height', 'Width' ], function(i, name){

    // innerHeight and innerWidth
    $.fn[ 'inner' + name ] = function() {
    if (!this[0]) return;

    var torl = name == 'Height' ? 'Top'    : 'Left',  // top or left
        borr = name == 'Height' ? 'Bottom' : 'Right'; // bottom or right

    return this.is(':visible') ? this[0]['client' + name] : num( this, name.toLowerCase() ) + num(this, 'padding' + torl) + num(this, 'padding' + borr);
    };

    // outerHeight and outerWidth
    $.fn[ 'outer' + name ] = function(options) {
    if (!this[0]) return;

    var torl = name == 'Height' ? 'Top'    : 'Left',  // top or left
        borr = name == 'Height' ? 'Bottom' : 'Right'; // bottom or right

    options = $.extend({ margin: false }, options || {});

    var val = this.is(':visible') ?
    this[0]['offset' + name] :
    num( this, name.toLowerCase() )
    + num(this, 'border' + torl + 'Width') + num(this, 'border' + borr + 'Width')
    + num(this, 'padding' + torl) + num(this, 'padding' + borr);

    return val + (options.margin ? (num(this, 'margin' + torl) + num(this, 'margin' + borr)) : 0);
    };
});

// Create scrollLeft and scrollTop methods
$.each( ['Left', 'Top'], function(i, name) {
    $.fn[ 'scroll' + name ] = function(val) {
    if (!this[0]) return;

    return val != undefined ?

    // Set the scroll offset
    this.each(function() {
    this == window || this == document ?
    window.scrollTo(
    name == 'Left' ? val : $(window)[ 'scrollLeft' ](),
    name == 'Top'  ? val : $(window)[ 'scrollTop'  ]()
    ) :
    this[ 'scroll' + name ] = val;
    }) :

    // Return the scroll offset
    this[0] == window || this[0] == document ?
    self[ (name == 'Left' ? 'pageXOffset' : 'pageYOffset') ] ||
    $.boxModel && document.documentElement[ 'scroll' + name ] ||
    document.body[ 'scroll' + name ] :
    this[0][ 'scroll' + name ];
    };
});

$.fn.extend({
    position: function() {
    var left = 0, top = 0, elem = this[0], offset, parentOffset, offsetParent, results;

    if (elem) {
    // Get *real* offsetParent
    offsetParent = this.offsetParent();

    // Get correct offsets
    offset       = this.offset();
    parentOffset = offsetParent.offset();

    // Subtract element margins
    offset.top  -= num(elem, 'marginTop');
    offset.left -= num(elem, 'marginLeft');

    // Add offsetParent borders
    parentOffset.top  += num(offsetParent, 'borderTopWidth');
    parentOffset.left += num(offsetParent, 'borderLeftWidth');

    // Subtract the two offsets
    results = {
    top:  offset.top  - parentOffset.top,
    left: offset.left - parentOffset.left
    };
    }

    return results;
    },

    offsetParent: function() {
    var offsetParent = this[0].offsetParent;
    while ( offsetParent && (!/^body|html$/i.test(offsetParent.tagName) && $.css(offsetParent, 'position') == 'static') )
    offsetParent = offsetParent.offsetParent;
    return $(offsetParent);
    }
});

function num(el, prop) {
    return parseInt($.curCSS(el.jquery?el[0]:el,prop,true))||0;
};

})(jQuery);






/*
 * jQuery Easing v1.1.1 - http://gsgd.co.uk/sandbox/jquery.easing.php
 *
 * Uses the built in easing capabilities added in jQuery 1.1
 * to offer multiple easing options
 *
 * Copyright (c) 2007 George Smith
 * Licensed under the MIT License:
 *   http://www.opensource.org/licenses/mit-license.php
 */

jQuery.extend(jQuery.easing, {
    easein: function(x, t, b, c, d) {
    return c*(t/=d)*t + b; // in
    },
    easeinout: function(x, t, b, c, d) {
    if (t < d/2) return 2*c*t*t/(d*d) + b;
    var ts = t - d/2;
    return -2*c*ts*ts/(d*d) + 2*c*ts/d + c/2 + b;
    },
    easeout: function(x, t, b, c, d) {
    return -c*t*t/(d*d) + 2*c*t/d + b;
    },
    expoin: function(x, t, b, c, d) {
    var flip = 1;
    if (c < 0) {
    flip *= -1;
    c *= -1;
    }
    return flip * (Math.exp(Math.log(c)/d * t)) + b;
    },
    expoout: function(x, t, b, c, d) {
    var flip = 1;
    if (c < 0) {
    flip *= -1;
    c *= -1;
    }
    return flip * (-Math.exp(-Math.log(c)/d * (t-d)) + c + 1) + b;
    },
    expoinout: function(x, t, b, c, d) {
    var flip = 1;
    if (c < 0) {
    flip *= -1;
    c *= -1;
    }
    if (t < d/2) return flip * (Math.exp(Math.log(c/2)/(d/2) * t)) + b;
    return flip * (-Math.exp(-2*Math.log(c/2)/d * (t-d)) + c + 1) + b;
    },
    bouncein: function(x, t, b, c, d) {
    return c - jQuery.easing['bounceout'](x, d-t, 0, c, d) + b;
    },
    bounceout: function(x, t, b, c, d) {
    if ((t/=d) < (1/2.75)) {
    return c*(7.5625*t*t) + b;
    } else if (t < (2/2.75)) {
    return c*(7.5625*(t-=(1.5/2.75))*t + .75) + b;
    } else if (t < (2.5/2.75)) {
    return c*(7.5625*(t-=(2.25/2.75))*t + .9375) + b;
    } else {
    return c*(7.5625*(t-=(2.625/2.75))*t + .984375) + b;
    }
    },
    bounceinout: function(x, t, b, c, d) {
    if (t < d/2) return jQuery.easing['bouncein'] (x, t*2, 0, c, d) * .5 + b;
    return jQuery.easing['bounceout'] (x, t*2-d,0, c, d) * .5 + c*.5 + b;
    },
    elasin: function(x, t, b, c, d) {
    var s=1.70158;var p=0;var a=c;
    if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
    if (a < Math.abs(c)) { a=c; var s=p/4; }
    else var s = p/(2*Math.PI) * Math.asin (c/a);
    return -(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
    },
    elasout: function(x, t, b, c, d) {
    var s=1.70158;var p=0;var a=c;
    if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
    if (a < Math.abs(c)) { a=c; var s=p/4; }
    else var s = p/(2*Math.PI) * Math.asin (c/a);
    return a*Math.pow(2,-10*t) * Math.sin( (t*d-s)*(2*Math.PI)/p ) + c + b;
    },
    elasinout: function(x, t, b, c, d) {
    var s=1.70158;var p=0;var a=c;
    if (t==0) return b;  if ((t/=d/2)==2) return b+c;  if (!p) p=d*(.3*1.5);
    if (a < Math.abs(c)) { a=c; var s=p/4; }
    else var s = p/(2*Math.PI) * Math.asin (c/a);
    if (t < 1) return -.5*(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
    return a*Math.pow(2,-10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )*.5 + c + b;
    },
    backin: function(x, t, b, c, d) {
    var s=1.70158;
    return c*(t/=d)*t*((s+1)*t - s) + b;
    },
    backout: function(x, t, b, c, d) {
    var s=1.70158;
    return c*((t=t/d-1)*t*((s+1)*t + s) + 1) + b;
    },
    backinout: function(x, t, b, c, d) {
    var s=1.70158;
    if ((t/=d/2) < 1) return c/2*(t*t*(((s*=(1.525))+1)*t - s)) + b;
    return c/2*((t-=2)*t*(((s*=(1.525))+1)*t + s) + 2) + b;
    }
});








/*
 * Metadata - jQuery plugin for parsing metadata from elements
 *
 * Copyright (c) 2006 John Resig, Yehuda Katz, J�örn Zaefferer, Paul McLanahan
 *
 * Dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 *
 * Revision: $Id$
 *
 */

/**
 * Sets the type of metadata to use. Metadata is encoded in JSON, and each property
 * in the JSON will become a property of the element itself.
 *
 * There are three supported types of metadata storage:
 *
 *   attr:  Inside an attribute. The name parameter indicates *which* attribute.
 *
 *   class: Inside the class attribute, wrapped in curly braces: { }
 *
 *   elem:  Inside a child element (e.g. a script tag). The
 *          name parameter indicates *which* element.
 *
 * The metadata for an element is loaded the first time the element is accessed via jQuery.
 *
 * As a result, you can define the metadata type, use $(expr) to load the metadata into the elements
 * matched by expr, then redefine the metadata type and run another $(expr) for other elements.
 *
 * @name $.metadata.setType
 *
 * @example <p id="one" class="some_class {item_id: 1, item_label: 'Label'}">This is a p</p>
 * @before $.metadata.setType("class")
 * @after $("#one").metadata().item_id == 1; $("#one").metadata().item_label == "Label"
 * @desc Reads metadata from the class attribute
 *
 * @example <p id="one" class="some_class" data="{item_id: 1, item_label: 'Label'}">This is a p</p>
 * @before $.metadata.setType("attr", "data")
 * @after $("#one").metadata().item_id == 1; $("#one").metadata().item_label == "Label"
 * @desc Reads metadata from a "data" attribute
 *
 * @example <p id="one" class="some_class"><script>{item_id: 1, item_label: 'Label'}</script>This is a p</p>
 * @before $.metadata.setType("elem", "script")
 * @after $("#one").metadata().item_id == 1; $("#one").metadata().item_label == "Label"
 * @desc Reads metadata from a nested script element
 *
 * @param String type The encoding type
 * @param String name The name of the attribute to be used to get metadata (optional)
 * @cat Plugins/Metadata
 * @descr Sets the type of encoding to be used when loading metadata for the first time
 * @type undefined
 * @see metadata()
 */

(function($) {

$.extend({
    metadata : {
    defaults : {
    type: 'class',
    name: 'metadata',
    cre: /({.*})/,
    single: 'metadata'
    },
    setType: function( type, name ){
    this.defaults.type = type;
    this.defaults.name = name;
    },
    get: function( elem, opts ){
    var settings = $.extend({},this.defaults,opts);
    // check for empty string in single property
    if ( !settings.single.length ) settings.single = 'metadata';

    var data = $.data(elem, settings.single);
    // returned cached data if it already exists
    if ( data ) return data;

    data = "{}";

    if ( settings.type == "class" ) {
    var m = settings.cre.exec( elem.className );
    if ( m )
    data = m[1];
    } else if ( settings.type == "elem" ) {
    if( !elem.getElementsByTagName )
    return undefined;
    var e = elem.getElementsByTagName(settings.name);
    if ( e.length )
    data = $.trim(e[0].innerHTML);
    } else if ( elem.getAttribute != undefined ) {
    var attr = elem.getAttribute( settings.name );
    if ( attr )
    data = attr;
    }

    if ( data.indexOf( '{' ) <0 )
    data = "{" + data + "}";

    data = eval("(" + data + ")");

    $.data( elem, settings.single, data );
    return data;
    }
    }
});

/**
 * Returns the metadata object for the first member of the jQuery object.
 *
 * @name metadata
 * @descr Returns element's metadata object
 * @param Object opts An object contianing settings to override the defaults
 * @type jQuery
 * @cat Plugins/Metadata
 */
$.fn.metadata = function( opts ){
    return $.metadata.get( this[0], opts );
};

})(jQuery);












/**
 * FwValidator
 *
 * @package     jquery
 * @subpackage  validator
 */

var FwValidator = {

    /**
     * 디버그 모드
     */
    DEBUG_MODE : false,

    /**
     * 결과 코드
     */
    CODE_SUCCESS    : true,
    CODE_FAIL       : false,

    /**
     * 어트리뷰트 명
     */
    ATTR_FILTER     : 'fw-filter',
    ATTR_MSG        : 'fw-msg',
    ATTR_LABEL      : 'fw-label',
    ATTR_FIREON     : 'fw-fireon',
    ATTR_ALONE      : 'fw-alone',

    /**
     * 응답객체들
     */
    responses       : {},

    /**
     * 엘리먼트별 필수 입력 에러 메세지
     */
    requireMsgs     : {},

    /**
     * 엘리먼트의 특정 필터별 에러 메세지
     */
    elmFilterMsgs   : {},

    /**
     * Validator 기본 이벤트 등록
     */
    bind : function(formId, expand) {

        var self = this;
        var formInfo = this.Helper.getFormInfo(formId);

        if (formInfo === false) {
            alert('The form does not exist - bind');
            return false;
        }

        var elmForm = formInfo.instance;

        var Response = this._response(formId);

        this._fireon(formId, elmForm, Response);
        this._submit(formId, elmForm, expand);

        return true;

    },

    /**
     * Validator 검사 진행
     *
     * @param string formId
     * @return object | false
     */
    inspection : function(formId, expand) {

        expand = (expand === true) ? true : false;

        var self = this;
        var Response = this._response(formId);

        if (Response === false) {
            alert('The form does not exist - inspection');
            return false;
        }

        if (Response.elmsTarget.length == 0) {
            return this.Helper.getResult(Response, this.CODE_SUCCESS);
        }

        Response.elmsTarget.each(function(){
            self._execute(Response, this);
        });

        if (Response.elmsCurrErrorField.length > 0) {

            if (expand !== true) {
                this.Handler.errorHandler(Response.elmsCurrErrorField[0]);
            } else {
                this.Handler.errorHandlerByExapnd(Response);
            }

            return Response.elmsCurrErrorField[0];

        }

        return this.Helper.getResult(Response, this.CODE_SUCCESS);

    },

    /**
     * submit 이벤트 등록
     *
     * @param string    formId
     * @param object    elmForm
     */
    _submit : function(formId, elmForm, expand) {
        var self = this;

        elmForm.unbind('submit');
        elmForm.bind('submit', function(){
            var result = false;

            try{
                result = self.inspection(formId, expand);
            }catch(e){
                alert(e);
                return false;
            }

            if(!result || result.passed === self.CODE_FAIL){
                return false;
            };

            var callback = self._beforeSubmit(elmForm);

            return callback !== false ? true : false;
        });
    },

    /**
     * fireon 이벤트 등록
     *
     * @param string                formId
     * @param object                elmForm
     * @param FwValidator.Response  Response
     */
    _fireon : function(formId, elmForm, Response) {
        var self = this;
        var formInfo = this.Helper.getFormInfo(formId);

        $(formInfo.selector).find('*['+this.ATTR_FILTER+']['+this.ATTR_FIREON+']').each(function(){
            var elm = $(this);
            var evtName = $.trim(elm.attr(self.ATTR_FIREON));
            var elmMsg = '';

            elm.unbind(evtName);
            elm.bind(evtName, function(){
                var result = self._execute(Response, this);
                var targetField = Response.elmCurrField;

                //에러 메세지가 출력되 있다면 일단 지우고 체킹을 시작한다.
                if(typeof elmMsg == 'object'){
                    elmMsg.remove();
                }

                if(result > -1){
                    elmMsg = self.Handler.errorHandlerByFireon(Response.elmsCurrErrorField[result]);
                }else{
                    self.Handler.successHandlerByFireon(self.Helper.getResult(Response, self.CODE_FAIL));
                }
            });
        });
    },

    /**
     * Response 객체 생성
     *
     * @param string formId
     * @return FwValidator.Response | false
     */
    _response : function(formId) {

        var formInfo = this.Helper.getFormInfo(formId);

        if (formInfo === false) {
            alert('The form does not exist - find');
            return false;
        }

        var elmForm = formInfo.instance;
        var elmsTarget = $(formInfo.selector).find('*[' + this.ATTR_FILTER + ']');

        this.responses[formId] = new FwValidator.Response();

        this.responses[formId].formId = formId;
        this.responses[formId].elmForm = elmForm;
        this.responses[formId].elmsTarget = elmsTarget;

        return this.responses[formId];

    },

    /**
     * BeforeExecute 콜백함수 실행
     *
     * @param FwValidator.Response Response
     */
    _beforeExecute : function(Response) {

        var count = this.Handler.beforeExecute.length;

        if (count == 0) return;

        for (var i in this.Handler.beforeExecute) {
            this.Handler.beforeExecute[i].call(this, Response);
        }

    },

    /**
     * BeforeSubmit 콜백함수 실행
     *
     * @param object elmForm (jquery 셀렉터 문법으로 찾아낸 폼 객체)
     */
    _beforeSubmit : function(elmForm) {

        if(typeof this.Handler.beforeSubmit != 'function') return true;

        return this.Handler.beforeSubmit.call(this, elmForm);

    },

    /**
     * 엘리먼트별 유효성 검사 실행
     *
     * @param FwValidator.Response  Response
     * @param htmlElement           elmTarget
     * @return int(에러가 발생한 elmCurrField 의 인덱스값) | -1(성공)
     */
    _execute : function(Response, elmTarget) {

        var RESULT_SUCCESS = -1;

        Response.elmCurrField = $(elmTarget);
        Response.elmCurrLabel = Response.elmCurrField.attr(this.ATTR_LABEL);
        Response.elmCurrFieldType = this.Helper.getElmType(Response.elmCurrField);
        Response.elmCurrFieldDisabled = elmTarget.disabled;
        Response.elmCurrValue = this.Helper.getValue(Response.formId, Response.elmCurrField);
        Response.elmCurrErrorMsg = Response.elmCurrField.attr(this.ATTR_MSG);

        //_beforeExecute 콜백함수 실행
        this._beforeExecute(Response);

        //필드가 disabled 일 경우는 체크하지 않음.
        if (Response.elmCurrFieldDisabled === true) {
            return RESULT_SUCCESS;
        }

        var filter = $.trim( Response.elmCurrField.attr(this.ATTR_FILTER) );

        if (filter == '') {
            return RESULT_SUCCESS;
        }

        //is로 시작하지 않는것들은 정규표현식으로 간주
        if (/^is/i.test(filter)) {
            var filters = filter.split('&');
            var count = filters.length;

            //필수항목이 아닌경우 빈값이 들어왔을경우는 유효성 체크를 통과시킴

            if ((/isFill/i.test(filter) === false) && !Response.elmCurrValue) {
                return RESULT_SUCCESS;
            }

            for (var i=0; i < count; ++i) {
                var filter = filters[i];
                var param = '';
                var filtersInfo = this.Helper.getFilterInfo(filter);

                filter = Response.elmCurrFilter = filtersInfo.id;
                param = filtersInfo.param;

                //필수 입력 필터의 경우 항목관리에서 사용자가 메세지를 직접 지정하는 부분이 있어 이렇게 처리
                if (filter == 'isFill') {
                    Response.elmCurrValue = $.trim(Response.elmCurrValue);
                    Response.elmCurrErrorMsg = this.requireMsgs[elmTarget.id] ? this.requireMsgs[elmTarget.id] : this.msgs['isFill'];
                } else {
                    var msg = Response.elmCurrField.attr(this.ATTR_MSG);

                    if (msg) {
                        Response.elmCurrErrorMsg = msg;
                    } else if (this.Helper.getElmFilterMsg(elmTarget.id, filter)) {
                        Response.elmCurrErrorMsg = this.Helper.getElmFilterMsg(elmTarget.id, filter);
                    } else {
                        Response.elmCurrErrorMsg = this.msgs[filter];
                    }

                }

                //존재하지 않는 필터인 경우 에러코드 반환
                if(this.Filter[filter] === undefined){
                    Response.elmCurrErrorMsg = this.msgs['notMethod'];
                    var result = this.Helper.getResult(Response, this.CODE_FAIL);

                    Response.elmsCurrErrorField.push(result);
                    return Response.elmsCurrErrorField.length - 1;
                }

                //필터 실행
                var result = this.Filter[filter](Response, param);

                if (result == undefined || result.passed === this.CODE_FAIL) {
                    Response.elmsCurrErrorField.push(result);

                    //Debug를 위해 넣어둔 코드(확장형 필터를 잘못 등록해서 return값이 없는 경우를 체크하기 위함)
                    if (result == undefined) {
                        alert('Extension Filter Return error - ' + filter);
                    }

                    return Response.elmsCurrErrorField.length - 1;
                }
            }
        } else {
            var msg = Response.elmCurrErrorMsg;
            Response.elmCurrErrorMsg = msg ? msg : this.msgs['isRegex'];
            var result = this.Filter.isRegex(Response, filter);

            if(result.passed === this.CODE_FAIL){
                Response.elmsCurrErrorField.push(result);

                return Response.elmsCurrErrorField.length - 1;
            }
        }

        return RESULT_SUCCESS;
    }
};

/**
 * FwValidator.Response
 *
 * @package     jquery
 * @subpackage  validator
 */

FwValidator.Response = function() {

    this.formId = null;
    this.elmForm = null;
    this.elmsTarget = null;
    this.elmsCurrErrorField = [];

    this.elmCurrField = null;
    this.elmCurrFieldType = null;
    this.elmCurrFieldDisabled = null;
    this.elmCurrLabel = null;
    this.elmCurrValue = null;
    this.elmCurrFilter = null;
    this.elmCurrErrorMsg = null;

    this.requireMsgs = {};

};

/**
 * FwValidator.Helper
 *
 * @package     jquery
 * @subpackage  validator
 */

FwValidator.Helper = {

    parent : FwValidator,

    /**
     * 메세지 엘리먼트의 아이디 prefix
     */
    msgIdPrefix : 'msg_',

    /**
     * 메세지 엘리먼트의 클래스 명 prefix
     */
    msgClassNamePrefix : 'msg_error_mark_',

    /**
     * 결과 반환
     */
    getResult : function(Response, code, param) {

        //특수 파라미터 정보(특정 필터에서만 사용함)
        param = param != undefined ? param : {};

        var msg = '';

        if (code === this.parent.CODE_FAIL) {

            try {
                msg = Response.elmCurrErrorMsg.replace(/\{label\}/i, Response.elmCurrLabel);
            } catch(e) {
                msg = 'No Message';
            }

        } else {

            msg = 'success';

        }

        var result = {};
        result.passed = code;
        result.formid = Response.formId;
        result.msg = msg;
        result.param = param;

        try {
        result.element = Response.elmCurrField;
        result.elmid = Response.elmCurrField.attr('id');
        result.filter = Response.elmCurrFilter;
        } catch(e) {}

        return result;

    },

    /**
     * 필터 정보 반환(필터이름, 파라미터)
     */
    getFilterInfo : function(filter) {
        var matches = filter.match(/(is[a-z]*)((?:\[.*?\])*)/i);

        return {
            id : matches[1],
            param : this.getFilterParams(matches[2])
        };
    },

    /**
     * 필터의 파라미터 스트링 파싱
     * isFill[a=1][b=1][c=1] 이런식의 멀티 파라미터가 지정되어 있는 경우는 배열로 반환함
     * isFill[a=1] 단일 파라미터는 파라미터로 지정된 스트링값만 반환함
     */
    getFilterParams : function(paramStr) {
        if (paramStr == undefined || paramStr == null || paramStr == '') {
            return '';
        }

        var matches = paramStr.match(/\[.*?\]/ig);

        if (matches == null) {
            return '';
        }

        var count = matches.length;
        var result = [];

        for (var i=0; i < count; i++) {
            var p = matches[i].match(/\[(.*?)\]/);
            result.push(p[1]);
        }

        if (result.length == 1) {
            return result[0];
        }

        return result;
    },

    /**
     * 필드 타입 반환(select, checkbox, radio, textbox)
     */
    getElmType : function(elmField) {
        elmField = $(elmField);

        var elTag = elmField[0].tagName;
        var result = null;

        switch (elTag) {
            case 'SELECT' :
                result = 'select';
                break;

            case 'INPUT' :
                var _type = elmField.attr('type').toLowerCase();
                if(_type == 'checkbox') result = 'checkbox';
                else if(_type =='radio') result = 'radio';
                else result = 'textbox';

                break;

            case 'TEXTAREA' :
                result = 'textbox';
                break;

            default :
                result = 'textbox';
                break;
        }

        return result;
    },

    /**
     * 필드 값 반환
     */
    getValue : function(formId, elmField) {
        var result = '';
        var elmName = elmField.attr('name');
        var fieldType = this.getElmType(elmField);

        //checkbox 나 radio 박스는 value값을 반환하지 않음
        if (fieldType == 'checkbox' || fieldType == 'radio') {
            if(elmField.get(0).checked === true){
                result = elmField.val();
            }
            return result;
        }

        //alonefilter 속성이 Y 로 되어 있다면 해당 엘리먼트의 값만 반환함
        var aloneFilter = elmField.attr(this.parent.ATTR_ALONE);
        if(aloneFilter == 'Y' || aloneFilter == 'y'){
            return elmField.val();
        }

        //name이 배열형태로 되어 있다면 값을 모두 합쳐서 반환
        if( /\[.*?\]/.test(elmName) ){
            var formInfo = this.getFormInfo(formId);

            var groupElms = $(formInfo.selector +' [name="'+elmName+'"]');
            groupElms.each(function(i){
                var elm = $(this);
                result += elm.val();
            });
        }else{
            result = elmField.val();
        }

        return result;
    },

    /**
     * 에러메세지 엘리먼트 생성
     */
    createMsg : function(elm, msg, formId) {
        var elmMsg = document.createElement('span');

        elmMsg.id = this.msgIdPrefix + elm.attr('id');
        elmMsg.className = this.msgClassNamePrefix + formId;
        elmMsg.innerHTML = msg;

        return $(elmMsg);
    },

    /**
     * 에러메세지 엘리먼트 제거
     */
    removeMsg : function(elm) {
        var id = this.msgIdPrefix + elm.attr('id');
        var elmErr = $('#'+id);

        if (elmErr) elmErr.remove();
    },

    /**
     * 에러메세지 엘리먼트 모두 제거
     */
    removeAllMsg : function(formId) {
        var className = this.msgClassNamePrefix + formId;

        $('.' + className).remove();
    },

    /**
     * 문자열의 Byte 수 반환
     */
    getByte : function(str) {
        var encode = encodeURIComponent(str);
        var totalBytes = 0;
        var chr;
        var bytes;
        var code;

        for(var i = 0; i < encode.length; i++)
        {
            chr = encode.charAt(i);
            if(chr != "%") totalBytes++;
            else
            {
                code = parseInt(encode.substr(i+1,2),16);
                if(!(code & 0x80)) totalBytes++;
                else
                {
                    if((code & 0xE0) == 0xC0) bytes = 2;
                    else if((code & 0xF0) == 0xE0) bytes = 3;
                    else if((code & 0xF8) == 0xF0) bytes = 4;
                    else return -1;

                    i += 3 * (bytes - 1);

                    totalBytes += 2;
                }
                i += 2;
            }
        }

        return totalBytes;
    },

    /**
     * 지정한 엘리먼트의 필터 메세지가 존재하는가
     *
     * @param elmId (엘리먼트 아이디)
     * @param filter (필터명)
     * @return string | false
     */
    getElmFilterMsg : function(elmId, filter) {
        if (this.parent.elmFilterMsgs[elmId] == undefined) return false;
        if (this.parent.elmFilterMsgs[elmId][filter] == undefined) return false;

        return this.parent.elmFilterMsgs[elmId][filter];
    },

    /**
     * 폼 정보 반환
     *
     * @param formId (폼 아이디 혹은 네임)
     * @return array(
     *   'selector' => 셀렉터 문자,
     *   'instance' => 셀렉터 문법으로 검색해낸 폼 객체
     * ) | false
     */
    getFormInfo : function(formId) {
        var result = {};
        var selector = '#' + formId;
        var instance = $(selector);

        if (instance.length > 0) {
            result.selector = selector;
            result.instance = instance;

            return result;
        }

        selector = 'form[name="' + formId + '"]';
        instance = $(selector);

        if (instance.length > 0) {
            result.selector = selector;
            result.instance = instance;

            return result;
        }

        return false;
    },

    /**
     * 숫자형태의 문자열로 바꿔줌
     * 123,123,123
     * 123123,123
     * 123%
     * 123  %
     * 123.4
     * -123
     * ,123
     *
     * @param value
     * @return float
     */
    getNumberConv : function(value) {
        if (!value || value == undefined || value == null) return '';

        value = value + "";

        value = value.replace(/,/g, '');
        value = value.replace(/%/g, '');
        value = value.replace(/[\s]/g, '');

        if (this.parent.Verify.isFloat(value) === false) return '';

        return parseFloat(value);
    }
};

/**
 * FwValidator.Handler
 *
 * @package     jquery
 * @subpackage  validator
 */

FwValidator.Handler = {

    parent : FwValidator,

    /**
     * 사용자 정의형 에러핸들러(엘리먼트 아이디별로 저장됨)
     */
    customErrorHandler : {},

    /**
     * 사용자 정의형 에러핸들러(필터별로 저장됨)
     */
    customErrorHandlerByFilter : {},

    /**
     * 사용자 정의형 성공핸들러(엘리먼트 아이디별로 저장됨)
     */
    customSuccessHandler : {},

    /**
     * 사용자 정의형 성공핸들러(필터별로 저장됨)
     */
    customSuccessHandlerByFilter : {},

    /**
     * FwValidator._execute에 의해 검사되기 전 실행되는 콜백함수
     */
    beforeExecute : [],

    /**
     * FwValidator._submit에서 바인딩한 onsubmit 이벤트 발생후 실행되는 콜백함수
     * {폼아이디 : 콜백함수, ...}
     */
    beforeSubmit : {},

    /**
     * 기본 메세지 전체를 오버라이딩
     */
    overrideMsgs : function(msgs) {
        if (typeof msgs != 'object') return;

        this.parent.msgs = msgs;
    },

    /**
     * 필드에 따른 필수 입력 에러메세지 설정
     */
    setRequireErrorMsg : function(field, msg) {
        this.parent.requireMsgs[field] = msg;
    },

    /**
     * 필터 타입에 따른 에러메세지 설정
     */
    setFilterErrorMsg : function(filter, msg) {
        this.parent.msgs[filter] = msg;
    },

    /**
     * 엘리먼트의 특정 필터에만 에러메세지를 설정
     */
    setFilterErrorMsgByElement : function(elmId, filter, msg) {
        if (this.parent.elmFilterMsgs[elmId] == undefined) {
            this.parent.elmFilterMsgs[elmId] = {};
        }

        this.parent.elmFilterMsgs[elmId][filter] = msg;
    },

    /**
     * 엘리먼트 아이디별 사용자정의형 에러핸들러 등록
     */
    setCustomErrorHandler : function(elmId, func) {
        if (typeof func != 'function') return;

        this.customErrorHandler[elmId] = func;
    },

    /**
     * 필터 타입별 사용자정의형 에러핸들러 등록
     */
    setCustomErrorHandlerByFilter : function(filter, func) {
        if (typeof func != 'function') return;

        this.customErrorHandlerByFilter[filter] = func;
    },

    /**
     * 엘리먼트 아이디별 사용자정의형 성공핸들러 등록
     */
    setCustomSuccessHandler : function(elmId, func) {
        if (typeof func != 'function') return;

        this.customSuccessHandler[elmId] = func;
    },

    /**
     * 필터 타입별 사용자정의형 성공핸들러 등록
     */
    setCustomSuccessHandlerByFilter : function(filter, func) {
        if (typeof func != 'function') return;

        this.customSuccessHandlerByFilter[filter] = func;
    },

    /**
     * 확장형 필터 등록
     */
    setExtensionFilter : function(filter, func) {
        if (typeof func != 'function') return;

        if (this.parent.Filter[filter] == undefined) {
            this.parent.Filter[filter] = func;
        }
    },

    /**
     * 각 엘리먼트가 FwValidator._execute에 의해 검사되기 전 실행되는 콜백함수 등록
     */
    setBeforeExecute : function(func) {
        if (typeof func != 'function') return;

        this.beforeExecute.push(func);
    },

    /**
     * FwValidator._submit 에서 바인딩된 onsubmit 이벤트의 콜백함수 등록(유효성 검사가 성공하면 호출됨)
     */
    setBeforeSubmit : function(func) {
        if (typeof func != 'function') return;

        this.beforeSubmit = func;
    },

    /**
     * 에러핸들러 - 기본
     */
    errorHandler : function(resultData) {
        if (this._callCustomErrorHandler(resultData) === true) return;

        alert(resultData.msg);
        resultData.element.focus();
    },

    /**
     * 에러핸들러 - 전체 펼침 모드
     */
    errorHandlerByExapnd : function(Response) {
        var count = Response.elmsCurrErrorField.length;

        //해당 폼에 출력된 에러메세지를 일단 모두 지운다.
        this.parent.Helper.removeAllMsg(Response.formId);

        for (var i=0; i < count; ++i) {
            var resultData = Response.elmsCurrErrorField[i];

            if (this._callCustomErrorHandler(resultData) === true) continue;

            var elmMsg = this.parent.Helper.createMsg(resultData.element, resultData.msg, resultData.formid).css({'color':'#FF3300'});
            elmMsg.appendTo(resultData.element.parent());
        }
    },

    /**
     * 에러핸들러 - fireon
     */
    errorHandlerByFireon : function(resultData) {
        if (this._callCustomErrorHandler(resultData) === true) return;

        //해당 항목의 에러메세지 엘리먼트가 있다면 먼저 삭제한다.
        this.parent.Helper.removeMsg(resultData.element);

        var elmMsg = this.parent.Helper.createMsg(resultData.element, resultData.msg, resultData.formid).css({'color':'#FF3300'});
        elmMsg.appendTo(resultData.element.parent());

        return elmMsg;
    },

    /**
     * 성공핸들러 - fireon
     */
    successHandlerByFireon : function(resultData) {

        this._callCustomSuccessHandler(resultData);

    },

    /**
     * 정의형 에러 핸들러 호출
     *
     * @return boolean (정의형 에러핸들러를 호출했을 경우 true 반환)
     */
    _callCustomErrorHandler : function(resultData) {
        //resultData 가 정의되어 있지 않은 경우
        if (resultData == undefined) {
            alert('errorHandler - resultData is not found');
            return true;
        }

        //해당 엘리먼트에 대한 Custom에러핸들러가 등록되어 있다면 탈출
        if (this.customErrorHandler[resultData.elmid] != undefined) {
            this.customErrorHandler[resultData.elmid].call(this.parent, resultData);
            return true;
        }

        //해당 필터에 대한 Custom에러핸들러가 등록되어 있다면 탈출
        if (this.customErrorHandlerByFilter[resultData.filter] != undefined) {
            this.customErrorHandlerByFilter[resultData.filter].call(this.parent, resultData);
            return true;
        }

        return false;
    },

    /**
     * 정의형 성공 핸들러 호출 - 기본적으로 fireon 속성이 적용된 엘리먼트에만 적용됨.
     */
    _callCustomSuccessHandler : function(resultData) {

        if (this.customSuccessHandler[resultData.elmid] != undefined) {
            this.customSuccessHandler[resultData.elmid].call(this.parent, resultData);
            return;
        }

        if (this.customSuccessHandlerByFilter[resultData.filter] != undefined) {
            this.customSuccessHandlerByFilter[resultData.filter].call(this.parent, resultData);
            return;
        }

    }
};

/**
 * FwValidator.Verify
 *
 * @package     jquery
 * @subpackage  validator
 */

FwValidator.Verify = {

    parent : FwValidator,

    isNumber : function(value, cond) {
        if (value == '') return true;

        if (!cond) {
            cond = 1;
        }

        cond = parseInt(cond);

        pos = 1;
        nga = 2;
        minpos = 4;
        minnga = 8;

        result = 0;

        if ((/^[0-9]+$/).test(value) === true) {
            result = pos;
        } else if ((/^[-][0-9]+$/).test(value) === true) {
            result = nga;
        } else if ((/^[0-9]+[.][0-9]+$/).test(value) === true) {
            result = minpos;
        } else if ((/^[-][0-9]+[.][0-9]+$/).test(value) === true) {
            result = minnga;
        }

        if (result & cond) {
            return true;
        }

        return false;
    },

    isFloat : function(value) {
        if (value == '') return true;

        return (/^[\-0-9]([0-9]+[\.]?)*$/).test(value);
    },

    isIdentity : function(value) {
        if (value == '') return true;

        return (/^[a-z]+[a-z0-9_]+$/i).test(value);
    },

    isKorean : function(value) {
        if (value == '') return true;

        var count = value.length;

        for(var i=0; i < count; ++i){
            var cCode = value.charCodeAt(i);

            //공백은 무시
            if(cCode == 0x20) continue;

            if(cCode < 0x80){
                return false;
            }
        }

        return true;
    },

    isAlpha : function(value) {
        if (value == '') return true;

        return (/^[a-z]+$/i).test(value);
    },

    isAlphaUpper : function(value) {
        if (value == '') return true;

        return (/^[A-Z]+$/).test(value);
    },

    isAlphaLower : function(value) {
        if (value == '') return true;

        return (/^[a-z]+$/).test(value);
    },

    isAlphaNum : function(value) {
        if (value == '') return true;

        return (/^[a-z0-9]+$/i).test(value);
    },

    isAlphaNumUpper : function(value) {
        if (value == '') return true;

        return (/^[A-Z0-9]+$/).test(value);
    },

    isAlphaNumLower : function(value) {
        if (value == '') return true;

        return (/^[a-z0-9]+$/).test(value);
    },

    isAlphaDash : function(value) {
        if (value == '') return true;

        return (/^[a-z0-9_-]+$/i).test(value);
    },

    isAlphaDashUpper : function(value) {
        if (value == '') return true;

        return (/^[A-Z0-9_-]+$/).test(value);
    },

    isAlphaDashLower : function(value) {
        if (value == '') return true;

        return (/^[a-z0-9_-]+$/).test(value);
    },

    isSsn : function(value) {
        value = value.replace(/-/g, '');
        if (value == '') return true;

        if ( (/[0-9]{2}[01]{1}[0-9]{1}[0123]{1}[0-9]{1}[1234]{1}[0-9]{6}$/).test(value) === false ) {
            return false;
        }

        var sum = 0;
        var last = value.charCodeAt(12) - 0x30;
        var bases = "234567892345";
        for (var i=0; i<12; i++) {
            sum += (value.charCodeAt(i) - 0x30) * (bases.charCodeAt(i) - 0x30);
        };
        var mod = sum % 11;

        if ( (11 - mod) % 10 != last ) {
            return false;
        }

        return true;
    },

    isForeignerNo : function(value) {
        value = value.replace(/-/g, '');
        if (value == '') return true;

        if ( (/[0-9]{2}[01]{1}[0-9]{1}[0123]{1}[0-9]{1}[5678]{1}[0-9]{1}[02468]{1}[0-9]{2}[6789]{1}[0-9]{1}$/).test(value) === false ) {
            return false;
        }

        var sum = 0;
        var last = value.charCodeAt(12) - 0x30;
        var bases = "234567892345";
        for (var i=0; i<12; i++) {
            sum += (value.charCodeAt(i) - 0x30) * (bases.charCodeAt(i) - 0x30);
        };
        var mod = sum % 11;
        if ( (11 - mod + 2) % 10 != last ) {
            return false;
        }

        return true;
    },

    isBizNo : function(value) {
        value = value.replace(/-/g, '');
        if (value == '') return true;

        if ( (/[0-9]{3}[0-9]{2}[0-9]{5}$/).test(value) === false ) {
            return false;
        }

        var sum = parseInt(value.charAt(0));
        var chkno = [0, 3, 7, 1, 3, 7, 1, 3];
        for (var i = 1; i < 8; i++) {
            sum += (parseInt(value.charAt(i)) * chkno[i]) % 10;
        }
        sum += Math.floor(parseInt(parseInt(value.charAt(8))) * 5 / 10);
        sum += (parseInt(value.charAt(8)) * 5) % 10 + parseInt(value.charAt(9));

        if (sum % 10 != 0) {
            return false;
        }

        return true;
    },

    isJuriNo : function(value) {
        value = value.replace(/-/g, '');
        if (value == '') return true;

        if ( (/^([0-9]{6})-?([0-9]{7})$/).test(value) === false ) {
            return false;
        }

        var sum = 0;
        var last = parseInt(value.charAt(12), 10);
        for (var i=0; i<12; i++) {
            if (i % 2 == 0) {  // * 1
                sum += parseInt(value.charAt(i), 10);
            } else {    // * 2
                sum += parseInt(value.charAt(i), 10) * 2;
            };
        };

        var mod = sum % 10;
        if( (10 - mod) % 10 != last ){
            return false;
        }

        return true;
    },

    isPhone : function(value) {
        value = value.replace(/-/g, '');
        if (value == '') return true;

        return (/^(02|0[0-9]{2,3})[1-9]{1}[0-9]{2,3}[0-9]{4}$/).test(value);
    },

    isMobile : function(value) {
        value = value.replace(/-/g, '');
        if (value == '') return true;

        return (/^01[016789][1-9]{1}[0-9]{2,3}[0-9]{4}$/).test(value);
    },

    isZipcode : function(value) {
        value = value.replace(/-/g, '');
        if (value == '') return true;

        return (/^[0-9]{3}[0-9]{3}$/).test(value);
    },

    isIp : function(value) {
        if (value == '') return true;

        return (/^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){2,}$/).test(value);
    },

    isEmail : function(value) {
        if (value == '') return true;

        return (/^([a-z0-9\_\-\.]+)@([a-z0-9\_\-]+\.)+[a-z]{2,6}$/i).test(value);
    },

    isUrl : function(value) {
        if (value == '') return true;

        return (/http[s]?:\/\/[a-z0-9_\-]+(\.[a-z0-9_\-]+)+/i).test(value);
    },

    isDate : function(value) {
        value = value.replace(/-/g, '');
        if (value == '') return true;

        return (/^[12][0-9]{3}(([0]?[1-9])|([1][012]))[0-3]?[0-9]$/).test(value);
    },

    isPassport : function(value) {
        if (value == '') return true;

        //일반 여권
        if ( (/^[A-Z]{2}[0-9]{7}$/).test(value) === true ) {
            return true;
        }

        //전자 여권
        if ( (/^[A-Z]{1}[0-9]{8}$/).test(value) === true ) {
            return true;
        }

        return false;
    },

    isNumberMin : function(value, limit) {
        value = this.parent.Helper.getNumberConv(value);
        limit = this.parent.Helper.getNumberConv(limit);

        if (value < limit) {
            return false;
        }

        return true;
    },

    isNumberMax : function(value, limit) {
        value = this.parent.Helper.getNumberConv(value);
        limit = this.parent.Helper.getNumberConv(limit);

        if (value > limit) {
            return false;
        }

        return true;
    },

    isNumberRange : function(value, min, max) {
        value = this.parent.Helper.getNumberConv(value);

        min = this.parent.Helper.getNumberConv(min);
        max = this.parent.Helper.getNumberConv(max);

        if (value < min || value > max) {
            return false;
        }

        return true;
    }
};

/**
 * FwValidator.Filter
 *
 * @package     jquery
 * @subpackage  validator
 */

FwValidator.Filter = {

    parent : FwValidator,

    isFill : function(Response, cond) {
        if (typeof cond != 'string') {
            var count = cond.length;
            var result = this.parent.Helper.getResult(Response, parent.CODE_SUCCESS);

            for (var i = 0; i < count; ++i) {
                result = this._fillConditionCheck(Response, cond[i]);

                if (result.passed === true) {
                    return result;
                }
            }

            return result;
        }

        return this._fillConditionCheck(Response, cond);
    },

    isMatch : function(Response, sField) {
        if(Response.elmCurrValue == ''){
            return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
        }

        //Radio 나 Checkbox의 경우 무시
        if(Response.elmCurrFieldType == 'radio' || Response.elmCurrFieldType == 'checkbox'){
            return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
        }

        var elmTarget = $('#'+sField);
        var elmTargetValue = elmTarget.val();

        if (Response.elmCurrValue != elmTargetValue) {
            var label = elmTarget.attr(this.parent.ATTR_LABEL);
            var match = label ? label : sField;

            Response.elmCurrErrorMsg = Response.elmCurrErrorMsg.replace(/\{match\}/i, match);

            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isMax : function(Response, iLen) {
        var result = this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);

        if (Response.elmCurrFieldType == 'radio' || Response.elmCurrFieldType == 'checkbox') {
            var chkCount = 0;
            var sName = Response.elmCurrField.attr('name');

            $('input[name="'+sName+'"]').each(function(i){
                if ($(this).get(0).checked === true) {
                    ++chkCount;
                }
            });

            if (chkCount > iLen) {
                result = this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
            }

        } else {
            var len = Response.elmCurrValue.length;

            if (len > iLen) {
                result = this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
            }
        }

        if (result.passed === this.parent.CODE_FAIL) {
            result.msg = result.msg.replace(/\{max\}/i, iLen);
        }

        return result;
    },

    isMin : function(Response, iLen) {
        var result = this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);

        if(Response.elmCurrFieldType == 'radio' || Response.elmCurrFieldType == 'checkbox'){
            var chkCount = 0;
            var sName = Response.elmCurrField.attr('name');

            $('input[name="'+sName+'"]').each(function(i){
                if($(this).get(0).checked === true){
                    ++chkCount;
                }
            });

            if (chkCount < iLen) {
                result = this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
            }

        }else{
            var len = Response.elmCurrValue.length;

            if(len < iLen){
                result = this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
            }
        }

        if(result.passed === this.parent.CODE_FAIL){
            result.msg = result.msg.replace(/\{min\}/i, iLen);
        }

        return result;
    },

    isNumber : function(Response, iCond) {
        var result = this.parent.Verify.isNumber(Response.elmCurrValue, iCond);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isIdentity : function(Response){
        var result = this.parent.Verify.isIdentity(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isKorean : function(Response){
        var result = this.parent.Verify.isKorean(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isAlpha : function(Response){
        var result = this.parent.Verify.isAlpha(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isAlphaLower : function(Response){
        var result = this.parent.Verify.isAlphaLower(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isAlphaUpper : function(Response){
        var result = this.parent.Verify.isAlphaUpper(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isAlphaNum : function(Response){
        var result = this.parent.Verify.isAlphaNum(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isAlphaNumLower : function(Response){
        var result = this.parent.Verify.isAlphaNumLower(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isAlphaNumUpper : function(Response){
        var result = this.parent.Verify.isAlphaNumUpper(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isAlphaDash : function(Response){
        var result = this.parent.Verify.isAlphaDash(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isAlphaDashLower : function(Response){
        var result = this.parent.Verify.isAlphaDashLower(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isAlphaDashUpper : function(Response){
        var result = this.parent.Verify.isAlphaDashUpper(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isSsn : function(Response){
        var result = this.parent.Verify.isSsn(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isForeignerNo : function(Response){
        var result = this.parent.Verify.isForeignerNo(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isBizNo : function(Response){
        var result = this.parent.Verify.isBizNo(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isJuriNo : function(Response){
        var result = this.parent.Verify.isJuriNo(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isPhone : function(Response){
        var result = this.parent.Verify.isPhone(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isMobile : function(Response){
        var result = this.parent.Verify.isMobile(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isZipcode : function(Response){
        var result = this.parent.Verify.isZipcode(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isIp : function(Response){
        var result = this.parent.Verify.isIp(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isEmail : function(Response){
        var result = this.parent.Verify.isEmail(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isUrl : function(Response){
        var result = this.parent.Verify.isUrl(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isDate : function(Response){
        var result = this.parent.Verify.isDate(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isRegex : function(Response, regex){
        regex = eval(regex);

        if( regex.test(Response.elmCurrValue) === false ){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isPassport : function(Response){
        var result = this.parent.Verify.isPassport(Response.elmCurrValue);

        if(result === false){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);
    },

    isSimplexEditorFill : function(Response){

        var result = eval(Response.elmCurrValue + ".isEmptyContent();");

        if(result === true){
            return this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
        }

        return this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);

    },

    isMaxByte : function(Response, iLen) {
        var result = this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);

        var len = this.parent.Helper.getByte(Response.elmCurrValue);

        if (len > iLen) {
            result = this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
            result.msg = result.msg.replace(/\{max\}/i, iLen);
        }

        return result;
    },

    isMinByte : function(Response, iLen) {
        var result = this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);

        var len = this.parent.Helper.getByte(Response.elmCurrValue);

        if (len < iLen) {
            result = this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
            result.msg = result.msg.replace(/\{min\}/i, iLen);
        }

        return result;
    },

    isByteRange : function(Response, range) {
        var result = this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);

        var rangeInfo = this._getRangeNum(range);
        var iMin = rangeInfo.min;
        var iMax = rangeInfo.max;

        var len = this.parent.Helper.getByte(Response.elmCurrValue);

        if (len < iMin || len > iMax) {
            result = this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
            result.msg = result.msg.replace(/\{min\}/i, iMin);
            result.msg = result.msg.replace(/\{max\}/i, iMax);
        }

        return result;
    },

    isLengthRange : function(Response, range) {
        var result = this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);

        var rangeInfo = this._getRangeNum(range);
        var iMin = rangeInfo.min;
        var iMax = rangeInfo.max;

        var resultMin = this.isMin(Response, iMin);
        var resultMax = this.isMax(Response, iMax);

        if (resultMin.passed === this.parent.CODE_FAIL || resultMax.passed === this.parent.CODE_FAIL) {
            result = this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
            result.msg = result.msg.replace(/\{min\}/i, iMin);
            result.msg = result.msg.replace(/\{max\}/i, iMax);
        }

        return result;
    },

    isNumberMin : function(Response, iLimit) {
        var check = this.parent.Verify.isNumberMin(Response.elmCurrValue, iLimit);
        var result = this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);

        if(check === false){
            result = this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
            result.msg = result.msg.replace(/\{min\}/i, iLimit);
        }

        return result;
    },

    isNumberMax : function(Response, iLimit) {
        var check = this.parent.Verify.isNumberMax(Response.elmCurrValue, iLimit);
        var result = this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);

        if(check === false){
            result = this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
            result.msg = result.msg.replace(/\{max\}/i, iLimit);
        }

        return result;
    },

    isNumberRange : function(Response, range) {
        var iMin = range[0];
        var iMax = range[1];

        var check = this.parent.Verify.isNumberRange(Response.elmCurrValue, iMin, iMax);
        var result = this.parent.Helper.getResult(Response, this.parent.CODE_SUCCESS);

        if(check === false){
            result = this.parent.Helper.getResult(Response, this.parent.CODE_FAIL);
            result.msg = result.msg.replace(/\{min\}/i, iMin);
            result.msg = result.msg.replace(/\{max\}/i, iMax);
        }

        return result;
    },

    _getRangeNum : function(range) {
        var result = {};

        result.min = range[0] <= 0 ? 0 : parseInt(range[0]);
        result.max = range[1] <= 0 ? 0 : parseInt(range[1]);

        return result;
    },

    _fillConditionCheck : function(Response, cond) {
        cond = $.trim(cond);

        var parent = this.parent;

        //조건식이 들어오면 조건식에 맞을 경우만 필수값을 체크함
        if (cond) {
            var conditions = cond.split('=');
            var fieldId = $.trim(conditions[0]);
            var fieldVal = $.trim(conditions[1]);

            try {
                var val = parent.Helper.getValue(Response.formId, $('#'+fieldId));
                val = $.trim(val);

                if(fieldVal != val) {
                    return parent.Helper.getResult(Response, parent.CODE_SUCCESS);
                }
            } catch(e) {
                if (parent.DEBUG_MODE == true) {
                    Response.elmCurrErrorMsg = parent.msgs['isFillError'];
                    Response.elmCurrErrorMsg = Response.elmCurrErrorMsg.replace(/\{condition\}/i, cond);
                    return parent.Helper.getResult(Response, parent.CODE_FAIL);
                }

                return parent.Helper.getResult(Response, parent.CODE_SUCCESS);
            }
        }

        //Radio 나 Checkbox의 경우 선택한값이 있는지 여부를 체크함
        if (Response.elmCurrFieldType == 'radio' || Response.elmCurrFieldType == 'checkbox') {

            var sName = Response.elmCurrField.attr('name');
            var result = parent.Helper.getResult(Response, parent.CODE_FAIL);

            $('input[name="'+sName+'"]').each(function(i){
                if ($(this).get(0).checked === true) {
                    result = parent.Helper.getResult(Response, parent.CODE_SUCCESS);
                }
            });

            return result;

        }

        //일반 텍스트 박스
        if (Response.elmCurrValue != '') {
            return parent.Helper.getResult(Response, parent.CODE_SUCCESS);
        }

        return parent.Helper.getResult(Response, parent.CODE_FAIL);
    }
};

FwValidator.msgs = {

    //기본
    'isFill' : '{label} 항목은 필수 입력값입니다.',

    'isNumber' : '{label} 항목이 숫자 형식이 아닙니다.',

    'isEmail' : '{label} 항목이 이메일 형식이 아닙니다.',

    'isIdentity' : '{label} 항목이 아이디 형식이 아닙니다.',

    'isMax' : '{label} 항목이 {max}자(개) 이하로 해주십시오.',

    'isMin' : '{label} 항목이 {min}자(개) 이상으로 해주십시오 .',

    'isRegex' : '{label} 항목이 올바른 입력값이 아닙니다.',

    'isAlpha' : '{label} 항목이 영문이 아닙니다',

    'isAlphaLower' : '{label} 항목이 영문 소문자 형식이 아닙니다',

    'isAlphaUpper' : '{label} 항목이 영문 대문자 형식이 아닙니다',

    'isAlphaNum' : '{label} 항목이 영문이나 숫자 형식이 아닙니다.',

    'isAlphaNumLower' : '{label} 항목이 영문 소문자 혹은 숫자 형식이 아닙니다.',

    'isAlphaNumUpper' : '{label} 항목이 영문 대문자 혹은 숫자 형식이 아닙니다.',

    'isAlphaDash' : '{label} 항목이 [영문,숫자,_,-] 형식이 아닙니다.',

    'isAlphaDashLower' : '{label} 항목이 [영문 소문자,숫자,_,-] 형식이 아닙니다.',

    'isAlphaDashUpper' : '{label} 항목이 [영문 대문자,숫자,_,-] 형식이 아닙니다.',

    'isKorean' : '{label} 항목이 한국어 형식이 아닙니다.',

    'isUrl' : '{label} 항목이 URL 형식이 아닙니다.',

    'isSsn' : '{label} 항목이 주민등록번호 형식이 아닙니다.',

    'isForeignerNo' : '{label} 항목이 외국인등록번호 형식이 아닙니다.',

    'isBizNo' : '{label} 항목이 사업자번호 형식이 아닙니다.',

    'isPhone' : '{label} 항목이 전화번호 형식이 아닙니다.',

    'isMobile' : '{label} 항목이 핸드폰 형식이 아닙니다.',

    'isZipcode' : '{label} 항목이 우편번호 형식이 아닙니다.',

    'isJuriNo' : '{label} 항목이 법인번호 형식이 아닙니다.',

    'isIp' : '{label} 항목이 아이피 형식이 아닙니다.',

    'isDate' : '{label} 항목이 날짜 형식이 아닙니다.',

    'isMatch' : '{label} 항목과 {match} 항목이 같지 않습니다.',

    'isSuccess' : '{label} 항목의 데이터는 전송할 수 없습니다.',

    'isSimplexEditorFill' : '{label}(을/를) 입력하세요',

    'isPassport' : '{label} 항목이 여권번호 형식이 아닙니다.',

    'isMaxByte' : '{label} 항목은 {max}bytes 이하로 해주십시오.',

    'isMinByte' : '{label} 항목은 {min}bytes 이상으로 해주십시오.',

    'isByteRange' : '{label} 항목은 {min} ~ {max}bytes 범위로 해주십시오.',

    'isLengthRange' : '{label} 항목은 {min} ~ {max}자(개) 범위로 해주십시오.',

    'isNumberMin' : '{label} 항목은 {min} 이상으로 해주십시오.',

    'isNumberMax' : '{label} 항목은 {max} 이하로 해주십시오.',

    'isNumberRange' : '{label} 항목은 {min} ~ {max} 범위로 해주십시오.',


    //디버깅
    'notMethod' : '{label} 항목에 존재하지 않는 필터를 사용했습니다.',

    'isFillError' : "[{label}] 필드의 isFill {condition} 문장이 잘못되었습니다.\r\n해당 필드의 아이디를 확인하세요."

};

FwValidator.Handler.overrideMsgs({

    //기본
    'isFill' : sprintf(__('%s 항목은 필수 입력값입니다.'), '{label}'),

    'isNumber' : sprintf(__('%s 항목이 숫자 형식이 아닙니다.'), '{label}'),

    'isEmail' : sprintf(__('%s 항목이 이메일 형식이 아닙니다.'), '{label}'),

    'isIdentity' : sprintf(__('%s 항목이 아이디 형식이 아닙니다.'), '{label}'),

    'isMax' : sprintf(__('%1$s 항목이 %2$s자(개) 이하로 해주십시오.'), '{label}', '{max}'),

    'isMin' : sprintf(__('%1$s 항목이 %2$s자(개) 이상으로 해주십시오.'), '{label}', '{min}'),

    'isRegex' : sprintf(__('%s 항목이 올바른 입력값이 아닙니다.'), '{label}'),

    'isAlpha' : sprintf(__('%s 항목이 영문이 아닙니다.'), '{label}'),

    'isAlphaLower' : sprintf(__('%s 항목이 영문 소문자 형식이 아닙니다.'), '{label}'),

    'isAlphaUpper' : sprintf(__('%s 항목이 영문 대문자 형식이 아닙니다.'), '{label}'),

    'isAlphaNum' : sprintf(__('%s 항목이 영문이나 숫자 형식이 아닙니다.'), '{label}'),

    'isAlphaNumLower' : sprintf(__('%s 항목이 영문 소문자 혹은 숫자 형식이 아닙니다.'), '{label}'),

    'isAlphaNumUpper' : sprintf(__('%s 항목이 영문 대문자 혹은 숫자 형식이 아닙니다.'), '{label}'),

    'isAlphaDash' : sprintf(__('%s 항목이 [영문,숫자,_,-] 형식이 아닙니다.'), '{label}'),

    'isAlphaDashLower' : sprintf(__('%s 항목이 [영문 소문자,숫자,_,-] 형식이 아닙니다.'), '{label}'),

    'isAlphaDashUpper' : sprintf(__('%s 항목이 [영문 대문자,숫자,_,-] 형식이 아닙니다.'), '{label}'),

    'isKorean' : sprintf(__('%s 항목이 한국어 형식이 아닙니다.'), '{label}'),

    'isUrl' : sprintf(__('%s 항목이 URL 형식이 아닙니다.'), '{label}'),

    'isSsn' : sprintf(__('%s 항목이 주민등록번호 형식이 아닙니다.'), '{label}'),

    'isForeignerNo' : sprintf(__('%s 항목이 외국인등록번호 형식이 아닙니다.'), '{label}'),

    'isBizNo' : sprintf(__('%s 항목이 사업자번호 형식이 아닙니다.'), '{label}'),

    'isPhone' : sprintf(__('%s 항목이 전화번호 형식이 아닙니다.'), '{label}'),

    'isMobile' : sprintf(__('%s 항목이 핸드폰 형식이 아닙니다.'), '{label}'),

    'isZipcode' : sprintf(__('%s 항목이 우편번호 형식이 아닙니다.'), '{label}'),

    'isJuriNo' : sprintf(__('%s 항목이 법인번호 형식이 아닙니다.'), '{label}'),

    'isIp' : sprintf(__('%s 항목이 아이피 형식이 아닙니다.'), '{label}'),

    'isDate' : sprintf(__('%s 항목이 날짜 형식이 아닙니다.'), '{label}'),

    'isMatch' : sprintf(__('%1$s 항목과 %2$s 항목이 같지 않습니다.'), '{label}', '{match}'),

    'isSuccess' : sprintf(__('%s 항목의 데이터는 전송할 수 없습니다.'), '{label}'),

    'isSimplexEditorFill' : sprintf(__('%s(을/를) 입력하세요.'), '{label}'),

    'isPassport' : sprintf(__('%s 항목이 여권번호 형식이 아닙니다.'), '{label}'),

    'isMaxByte' : sprintf(__('%1$s 항목은 %2$sbytes 이하로 해주십시오.'), '{label}', '{max}'),

    'isMinByte' : sprintf(__('%1$s 항목은 %2$sbytes 이상으로 해주십시오.'), '{label}', '{min}'),

    'isByteRange' : sprintf(__('%1$s 항목은 %2$s ~ %3$sbytes 범위로 해주십시오.'), '{label}', '{min}', '{max}'),

    'isLengthRange' : sprintf(__('%1$s 항목은 %2$s ~ %3$s자(개) 범위로 해주십시오.'), '{label}', '{min}', '{max}'),

    'isNumberMin' : sprintf(__('%1$s 항목은 %2$s 이상으로 해주십시오.'), '{label}', '{min}'),

    'isNumberMax' : sprintf(__('%1$s 항목은 %2$s 이하로 해주십시오.'), '{label}', '{max}'),

    'isNumberRange' : sprintf(__('%1$s 항목은 %2$s ~ %3$s 범위로 해주십시오.'), '{label}', '{min}', '{max}'),


    //디버깅
    'notMethod' : sprintf(__('%s 항목에 존재하지 않는 필터를 사용했습니다.'), '{label}'),

    'isFillError' : sprintf(__('[%1$s] 필드의 isFill %2$s 문장이 잘못되었습니다.\r\n해당 필드의 아이디를 확인하세요.'), '{label}', '{condition}')

});

















$(document).ready(function(){
    /**
     * 이미지 롤오버 - 메인 카테고리 메뉴
     * */
    $('img[id^="cate_img_"]')
        .parent()
        .mouseover(function(){
            var $img = $(this).find('img');

            if (!$img.attr('org_src')) $img.attr('org_src', $img.attr('src'));

            $img.attr('src', $img.attr('rollover'));
        })
        .mouseout(function(){
            var $img = $(this).find('img');

            $img.attr('src', $img.attr('org_src'));
        });
        
    /**
     * 카테고리 상세분류를 보기위한 처리 ?????
     */
    $('.xans-product-displaycategory .button').hover(
        function() {
            $(this).addClass('selected');
        },
        function() {
            $(this).removeClass('selected');
        }
    );
    
    /**
     * 서브카테고리 display - mouseOver
     * */
    /*
    $('.xans-product-listcategory a').mouseover(function(){
        
        var pNode = $(this).parents('li');
        var sHref = $(this).attr('href')
        sHref = sHref.substr(sHref.indexOf('?'));
        var sUrl = '/product/sub_category.html'+sHref; 

        $.get(sUrl, '', function(result) {
            if (result != '') {
                $('#product-listcategory-read').remove();
                $(pNode).append('<div id="product-listcategory-read">'+result+'</div>');
                
                $('.xans-product-subcategory').css('left', '100px');
                subTop = $('.xans-product-subcategory').css('top').replace('px','') - 20;
                $('.xans-product-subcategory').css('top', subTop);
                $('.xans-product-subcategory').mouseover(function() {
                    $('.xans-product-subcategory').show();
                });
                
            }
        });
    });

    $('.xans-product-listcategory a').mouseout(function(){
        //$('#product-listcategory-read').remove();
    });
    
    $('[id^="sub_cate"]').mouseout(function(){
        $(this).css('display:none;');
    });  
    */
});





var categoryOddColor = new Object();
var categoryEvenColor = new Object();

$(document).ready(function()
{
    // 카테고리타입
    var aCategoryType = new Array('normal', 'reco', 'new', 'project', 'main');
    // 상품 ID prefix
    var sProductIdPrefix = 'product_';
    // 옵션 미리보기 아이콘 ID prefix
    var sOptPreviewIconId = 'opt_prv_id_';
    // 옵션 미리보기 레이어 ID prefix
    var sOptPreviewLayerId = 'opt_prv_layer_id_';
    // 옵션 미리보기 닫기 버튼 ID prefix
    var sOptPreviewCloseId = 'opt_prv_close_id_';

    // 상품요약정보 (툴팁)
    if ($('.tooltip').length > 0) {
        $('.tooltip').Tooltip({
            'name' : 'toolTipStyle',
            'delay' : '0',
            'top' : '-200',
            'left' : '10',
            'fade' : false,
            'opacity' : 1
        });
    }

    /**
     * 카테고리 타입별로 홀짝수 라인색상 설정
     */
    var iCategoryTypeLen = aCategoryType.length;
    for ( var i = 0 ; i < iCategoryTypeLen ; i++) {
        var iBeforeOffsetTop = -1;
        var sCategoryType = aCategoryType[i];
        var sBgColor = categoryOddColor[sCategoryType];
        $('[id^="' + sProductIdPrefix + aCategoryType[i] + '_"]').each(function(idx)
        {
            if ((idx > 0) && $(this).attr('offsetTop') != iBeforeOffsetTop) {
                sBgColor = (sBgColor == categoryOddColor[sCategoryType]) ? categoryEvenColor[sCategoryType] : categoryOddColor[sCategoryType];
            }
            iBeforeOffsetTop = $(this).attr('offsetTop');
            $(this).css('background-color',sBgColor);
        });
    }

    $('#selArray').change(function(){
        location.href = $(this).val();
    });

    $('#selArray>option').each( function() {
        if ( location.search+location.hash == $(this).val()) {
            $(this).attr("selected","true");
        }
    });

    /**
     * 옵션아이콘 onmouseover 핸들러
     */
    $('[id^="' + sOptPreviewIconId + '"]').mouseover(function()
    {
        if (sOptionPreviewMethod.indexOf('mouseover') > -1)
            setOptLayerDisplay($(this));
    });

    /**
     * 옵션아이콘 onmouseclick 핸들러
     */
    $('[id^="' + sOptPreviewIconId + '"]').click(function()
    {
        if (sOptionPreviewMethod.indexOf('mouseclick') > -1)
            setOptLayerDisplay($(this));
    });

    /**
     * 옵션 레이어 display 조절
     *
     * @param object optIcon 옵션 아이콘 JQuery 객체
     * @param string sPopupMethod 팝업 method (mouseover|mouseclick)
     */
    function setOptLayerDisplay(optIcon, sPopupMethod)
    {
        var aParam = getOptionParams(optIcon.attr('id'),sOptPreviewIconId);
        // 모든 옵션미리보기창 닫기
        $('[id^="' + sOptPreviewLayerId + '"]').each(function()
        {
            $(this).css('display','none');
        });

        // 선택된 옵션미리보기창 출력
        var sLayerId = '#' + sOptPreviewLayerId + aParam['product_no'];
        var aPos = findPos(optIcon.get(0));
        $(sLayerId).css('position','absolute');
        $(sLayerId).css('left',aPos['left']);
        $(sLayerId).css('top',(aPos['top'] + optIcon.attr('offsetHeight')) + 'px');
        $(sLayerId).css('display','');
        $(sLayerId).css('z-index','9999');
    }

    /**
     * 옵션아이콘 onmouseout 핸들러
     */
    $('[id^="' + sOptPreviewIconId + '"]').mouseout(function()
    {
        var aParam = getOptionParams($(this).attr('id'),sOptPreviewIconId);
        if (sOptionLayerCloseMethod != 'use_close_button')
            $('#' + sOptPreviewLayerId + aParam['product_no']).css('display','none');
    });

    /**
     * 옵션 레이어 onmouseover 핸들러
     */
    $('[id^="' + sOptPreviewLayerId + '"]').mouseover(function()
    {
        $(this).css('display','');
    });

    /**
     * 옵션 레이어 onmouseout 핸들러
     */
    $('[id^="' + sOptPreviewLayerId + '"]').mouseout(function()
    {
        if (sOptionLayerCloseMethod != 'use_close_button')
            $(this).css('display','none');
    });

    /**
     * 옵션 레이어 닫기버튼 클릭 핸들러
     */
    $('[id^="' + sOptPreviewCloseId + '"]').click(function()
    {
        var aParam = getOptionParams($(this).attr('id'),sOptPreviewCloseId);
        $('#' + sOptPreviewLayerId + aParam['product_no']).css('display','none');
    });

    /**
     * HTML 오브젝트의 위치값 계산
     *
     * @param object obj 위치를 알고자 하는 오브젝트
     * @return object left, top 값
     */
    function findPos(obj)
    {
        var iCurLeft = iCurTop = 0;

        if (obj.offsetParent) {
            do {
                iCurLeft += obj.offsetLeft;
                iCurTop += obj.offsetTop;
            } while (obj = obj.offsetParent);
        }

        return {
            'left' : iCurLeft,
            'top' : iCurTop
        };
    }

    /**
     * 옵션관련 ID를 파싱해서 파라메터 추출, 반환
     *
     * @param string sId ID
     * @param string sPrefix 파싱할 때 삭제할 prefix
     * @return array 상품번호+팝업method
     */
    function getOptionParams(sId, sPrefix)
    {
        var aTmp = sId.replace(sPrefix,'').split('_');
        return {
            'product_no' : aTmp[0],
            'popup_method' : aTmp[1]
        };
    }
    
    if (mobileWeb !== true) {
        // 할인기간 레이어 열기
        $('.discountPeriod > a').mouseover(function() {
            $('.layerDiscountPeriod').hide();
            $(this).parent().find('.layerDiscountPeriod').show();
        }).mouseout(function() {
            $('.layerDiscountPeriod').hide();
        });
    } else {
        // 할인기간 레이어 열기
        $('.discountPeriod > a').click(function() {
            $('.layerDiscountPeriod').hide();
            $(this).parent().find('.layerDiscountPeriod').show();
        });
        
        // 할인기간 레이어 닫기
        $('.layerDiscountPeriod > .close').click(function() {
            $(this).parents('.layerDiscountPeriod').hide();
        });
    }
    
});

// 상품 확대보기 아이콘 ID prefix
var sProductZoomIdPrefix = 'product_zoom_';

/**
 * 상품 확대보기
 *
 * @param int iProductNo 상품번호
 * @param int iCategoryNo 카테고리 번호
 * @param int iDisplayGroup display_group
 * @param string sLink 팝업창 URL
 * @param string sOption 팝업 옵션
 */
function zoom(iProductNo, iCategoryNo, iDisplayGroup, sLink, sOption)
{
    // 팝업창 링크
    var sLink = sLink ? sLink : '/product/image_zoom.html';
    sLink += '?product_no=' + iProductNo + '&cate_no=' + iCategoryNo + '&display_group=' + iDisplayGroup;
    // 팝업창 옵션
    var sOptions = sOption ? sOption : 'toolbar=no,scrollbars=no,resizable=yes,width=800,height=640,left=0,top=0';
    // 팝업창 이름
    var sWinName = 'image_zoom';

    window.open(sLink,sWinName,sOptions);
}

/**
 * 상품상세 확대보기
 *
 * @param int iProductNo 상품번호
 * @param int iCategoryNo 카테고리 번호
 * @param int iDisplayGroup display_group
 * @param string sLink 팝업창 URL
 * @param string sOption 팝업 옵션
 */
function zoom2(iProductNo, iCategoryNo, iDisplayGroup, sLink, sOption)
{
    // 팝업창 링크
    var sLink = sLink ? sLink : '/product/image_zoom2.html';
    sLink += '?product_no=' + iProductNo + '&cate_no=' + iCategoryNo + '&display_group=' + iDisplayGroup;
    // 팝업창 옵션
    var sOptions = sOption ? sOption : 'toolbar=no,scrollbars=no,resizable=yes,width=800,height=640,left=0,top=0';
    // 팝업창 이름
    var sWinName = 'image_zoom2';

    window.open(sLink,sWinName,sOptions);
}

/**
 * 상품 진열시 높이가 달라서 li가 깨지는 현상이 나타날때 이를 진열된 상품의 기준으로 높이를 다시 재설정해주는 스크립트입니다.
 * 이 스크립트는 반드시 고정폭에서 사용되어야 합니다.
 * 해당스크립트 실행문은 각각 모듈의 js에서 합니다.
 */
$.fn.productResize = function(nodeName) {
    nodeName = nodeName || 'li';

    return $(this).each(function() {
        var iTargetHeight = 0;
        var aTargetElement = new Array();
        var nodes = $(this).find(nodeName);
        var iFirstChildDepth = $(nodes[0]).parents().size(); // 타겟 depth
        for (var x = 0 ; x < nodes.size() ; x++) {
            if ($(nodes[x]).parents().size() == iFirstChildDepth) {
                aTargetElement.push(x);
                if (iTargetHeight < $(nodes[x]).height()) {
                    iTargetHeight = $(nodes[x]).height();
                }
            }
        }
        for (var x in aTargetElement) {
            $(nodes[aTargetElement[x]]).height(iTargetHeight);
        }
    });
};
/**
 * 상품 리스트에서 쓰이는 기능 모음 1. 옵션 미리보기 2. 장바구니 넣기 3. 이미지 줌 4. 요약정보
 */
var EC_ListAction = {
    getOptionSelect : function(iProductNo, iCategoryNo, iDisplayGroup, sBasketType)
    {
        element = document;
        $('div.CategoryBasketLayer').remove();
        $.get(basket_option,{
            'product_no' : iProductNo,
            'cate_no' : iCategoryNo,
            'display_group' : iDisplayGroup,
            'basket_type' : sBasketType
        },function(sHtml)
        {
            $('body').append($(sHtml));
        });
    },
    getOptionSelectValidate : function(sType)
    {
        var iCheckCount = 0;
        var bReturn = true;
        var bFirst = true;
        var eLists = $('.xans-product-optionlist');
        var iProductMin = parseInt($.data(document,'ProductMin_class'),10);
        
        // 뉴상품인 경우에만 있는 데이터
        var iProductMax = parseInt($.data(document,'ProductMax_class'),10);
        var iBuyUnit = parseInt($.data(document,'ProductBuyUnit_class'),10);
        if (isNaN(iBuyUnit) === true) iBuyUnit = 1;
        if (isNaN(iProductMax) === true) iProductMax = 0;
        
        for ( var x = 0 ; x < eLists.length ; x++) {
            var eList = $(eLists[x]);
            eList.find('.' + $.data(document,'Check_class')).each(function() {
                if ($(this).attr('checked') === true) {
                    iCheckCount++;
                    eList.find('.' + $.data(document,'Quantity_class')).each(function() {
                        var iQuantity = parseInt($(this).val(), 10);
                        if (bFirst === true) {
                            if (iQuantity < 1) {
                                alert(__('구매하실 수량을 입력해주세요'));
                                $(this).focus();
                                bReturn = false;
                                return false;
                            }

                            if ($(this).attr('stock') > 0 && iQuantity > $(this).attr('stock')) {
                                alert(__('선택하신 옵션에 해당하는 상품의 재고 수량이 구매하실 수량보다 적습니다.'));
                                $(this).focus();
                                bReturn = false;
                                return false;
                            }
                            
                            if (iQuantity % iBuyUnit !== 0) {
                                alert('선택하신 옵션은 '+iBuyUnit+'개 단위로 구매 하실 수 있습니다.');
                                $(this).focus();
                                bReturn = false;
                                return false;
                            }

                            if (iQuantity < iProductMin) {
                                alert('선택하신 옵션의 최소 구매수량은 '+iProductMin+'개 입니다.');
                                $(this).focus();
                                bReturn = false;
                                return false;
                            }
                            if (iProductMax > 1 && iQuantity > iProductMax) {
                                alert('선택하신 옵션의 최대 구매수량은 '+iProductMax+'개 입니다.');
                                $(this).focus();
                                bReturn = false;
                                return false;
                            }
                        }

                        if (bReturn === false) {
                            bFirst = false;
                        }
                    });
                    if (bReturn === false) {
                        bFirst = false;
                    }
                }
            });
        }

        if (iCheckCount < 1) {
            alert(__('구매 또는 장바구니에 담을 상품을 선택해주세요.'));
            return false;
        }
        if (bReturn === true) {
            this.setBasketPrepare(sType);
        } else {
            return false;
        }
    },
    setBasketPrepare : function(sType)
    {
        var frm = this.getBasketForm();
        this.getHiddenElement('product_no',$.data(document,'iProductNo_class')).appendTo(frm);
        this.getHiddenElement('main_cate_no',$.data(document,'iCategoryNo_class')).appendTo(frm);
        this.getHiddenElement('display_group',$.data(document,'iDisplayGroup_class')).appendTo(frm);
        this.getHiddenElement('basket_type',$.data(document,'sBasketType_class')).appendTo(frm);
        this.getHiddenElement('product_min',$.data(document,'ProductMin_class')).appendTo(frm);
        this.getHiddenElement('delvtype',$('input[name="delvtype"]').val()).appendTo(frm);
        this.getHiddenElement('option_type','T').appendTo(frm);
        this.getHiddenElement('command','add').appendTo(frm);
        this.getHiddenElement('has_option','T').appendTo(frm);
        var eLists = $('.xans-product-optionlist');
        var bAddProduct = false;
        var sOptionParam = '';
        for ( var x = 0 ; x < eLists.length ; x++) {
            var eList = $(eLists[x]);
            eList.find('.' + $.data(document,'Check_class') + ':checked').each(function()
            {
                if (bAddProduct === false) {
                    var aOption = $(this).val().split('-');
                    var k = 0;
                    for ( var z = 0 ; z < aOption.length ; z++) {
                        key = z + 1;
                        EC_ListAction.getHiddenElement('option' + key,aOption[z]).appendTo(frm);
                    }

                    eList.find('.' + $.data(document,'Quantity_class')).each(function()
                    {
                        EC_ListAction.getHiddenElement('quantity',$(this).val()).appendTo(frm);
                        bAddProduct = true;
                    });
                } else {
                    var aBasketInfo = new Array();
                    aBasketInfo.push($.data(document,'iProductNo_class'));
                    aBasketInfo.push($.data(document,'iCategoryNo_class'));
                    aBasketInfo.push($.data(document,'iDisplayGroup_class'));
                    aBasketInfo.push($.data(document,'ProductMin_class'));
                    aBasketInfo.push('product_name');
                    aBasketInfo.push('product_price');
                    aBasketInfo.push('T');
                    aBasketInfo.push(eList.find('.' + $.data(document,'Quantity_class')).val());
                    aBasketInfo.push($.data(document,'iOptionSize_class'));
                    var aOption = $(this).val().split('-');
                    var k = 0;
                    for ( var z = 0 ; z < aOption.length ; z++) {
                        if (aOption[z] != '0') {
                            aBasketInfo.push(aOption[z]);
                        }
                    }
                    EC_ListAction.getHiddenElement('basket_info[]',aBasketInfo.join('|')).appendTo(frm);
                }
            });
        }
        // 선택한상품만 주문하기
        if (sType == 1 || sType == 'naver_checkout') {
            // 이미 장바구니에 들어있는지 체크
            this.selectbuy_action($.data(document,'iProductNo_class'));
            EC_ListAction.getHiddenElement('quantity_override_flag', sIsPrdOverride).appendTo(frm);
        }

        try {
        if ($('[name="quantity[]"]').length  > 0 && $('[name="quantity[]"]').length == $('[name="item_code[]"]').length) {
            $('[name="quantity[]"]').each(function(i) {
                if ($(this).val() > 0) {
                    frm.append(getInputHidden('selected_item[]', $(this).val()+'||'+$('[name="item_code[]"]:eq('+i+')').val()));
                }
            });
        }
        }catch(e) {}

        var sAction = '/exec/front/order/basket/';
        action_basket(sType,'category',sAction,frm.serialize(),$.data(document,'sBasketType_class'));
    },
    getHiddenElement : function(sName, sValue)
    {
        return $('<input />').attr({
            'type' : 'hidden',
            'name' : sName,
            'value' : sValue
        });
    },
    getBasketForm : function()
    {
        return $('<form>').attr({
            'method' : 'POST',
            'name' : 'CategoryBasket'
        });
    },
    /**
     * 리스트에서 상품 비교로 값을 넘긴다.
     */
    setProductCompare : function()
    {
        if ($('.ProductCompareClass:checked').size() < 1) {
            alert(__('비교할 상품을 선택해 주세요.'));
            return false;
        } else {
            var aProductNo = new Array();
            $('.ProductCompareClass:checked').each(function()
            {
                var aClass = $(this).attr('class').split(' ');

                var iSize  = aClass.length;
                for ( var x = 0 ; x < iSize ; x++ ) {
                    var iProductNo = parseInt(aClass[x].split('_')[1],10);
                    if (aClass != '' && aClass[x].indexOf('ECPCNO_') == 1 && $.inArray(iProductNo,aProductNo) < 0) {
                        aProductNo.push(iProductNo);
                    }
                }
            });
            if (aProductNo.length > 1) {
                if (aProductNo.length > max_comp_number) {
                    alert(sprintf(__('%s개까지 비교 가능합니다.'), max_comp_number));
                } else {
                    var eForm = $('<form>').attr({
                        'method' : 'get',
                        'action' : sComparePageUrl
                    });
                    var iSize = aProductNo.length;
                    for (var x = 0; x < iSize; x++) {
                        $('<input />').attr({
                            'type' : 'hidden',
                            'name' : 'product_no[]'
                        }).val(aProductNo[x]).appendTo(eForm);
                    }
                    eForm.appendTo($('body')).submit();
                }
            } else {
                alert(__('두개 이상의 상품을 선택하세요.'))
            }
        }
    },
    /**
     * 선택한상품만 주문하기
     *
     * @param string sOptionParam 옵션 파람값
     * @param int iProductNo 상품번호
     */
    selectbuy_action :function(iProductNo)
    {
        var aOptionId = new Array();
        var aTargetElement = $('.' + $.data(document,'Check_class')+':checked');
        var bOverride = false;
        for (var x = 0 ; x < aTargetElement.length ; x++) {
            if (bOverride === true) {
                break;
            }
            var sOptionId = $(aTargetElement[x]).val();
            var sUrl = '/exec/front/order/basket/?command=select_prdcnt&product_no=' + iProductNo + '&option_type=T&option='+ sOptionId;
            $.ajax({
                url : sUrl,
                dataType : 'json',
                async : false,
                success : function(data) {
                    bOverride = true;
                    if (data.result > 0 && !confirm(sprintf(__('동일상품이 장바구니에 %s개 있습니다.'), data.result) +'\n'+ __('함께 구매하시겠습니까?'))) {
                        sIsPrdOverride = 'T';
                    }
                }
            });
        }
    }
};

//페이지의 상위
function findMainFrame () {
    var $oFrame = null;
    if (opener) {
        $oFrame = opener;
    } else {
        var $oParent = window;
        var $aFrames = [];
        while ($oParent !== $oParent.parent) {
            $aFrames.unshift($oParent = $oParent.parent);
        }
        try {
            $oParent.location.href;
        } catch(e) {
            $aFrames.shift();
        }
        if (0 < $aFrames.length) {
            if ($aFrames[0].location.pathname === "/") {
                if ($aFrames.length === 1) {
                    $oFrame = $aFrames[0];
                } else
                if ($aFrames.length > 1) {
                    $oFrame = $aFrames.pop();
                }
            } else {
                $oFrame = $aFrames[0];
            }
        }
    }
    return $oFrame;
}
// 상품 옵션 id
var product_option_id = 'product_option_id';

// 추가옵션 id
var add_option_id = 'add_option_';

// 선택된 상품만 주문하기
var sIsPrdOverride = 'F';

//모바일로 접속했는지
var bIsMobile = false;

/**
 * sType - 1:바로구매, 2:장바구니,naver_checkout:네이버체크아웃 form.submit - 바로구매, 장바구니, 관심상품
 * TODO 바로구매 - 장바구니에 넣으면서 주문한 상품 하나만 주문하기
 *
 * @param string sAction action url
 */
function product_submit(sType, sAction, oObj)
{
    // ECHOSTING-58174
    if (sIsDisplayNonmemberPrice == 'T') {
        switch (sType) {
            case 1 :
                alert(__('로그인후 상품을 구매해주세요.'));
                break;
            case 2 :
                alert(__('로그인후 장바구니 담기를 해주세요.'));
                 break
            default :
                break;
        }
        btn_action_move_url('/member/login.html');
        return false;
    }

    var sBasketType;

    var bIsPriceConentType = checkPriceType();

    if (bIsPriceConentType == false) {
        alert(sprintf(__('%s 상품은 구매할 수 있는 상품이 아닙니다.'), product_name));
        return;
    }

    if (typeof (basket_type) == 'undefined') {
        sBasketType = 'A0000';
    } else {
        sBasketType = basket_type;
    }

    // 품절 여부 체크
    if (checkSoldout() == false) return;

    // 옵션 체크
    if (sType != 'sms_restock') {
        if (checkOptionRequired() == false) {
            var sBuyBtnParent = $(oObj).parent().parent().attr('id');
            try {
                if (mobileWeb) {
                    if (sBuyBtnParent != '' && sBuyBtnParent == 'fixedActionButton') {
                        $('select[id^="' + product_option_id + '"]:visible').each(function() {
                            var sSelectOptionId = $(this).attr('id');
                            var sParentVal = $(this).val();
                            $("#productOptionIframe").contents().find('#product_detail_option_layer #'+sSelectOptionId+'').val(sParentVal);
                        });
                        var iTop = parseInt(( $(window).height() - $("#productOptionIframe").height() ) / 2);
                        $("#opt_layer_iframe_parent").css({"top": iTop, "left": 0});
                        $('html, body').css({'overflow-y': 'hidden', width: '100%', height: '100%'});
                        $('#opt_layer_window').show();
                        return;
                    }
                }
            } catch (e) {}
            alert(__('필수 옵션을 선택해주세요.'));
            return;
        }
    }

    // 추가 옵션 체크
    if (checkAddOption() == false) return;

    // 파일첨부 옵션 유효성 체크
    if (FileOptionManager.checkValidation() === false) return;

    // 수량 체크
    var iQuantity = 0;
    if (sType != 'sms_restock') {
        iQuantity = checkQuantity();
        if (iQuantity == false) return;
    }

    // 폼 세팅

    // basket_type - 컨트롤러에서 변수에 assign 한 값을 그대로 사용하자
    var frm = $('#frm_image_zoom');
    // 어떤 이유로 서밋이 되지 않았을때 폼이 남아있는 경우에 폼 이하의 내용을 삭제함
    frm.find(":hidden").remove();
    frm.attr('method', 'POST');
    frm.attr('action', '/' + sAction);
    frm.append(getInputHidden('product_no', iProductNo));
    frm.append(getInputHidden('product_name', product_name));
    frm.append(getInputHidden('main_cate_no', iCategoryNo));
    frm.append(getInputHidden('display_group', iDisplayGroup));
    frm.append(getInputHidden('option_type', option_type));
    frm.append(getInputHidden('product_price', product_price));
    frm.append(getInputHidden('product_min', product_min));
    frm.append(getInputHidden('command', 'add'));
    frm.append(getInputHidden('has_option', has_option));
    frm.append(getInputHidden('basket_type', sBasketType));
    // frm.append(getInputHidden('product_name',product_name)); // 혹시 몰라서 빼봄.
    frm.append(getInputHidden('multi_option_schema', $('#multi_option').html()));
    frm.append(getInputHidden('multi_option_data', ''));
    frm.append(getInputHidden('quantity', iQuantity));
    frm.append(getInputHidden('delvType', delvtype));
    frm.append(getInputHidden('redirect', sType));
    frm.append(getInputHidden('prd_detail_ship_type', $('#delivery_cost_prepaid').val()));

    // 최대주문수량
    try {
        frm.append(getInputHidden('product_max_type', product_max_type));
        frm.append(getInputHidden('product_max', product_max));
    } catch (e) {}

    var count = 1;

    var sOptionParam = '';

    // 필수값 체크를 여기서 하지 않을수 있다.
    // 추이를 지켜보고 제거
    $('select[id^="' + product_option_id + '"]:visible').each(function()
    {
        frm.append(getInputHidden('optionids[]', $(this).attr('name')));
        if ($(this).attr('required') == true || $(this).attr('required') == 'required') {
            frm.append(getInputHidden('needed[]', $(this).attr('name')));
        }
        var iSelectedIndex = $(this).get(0).selectedIndex;
        if ($(this).attr('required') && iSelectedIndex > 0) iSelectedIndex -= 1;

        if (iSelectedIndex > 0) {
            sOptionParam += '&option' + count + '=' + iSelectedIndex;
            var sValue = $(this).val();
            var aValue = sValue.split("|");
            frm.append(getInputHidden($(this).attr('name'), aValue[0]));
            ++count;
        }
    });

    // 추가옵션
    if (add_option_name) {
        var iAddOptionNo = 0;
        var aAddOptionName = new Array();
        for ( var i in add_option_name) {
            if ($('#' + add_option_id + i).val() == '' || typeof($('#' + add_option_id + i).val()) == 'undefined') {
                continue;
            }
            frm.append(getInputHidden('option_add[]', $('#' + add_option_id + i).val()));
            aAddOptionName[iAddOptionNo++] = add_option_name[i];
        }
        frm.append(getInputHidden('add_option_name', aAddOptionName.join(';')));
    }

    // 옵션 추가 구매 체크
    if (duplicateOptionCheck() === false) return;

    // 관련상품이 있을 때
    var bReturn = true;
    $('input[name="basket_info[]"]:checked').each(function()
    {
        var iRelationProductNum = $(this).val().substr(0, $(this).val().indexOf('|'));
        var eQuantity = $('#quantity_' + iRelationProductNum);
        var eOption = $('select[name="option_' + iRelationProductNum + '[]"]');

        if (eQuantity.attr('item_code')) {
            // 단품인가
            frm.append(getInputHidden('relation_item[]', eQuantity.val()+'||'+eQuantity.attr('item_code')));
        } else {
            // 품목이 있는가
            bReturn = true;
            // 조합/분리 형의 경우 value_mapper가 있어야한다. 있으면 가서 쓰고 없어서 undefined가 뜨면 catch를 실행 - 억지코드임.
            try {
                var aOptionMapper = $.parseJSON(eval('sOptionValueMapper'+iRelationProductNum));
                var aOptionValue = new Array();
                eOption.each(function() {
                    if ($(this).is('[required="true"]') === true && ($(this).val() == '*' || $(this).val() == '**')) {
                        alert(__('필수 옵션을 선택해주세요.'));
                        $(this).focus();
                        bReturn = false;
                        return false;
                    } else {
                        aOptionValue.push($(this).val());
                    }
                });
                sOptionValue = aOptionValue.join('/');
                var sItemCode = aOptionMapper[sOptionValue];
            } catch(e) {
                eOption.each(function() {
                    if ($(this).is('[required="true"]') === true && ($(this).val() == '*' || $(this).val() == '**')) {
                        alert(__('필수 옵션을 선택해주세요.'));
                        $(this).focus();
                        bReturn = false;
                        return false;
                    }
                });
                var sItemCode = eOption.val();
            }
            if (bReturn === true) {
                frm.append(getInputHidden('relation_item[]', eQuantity.val()+'||'+sItemCode));
            }
        }
    });
    if ($('input[name="basket_info[]"]:checked').length >= 0) {
        frm.append(getInputHidden('relation_product', 'yes'));
    }
    if (bReturn === false) return false;

    // 추가입력옵션 체크
    var bReturn = true;
    $('input[class^="option_add_box_"][name="basket_add_product[]"]').each(function()
    {
        var sAddOptionId = $(this).attr('id').replace('_id','');
        var iAddProductNo = parseInt($(this).attr('class').substr($(this).attr('class').lastIndexOf('_')+1));

        $('select[name^="addproduct_option_name_'+iAddProductNo+'"][required="true"]:visible').each(function() {
            if ($(this).val() == '*' || $(this).val() == '**') {
                alert(__('필수 옵션을 선택해주세요.'));
                $(this).focus();
                bReturn = false;
                return false;
            }
        });
        if (bReturn === false) return false;

        frm.append(getInputHidden('selected_add_item[]', $('#'+sAddOptionId+'_quantity').val()+'||'+$(this).val()));
        $bResult = checkAddOption('addproduct_add_option_id_'+iAddProductNo);
        if (bReturn === false) return false;
    });

    if ($('.add-product-checked:checked').size() > 0) {
        var aAddProduct = $.parseJSON(add_option_data);
        var aItemCode = new Array();
        var bCheckValidate = true;
        $('.add-product-checked:checked').each(function() {
            if (bCheckValidate === false) {
                return false;
            }
            var iProductNum = $(this).attr('product-no');
            var iQuantity = $('#add-product-quantity-'+iProductNum).val();
            var aData = aAddProduct[iProductNum];
            if (aData.item_code === undefined) {
                if (aData.option_type === 'T') {
                    if (aData.item_listing_type === 'S') {
                        var aOptionValue = new Array();
                        $('[id^="addproduct_option_id_'+iProductNum+'"]').each(function() {
                            aOptionValue.push($(this).val());
                        });
                        if (ITEM.isOptionSelected(aOptionValue) === true) {
                            sOptionValue = aOptionValue.join('/');
                            aItemCode.push([$.parseJSON(aData.option_value_mapper)[sOptionValue],iQuantity]);
                        } else {
                            bCheckValidate = false;
                            alert(__('필수 옵션을 선택해주세요.'));
                            return false;
                        }
                    } else {
                        var $eItemSelectbox = $('[name="addproduct_option_name_'+iProductNum+'"]');

                        if (ITEM.isOptionSelected($eItemSelectbox.val()) === true) {
                            aItemCode.push([$eItemSelectbox.val(),iQuantity]);
                        } else {
                            bCheckValidate = false;
                            $eItemSelectbox.focus();
                            alert(__('필수 옵션을 선택해주세요.'));
                            return false;
                        }
                    }
                } else {
                    $('[id^="addproduct_option_id_'+iProductNum+'"]').each(function() {
                        if ($(this).attr('required') == true && ITEM.isOptionSelected($(this).val()) === false) {
                            bCheckValidate = false;
                            $(this).focus();
                            alert(__('필수 옵션을 선택해주세요.'));
                            return false;
                        }
                        if (ITEM.isOptionSelected($(this).val()) === true) {
                            aItemCode.push([$(this).val(),iQuantity]);
                        }
                    });
                }
            } else {
                aItemCode.push([aData.item_code,iQuantity]);
            }
        });
        if (bCheckValidate === true) {
            for (var x = 0 ; x < aItemCode.length ; x++) {
                frm.append(getInputHidden('relation_item[]', aItemCode[x][1]+'||'+aItemCode[x][0]));
            }
        } else {
            bReturn = false;
        }

    }

    if (bReturn === false) return false;

    // 옵션 추가 구매 - 구상품 스킨에만 존재하는 내용
    if ($('.EC_MultipleOption').size() > 0) {
        // 원래 하던일은 여기서 하도록 두고(중복체크 같은 부분)
        var aMultipleOption = EC_MultipleOption.getMultipleOption();
        if (aMultipleOption == -1) return false;

        for ( var x = 0 ; x < aMultipleOption.length ; x++) {
            var iQuantity = EC_MultipleOption.getMultipleOption()[x].split('|')[7];
            var mItemCode = ITEM.getOldProductItemCode('.EC_MultipleOption:eq('+x+') [name^="option"]');
            var aItemCode = [];
            if (typeof mItemCode === 'string') {
                aItemCode.push(mItemCode);
            } else {
                aItemCode = mItemCode;
            }
            for (var i = 0 ; i < aItemCode.length ; i++) {
                var sItemCode = aItemCode[i];
                frm.append(getInputHidden('selected_item[]', iQuantity+'||'+sItemCode));
            }
        }

        // 사용자 지정 옵션
        if ($('.' + $.data(document, 'multiple_option_input_class')).size() > 0) {
            frm.append(getInputHidden('user_option_name_' + iProductNo, add_option_name.join(',@,')));

            var bReturn = true;
            var aAddOption = new Array();
            $('.' + $.data(document, 'multiple_option_input_class')).each(function()
            {
                if ($(this).val() == '') {
                    alert(__('추가 옵션을 입력해주세요.'));
                    $(this).focus();
                    bReturn = false;
                    return false;
                } else {
                    aAddOption.push($(this).val());
                }
            });
            frm.append(getInputHidden('user_option_' + iProductNo, aAddOption.join(',@,')));
        }
        if (bReturn === false) return false;
    }

    // 선택한상품만 주문하기
    if (sType == 1 || sType == 'naver_checkout') {
        var aItemParams = [];
        var aItemCode = ITEM.getItemCode();
        for (var i = 0, length = aItemCode.length; i < length; i++) {
            aItemParams.push("item_code[]=" + aItemCode[i]);
        }

        sOptionParam = sOptionParam + '&delvtype=' + delvtype + '&' + aItemParams.join("&");
        if (sType == 'naver_checkout') { //ECHOSTING-62146
            frm.append(getInputHidden('quantity_override_flag', 'T'));
        } else {
            selectbuy_action(sOptionParam, iProductNo);
            frm.append(getInputHidden('quantity_override_flag', sIsPrdOverride));
        }
    }

    if (typeof ACEWrap != 'undefined') {
        ACEWrap.addBasket();
    }

    // 뉴상품 옵션 선택 구매
    if (has_option == 'T') {
        if (isNewProductSkin() === true) {
            if ($('[name="quantity_opt[]"][id^="option_box"]').length > 0 && $('[name="quantity_opt[]"][id^="option_box"]').length == $('[name="item_code[]"]').length) {
                $('[name="quantity_opt[]"][id^="option_box"]').each(function(i) {
                    frm.prepend(getInputHidden('selected_item[]', $(this).val()+'||'+$('[name="item_code[]"]:eq('+i+')').val()));
                });
            }
        } else {
            // 뉴 상품 + 구스디 스킨
            var aItemCode = ITEM.getItemCode();
            for (var i = 0 ; i < aItemCode.length ; i++) {
                frm.prepend(getInputHidden('selected_item[]', getQuantity()+'||'+aItemCode[i]));
            }
        }
    } else {
        if (item_code === undefined) {
            var sItemCode = product_code+'000A';
        } else {
            var sItemCode = item_code;
        }
        if (sType != 'sms_restock') {
            frm.prepend(getInputHidden('selected_item[]', $(quantity_id).val()+'||'+sItemCode));
        }
    }

    // 파일첨부 옵션의 파일업로드가 없을 경우 바로 장바구니에 넣기
    if (FileOptionManager.existsFileUpload() === false) {
        action_basket(sType, 'detail', sAction, frm.serialize(), sBasketType);
    // 파일첨부 옵션의 파일업로드가 있으면
    } else{
        FileOptionManager.upload(function(mResult){
            // 파일업로드 실패
            if (mResult===false) return false;

            // 파일업로드 성공
            for (var sId in mResult) {
                frm.append(getInputHidden(sId, FileOptionManager.encode(mResult[sId])));
            }

    action_basket(sType, 'detail', sAction, frm.serialize(), sBasketType);
        });
    }
}


/*
 * 판매가 대체 문구 상품 체크
 */
function checkPriceType ()
{
    if (typeof product_price_content == 'undefined') {
        return true;
    }

    var sProductcontent = product_price_content.replace(/\s/g, '').toString();

    if (sProductcontent === '1') {
        return false;
    }

    return true;
}

/**
 * 품절 상품 체크
 */
function checkSoldout()
{
    // 품절 품목만 추가된 경우
    if ($('.option_box_id').length == 0 && $('.soldout_option_box_id').length > 0) {
        alert(__('품절된 상품은 구매가 불가능합니다.'));
        return false;
    }

    return true;
}


/**
 * 선택한상품만 주문하기
 *
 * @param string sOptionParam 옵션 파람값
 * @param int iProductNo 상품번호
 */
function selectbuy_action(sOptionParam, iProductNo)
{
    var sUrl = '/exec/front/order/basket/?command=select_prdcnt&product_no=' + iProductNo + '&option_type=' + (window['option_type'] || '') + sOptionParam;
    $.ajax(
    {
        url : sUrl,
        dataType : 'json',
        async : false,
        success : function(data)
        {
            if (data.result > 0 && !confirm(sprintf(__('동일상품이 장바구니에 %s개 있습니다.'), data.result) +'\n'+ __('함께 구매하시겠습니까?'))) {
                sIsPrdOverride = 'T';
            }
        }
    });
}

/**
 * 장바구니 담기(카테고리)
 *
 * @param int iProductNo 상품번호
 * @param int iCategoryNo 카테고리 번호
 * @param int iDisplayGroup display_group
 * @param string sBasketType 무이자 설정(A0000:일반, A0001:무이자)
 * @param string iQuantity 주문수량
 * @param string sItemCode 아이템코드
 * @param string sDelvType 배송타입
 */
function category_add_basket(iProductNo, iCategoryNo, iDisplayGroup, sBasketType, bList, iQuantity, sItemCode, sDelvType, sProductMaxType, sProductMax)
{
    if (iQuantity == undefined) {
        iQuantity = 1;
    }

    if (bList == true) {
        try {
            if ($.type(EC_ListAction) == 'object') {
                EC_ListAction.getOptionSelect(iProductNo, iCategoryNo, iDisplayGroup, sBasketType);
            }
        } catch (e) {
            alert(__('장바구니에 담을 수 없습니다.'));
            return false;
        }
    } else {
        var sAction = '/exec/front/order/basket/';
        var sData = 'command=add&quantity=' + iQuantity + '&product_no=' + iProductNo + '&main_cate_no=' + iCategoryNo + '&display_group='
                + iDisplayGroup + '&basket_type=' + sBasketType + '&delvtype=' + sDelvType + '&product_max_type=' + sProductMaxType + '&product_max=' + sProductMax;
        // 장바구니 위시리스트인지 여부
        if (typeof (basket_page_flag) != 'undefined' && basket_page_flag == 'T') {
            sData = sData + '&basket_page_flag=' + basket_page_flag;
        }

        // 뉴상품 옵션 선택 구매
        sData = sData + '&selected_item[]='+iQuantity+'||' + sItemCode + '000A';

        action_basket(2, 'category', sAction, sData, sBasketType);
    }
}

/**
 * 구매하기
 *
 * @param int iProductNo 상품번호
 * @param int iCategoryNo 카테고리 번호
 * @param int iDisplayGroup display_group
 * @param string sBasketType 무이자 설정(A0000:일반, A0001:무이자)
 * @param string iQuantity 주문수량
 */
function add_order(iProductNo, iCategoryNo, iDisplayGroup, sBasketType, iQuantity)
{
    if (iQuantity == undefined) {
        iQuantity = 1;
    }

    var sAction = '/exec/front/order/basket/';
    var sData = 'command=add&quantity=' + iQuantity + '&product_no=' + iProductNo + '&main_cate_no=' + iCategoryNo + '&display_group='
            + iDisplayGroup + '&basket_type=' + sBasketType;

    action_basket(1, 'wishlist', sAction, sData, sBasketType);
}

/**
 * 레이어 생성
 *
 * @param layerId
 * @param sHtml
 */
function create_layer(layerId, sHtml, bBuyLayer)
{
    if (bBuyLayer == true) {
        parent.$('body').append($('<div id="' + layerId + '"></div>'));
        parent.$('#' + layerId).html(sHtml);
        parent.$('#' + layerId).show();
    } else {
        $('<div id="' + layerId + '"></div>').appendTo('body');
        $('#' + layerId).html(sHtml);
        $('#' + layerId).show();
    }
    // set delvtype to basket
    try {
        $(".xans-product-basketadd").find("a[href='/order/basket.html']").attr("href", "/order/basket.html?delvtype=" + delvtype);
    } catch (e) {}
}

/**
 * 레이어 위치 조정
 *
 * @param layerId
 */
function position_layer(layerId)
{
    var obj = $('#' + layerId);

    var x = 0;
    var y = 0;
    try {
        var hWd = parseInt(document.body.clientWidth / 2 + $(window).scrollLeft());
        var hHt = parseInt(document.body.clientHeight / 2 + $(window).scrollTop() / 2);
        var hBW = parseInt(obj.width()) / 2;
        var hBH = parseInt(hHt - $(window).scrollTop());

        x = hWd - hBW;
        if (x < 0) x = 0;
        y = hHt - hBH;
        if (y < 0) y = 0;

    } catch (e) {}

    obj.css(
    {
        position : 'absolute',
        display : 'block',
        top : y + "px",
        left : x + "px"
    });

}


// 장바구니 담기 처리중인지 체크 - (ECHOSTING-85853, 2013.05.21 by wcchoi)
var bIsRunningAddBasket = false;

/**
 * 장바구니/구매 호출
 *
 * @param sType
 * @param sGroup
 * @param sAction
 * @param sParam
 * @param aBasketType
 */
function action_basket(sType, sGroup, sAction, sParam, sBasketType)
{
    // 장바구니 담기에 대해서만 처리
    if (sType == 2) {
        if (bIsRunningAddBasket) {
            alert(__('처리중입니다. 잠시만 기다려주세요.'));
            return;
        } else {
            bIsRunningAddBasket = true;
        }
    }

    if (sType == 'sms_restock') {
        action_sms_restock(sParam);
        return ;
    }

    $.post(sAction, sParam, function(data)
    {
        basket_result_action(sType, sGroup, data, sBasketType);

        bIsRunningAddBasket = false; // 장바구니 담기 처리 완료

    }, 'json');
}

/**
 * 리스트나 상세에서 장바구니 이후의 액션을 처리하고 싶을 경우 이변수를 파라미터로 지정해줌
 */
var sProductLink = null;
/**
 * 장바구니 결과 처리
 *
 * @param sType
 * @param sGroup
 * @param aData
 * @param aBasketType
 */
function basket_result_action(sType, sGroup, aData, sBasketType)
{
    var sHtml = '';
    var bOpener = false;
    var oOpener = findMainFrame();
    var sLocation = location;

    var bBuyLayer = false;

    if (aData == null) return;
    if (aData.result >= 0) {

        try {
            if (oOpener != null && typeof (oOpener) != 'undefined' && oOpener.location.hostname == self.location.hostname) {
                if (oOpener.location.pathname.indexOf('coupon_product_list') < 0 && oOpener.location.pathname.indexOf('admin') < 0) {
                    bOpener = true;
                }
            }
        } catch (e) {}

        try {
            if (mobileWeb == true && parent.$('#opt_layer_window').length > 0 && typeof(window.parent) == 'object') {
                parent.$('html, body').css('overflowY', 'auto');
                parent.$('#opt_layer_window').hide();
                sLocation = parent.location;
                bBuyLayer = true;
            }
        } catch (e) {}

        // 네이버 체크아웃
        if (sType == 'naver_checkout') {
            var sUrl = '/exec/front/order/navercheckout';

            // inflow param from naver common JS to Checkout Service
            try {
                if (typeof(wcs) == 'object') {
                    var inflowParam = wcs.getMileageInfo();
                    if (inflowParam != false) {
                        sUrl = sUrl + '?naver_inflow_param=' + inflowParam;
                    }
                }
            } catch (e) {}

            if (is_order_page == 'N' && bIsMobile == false) {
                window.open(sUrl);
                return false;
            } else {
                sLocation.href = sUrl;
                return false;
            }
        }

        // 배송유형
        var sDelvType = '';
        if (typeof(delvtype) != 'undefined') {
            if (typeof(delvtype) == 'object') {
                sDelvType = $(delvtype).val();
            } else {
                sDelvType = delvtype;
            }
        } else if (aData.sDelvType != null) {
            sDelvType = aData.sDelvType;
        }

        if (sType == 1) { // 바로구매하기
            if (aData.isLogin == 'T') { // 회원
                if (bOpener) {
                    oOpener.location.href = "/order/orderform.html?basket_type=" + sBasketType + "&delvtype=" + sDelvType;
                } else {
                    sLocation.href = "/order/orderform.html?basket_type=" + sBasketType + "&delvtype=" + sDelvType;
                }
            } else { // 비회원
                sUrl = '/member/login.html?noMember=1&returnUrl=' + encodeURIComponent('/order/orderform.html?basket_type=' + sBasketType + "&delvtype=" + sDelvType);
                if (bOpener) {
                    oOpener.location.href = sUrl;
                } else {
                    sLocation.href = sUrl;
                    // parent.location.href = sUrl;
                }
            }
        } else { // 장바구니담기
            if (sGroup == 'detail') {
                if (mobileWeb === true) {
                    if (typeof (basket_page_flag) != 'undefined' && basket_page_flag == 'T') {
                        sLocation.reload();
                        return;
                    }
                } else {
                    if (bOpener) {
                        oOpener.location.href = "/order/basket.html"  + "?delvtype=" + sDelvType;
                    }
                }

                var oSearch = /basket.html/g;
                if (typeof(aData.isDisplayBasket) != "undefined" && aData.isDisplayBasket == 'T' && oSearch.test(window.location.pathname) == false) {
                    layer_basket(sDelvType, bBuyLayer);
                } else {
                    sLocation.href = "/order/basket.html?"  + "&delvtype=" + sDelvType;
                }
            } else {
                // from으로 위시리스트에서 요청한건지 판단.
                var bIsFromWishlist = false;
                if (typeof(aData.from) != "undefined" && aData.from == "wishlist") {
                    bIsFromWishlist = true;
                }

                // 장바구니 위시리스트인지 여부
                if (typeof (basket_page_flag) != 'undefined' && basket_page_flag == 'T' || bIsFromWishlist == true) {
                    sLocation.reload();
                    return;
                }
                layer_basket(sDelvType, bBuyLayer);
            }
        }
    } else {
    	var msg = aData.alertMSG.replace('\\n', '\n');
    	
    	try {
    		msg = decodeURIComponent(decodeURIComponent(msg));
    	} catch (err) {
    		
    	}
    	
        alert(msg);
        
        if (aData.result == -111) {
            if (sProductLink !== null) {
                sLocation.href = '/product/detail.html?' + sProductLink;
            }
        }
        if (aData.result == -101) {
            sUrl = '/member/login.html?noMember=1&returnUrl=' + encodeURIComponent(location.href);
            if (bOpener) {
                oOpener.location.href = sUrl;
            } else {
                sLocation.href = sUrl;
            }
        }
    }
    if (bOpener === true && opener) {
        self.close();
    }
}

function layer_basket(sDelvType, bBuyLayer)
{
    $('.xans-product-basketoption').remove();
    $.get('/product/add_basket.html?delvtype='+sDelvType,'', function(sHtml)
    {
        create_layer('confirmLayer', sHtml, bBuyLayer);
    });
}

function layer_wishlist(bBuyLayer)
{
    $('.layerWish').remove();
    $.get('/product/layer_wish.html','' ,function(sHtml)
    {
        create_layer('confirmLayer', sHtml, bBuyLayer);
    });
}

function go_basket()
{
    var oOpener = findMainFrame();
    if (oOpener !== null && typeof (oOpener) != 'object') {
        location.href = '/order/basket.html';
    } else {
        oOpener.location.href = '/order/basket.html';
        if (opener !== null) {
            self.close();
        }
    }
}

function move_basket_page()
{
    var sLocation = location;
    try {
        if (mobileWeb == true && parent.$('#opt_layer_window').length > 0 && typeof(window.parent) == 'object') {
            parent.$('html, body').css('overflowY', 'auto');
            parent.$('#opt_layer_window').hide();
            sLocation = parent.location;
        }
    } catch (e) {}

    sLocation.href = '/order/basket.html';
}

/**
 * 이미지 확대보기 (상품상세 버튼)
 */
function go_detail()
{
    var sUrl = '/product/detail.html?product_no=' + iProductNo;
    var oOpener = findMainFrame();

    if (typeof(iCategoryNo) != 'undefined') {
        sUrl += '&cate_no='+iCategoryNo;
    }

    if (typeof(iDisplayGroup) != 'undefined') {
        sUrl += '&display_group='+iDisplayGroup;
    }

    if (oOpener !== null && typeof (oOpener) != 'object') {
        location.href = sUrl;
    } else {
        oOpener.location.href = sUrl;
        if (opener !== null) {
            self.close();
        }
    }
}

/**
 * 바로구매하기/장바구니담기 Action  - 로그인하지 않았을 경우
 */
function check_action_nologin()
{
    alert(__('회원만 구매 가능합니다. 비회원인 경우 회원가입 후 이용하여 주세요.'));

    var bOpener = false;
    var oOpener = findMainFrame();
    var sLocation = location;

    try {
        if (oOpener != null && typeof (oOpener) != 'undefined' && oOpener.location.hostname == self.location.hostname) {
            bOpener = true;
        }
    } catch (e) {}

    try {
        if (mobileWeb == true && parent.$('#opt_layer_window').length > 0 && typeof(window.parent) == 'object') {
            parent.$('html, body').css('overflowY', 'auto');
            parent.$('#opt_layer_window').hide();
            sLocation = parent.location;
        }
    } catch (e) {}

    sUrl = '/member/login.html?noMember=1&returnUrl=' + encodeURIComponent(location.href);
    if (bOpener) {
        oOpener.location.href = sUrl;
    } else {
        sLocation.href = sUrl;
    }
}

/**
 * 바로구매하기 Action  - 불량회원 구매제한
 */
function check_action_block(sMsg)
{
    if (sMsg == '' ) {
        sMsg = __('쇼핑몰 관리자가 구매 제한을 설정하여 구매하실 수 없습니다.');
    }
    alert(sMsg);
}

/**
 * 관심상품 등록 - 로그인하지 않았을 경우
 */
function add_wishlist_nologin(sUrl)
{

    alert(__('로그인 후 관심상품 등록을 해주세요.'));

    btn_action_move_url(sUrl);
}

/**
 * 바로구매하기 / 장바구니 담기 / 관심상품 등록 시 url 이동에 사용하는 메소드
 * @param sUrl 이동할 주소
 */
function btn_action_move_url(sUrl)
{
    var bOpener = false;
    var oOpener = findMainFrame();
    var sLocation = location;

    try {
        if (oOpener != null && typeof (oOpener) != 'undefined' && oOpener.location.hostname == self.location.hostname) {
            bOpener = true;
        }
    } catch (e) {}

    try {
        if (mobileWeb == true && parent.$('#opt_layer_window').length > 0 && typeof(window.parent) == 'object') {
            parent.$('html, body').css('overflowY', 'auto');
            parent.$('#opt_layer_window').hide();
            sLocation = parent.location;
        }
    } catch (e) {}

    sUrl += '?return_url=' + encodeURIComponent('http://' + location.hostname + location.pathname + location.search);
    if (bOpener === false) {
        sLocation.replace(sUrl);
    } else {
        opener.location.replace(sUrl);
    }
}

/**
 * return_url 없이 url 이동에 사용하는 메소드
 * @param sUrl 이동할 주소
 */
function btn_action_move_no_return_url(sUrl)
{
    var bOpener = false;
    try {
        if (opener != null && typeof (opener) != 'undefined' && opener.location.hostname == self.location.hostname) {
            bOpener = true;
        }
    } catch (e) {}

    if (bOpener === false) {
        location.replace(sUrl);
    } else {
        oOpener.location.replace(sUrl);
    }
}

/**
 * 관심상품 등록 - 파라미터 생성
 */
function add_wishlist(sMode)
{
    var sUrl = 'http://' + location.hostname;
    sUrl += '/exec/front/Product/Wishlist/';
    var param = location.search.substring(location.search.indexOf('?') + 1);
    sParam = param + '&command=add';
    sParam += '&referer=' + encodeURIComponent('http://' + location.hostname + location.pathname + location.search);

    add_wishlist_action(sUrl, sParam, sMode);
}

var bWishlistSave = false;
function add_wishlist_action(sAction, sParam, sMode)
{
    if (bWishlistSave === true) {
        alert('관심상품 등록중입니다.');
        return false;
    }
    var aItemCode = ITEM.getWishItemCode();
    if (aItemCode === false) {
        var sBuyBtnParent = $(sMode).parent().parent().attr('id');
        try {
            if (mobileWeb == true) {
                if (sBuyBtnParent != '' && sBuyBtnParent == 'fixedActionButton') {
                    $('select[id^="' + product_option_id + '"]:visible').each(function() {
                        var sSelectOptionId = $(this).attr('id');
                        var sParentVal = $(this).val();
                        $("#productOptionIframe").contents().find('#product_detail_option_layer #'+sSelectOptionId+'').val(sParentVal);
                    });
                    var iTop = parseInt(( $(window).height() - $("#productOptionIframe").height() ) / 2);
                    $("#opt_layer_iframe_parent").css({"top": iTop, "left": 0});
                    $('html, body').css({'overflow-y': 'hidden', width: '100%', height: '100%'});
                    $('#opt_layer_window').show();
                    return;
                }
            }
        } catch (e) {}
        alert(__('품목을 선택해 주세요.'));
        return false;
    }

    if (aItemCode !== null) {
        var sItemCode = '';
        var aTemp = [];
        for (var x in aItemCode) {
            try {
            var opt_id = aItemCode[x].substr(aItemCode[x].length-4, aItemCode[x].length);
            aTemp.push('selected_item[]='+opt_id);
            }catch(e) {}
        }
        sParam = sParam + '&' + aTemp.join('&');
    }
    sParam = sParam + '&product_no='+iProductNo;

    // 추가 옵션 체크
    if (checkAddOption() == false) return false;

    // 추가옵션
    var aAddOptionStr = new Array();
    var aAddOptionRow = new Array();
    if (add_option_name) {
        for (var i=0;i<add_option_name.length;i++) {
            if (add_option_name[i] != '') {
                aAddOptionRow.push(add_option_name[i] + '*' + $('#' + add_option_id + i).val());
            }
        }
    }
    aAddOptionStr.push(aAddOptionRow);

    sParam += '&add_option=' + encodeURIComponent(aAddOptionStr.join('|'));

    // 파일첨부 옵션 유효성 체크
    if (FileOptionManager.checkValidation() === false) return;

    bWishlistSave = true;

    // 파일첨부 옵션의 파일업로드가 없을 경우 바로 관심상품 넣기
    if (FileOptionManager.existsFileUpload() === false) {
        add_wishlist_request(sParam, sMode);
    // 파일첨부 옵션의 파일업로드가 있으면
    } else{
        FileOptionManager.upload(function(mResult){
            // 파일업로드 실패
            if (mResult===false) {
                bWishlistSave = false;
                return false;
            }

            // 파일업로드 성공
            for (var sId in mResult) {
                sParam += '&'+sId+'='+FileOptionManager.encode(mResult[sId]);
            }

            add_wishlist_request(sParam, sMode);
        });
    }
}

function add_wishlist_request(sParam, sMode)
{
    var sUrl = '/exec/front/Product/Wishlist/';

    $.post(
        sUrl,
        sParam,
        function(data) {
            if (sMode != 'back') {
                add_wishlist_result(data);
            }
            bWishlistSave = false;
        },
        'json');
}

function add_wishlist_result(aData)
{
    var bBuyLayer = false;
    var agent = navigator.userAgent.toLowerCase();

    if (aData == null) return;
    if (aData.result == 'SUCCESS') {

        if (agent.indexOf('iphone') != -1 || agent.indexOf('android') != -1) {
            try {
                if (parent.$('#opt_layer_window').length > 0 && typeof(window.parent) == 'object') {
                    parent.$('html, body').css('overflowY', 'auto');
                    parent.$('#opt_layer_window').hide();
                    bBuyLayer = true;
                }
            } catch (e) {}
        }
        if (aData.confirm == 'T') {
            layer_wishlist(bBuyLayer);
            return;
        }
        alert(__('관심상품으로 등록되었습니다.'))
    } else if (aData.result == 'ERROR') {
        alert(__('실패하였습니다.'));
    } else if (aData.result == 'NOT_LOGIN') {
        alert(__('로그인 후 등록해주세요.'));
    } else if (aData.result == 'INVALID_REQUEST') {
        alert(__('파라미터가 잘못되었습니다.'));
    } else if (aData.result == 'NO_TARGET') {
        alert(__('이미 등록되어 있습니다.'));
    }
}

/**
* 추가된 함수
* 해당 value값을 받아 replace 처리
* @param string sValue value
* @return string replace된 sValue
*/
function replaceCheck(sName,sValue)
{
   //ECHOSTING-9736
   if (typeof(sValue) == "string" && sName == "option_add[]") {
        sValue = sValue.replace(/'/g,  '\\&#039;');
   }
   // 타입이 string 일때 연산시 단일 따움표 " ' " 문자를 " ` " 액센트 문자로 치환하여 깨짐을 방지
   return sValue;
}


/**
 * name, value값을 받아 input hidden 태그 반환
 *
 * @param string sName name
 * @param string sValue value
 * @return string input hidden 태그
 */
function getInputHidden(sName, sValue)
{

    sValue = replaceCheck(sName,sValue); // 추가된 부분 (replaceCheck 함수 호출)
    return "<input type='hidden' name='" + sName + "' value='" + sValue + "' />";
}


/**
 * 필수옵션이 선택되었는지 체크
 *
 * @return bool 필수옵션이 선택되었다면 true, 아니면 false 반환
 */
function checkOptionRequired(sReq)
{
    var bResult = true;
    // 옵션이 없다면 필수값 체크는 필요없음.
    if (has_option === 'F') {
        return bResult;
    }
    var sTargetOptionId = product_option_id
    if (sReq != null) {
        sTargetOptionId = sReq;
    }
    option_msg = __('필수 옵션을 선택해주세요.');

    if (option_type === 'F') {
        // 단독구성
        var iOptionCount = $('select[id^="' + sTargetOptionId + '"][required="true"]:visible').length;
        if (iOptionCount > 0) {
            if (ITEM.getItemCode() === false) {
               // alert(option_msg);
                bResult = false;
                return false;
            }

            var aRequiredOption = new Object();
            var aItemCodeList = ITEM.getItemCode();
            // 필수 옵션정보와 선택한 옵션 정보 비교
            for (var i=0;i<aItemCodeList.length;i++) {
                var sTargetItemCode =  aItemCodeList[i];
                $('select[id^="' + sTargetOptionId + '"][required="true"]:visible option').each(function() {
                    if ($(this).val() == sTargetItemCode) {
                        var sProductOptionId = $(this).parent().attr('id');
                        aRequiredOption[sProductOptionId] = true;
                    }
                });

            }
            // 필수옵션별 개수보다 선택한 옵션개수가 적을경우 리턴
            if (iOptionCount > Object.size(aRequiredOption)) {
                //alert(option_msg);
                bResult = false;
                return bResult;
            }
        }
    } else {
        if (ITEM.getItemCode() === false) {
            //alert(option_msg);
            bResult = false;
            return false;
        }
        // 조합구성
        if (item_listing_type == 'S') {
            // 분리선택형
            var eTarget = $.parseJSON(option_value_mapper);
            for (var x in eTarget) {
                if (ITEM.getItemCode().indexOf(eTarget[x]) > -1) {
                    bResult = true;
                    break;
                } else {
                    bResult = false;
                }
            }
            if (bResult === false) {
                //alert(option_msg);
                bResult = false;
                return false;
            }
        } else {
            $('select[id^="' + product_option_id + '"][required="true"]:visible').each(function() {
                var eTarget = $(this).children().children();
                bResult = false;
                eTarget.each(function() {
                    if (ITEM.getItemCode().indexOf($(this).val()) > -1) {
                        bResult = true;
                        return false;
                    }
                });
                if (bResult === false) {
                    //alert(option_msg);
                    return false;
                }
            });
        }
    }

    return bResult;
}

/**
 * 추가옵션 입력값 체크
 *
 * @return bool 모든 추가옵션에 값이 입력되었다면 true, 아니면 false
 */
function checkAddOption(sReq)
{
    if (sReq != null) {
        add_option_id = sReq;
    }
    var bResult = true;
    $('[id^="' + add_option_id + '"]:visible').each(function()
    {
        if ($(this).attr('require') !== false && $(this).attr('require') == 'T') {
            if ($(this).val().replace(/^[\s]+|[\s]+$/g, '').length == 0) {
                alert(__('추가 옵션을 입력해주세요.'));
                $(this).focus();
                bResult = false;
                return false;
            }
        }
    });

    return bResult;
}

/**
 * 수량 가져오기
 *
 * @return mixed 정상적인 수량이면 수량(integer) 반환, 아니면 false 반환
 */
function getQuantity()
{
    // 뉴상품인데 디자인이 수정안됐을 수 있다.
    if (isNewProductSkin() === false) {
        iQuantity = parseInt($(quantity_id).val(),10);
    } else {
        if (has_option == 'T') {
            var iQuantity = 0;
            $('[name="quantity_opt[]"]').each(function() {
                iQuantity = iQuantity + parseInt($(this).val(),10);
            });
        } else {
            var iQuantity = parseInt($(quantity_id).val().replace(/^[\s]+|[\s]+$/g,'').match(/[\d\-]+/),10);
            if (isNaN(iQuantity) === true || $(quantity_id).val() == '' || $(quantity_id).val().indexOf('.') > 0) {
                return false;
            }
        }

    }

    return iQuantity;
}

/**
 * 수량 체크
 *
 * @return mixed 올바른 수량이면 수량을, 아니면 false
 */
function checkQuantity()
{
    // 수량 가져오기
    var iQuantity = getQuantity();

    if (isNewProductSkin() === false) {
        if (iQuantity === false) return false;

        if (iQuantity < product_min) {
            alert(sprintf(__('최소 주문수량은 %s 입니다.'), product_min));
            $(quantity_id).focus();
            return false;
        }
        if (iQuantity > product_max && product_max > 0) {
            alert(sprintf(__('최대 주문수량은 %s 입니다.'), product_max));
            $(quantity_id).focus();
            return false;
        }
    } else {
        var bResult = true;
        $('[name="quantity_opt[]"]').each(function() {
            iQuantity = parseInt($(this).val());
            if (iQuantity < product_min) {
                alert(sprintf(__('상품별 최소 주문수량은 %s 입니다.'), product_min));
                $(quantity_id).focus();
                bResult = false;
                return false;
            }
            if (iQuantity > product_max && product_max > 0) {
                alert(sprintf(__('상품별 최대 주문수량은 %s 입니다.'), product_max));
                $(quantity_id).focus();
                bResult = false;
                return false;
            }
        });

        if (bResult == false) {
            return bResult;
        }
    }


    return iQuantity;
}

function commify(n)
{
    var reg = /(^[+-]?\d+)(\d{3})/; // 정규식
    n += ''; // 숫자를 문자열로 변환
    while (reg.test(n)) {
        n = n.replace(reg, '$1' + ',' + '$2');
    }
    return n;
}

var isClose = 'T';
function optionPreview(obj, sAction, sProductNo, closeType)
{
    var sPreviewId = 'btn_preview_';
    var sUrl = '/product/option_preview.html';
    var layerId = $('#opt_preview_' + sAction + '_' + sProductNo);

    // layerId = action명 + product_no 로 이루어짐 (한 페이지에 다른 종류의 상품리스트가 노출될때 구분 필요)
    if ($(layerId).length > 0) {
        $(layerId).show();
    } else if (sProductNo != '') {
        $.post(sUrl, 'product_no=' + sProductNo + '&action=' + sAction, function(result)
        {
            $(obj).after(result);
        });
    }
}

function closeOptionPreview(sAction, sProductNo)
{
    isClose = 'T';
    setTimeout("checkOptionPreview('" + sAction + "','" + sProductNo + "')", 150);
}

function checkOptionPreview(sAction, sProductNo)
{
    var layerId = $('#opt_preview_' + sAction + '_' + sProductNo);
    if (isClose == 'T') $(layerId).hide();
}

function openOptionPreview(sAction, sProductNo)
{
    isClose = 'F';
    var layerId = $('#opt_preview_' + sAction + '_' + sProductNo);
    $(layerId).show();

    $(layerId).mousemouseenter(function()
    {
        $(layerId).show();
    }).mouseleave(function()
    {
        $(layerId).hide();
    });

}

function changeOptionId()
{
    if (typeof product_price == 'undefined') {
        var product_price = 0;
    }

    var price = product_price;

    $('select[id^="' + product_option_id + '"]').each(function()
    {
        aOptInfo = $(this).val().split('|');
        if (typeof (aOptInfo[1]) != 'undefined') {
            price += parseInt(aOptInfo[1]);
        }
    });

    $('#product_price').val(price);
    $('#span_product_price').html(commify(price) + '원');
}

/**
 * 네이버체크아웃 주문하기
 */
function nv_add_basket_1_product()
{
    bIsMobile = false;

    if (_isProc == 'F') {
        alert(__("체크아웃 입점상태를 확인하십시오."));
        return;
    }

    if (typeof(set_option_data) != 'undefined') {
        alert(__('세트상품은 체크아웃 구매가 불가하오니, 쇼핑몰 바로구매를 이용해주세요. 감사합니다.'));
        return;
    }

    product_submit('naver_checkout', '/exec/front/order/basket/')
}

/**
 * 네이버체크아웃 찜하기
 */
function nv_add_basket_2_product()
{
    if (_isProc == 'F') {
        alert(__("체크아웃 입점상태를 확인하십시오."));
        return;
    }

    window.open("/exec/front/order/navercheckoutwish?product_no=" + iProductNo, "navercheckout_basket",
            'scrollbars=yes,status=no,toolbar=no,width=450,height=300');
}

/**
 * 네이버체크아웃 주문하기
 */
function nv_add_basket_1_m_product()
{
    bIsMobile = true;

    if (_isProc == 'F') {
        alert(__("체크아웃 입점상태를 확인하십시오."));
        return;
    }

    if (typeof(set_option_data) != 'undefined') {
        alert(__('세트상품은 체크아웃 구매가 불가하오니, 쇼핑몰 바로구매를 이용해주세요. 감사합니다.'));
        return;
    }
    
    product_submit('naver_checkout', '/exec/front/order/basket/')
}

/**
 * 네이버체크아웃 찜하기
 */
function nv_add_basket_2_m_product()
{
    if (_isProc == 'F') {
        alert(__("체크아웃 입점상태를 확인하십시오."));
        return;
    }

    window.location.href = "/exec/front/order/navercheckoutwish?product_no=" + iProductNo;
    //window.open("/exec/front/order/navercheckoutwish?product_no=" + iProductNo, "navercheckout_basket", 'scrollbars=yes,status=no,toolbar=no,width=450,height=300');
}

/**
 * 옵션 추가 구매시에 같은 옵션을 검사하는 함수
 *
 * @returns Boolean
 */
function duplicateOptionCheck()
{
    var bOptionDuplicate = getOptionDuplicate();
    var bAddOptionDuplicate = getAddOptionDuplicate();

    if (bOptionDuplicate !== true && bAddOptionDuplicate !== true) {
        alert(__('동일한 옵션의 상품이 있습니다.'));
        return false;
    }

    return true;
}

/**
 * 텍스트 인풋 옵션 중복 체크
 *
 * @returns {Boolean}
 */
function getAddOptionDuplicate()
{
    var aOptionRow = new Array();
    var iOptionLength = 0;
    var aOptionValue = new Array();
    var bReturn = true;
    // 기본 옵션
    $('[id^="' + add_option_id + '"]:visible').each(function()
    {
        aOptionRow.push($(this).val());
    });
    aOptionValue.push(aOptionRow.join(',@,'));
    $('.EC_MultipleOption').each(function()
    {
        aOptionRow = new Array();
        $($(this).find('.' + $.data(document, 'multiple_option_input_class'))).each(function()
        {
            aOptionRow.push($(this).val());
        });
        var sOptionRow = aOptionRow.join(',@,');
        if ($.inArray(sOptionRow, aOptionValue) > -1) {
            bReturn = false;
            return false;
        } else {
            aOptionValue.push(sOptionRow);
        }
    });
    return bReturn;
}
/**
 * 일반 셀렉트박스형 옵션 체크 함수
 *
 * @returns {Boolean}
 */
function getOptionDuplicate()
{
    // 선택여부는 이미 선택이 되어 있음
    var aOptionId = new Array();
    var aOptionValue = new Array();
    var aOptionRow = new Array();
    var iOptionLength = 0;
    // 기본 옵션
    $('select[id^="' + product_option_id + '"]:visible').each(function(i)
    {
        aOptionValue.push($(this).val());
        iOptionLength++;
    });
    // 추가 구매
    $('.' + $.data(document, 'multiple_option_select_class')).each(function(i)
    {
        aOptionValue.push($(this).val());
    });

    var aOptionRow = new Array();
    for ( var x in aOptionValue) {
        var sOptionValue = aOptionValue[x];
        aOptionRow.push(sOptionValue);
        if (x % iOptionLength == iOptionLength - 1) {
            var sOptionId = aOptionRow.join('-');
            if ($.inArray(sOptionId, aOptionId) > -1) { return false; }
            aOptionId.push(sOptionId);
            aOptionRow = new Array();
        }
    }

    return true;
}

function getOptionValue(sReq)
{
    var sReturn = sReq;
    if (sReq.indexOf('|') > -1) {
        var aReturn = sReq.split('|');
        sReturn = aReturn[0];
    }
    return sReturn;
}

function action_sms_restock(sParam)
{
    window.open('#none', 'sms_restock' ,'width=459, height=490');
    $('#frm_image_zoom').attr('target', 'sms_restock');
    $('#frm_image_zoom').attr('action', '/product/sms_restock.html');
    $('#frm_image_zoom').submit();
}

// 최대 할인쿠폰 다운받기 팝업
function popupDcCoupon(product_no, coupon_no, cate_no, opener_url, location)
{
    var Url = '/';
    if ( location === 'Front' || typeof location === 'undefined') {
        Url += 'product/'
    }
    Url += '/coupon_popup.html';
    window.open(Url + "?product_no=" + product_no + "&coupon_no=" + coupon_no + "&cate_no=" + cate_no + "&opener_url=" + opener_url, "popupDcCoupon", "toolbar=no,scrollbars=no,resizable=yes,width=800,height=640,left=0,top=0");
}

/**
 * 관련상품 열고 닫기
 */
function ShowAndHideRelation()
{
    try {
        var sRelation = $('ul.mSetPrd').parent();
        var sRelationDisp = sRelation.css('display');
        if (sRelationDisp === 'none') {
            $('#setTitle').removeClass('show');
            sRelation.show();
        } else {
            $('#setTitle').addClass('show');
            sRelation.hide();
        }
    } catch(e) { }
 }

var ITEM = {
    getItemCode : function()
    {
        var chk_has_opt = '';
        try {
            chk_has_opt = has_option;
        }catch(e) {chk_has_opt = 'T';}

        if (chk_has_opt == 'F') {
            return [item_code];
        } else {
            // 필수값 체크
            var bRequire = false;
            $('[id^="product_option_id"]').each(function() {
                if (Boolean($(this).attr('required')) === true || $(this).attr('required') == 'required') {
                    bRequire = true;
                    return false;
                }
            });

            var aItemCode = new Array();
            if (bRequire === true) {
                if ($('#totalProducts').size() === 0) {
                    sItemCode = this.getOldProductItemCode();
                    if (sItemCode !== false) {
                        if (typeof(sItemCode) === 'string') {
                            aItemCode.push(sItemCode);
                        } else {
                            aItemCode = sItemCode;
                        }
                    } else {
                        // 옵션이 선택되지 않음
                        return false;
                    }
                } else {
                    if ($('.option_box_id').length == 0) {
                        // 옵션이 선택되지 않음
                        return false;
                    }
                    $('.option_box_id').each(function() {
                        aItemCode.push($(this).val());
                    });
                }
            }

            return aItemCode;
        }
    },
    getWishItemCode : function()
    {
        var chk_has_opt = '';
        try {
            chk_has_opt = has_option;
        }catch(e) {chk_has_opt = 'T';}

        if (chk_has_opt == 'F') {
            return [item_code];
        } else {
            // 필수값 체크
            var bRequire = false;
            $('[id^="product_option_id"]').each(function() {
                if (Boolean($(this).attr('required')) === true || $(this).attr('required') == 'required') {
                    bRequire = true;
                    return false;
                }
            });

            var aItemCode = new Array();
            if (bRequire === true) {
                if ($('#totalProducts').size() === 0) {
                    sItemCode = this.getOldProductItemCode();
                    if (sItemCode !== false) {
                        if (typeof(sItemCode) === 'string') {
                            aItemCode.push(sItemCode);
                        } else {
                            aItemCode = sItemCode;
                        }
                    } else {
                        // 옵션이 선택되지 않음
                        return false;
                    }
                } else {
                    if ($('.soldout_option_box_id,.option_box_id').length == 0) {
                        // 옵션이 선택되지 않음
                        return false;
                    }
                    $('.soldout_option_box_id,.option_box_id').each(function() {
                        aItemCode.push($(this).val());
                    });
                }
            }

            return aItemCode;
        }
    },
    getOldProductItemCode : function(sSelector)
    {
        if (sSelector === undefined) {
            sSelector = '[id^="product_option_id"]';
        }
        var sItemCode = null;
        // 뉴상품 옵션 선택 구매
        if (has_option === 'F') {
            // 화면에 있음
            sItemCode = item_code;
        } else {
            if (item_listing_type == 'S') {
                var aOptionValue = new Array();
                $(sSelector).each(function() {
                    if (ITEM.isOptionSelected($(this).val()) === true) {
                        aOptionValue.push($(this).val());
                    }
                });

                if (option_type === 'T') {
                    var aCodeMap = $.parseJSON(option_value_mapper);
                    sItemCode = aCodeMap[aOptionValue.join('/')];
                } else {
                    sItemCode = aOptionValue;
                }
            } else {
                sItemCode = $(sSelector).val();
            }
        }

        if (sItemCode === undefined) {
            return false;
        }

        return sItemCode;
    },
    isOptionSelected : function(aOption)
    {
        var sOptionValue = null;
        if (typeof aOption === 'string') {
            sOptionValue = aOption;
        } else {
            sOptionValue = aOption.join('-|');
        }
        sOptionValue = '-|'+sOptionValue+'-|';
        return !(/-\|\*{1,2}-\|/g).test(sOptionValue);
    }
};
/**
 * ie8 일때 indxeOf 동작안함
 */
if (!Array.prototype.indexOf) {
    Array.prototype.indexOf = function(elt /*, from*/) {
        var len  = this.length >>> 0;
        var from = Number(arguments[1]) || 0;

        from = (from < 0) ? Math.ceil(from) : Math.floor(from);
        if (from < 0) {
            from += len;
        }

        for (from; from < len; from++) {
            if (from in this && this[from] === elt) {
                return from;
            }
        }
        return -1;
    };
}

if (!Object.size) {
    Object.size = function(obj) {
        var size = 0, key;
        for (key in obj) {
            if (obj.hasOwnProperty(key)) size++;
        }
        return size;
    };
}

/**
 * 게시판 관련 JS
 */

$(document).ready(function(){
    BOARD.event_bind();
    // 게시판메뉴 이미지 롤오버
    BOARD.board_img_over();
});


var BOARD = {
    /**
     * 이벤트 바인딩을 합니다.
     */
    event_bind : function ()
    {
        $(".eReplyStatusChangeBtn, #eReplyStatusChangeBtn").click(function (event) {
            event.preventDefault(); // 기존 a 태그 href 동작 해제
            BOARD.setReplyStatus();
        });
    },

    /**
     * ECHOSTING-70918
     * 처리상태에 대한 값을 UPDATE 합니다.
     */
    setReplyStatus : function()
    {
        $.ajax({
            type : 'post',
            dataType : 'json',
            url : getMultiShopUrl("/exec/admin/board/ReplyStatusAjax"),
            data : {
                mode : 'UPDATE',
                board_no : $("#board_no").val(),
                no : $("#no").val(),
                reply_status : $("#eReplyStatusChangeTarget").val()
            },
            success : function(aOutputData) {
                if (aOutputData['result'] == 'T') {
                    BOARD.setSuccessResult(aOutputData);
                } else {
                    alert("잘못된 접근입니다.");
                }
            },
            error : function() {
                alert("네트워크 상태가 불안정 합니다. 잠시 후 다시 시도해주세요");
            }
        });
    },

    /**
     * ECHOSTING-70918
     * 성공 결과에 대한 피드백을 합니다.
     */
    setSuccessResult : function (aResult)
    {
        switch (aResult['status']) {
            case "N" :
                alert("처리중 상태가 해제되었습니다.");
                break;
            default :
                alert("처리중으로 변경되었습니다.");
                break;
        }

        // 새로운 상태로 갱신
        $("#eReplyStatusText, .eReplyStatusText").html(aResult['new_status_icon']); // 상태
        $("#eReplyStatusText, .eReplyStatusText").attr("class", aResult['new_status_style']); // 상태 스타일
        $("#eReplyStatusChangeBtn, .eReplyStatusChangeBtn").html(aResult['new_status_btn_icon']); // 버튼 텍스트
        $("#eReplyStatusChangeTarget").val(aResult['new_target_status']); // 변경될 값
    },

    /**
     * 공지글 보기
     */
    show_notice : function()
    {
        var bFlag = $('input:[type="checkbox"][name="showNotice"]')[0].checked;
        if (bFlag === true) {
            $('.mNoticeFlag').each(function(index, node){
                $(node).show();
            });
        } else {
            $('.mNoticeFlag').each(function(index, node){
                $(node).hide();
            });
        }
    },

    /**
     * 게시물 복사
     * @param link
     * @param board_no
     * @param listName
     */
    article_copy : function(link, board_no, listName, aNo, return_url)
    {
        if (!aNo) {
            var aNo = this.check_nos( listName );

            if ( aNo.length <= 0 ) {
                alert(__('복사할 글을 선택하여 주세요.'));
                return;
            }
        }

        var dest_board_no = $("#boardGroup option:selected").val();

        if ( confirm(__("복사하시겠습니까?"))) {
            location.href = link  + "?board_no=" + board_no + "&board_target=" + aNo + "&dest_board_no=" + dest_board_no + "&return_url=" + return_url;
        }
    },

    /**
     * 게시물 이동
     * @param link
     * @param board_no
     * @param listName
     */
    article_move : function(link, board_no, listName, aNo, return_url)
    {
        if (!aNo) {
            var aNo = this.check_nos( listName );

            if ( aNo.length <= 0 ) {
                alert(__('이동할 글을 선택하여 주세요.'));
                return;
            }
        }

        var dest_board_no = $("#boardGroup option:selected").val();

        if (board_no == dest_board_no) {
            alert(__('동일한 게시판으로 게시물을 이동 할 수 없습니다.'));
            return false;
        }

        location.href = link + "?board_no=" + board_no + "&board_target=" + aNo + "&dest_board_no=" + dest_board_no + "&return_url=" + return_url;
    },

    /**
     * 카테고리 이동
     * @param link
     * @param board_no
     * @param listName
     */
    category_move : function(link, board_no, listName, return_url)
    {
        var aNo = this.check_nos( listName );

        if ( aNo.length <= 0 ) {
            alert(__('이동할 글을 선택하여 주세요.'));
            return;
        }

        var dest_category = $("#board_category_move option:selected").val();

        location.href = link + "?board_no=" + board_no + "&board_target=" + aNo + "&dest_category=" + dest_category + "&return_url=" + return_url;
    },

    is_spam : function(mode, bbs_no, bbs_type, listName, return_url)
    {
        if (bbs_no == ''){
            var bbs_no = this.check_nos(listName);

            if (bbs_no.length <= 0) {
                alert(__('댓글을 선택하여 주세요.'));
                return;
            }
        }

        if (mode == 'move') {
            return_url = (return_url)? '&return_url='+return_url : '';
            this.OpenWindow('/admin/php/b/board_spam_regist.php?mode='+mode+'&bbs_type='+bbs_type+'&bbs_no='+bbs_no+return_url, 'spamRegist', '450', '350','no');
        } else {
            this.OpenWindow('/admin/php/b/board_spam_restore.php?mode='+mode+'&bbs_type='+bbs_type+'&bbs_no='+bbs_no, 'spamRestore', '470', '350','yes');
        }
    },

    /**
     * 관리자 설정에 따른 제목, 컨텐츠 고정하기
     */
    fix_subject_content : function(sAgent)
    {
        $("select[name='subject']").change(function(){
            if ($("#fix_content_" + this.selectedIndex).val() != undefined) {
                var content = $("#fix_content_" + this.selectedIndex).val() + $("#fix_add_content").val();
            } else {
                if ($("#fix_add_content").val() != undefined) {
                    var content = $("#fix_add_content").val();
                } else {
                    var content = '';
                }
            }

            // 답변, 수정 모드에서는 컨텐츠 영역이 수정되지 않도록 한다.
            if ($('#no').length == 0 && content != '') {
                if (sAgent === true) {
                    $("#content").val(content);
                } else {
                    $("#content_IFRAME").get(0).contentWindow.document.body.innerHTML =  content;
                }
            }

        });
    },

    /**
     * 항상 비밀글 사용하기
     */
    disable_secret : function()
    {
        $("#secure0").attr({
            "checked": "",
            "disabled" : "disabled"
        });

        $("#secure1").attr("checked", "checked");
    },

    /**
     * 게시판메뉴 이미지 롤오버
     */
    board_img_over : function()
    {
        $(".board_img_over").hover(function(){
            var tmpImgOver = $(this).attr('eImgOver');
            var tmpSrc   = $(this).attr('src');
            $(this).attr('eImgOver', tmpSrc)
            $(this).attr('src',tmpImgOver)
        }, function(){
            var tmpImgOver = $(this).attr('eImgOver');
            var tmpSrc   = $(this).attr('src');
            $(this).attr('eImgOver', tmpSrc)
            $(this).attr('src',tmpImgOver)
        })
    },

    /**
     * 폼 submit
     * @param string sFormName 폼 name
     */
    form_submit : function(sFormName)
    {
        // 서밋 위치를 BOARD_WRITE로 변경
        $('#'+sFormName).submit();
    },

    /**
     * 리스트 정렬 submit
     * @param string sFormName 폼 name
     */
    change_sort : function(sFormName, obj)
    {
        $('#'+sFormName+' [id="board_sort"]').val(obj.value);

        $('#'+sFormName).submit();
    },

    /**
     * 답변여부 선택 select
     * @param element obj select element
     */
    change_reply_sort: function(obj)
    {
        var sQueryString = document.location.search.substr(1);
        var aParams = {};

        $.each(sQueryString.split('&'), function(i, str){
            var sKey = str.substr(0, str.indexOf('='));
            if ('page' !== sKey) {
                var sVal = str.substr(str.indexOf('=')+1);

                aParams[sKey] = sVal;
            }
        });

        aParams['is_reply_sort'] = $(obj).val();
        var aUrls = [];
        $.each(aParams, function(sKey, sVal){
            if ('' !== $.trim(sVal)) {
                aUrls.push(sKey+'='+$.trim(sVal));
            }
        });

        document.location.href = document.location.pathname+'?'+aUrls.join('&');
    },

    /**
     * 상품후기 리스트 펼침
     * @param int iNo 글번호
     * @param int iBoardNo 게시판번호
     * @param object obj
     */
    viewTarget : function(iNo, iBoardNo, obj) {
        var self = this;
        var elmTarget = $(obj);

        if (elmTarget.parents('tr').next().attr('id') == 'content_view') {
            elmTarget.find('img').attr('src', function() {
                return this.src.replace('_fold','_unfold');
            });

            self.changeFoldImg(obj);

            $('#content_view').remove();
            return;
        } else {
            $('#content_view').remove();

            var aData = {
                    'no' : iNo,
                    'board_no' : iBoardNo
            }
            $.get('/exec/front/board/Get/'+iBoardNo, aData, function(req) {
                if (req.failed == false) {
                    var rData = req.data;
                    elmTarget.find('img').attr('src', function() {
                        return this.src.replace('_unfold','_fold');
                    });

                    self.changeFoldImg(obj);

                    var aHtml = [];
                    aHtml.push('<tr id="content_view">');
                    aHtml.push('    <td colspan='+elmTarget.parents('tr').find('td').length+'>');
                    if (rData.content_image != null) aHtml.push(''+rData.content_image+'<br />');
                    aHtml.push('        '+rData.content);
                    aHtml.push('    </td>');
                    aHtml.push('</tr>');

                    elmTarget.parents('tr').after(aHtml.join(''));
                } else {
                    BOARD.setBulletinSpreadFail(req.data);
                };
            }, 'json');
        }
    },
    setBulletinSpreadFail : function (sFailType)
    {
        switch(sFailType) {
            case 'S' :
                alert(__('비밀글은 미리보기가 불가 합니다.'));
                break;
            case 'M' :
                alert(__('회원에게만 읽기 권한이 있습니다'));
                break;
            case 'A' :
                alert(__('관리자에게만 읽기 권한이 있습니다'));
                break;
        }
    },

    /**
     * 폴딩 이미지 변환
     * 현재 클릭한 이미지 이외에는 모두 '닫힘' 이미지로 만들기 위함
     *
     * @param HtmlElement obj
     */
    changeFoldImg : function(obj) {
        var elmEventList = $('[onclick*="BOARD.viewTarget"]');

        elmEventList.each(function(){
            if (obj !== this) {
                $(this).find('img').attr('src', function() {
                    return this.src.replace('_fold','_unfold');
                });
            }
        });
    },

    /**
     * 관리자 댓글보기 (관리자전용)
     */
    pre_comment : function()
    {
        this.OpenWindow('/admin/php/b/board_admin_pre_comment_l.php?mode=popup', 'pre_comment', '800', '500','auto');
    },

    /**
     * 첨부이미지 미리보기
     * @param sId
     * @param sFlag
     */
    afile_display : function (sId, sFlag)
    {
        if (sFlag == 1) {
            $('#'+sId).css('display', '');
            $('#'+sId).css('position', 'absolute');
        } else {
            $('#'+sId).css('display', 'none');
        }
    },

    /**
     * 게시판 목록 선택 갯수 체크
     * @param listName
     * @returns {Array}
     */
    check_nos : function(listName)
    {
        var aNo = [];

        $("." + listName).each(function(){
            if ( this.checked ) {
                aNo.push( this.value );
            }
        });

        return aNo;
    },

    /**
     * window.open
     * @param StrPage
     * @param StrName
     * @param w
     * @param h
     * @param scrolls
     */
    OpenWindow : function(StrPage, StrName, w, h,scrolls)
    {
        var win = null;
        var winl = (screen.width-w)/2;
        var wint = (screen.height-h)/3;
        settings = 'height='+h+',';
        settings += 'width='+w+',';
        settings += 'top='+wint+',';
        settings += 'left='+winl+',';
        settings += 'scrollbars='+scrolls+',';
        settings += 'resizable=no,';
        settings += 'status=no';
        win = window.open(StrPage, StrName, settings);
        if (parseInt(navigator.appVersion)>=4) {
            win.window.focus();
        }
    },

    END : function() {}
};

/**
 * 접속통계 & 실시간접속통계
 */
$(document).ready(function(){
    /*
     * QueryString에서 디버그 표시 제거
     */
    function stripDebug(sLocation)
    {
        if (typeof sLocation != 'string') return '';

        sLocation = sLocation.replace(/^d[=]*[\d]*[&]*$/, '');
        sLocation = sLocation.replace(/^d[=]*[\d]*[&]/, '');
        sLocation = sLocation.replace(/(&d&|&d[=]*[\d]*[&]*)/, '&');

        return sLocation;
    }
    
    // realconn & Ad aggregation
    var _aPrs = new Array();
    _sUserQs = window.location.search.substring(1);
    _sUserQs = stripDebug(_sUserQs);
    _aPrs[0] = 'rloc='+escape(document.location);
    _aPrs[1] = 'rref='+escape(document.referrer);
    _aPrs[2] = 'udim='+window.screen.width+'*'+window.screen.height;
    _aPrs[3] = 'rserv='+aLogData.log_server2;
    if (aLogData.log_debug == 'T') _aPrs[4] = 'd';

    // 모바일웹일 경우 추가 파라미터 생성
    var _sMobilePrs = '';
    if (mobileWeb === true) _sMobilePrs = '&mobile=T&mobile_ver=new';

    _sUrlQs = _sUserQs + '&' + _aPrs.join('&') + _sMobilePrs;
    var _sUrlFull = '/exec/front/realconn/main/?'+_sUrlQs;
    var node = document.createElement('iframe');
    node.setAttribute('src', _sUrlFull);
    node.setAttribute('id', 'log_realtime');

    document.body.appendChild(node);
    
    if (aLogData.log_debug == 'T') { 
        $('#log_realtime').css({'display':'block','width':'100%','height':'450px'});
    } else {
        $('#log_realtime').css({'display':'none','width':'0','height':'0'});
    }
        
    // eclog2.0, eclog1.9
    var sTime = new Date().getTime();//ECHOSTING-54575
    var sScriptSrc = 'http://'+aLogData.log_server1+'/weblog.js?uid='+aLogData.mid+'&uname='+aLogData.mid+'&r_ref='+document.referrer;
    if (mobileWeb === true) sScriptSrc += '&cafe_ec=mobile';
    sScriptSrc+= '&t='+sTime;//ECHOSTING-54575
    var node = document.createElement('script');
    node.setAttribute('type', 'text/javascript');
    node.setAttribute('src', sScriptSrc);
    node.setAttribute('id', 'log_script');
    document.body.appendChild(node);
});

/**
 * 비동기식 데이터 정의 회원로그인 정보 / 최근 본 상품
 */
    var methods =
        {
            Basketcnt : function(aData)
            {
                $('.xans-layout-orderbasketcount span a').html(aData);
            },
            Couponcnt : function(aData)
            {
                $('.xans-layout-myshopcouponcount').html(aData);
            },
            member : function(output)
            {
                try {
                    var output = decodeURIComponent(output);               
                    
                    if ( AuthSSLManager.isError(output) == true ) {
                        alert(output);
                        return;
                    }
                    var aData = AuthSSLManager.unserialize(output);
    
                    var fk = '';
                    for ( var k in aData) {
                        $('.xans-member-var-' + k).html(aData[k]);
                    }
                } catch(e) {}
            },
            recent : function(aData)
            {
                aNodes = $('.xans-layout-productrecent .xans-record-');
                var iRecordCnt = aNodes.length;
                var iCheckCnt = 0;
                for ( var i = 0 ; i < aData.length ; i++) {
                    if (!aNodes[i]) {
                        $(aNodes[iRecordCnt - 1]).clone().appendTo($(aNodes[iRecordCnt - 1]).parent());
                        iCheckCnt++;
                    }
                }
                
                if (iCheckCnt>0){
                    aNodes = $('.xans-layout-productrecent .xans-record-');
                }
                
                if (aData.length > 0) {
                    $('.xans-layout-productrecent').show();
                }

                

                for ( var i = 0 ; i < aData.length ; i++) {
                    replaceHtml(aNodes[i], aData[i]);
                }
                // 종료 카운트 지정
                if (aData.length < aNodes.length) {
                    iLength = aData.length;
                    deleteNode();
                }

                recentBntInit();

                /**
                 * 패치되지 않은 노드를 제거
                 */
                function deleteNode()
                {
                    for ( var i = iLength ; i < aNodes.length ; i++) {
                        $(aNodes[i]).remove();
                    }
                }

                function replaceHtml(oNode, aData)
                {
                    var sHtml = $(oNode).html().replace('about:blank', aData.recent_img).replace('##param##', aData.param).replace('##name##',aData.name);

                    $(oNode).html(sHtml);

                    if (aData.disp_recent === true) {
                        $(oNode).removeClass('displaynone');
                    }
                }

                function recentBntInit()
                {
                    // 화면에 뿌려진 갯수
                    var iDisplayCount = 0;
                    // 보여지는 style
                    var sDisplay = '';
                    var iIdx = 0;
                    //
                    var iDisplayNoneIdx = 0;

                    var nodes = $('.xans-layout-productrecent .xans-record-').each(function()
                    {
                        sDisplay = $(this).css('display');
                        if (sDisplay != 'none') {
                            iDisplayCount++;
                        } else {
                            if (iDisplayNoneIdx == 0) {
                                iDisplayNoneIdx = iIdx;
                            }
                            
                        }
                        iIdx++;
                    });

                    var iRecentCount = nodes.length;
                    var bBtnActive = iDisplayCount > 0;
                    $('.xans-layout-productrecent .prev').unbind('click').click(function()
                    {
                        if (bBtnActive !== true) return;
                        var iFirstNode = iDisplayNoneIdx - iDisplayCount;
                        if (iFirstNode == 0 || iDisplayCount == iRecentCount) {
                            alert(__('최근 본 첫번째 상품입니다.'));
                            return;
                        } else {
                            iDisplayNoneIdx--;
                            $(nodes[iDisplayNoneIdx]).hide();
                            $(nodes[iFirstNode - 1]).removeClass('displaynone');
                            $(nodes[iFirstNode - 1]).fadeIn('fast');
                            
                        }
                    }).css(
                    {
                        cursor : 'pointer'
                    });

                    $('.xans-layout-productrecent .next').unbind('click').click(function()
                    {
                        if (bBtnActive !== true) return;
                        if ( (iRecentCount ) == iDisplayNoneIdx || iDisplayCount == iRecentCount) {
                            alert(__('최근 본 마지막 상품입니다.'));
                        } else {
                            $(nodes[iDisplayNoneIdx]).fadeIn('fast');
                            $(nodes[iDisplayNoneIdx]).removeClass('displaynone');
                            $(nodes[ (iDisplayNoneIdx - iDisplayCount)]).hide();
                            iDisplayNoneIdx++;
                        }
                    }).css(
                    {
                        cursor : 'pointer'
                    });

                }
            }

        }
$(document).ready(
    function()
    {

        $('.xans-layout-productrecent').hide();

        var aNodes = $('.xans-layout-statelogon, .xans-layout-logon');
        var aModule = [];

        if (aNodes.length > 0) {
            aModule.push('member');
        }

        aNodes = $('.xans-layout-productrecent .xans-record-');
        var iRecordCnt = aNodes.length;

        if (iRecordCnt > 0) {
            aModule.push('recent');
        }
        
        // 장바구니 수량
        aNodesBasket = $('.xans-layout-orderbasketcount');
        if (aNodesBasket.length > 0) {
            aModule.push('Basketcnt');
        }
        
        // 쿠폰 갯수(Myshop: 마이페이지)
        aNodesCoupon = $('.xans-myshop-bankbook, .xans-layout-myshopcouponcount');
        if (aNodesCoupon.length > 0) {
            aModule.push('Couponcnt');
        }      
        
        

        if (aModule.length == 0) { return; }
        
        
        // 에디터에서 접근했을 경우 임의의 상품 지정
        var sEditor = ''; 
        try {
            if (bEditor === true) {
                sEditor = '&PREVIEW_SDE=1';
            }
        } catch(e) { }
        
        
        $.ajax(
        {
            url : '/exec/front/manage/async?module=' + aModule.join(',')+sEditor,
            dataType : 'json',
            success : function(aData)
            {
                
                for ( var k in aData) {
                    
                    if (k == "member"){
                        AuthSSLManager.weave({
                            'auth_mode'          : 'decryptClient',
                            'auth_string'        : aData[k],
                            'auth_callbackName'  : 'methods.member'
                       });
                    }else{
                        methods[k](aData[k]);
                    }
                        
                    
                }
            }
        });

        

    });
    
    
$(document).ready(function() {
    setTimeout(function() {$('.xans-product-listmain-2').productResize() }, 300);
});
$(document).ready(function() {
    setTimeout(function() {$('.xans-product-listmain-4').productResize() }, 300);
});
/**
 * 움직이는 배너 Jquery Plug-in
 * @author  cafe24
 */


(function($){

    $.fn.floatBanner = function(options) {
        options = $.extend({}, $.fn.floatBanner.defaults , options);
        
        return this.each(function() {
            var aPosition = $(this).position();
            var node = this;
            
            $(window).scroll(function() {       
                var _top = $(document).scrollTop();
                _top = (aPosition.top < _top) ? _top : aPosition.top;

                setTimeout(function () {
                    $(node).stop().animate({top: _top}, options.animate);
                }, options.delay);
            });
        });
    };

    $.fn.floatBanner.defaults = { 
        'animate'  : 500,
        'delay'    : 500
    };

})(jQuery);
    
/**
 * 문서 구동후 시작
 */
$(document).ready(function(){    
    $('#banner, #quick').floatBanner();    
});


/*--------------------------------시작페이지로---------------------------------*/

function pageSet(obj) {
	obj.style.behavior='url(#default#homepage)';
	obj.setHomePage('http://atsome.co.kr');
}


/*--------------------------------즐겨찾기추가---------------------------------*/
function bookmarksite(title,url) { 
title=parent.document.title;
url=parent.location.href;
   if (window.sidebar) // firefox 
   window.sidebar.addPanel(title, url, ""); 
   else if(window.opera && window.print)

   { // opera 
      var elem = document.createElement('a'); 
      elem.setAttribute('href',url); 
      elem.setAttribute('title',title); 
      elem.setAttribute('rel','sidebar'); 
      elem.click(); 
   } 

   else if(document.all) // ie
   window.external.AddFavorite(url, title); 
}

    
    

//window popup script 
function winPop(url) {
	window.open(url, "popup", "width=300,height=300,left=10,top=10,resizable=no,scrollbars=no");
}
/**
 * document.location.href split
 * return array Param
 */
function getQueryString(sKey)
{
	var sQueryString = document.location.search.substring(1);
	var aParam       = {};
	
	if (sQueryString) {
		var aFields = sQueryString.split("&");
		var aField  = [];
		for (var i=0; i<aFields.length; i++) {
			aField = aFields[i].split('=');
			aParam[aField[0]] = aField[1];
		}
	}	

	aParam.page = aParam.page ? aParam.page : 1;
	return sKey ? aParam[sKey] : aParam;
};


/**
 * paging HTML strong tag로 변형
 */
function convertPaging(){

	$('.paging ol a').each(function() {
		var sPage = $(this).text() ? $(this).text() : 1;

		if (sPage == '['+getQueryString('page')+']') {
			$(this).parent().html('<strong title="현재페이지">'+sPage+'</strong>');
		} else {
			var sHref = $(this).attr('href');
			$(this).parent().html('<a href="'+sHref+'" title="'+sPage+'페이지로 이동">'+sPage+'</a>');
		}
	});
}



/**
 * 카테고리 마우스 오버 이미지
 * 카테고리 서브 메뉴 출력
 */


$(document).ready(function(){

	
	var methods = {		
		aCategory    : [],
		aSubCategory : {},
		

		get: function()
		{
			 $.ajax({
				url : '/exec/front/Product/SubCategory',
				dataType: 'json',
				success: function(aData) {

					if (aData == null || aData == 'undefined') return;
					for (var i=0; i<aData.length; i++)
					{
						var sParentCateNo = aData[i].parent_cate_no;	

						if (!methods.aSubCategory[sParentCateNo]) {
							methods.aSubCategory[sParentCateNo] = [];
						}

						methods.aSubCategory[sParentCateNo].push( aData[i] );
					}
				}
			});    
		},

		getParam: function(sUrl, sKey) {

			var aUrl         = sUrl.split('?');
			var sQueryString = aUrl[1];
			var aParam       = {};
			
			if (sQueryString) {
				var aFields = sQueryString.split("&");
				var aField  = [];
				for (var i=0; i<aFields.length; i++) {
					aField = aFields[i].split('=');
					aParam[aField[0]] = aField[1];
				}
			}	
			return sKey ? aParam[sKey] : aParam;
		},


		show: function(overNode, iCateNo) {			
			
		    if (methods.aSubCategory[iCateNo].length == 0) {
		        return;
		    }

			var aHtml = [];
			aHtml.push('<ul>');
			$(methods.aSubCategory[iCateNo]).each(function() {
				aHtml.push('<li><a href="/'+this.design_page_url+this.param+'">'+this.name+'</a></li>');
			});
			aHtml.push('</ul>');

			
			var offset = $(overNode).offset();
			$('<div class="sub-category"></div>')
				.appendTo(overNode)				
				.html(aHtml.join(''))				
				.find('li').mouseover(function(e) {
					$(this).addClass('over');					
				}).mouseout(function(e) {
					$(this).removeClass('over');
				});
		},

		close: function() {			
			$('.sub-category').remove();
		}
	};

	methods.get();

	
	$('.xans-layout-category li').mouseenter(function(e) {
          var $this = $(this).addClass('on'),
            iCateNo = Number(methods.getParam($this.find('a').attr('href'), 'cate_no'));
            
          if (!iCateNo) {
               return;               
          }

          methods.show($this, iCateNo);
     }).mouseleave(function(e) {     
        $(this).removeClass('on');
          
          methods.close();
     });
});

$(function() {
	var f_nBnrCnt = 0; // jQBanner를 사용해서 화면에 출력되는 베너수

	$.f_varBanner = {
		defaults: {
			/* 내부적으로 쓰이는 변수 */
			objScr: null,	// 스크린 영역
			objBtn: null, // 버튼 영역
			objTimer: null, // 타이머
			nOrderNo: 999, // 현재 선택된 레이어
			nOrderNoBtn: -1, // 버튼 선택시 레이어

			/* 초기세팅이 가능한  필수 변수 */
			nWidth: 0, // 베너 스크린 영역 폭
			nHeight: 0, // 베너 스크린 영역 높이
			nCount: 0, // 베너 스크린 영역에 속해있는 레이어의 수
			isActType: "none",	// 베너 액션 타입 none,left,right,up,down,fade,page

			/* 초기세팅이 가능한  옵션 변수 */
			isShuffle: "N", // 베너 레이어들의 셔플 여부 Y:셔플,N:순차적
			isBtnAct: "mouseover",	// 버튼 작동방식 mouseover,click
			isBtnType: "img", // 버튼 타입 img,li			
			nStartUp: 300, // 스타트 시 첫 레이어의 FadeIn 속도
			nDelay: 5000, // 딜레이
			nSpeed: 500, // 액션시의 속도
			nSpeedFade: 300, // 페이드 관련 액션에서 버튼 작동시 속도의 교정값 [되도록 고정]
			isStartFade:"Y", // 스타트 FadeIn 효과 여부 [프로그램으로 스크린을 Display:block 처리할 경우 사용]
			isStartDelay:"N" // 스타트시 딜레이를 가지고 실행 [무거운 페이지의 경우 딜레이를 가지고 초기화]
		}
	};

	$.fn.jQBanner = function(defaults){
		var config = $.extend({}, $.f_varBanner.defaults, defaults);
		var isIEChk = jsBrowserCheck();

		config.objScr = "#"+this.attr("id")+" .clsBannerScreen";
		config.objBtn = "#"+this.attr("id")+" .clsBannerButton";
		
		if (config.isStartDelay=="Y" && isIEChk==true) {
			/* 스타트 딜레이 처리 */
			if (f_nBnrCnt>=0 && f_nBnrCnt<=3) {
				setTimeout( function(){jsBanInit(config)}, f_nBnrCnt*100);
			} else if (f_nBnrCnt>3 && f_nBnrCnt<=6) {
				setTimeout( function(){jsBanInit(config)}, f_nBnrCnt*200);
			} else if (f_nBnrCnt>6 && f_nBnrCnt<=10) {
				setTimeout( function(){jsBanInit(config)}, f_nBnrCnt*300);
			} else if (f_nBnrCnt>10) {
				setTimeout( function(){jsBanInit(config)}, 400);
			}
			f_nBnrCnt++;
		} else {
			jsBanInit(config);
		}

		return this;
	};

	function jsBanInit(config) {
		var nPosFix;

		/* 베너 스크린 CSS 설정 */
		$(config.objScr).css({'position':'relative','height':config.nHeight+'px','width':config.nWidth+'px','overflow':'hidden'});
		
		/* 첫 레이어 선택 */
		config.nOrderNo = (config.nOrderNo==999) ? Math.floor(Math.random() * config.nCount):config.nOrderNo-1;

		/* 액션 타입에 따른 초기 세팅 */
		if (config.isActType == "left") {
			$(config.objScr+" div").each(function(i){
				nPosFix = (config.nOrderNo==i)?0:config.nWidth;
				$(this).css({'position':'absolute','top':'0','left':(-1*nPosFix)+'px'});
				if (!(config.nOrderNo==i && config.isStartFade=="N")) {
					$(this).fadeIn(config.nStartUp);
				}
				$(this).attr("divno",i);
			});
		} else if (config.isActType == "right") {
			$(config.objScr+" div").each(function(i){
				nPosFix = (config.nOrderNo==i)?0:config.nWidth;				
				$(this).css({'position':'absolute','top':'0','left':nPosFix+'px'});
				if (!(config.nOrderNo==i && config.isStartFade=="N")) {
					$(this).fadeIn(config.nStartUp);
				}
				$(this).attr("divno",i);
			});
		} else if (config.isActType == "up") {
			$(config.objScr+" div").each(function(i){
				nPosFix = (config.nOrderNo==i)?0:config.nHeight;
				$(this).css({'position':'absolute','top':(-1*nPosFix)+'px','left':'0'});
				if (!(config.nOrderNo==i && config.isStartFade=="N")) {
					$(this).fadeIn(config.nStartUp);
				}
				$(this).attr("divno",i);
			});
		} else if (config.isActType == "down") {
			$(config.objScr+" div").each(function(i){
				nPosFix = (config.nOrderNo==i)?0:config.nHeight;
				$(this).css({'position':'absolute','top':nPosFix+'px','left':'0'});
				if (!(config.nOrderNo==i && config.isStartFade=="N")) {
					$(this).fadeIn(config.nStartUp);
				}
				$(this).attr("divno",i);
			});
		} else if (config.isActType == "fade") {
			$(config.objScr+" div").each(function(i){
				if (config.nOrderNo==i) {
					nPosFix = 0;
					if (!(config.nOrderNo==i && config.isStartFade=="N")) {
						$(this).fadeIn(config.nStartUp);
					}
				} else {
					nPosFix = config.nWidth;
				}
				$(this).css({'position':'absolute','top':'0','left':nPosFix+'px'});
				$(this).attr("divno",i);
			});
		} else if (config.isActType == "page") {
			$(config.objScr+" div").each(function(i){
				nPosFix = (config.nOrderNo==i)?0:config.nHeight;
				$(this).css({'position':'absolute','top':nPosFix+'px','left':'0'});
				if (!(config.nOrderNo==i && config.isStartFade=="N")) {
					$(this).fadeIn(config.nStartUp);
				}
				$(this).attr("divno",i);
			});
		} else if (config.isActType == "none") {
			$(config.objScr+" div").each(function(i){
				if (config.nOrderNo==i) {
					nPosFix = 0;
					if (!(config.nOrderNo==i && config.isStartFade=="N")) {
						$(this).fadeIn(config.nStartUp);
					}
				} else {
					nPosFix = config.nWidth;
				}
				$(this).css({'position':'absolute','top':'0','left':nPosFix+'px'});
				$(this).attr("divno",i);
			});
		}

		/* 버튼 순번 설정 */
		$(config.objBtn+" "+config.isBtnType).each(function(i){ $(this).attr("btnno",i); $(this).css("cursor","hand") });

		/* 버튼 바인드 */
		jsBanBtnBind(config);
		
		/* 스크린 pause 바인드 */
		jsScrPauseBind(config);

		/* 베너 타이머 등록 및 액션 시작!!!! */
		if (config.isActType != "none" && config.isActType != "page") {
			config.objTimer = setTimeout( function(){jsBanTimer(config)}, config.nDelay);
		}
	};

	/* 배너 타이머 */
	function jsBanTimer(config) {
		/* 버튼 액션 순번의 초기화 */
		config.nOrderNoBtn = -1;

		jsBanAction(config);
		config.objTimer = setTimeout( function(){jsBanTimer(config)}, config.nDelay);
	};

	/* 배너 액션 처리 */
	function jsBanAction(config) {
		var nPageSel;
		var nSpeed = config.nSpeed;
		var nDivNoSel = config.nOrderNo;
		var nOrderNext = (config.nOrderNo+1)%(config.nCount);

		/* 'page' 액션일 경우 선택페이지 추출 */
		if (config.isActType == "page") {
			var nOrderMinus = config.nOrderNoBtn-config.nOrderNo;
			nPageSel = (nOrderMinus==1 || (nOrderMinus==(config.nCount-1)*-1)) ? 1 : 0;
		}	

		if (config.nOrderNoBtn >= 0) {
			config.nOrderNo = config.nOrderNoBtn;
			nOrderNext = config.nOrderNoBtn;
			nSpeed = (config.isActType=="fade" || config.isActType=="page" || config.isActType=="none") ? config.nSpeedFade : 0;
		} else {
			config.nOrderNo = ((config.nCount-1)==config.nOrderNo) ? nOrderNext : config.nOrderNo+1;
		}

		var nDivNoNext = nOrderNext;

		var objSelObj = $(config.objScr+" div[divno='"+nDivNoSel+"']");
		var objNextObj = $(config.objScr+" div[divno='"+nDivNoNext+"']");

		/* 액션에 의한 버튼 선택 */
		if (config.isActType != "page") {
			jsBanBtnRO(config,nOrderNext);
		}

		/* 실제 스크린 레이어들의 동작 처리 */
		if (config.isActType == "left") {
			objNextObj.css('left',(config.nWidth)+'px');
			objSelObj.animate({'left':(-1*config.nWidth)+'px'},nSpeed);
			objNextObj.animate({'left':'0'},nSpeed);
		} else if (config.isActType == "right") {
			objNextObj.css('left',(-1*config.nWidth)+'px');
			objSelObj.animate({'left':config.nWidth+'px'},nSpeed);
			objNextObj.animate({'left':'0'},nSpeed);
		} else if (config.isActType == "up") {
			objNextObj.css('top',config.nHeight+'px');
			objSelObj.animate({'top':(-1*config.nHeight)+'px'},nSpeed);
			objNextObj.animate({'top':'0'},nSpeed);
		} else if (config.isActType == "down") {
			objNextObj.css('top',(-1*config.nHeight)+'px');
			objSelObj.animate({'top':config.nHeight+'px'},nSpeed);
			objNextObj.animate({'top':'0'},nSpeed);
		} else if (config.isActType == "fade") {
			objSelObj.css({'left':config.nWidth+'px','display':'none'});
			objNextObj.css('left','0');
			objNextObj.fadeIn(nSpeed);
		} else if (config.isActType == "page") {
			if (nPageSel == 0) {
				objNextObj.css({'top':'0','left':config.nWidth+'px'});
				objSelObj.animate({'left':(-1*config.nWidth)+'px'},nSpeed);
				objNextObj.animate({'left':'0'},nSpeed);
			} else if (nPageSel == 1) {
				objNextObj.css({'top':'0','left':(-1*config.nWidth)+'px'});
				objSelObj.animate({'left':config.nWidth+'px'},nSpeed);
				objNextObj.animate({'left':'0'},nSpeed);
			}
		} else if (config.isActType == "none") {
			objSelObj.css({'left':config.nWidth+'px','display':'none'});
			objNextObj.css('left','0');
			objNextObj.fadeIn(nSpeed);
		}
	}

	/* 스크린 pause 바인드 */
	function jsScrPauseBind(config) {
		/* 스크린에 대한 처리 */
		$(config.objScr).mouseover(function(){
			clearTimeout(config.objTimer);
		});
		$(config.objScr).mouseout(function(){
			if (config.isActType != "none" && config.isActType != "page") {
				config.objTimer = setTimeout( function(){jsBanTimer(config)}, config.nDelay);
			}
		});		
	}
	
	/* 버튼 바인드 */
	function jsBanBtnBind(config) {
		/* 초기 버튼 설정 */
		if (config.isActType != "page") {
			jsBanBtnRO(config,config.nOrderNo);
		}
		
		/* 버튼에 대해 마우스 오버일 경우 처리 */
		if (config.isBtnAct=="mouseover") {
			/* 버튼에 대한 처리 */
			$(config.objBtn+" "+config.isBtnType).mouseover(function(){
				var nImgNo = $(this).attr("btnno");

				if (config.isActType != "none" && config.isActType != "page") {
					clearTimeout(config.objTimer);
				}

				if (config.isActType == "page") {
					if (nImgNo == 0) {
						config.nOrderNoBtn = ((config.nOrderNo-1)<0) ? config.nCount-1 : config.nOrderNo-1;
					} if (nImgNo == 1) {
						config.nOrderNoBtn = ((config.nOrderNo+1)==config.nCount) ? (config.nOrderNo+1)%config.nCount : config.nOrderNo+1;
					}
					jsBanBtnRO(config,nImgNo);
				} else {
					config.nOrderNoBtn = parseInt(nImgNo);
				}

				jsBanAction(config);
			});
			$(config.objBtn+" "+config.isBtnType).mouseout(function(){
				if (config.isActType != "none" && config.isActType != "page") {
					config.objTimer = setTimeout( function(){jsBanTimer(config)}, config.nDelay);
				}
			});

		/* 버튼에 대해 클릭일 경우 처리 */
		} else if (config.isBtnAct=="click") {
			$(config.objBtn+" "+config.isBtnType).click(function(){
				var nImgNo = $(this).attr("btnno");
				
				if (config.isActType != "none" && config.isActType != "page") {
					clearTimeout(config.objTimer);
				}

				if (config.isActType == "page") {
					if (nImgNo == 0) {
						config.nOrderNoBtn = ((config.nOrderNo-1)<0) ? config.nCount-1 : config.nOrderNo-1;
					} if (nImgNo == 1) {
						config.nOrderNoBtn = ((config.nOrderNo+1)==config.nCount) ? (config.nOrderNo+1)%config.nCount : config.nOrderNo+1;
					}
					jsBanBtnRO(config,nImgNo);
				} else {
					config.nOrderNoBtn = parseInt(nImgNo);
				}
				
				jsBanAction(config);

				if (config.isActType != "none" && config.isActType != "page") {
					config.objTimer = setTimeout( function(){jsBanTimer(config)}, config.nDelay);
				}
			});
		}
	};

	/* 버튼 롤오버 처리 */
	function jsBanBtnRO (config,nSel) {
		if (config.isBtnType=="img") {
			$(config.objBtn+" img").each(function(i){
				if (nSel==i) {
					$(this).attr("src",$(this).attr("oversrc"));
				} else {
					$(this).attr("src",$(this).attr("outsrc"));
				}
			});
			
		} else if (config.isBtnType=="li") {
			$(config.objBtn+" li").each(function(i){
				if (nSel==i) {
					$(this).attr("class",$(this).attr("overclass"));
				} else {
					$(this).attr("class",$(this).attr("outclass"));
				}
			});
			
		}
	}

	/* IE 체크 */
	function jsBrowserCheck() {
		appname = navigator.appName;
		useragent = navigator.userAgent;

		if(appname == "Microsoft Internet Explorer") appname = "IE";
		IE55 = (useragent.indexOf('MSIE 5.5')>0);  //5.5 버전
		IE6 = (useragent.indexOf('MSIE 6')>0);     //6.0 버전
		IE7 = (useragent.indexOf('MSIE 7')>0);     //7.0 버전
		IE8 = (useragent.indexOf('MSIE 8')>0);     //8.0 버전
		IE9 = (useragent.indexOf('MSIE 9')>0);     //9.0 버전

		//if(appname=="IE" && IE55 || IE6 || IE7 || IE8){
		if(appname=="IE" || IE55 || IE6 || IE7 || IE8 || IE9){
			return true
		}else{
			return false;
		}
	}	
});



$(function() {                   
	$("#image_list_3").jQBanner({nWidth:770,nHeight:300,nCount:3,isActType:"fade",nOrderNo:1,isStartAct:"Y",isStartDelay:"N",nDelay:5000,isBtnType:"img"});
});

$(document).ready(function() {
    setTimeout(function() {$('.xans-product-listmain-1').productResize() }, 300);
});
/**
* @class
*  마우스 오버시 상품명 및 가격이 떨어지면서 나타남.
*
* @example
*   $(".xans-product-1 ul>li").outlinebox({ 'box' : '.price_box', 'borderSize' : '3px', 'startPos' : false });
*
* @name jquery.boxdown.js
* @author JsYang <yakuyaku@gmail.com>
* @since 2011년 10월 11일 화요일
* @version 1.0
*/
;(function($){

    $.fn.boxdown = function ( options ) {

        var opts = $.extend( {}, $.fn.boxdown.defaults, options );

        return this.each(function() {
            var $this = $(this), $box = $this.find(opts.box).eq(0);

            if ( !$box ) {
                return;
            };

            var topOff = parseInt($this.height() / 2,10) - parseInt($box.height()/2,10) + opts.offTop;

            $this.css({
                'position' : 'relative',
                'overflow' : 'hidden'
            });

            $box.css({
                'position':'absolute',
                'display' : 'block',
                'opacity' : 0,
                'top' : '0px'
            });

            $this.hover(function(){
                $box.stop().animate({  'top' : topOff, "opacity": 0.8 }, { 'duration' : opts.speed, 'easing' : 'swing' },function(){} );
            }, function(){
                $box.stop().animate({  'top' : 0, "opacity": 0 }, { 'duration' : opts.speed, 'easing' : 'swing' },function(){} );
            });
        });
    }

    $.fn.boxdown.defaults = {
        'box' : '.contents',
        'offTop': 0,
        'speed' : 300
    };

})(jQuery);


$(document).ready(function(){
	$(".xans-product-listmain-1 ul>li").boxdown({'box' : '.price_box', 'offTop' : 62});
});
var ongoing = false;
var direction = 'left';
function AutoScroll(){
	
	if(ongoing) return;

	var _scroll = $("#slide>ul");

	ongoing = true;

	if(direction == 'left'){
		_scroll.animate({marginLeft:"-195px"},1500,function(){
			_scroll.css({marginLeft:0}).find("li:first").appendTo(_scroll);
			ongoing = false;
		});

	}
	else{
		_scroll.css({marginLeft:"-195px"}).find("li:last").prependTo(_scroll);
		_scroll.animate({marginLeft:"0px"},1500,function(){ongoing = false;});	
	}
	
}
$(function(){

	var _scrolling=setInterval("AutoScroll()",3000);
	$("#slide>ul").hover(function(){

		clearInterval(_scrolling);
	},function(){

		_scrolling=setInterval("AutoScroll()",3000);
	});

});
