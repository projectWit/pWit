/* file:/home/recamier/common/js/jquery.js */
/*!
 * jQuery JavaScript Library v1.4.2
 * http://jquery.com/
 *
 * Copyright 2010, John Resig
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * Includes Sizzle.js
 * http://sizzlejs.com/
 * Copyright 2010, The Dojo Foundation
 * Released under the MIT, BSD, and GPL Licenses.
 *
 * Date: Sat Feb 13 22:33:48 2010 -0500
 */
(function(A,w){function ma(){if(!c.isReady){try{s.documentElement.doScroll("left")}catch(a){setTimeout(ma,1);return}c.ready()}}function Qa(a,b){b.src?c.ajax({url:b.src,async:false,dataType:"script"}):c.globalEval(b.text||b.textContent||b.innerHTML||"");b.parentNode&&b.parentNode.removeChild(b)}function X(a,b,d,f,e,j){var i=a.length;if(typeof b==="object"){for(var o in b)X(a,o,b[o],f,e,d);return a}if(d!==w){f=!j&&f&&c.isFunction(d);for(o=0;o<i;o++)e(a[o],b,f?d.call(a[o],o,e(a[o],b)):d,j);return a}return i?
e(a[0],b):w}function J(){return(new Date).getTime()}function Y(){return false}function Z(){return true}function na(a,b,d){d[0].type=a;return c.event.handle.apply(b,d)}function oa(a){var b,d=[],f=[],e=arguments,j,i,o,k,n,r;i=c.data(this,"events");if(!(a.liveFired===this||!i||!i.live||a.button&&a.type==="click")){a.liveFired=this;var u=i.live.slice(0);for(k=0;k<u.length;k++){i=u[k];i.origType.replace(O,"")===a.type?f.push(i.selector):u.splice(k--,1)}j=c(a.target).closest(f,a.currentTarget);n=0;for(r=
j.length;n<r;n++)for(k=0;k<u.length;k++){i=u[k];if(j[n].selector===i.selector){o=j[n].elem;f=null;if(i.preType==="mouseenter"||i.preType==="mouseleave")f=c(a.relatedTarget).closest(i.selector)[0];if(!f||f!==o)d.push({elem:o,handleObj:i})}}n=0;for(r=d.length;n<r;n++){j=d[n];a.currentTarget=j.elem;a.data=j.handleObj.data;a.handleObj=j.handleObj;if(j.handleObj.origHandler.apply(j.elem,e)===false){b=false;break}}return b}}function pa(a,b){return"live."+(a&&a!=="*"?a+".":"")+b.replace(/\./g,"`").replace(/ /g,
"&")}function qa(a){return!a||!a.parentNode||a.parentNode.nodeType===11}function ra(a,b){var d=0;b.each(function(){if(this.nodeName===(a[d]&&a[d].nodeName)){var f=c.data(a[d++]),e=c.data(this,f);if(f=f&&f.events){delete e.handle;e.events={};for(var j in f)for(var i in f[j])c.event.add(this,j,f[j][i],f[j][i].data)}}})}function sa(a,b,d){var f,e,j;b=b&&b[0]?b[0].ownerDocument||b[0]:s;if(a.length===1&&typeof a[0]==="string"&&a[0].length<512&&b===s&&!ta.test(a[0])&&(c.support.checkClone||!ua.test(a[0]))){e=
true;if(j=c.fragments[a[0]])if(j!==1)f=j}if(!f){f=b.createDocumentFragment();c.clean(a,b,f,d)}if(e)c.fragments[a[0]]=j?f:1;return{fragment:f,cacheable:e}}function K(a,b){var d={};c.each(va.concat.apply([],va.slice(0,b)),function(){d[this]=a});return d}function wa(a){return"scrollTo"in a&&a.document?a:a.nodeType===9?a.defaultView||a.parentWindow:false}var c=function(a,b){return new c.fn.init(a,b)},Ra=A.jQuery,Sa=A.$,s=A.document,T,Ta=/^[^<]*(<[\w\W]+>)[^>]*$|^#([\w-]+)$/,Ua=/^.[^:#\[\.,]*$/,Va=/\S/,
Wa=/^(\s|\u00A0)+|(\s|\u00A0)+$/g,Xa=/^<(\w+)\s*\/?>(?:<\/\1>)?$/,P=navigator.userAgent,xa=false,Q=[],L,$=Object.prototype.toString,aa=Object.prototype.hasOwnProperty,ba=Array.prototype.push,R=Array.prototype.slice,ya=Array.prototype.indexOf;c.fn=c.prototype={init:function(a,b){var d,f;if(!a)return this;if(a.nodeType){this.context=this[0]=a;this.length=1;return this}if(a==="body"&&!b){this.context=s;this[0]=s.body;this.selector="body";this.length=1;return this}if(typeof a==="string")if((d=Ta.exec(a))&&
(d[1]||!b))if(d[1]){f=b?b.ownerDocument||b:s;if(a=Xa.exec(a))if(c.isPlainObject(b)){a=[s.createElement(a[1])];c.fn.attr.call(a,b,true)}else a=[f.createElement(a[1])];else{a=sa([d[1]],[f]);a=(a.cacheable?a.fragment.cloneNode(true):a.fragment).childNodes}return c.merge(this,a)}else{if(b=s.getElementById(d[2])){if(b.id!==d[2])return T.find(a);this.length=1;this[0]=b}this.context=s;this.selector=a;return this}else if(!b&&/^\w+$/.test(a)){this.selector=a;this.context=s;a=s.getElementsByTagName(a);return c.merge(this,
a)}else return!b||b.jquery?(b||T).find(a):c(b).find(a);else if(c.isFunction(a))return T.ready(a);if(a.selector!==w){this.selector=a.selector;this.context=a.context}return c.makeArray(a,this)},selector:"",jquery:"1.4.2",length:0,size:function(){return this.length},toArray:function(){return R.call(this,0)},get:function(a){return a==null?this.toArray():a<0?this.slice(a)[0]:this[a]},pushStack:function(a,b,d){var f=c();c.isArray(a)?ba.apply(f,a):c.merge(f,a);f.prevObject=this;f.context=this.context;if(b===
"find")f.selector=this.selector+(this.selector?" ":"")+d;else if(b)f.selector=this.selector+"."+b+"("+d+")";return f},each:function(a,b){return c.each(this,a,b)},ready:function(a){c.bindReady();if(c.isReady)a.call(s,c);else Q&&Q.push(a);return this},eq:function(a){return a===-1?this.slice(a):this.slice(a,+a+1)},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},slice:function(){return this.pushStack(R.apply(this,arguments),"slice",R.call(arguments).join(","))},map:function(a){return this.pushStack(c.map(this,
function(b,d){return a.call(b,d,b)}))},end:function(){return this.prevObject||c(null)},push:ba,sort:[].sort,splice:[].splice};c.fn.init.prototype=c.fn;c.extend=c.fn.extend=function(){var a=arguments[0]||{},b=1,d=arguments.length,f=false,e,j,i,o;if(typeof a==="boolean"){f=a;a=arguments[1]||{};b=2}if(typeof a!=="object"&&!c.isFunction(a))a={};if(d===b){a=this;--b}for(;b<d;b++)if((e=arguments[b])!=null)for(j in e){i=a[j];o=e[j];if(a!==o)if(f&&o&&(c.isPlainObject(o)||c.isArray(o))){i=i&&(c.isPlainObject(i)||
c.isArray(i))?i:c.isArray(o)?[]:{};a[j]=c.extend(f,i,o)}else if(o!==w)a[j]=o}return a};c.extend({noConflict:function(a){A.$=Sa;if(a)A.jQuery=Ra;return c},isReady:false,ready:function(){if(!c.isReady){if(!s.body)return setTimeout(c.ready,13);c.isReady=true;if(Q){for(var a,b=0;a=Q[b++];)a.call(s,c);Q=null}c.fn.triggerHandler&&c(s).triggerHandler("ready")}},bindReady:function(){if(!xa){xa=true;if(s.readyState==="complete")return c.ready();if(s.addEventListener){s.addEventListener("DOMContentLoaded",
L,false);A.addEventListener("load",c.ready,false)}else if(s.attachEvent){s.attachEvent("onreadystatechange",L);A.attachEvent("onload",c.ready);var a=false;try{a=A.frameElement==null}catch(b){}s.documentElement.doScroll&&a&&ma()}}},isFunction:function(a){return $.call(a)==="[object Function]"},isArray:function(a){return $.call(a)==="[object Array]"},isPlainObject:function(a){if(!a||$.call(a)!=="[object Object]"||a.nodeType||a.setInterval)return false;if(a.constructor&&!aa.call(a,"constructor")&&!aa.call(a.constructor.prototype,
"isPrototypeOf"))return false;var b;for(b in a);return b===w||aa.call(a,b)},isEmptyObject:function(a){for(var b in a)return false;return true},error:function(a){throw a;},parseJSON:function(a){if(typeof a!=="string"||!a)return null;a=c.trim(a);if(/^[\],:{}\s]*$/.test(a.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,"@").replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,"]").replace(/(?:^|:|,)(?:\s*\[)+/g,"")))return A.JSON&&A.JSON.parse?A.JSON.parse(a):(new Function("return "+
a))();else c.error("Invalid JSON: "+a)},noop:function(){},globalEval:function(a){if(a&&Va.test(a)){var b=s.getElementsByTagName("head")[0]||s.documentElement,d=s.createElement("script");d.type="text/javascript";if(c.support.scriptEval)d.appendChild(s.createTextNode(a));else d.text=a;b.insertBefore(d,b.firstChild);b.removeChild(d)}},nodeName:function(a,b){return a.nodeName&&a.nodeName.toUpperCase()===b.toUpperCase()},each:function(a,b,d){var f,e=0,j=a.length,i=j===w||c.isFunction(a);if(d)if(i)for(f in a){if(b.apply(a[f],
d)===false)break}else for(;e<j;){if(b.apply(a[e++],d)===false)break}else if(i)for(f in a){if(b.call(a[f],f,a[f])===false)break}else for(d=a[0];e<j&&b.call(d,e,d)!==false;d=a[++e]);return a},trim:function(a){return(a||"").replace(Wa,"")},makeArray:function(a,b){b=b||[];if(a!=null)a.length==null||typeof a==="string"||c.isFunction(a)||typeof a!=="function"&&a.setInterval?ba.call(b,a):c.merge(b,a);return b},inArray:function(a,b){if(b.indexOf)return b.indexOf(a);for(var d=0,f=b.length;d<f;d++)if(b[d]===
a)return d;return-1},merge:function(a,b){var d=a.length,f=0;if(typeof b.length==="number")for(var e=b.length;f<e;f++)a[d++]=b[f];else for(;b[f]!==w;)a[d++]=b[f++];a.length=d;return a},grep:function(a,b,d){for(var f=[],e=0,j=a.length;e<j;e++)!d!==!b(a[e],e)&&f.push(a[e]);return f},map:function(a,b,d){for(var f=[],e,j=0,i=a.length;j<i;j++){e=b(a[j],j,d);if(e!=null)f[f.length]=e}return f.concat.apply([],f)},guid:1,proxy:function(a,b,d){if(arguments.length===2)if(typeof b==="string"){d=a;a=d[b];b=w}else if(b&&
!c.isFunction(b)){d=b;b=w}if(!b&&a)b=function(){return a.apply(d||this,arguments)};if(a)b.guid=a.guid=a.guid||b.guid||c.guid++;return b},uaMatch:function(a){a=a.toLowerCase();a=/(webkit)[ \/]([\w.]+)/.exec(a)||/(opera)(?:.*version)?[ \/]([\w.]+)/.exec(a)||/(msie) ([\w.]+)/.exec(a)||!/compatible/.test(a)&&/(mozilla)(?:.*? rv:([\w.]+))?/.exec(a)||[];return{browser:a[1]||"",version:a[2]||"0"}},browser:{}});P=c.uaMatch(P);if(P.browser){c.browser[P.browser]=true;c.browser.version=P.version}if(c.browser.webkit)c.browser.safari=
true;if(ya)c.inArray=function(a,b){return ya.call(b,a)};T=c(s);if(s.addEventListener)L=function(){s.removeEventListener("DOMContentLoaded",L,false);c.ready()};else if(s.attachEvent)L=function(){if(s.readyState==="complete"){s.detachEvent("onreadystatechange",L);c.ready()}};(function(){c.support={};var a=s.documentElement,b=s.createElement("script"),d=s.createElement("div"),f="script"+J();d.style.display="none";d.innerHTML="   <link/><table></table><a href='/a' style='color:red;float:left;opacity:.55;'>a</a><input type='checkbox'/>";
var e=d.getElementsByTagName("*"),j=d.getElementsByTagName("a")[0];if(!(!e||!e.length||!j)){c.support={leadingWhitespace:d.firstChild.nodeType===3,tbody:!d.getElementsByTagName("tbody").length,htmlSerialize:!!d.getElementsByTagName("link").length,style:/red/.test(j.getAttribute("style")),hrefNormalized:j.getAttribute("href")==="/a",opacity:/^0.55$/.test(j.style.opacity),cssFloat:!!j.style.cssFloat,checkOn:d.getElementsByTagName("input")[0].value==="on",optSelected:s.createElement("select").appendChild(s.createElement("option")).selected,
parentNode:d.removeChild(d.appendChild(s.createElement("div"))).parentNode===null,deleteExpando:true,checkClone:false,scriptEval:false,noCloneEvent:true,boxModel:null};b.type="text/javascript";try{b.appendChild(s.createTextNode("window."+f+"=1;"))}catch(i){}a.insertBefore(b,a.firstChild);if(A[f]){c.support.scriptEval=true;delete A[f]}try{delete b.test}catch(o){c.support.deleteExpando=false}a.removeChild(b);if(d.attachEvent&&d.fireEvent){d.attachEvent("onclick",function k(){c.support.noCloneEvent=
false;d.detachEvent("onclick",k)});d.cloneNode(true).fireEvent("onclick")}d=s.createElement("div");d.innerHTML="<input type='radio' name='radiotest' checked='checked'/>";a=s.createDocumentFragment();a.appendChild(d.firstChild);c.support.checkClone=a.cloneNode(true).cloneNode(true).lastChild.checked;c(function(){var k=s.createElement("div");k.style.width=k.style.paddingLeft="1px";s.body.appendChild(k);c.boxModel=c.support.boxModel=k.offsetWidth===2;s.body.removeChild(k).style.display="none"});a=function(k){var n=
s.createElement("div");k="on"+k;var r=k in n;if(!r){n.setAttribute(k,"return;");r=typeof n[k]==="function"}return r};c.support.submitBubbles=a("submit");c.support.changeBubbles=a("change");a=b=d=e=j=null}})();c.props={"for":"htmlFor","class":"className",readonly:"readOnly",maxlength:"maxLength",cellspacing:"cellSpacing",rowspan:"rowSpan",colspan:"colSpan",tabindex:"tabIndex",usemap:"useMap",frameborder:"frameBorder"};var G="jQuery"+J(),Ya=0,za={};c.extend({cache:{},expando:G,noData:{embed:true,object:true,
applet:true},data:function(a,b,d){if(!(a.nodeName&&c.noData[a.nodeName.toLowerCase()])){a=a==A?za:a;var f=a[G],e=c.cache;if(!f&&typeof b==="string"&&d===w)return null;f||(f=++Ya);if(typeof b==="object"){a[G]=f;e[f]=c.extend(true,{},b)}else if(!e[f]){a[G]=f;e[f]={}}a=e[f];if(d!==w)a[b]=d;return typeof b==="string"?a[b]:a}},removeData:function(a,b){if(!(a.nodeName&&c.noData[a.nodeName.toLowerCase()])){a=a==A?za:a;var d=a[G],f=c.cache,e=f[d];if(b){if(e){delete e[b];c.isEmptyObject(e)&&c.removeData(a)}}else{if(c.support.deleteExpando)delete a[c.expando];
else a.removeAttribute&&a.removeAttribute(c.expando);delete f[d]}}}});c.fn.extend({data:function(a,b){if(typeof a==="undefined"&&this.length)return c.data(this[0]);else if(typeof a==="object")return this.each(function(){c.data(this,a)});var d=a.split(".");d[1]=d[1]?"."+d[1]:"";if(b===w){var f=this.triggerHandler("getData"+d[1]+"!",[d[0]]);if(f===w&&this.length)f=c.data(this[0],a);return f===w&&d[1]?this.data(d[0]):f}else return this.trigger("setData"+d[1]+"!",[d[0],b]).each(function(){c.data(this,
a,b)})},removeData:function(a){return this.each(function(){c.removeData(this,a)})}});c.extend({queue:function(a,b,d){if(a){b=(b||"fx")+"queue";var f=c.data(a,b);if(!d)return f||[];if(!f||c.isArray(d))f=c.data(a,b,c.makeArray(d));else f.push(d);return f}},dequeue:function(a,b){b=b||"fx";var d=c.queue(a,b),f=d.shift();if(f==="inprogress")f=d.shift();if(f){b==="fx"&&d.unshift("inprogress");f.call(a,function(){c.dequeue(a,b)})}}});c.fn.extend({queue:function(a,b){if(typeof a!=="string"){b=a;a="fx"}if(b===
w)return c.queue(this[0],a);return this.each(function(){var d=c.queue(this,a,b);a==="fx"&&d[0]!=="inprogress"&&c.dequeue(this,a)})},dequeue:function(a){return this.each(function(){c.dequeue(this,a)})},delay:function(a,b){a=c.fx?c.fx.speeds[a]||a:a;b=b||"fx";return this.queue(b,function(){var d=this;setTimeout(function(){c.dequeue(d,b)},a)})},clearQueue:function(a){return this.queue(a||"fx",[])}});var Aa=/[\n\t]/g,ca=/\s+/,Za=/\r/g,$a=/href|src|style/,ab=/(button|input)/i,bb=/(button|input|object|select|textarea)/i,
cb=/^(a|area)$/i,Ba=/radio|checkbox/;c.fn.extend({attr:function(a,b){return X(this,a,b,true,c.attr)},removeAttr:function(a){return this.each(function(){c.attr(this,a,"");this.nodeType===1&&this.removeAttribute(a)})},addClass:function(a){if(c.isFunction(a))return this.each(function(n){var r=c(this);r.addClass(a.call(this,n,r.attr("class")))});if(a&&typeof a==="string")for(var b=(a||"").split(ca),d=0,f=this.length;d<f;d++){var e=this[d];if(e.nodeType===1)if(e.className){for(var j=" "+e.className+" ",
i=e.className,o=0,k=b.length;o<k;o++)if(j.indexOf(" "+b[o]+" ")<0)i+=" "+b[o];e.className=c.trim(i)}else e.className=a}return this},removeClass:function(a){if(c.isFunction(a))return this.each(function(k){var n=c(this);n.removeClass(a.call(this,k,n.attr("class")))});if(a&&typeof a==="string"||a===w)for(var b=(a||"").split(ca),d=0,f=this.length;d<f;d++){var e=this[d];if(e.nodeType===1&&e.className)if(a){for(var j=(" "+e.className+" ").replace(Aa," "),i=0,o=b.length;i<o;i++)j=j.replace(" "+b[i]+" ",
" ");e.className=c.trim(j)}else e.className=""}return this},toggleClass:function(a,b){var d=typeof a,f=typeof b==="boolean";if(c.isFunction(a))return this.each(function(e){var j=c(this);j.toggleClass(a.call(this,e,j.attr("class"),b),b)});return this.each(function(){if(d==="string")for(var e,j=0,i=c(this),o=b,k=a.split(ca);e=k[j++];){o=f?o:!i.hasClass(e);i[o?"addClass":"removeClass"](e)}else if(d==="undefined"||d==="boolean"){this.className&&c.data(this,"__className__",this.className);this.className=
this.className||a===false?"":c.data(this,"__className__")||""}})},hasClass:function(a){a=" "+a+" ";for(var b=0,d=this.length;b<d;b++)if((" "+this[b].className+" ").replace(Aa," ").indexOf(a)>-1)return true;return false},val:function(a){if(a===w){var b=this[0];if(b){if(c.nodeName(b,"option"))return(b.attributes.value||{}).specified?b.value:b.text;if(c.nodeName(b,"select")){var d=b.selectedIndex,f=[],e=b.options;b=b.type==="select-one";if(d<0)return null;var j=b?d:0;for(d=b?d+1:e.length;j<d;j++){var i=
e[j];if(i.selected){a=c(i).val();if(b)return a;f.push(a)}}return f}if(Ba.test(b.type)&&!c.support.checkOn)return b.getAttribute("value")===null?"on":b.value;return(b.value||"").replace(Za,"")}return w}var o=c.isFunction(a);return this.each(function(k){var n=c(this),r=a;if(this.nodeType===1){if(o)r=a.call(this,k,n.val());if(typeof r==="number")r+="";if(c.isArray(r)&&Ba.test(this.type))this.checked=c.inArray(n.val(),r)>=0;else if(c.nodeName(this,"select")){var u=c.makeArray(r);c("option",this).each(function(){this.selected=
c.inArray(c(this).val(),u)>=0});if(!u.length)this.selectedIndex=-1}else this.value=r}})}});c.extend({attrFn:{val:true,css:true,html:true,text:true,data:true,width:true,height:true,offset:true},attr:function(a,b,d,f){if(!a||a.nodeType===3||a.nodeType===8)return w;if(f&&b in c.attrFn)return c(a)[b](d);f=a.nodeType!==1||!c.isXMLDoc(a);var e=d!==w;b=f&&c.props[b]||b;if(a.nodeType===1){var j=$a.test(b);if(b in a&&f&&!j){if(e){b==="type"&&ab.test(a.nodeName)&&a.parentNode&&c.error("type property can't be changed");
a[b]=d}if(c.nodeName(a,"form")&&a.getAttributeNode(b))return a.getAttributeNode(b).nodeValue;if(b==="tabIndex")return(b=a.getAttributeNode("tabIndex"))&&b.specified?b.value:bb.test(a.nodeName)||cb.test(a.nodeName)&&a.href?0:w;return a[b]}if(!c.support.style&&f&&b==="style"){if(e)a.style.cssText=""+d;return a.style.cssText}e&&a.setAttribute(b,""+d);a=!c.support.hrefNormalized&&f&&j?a.getAttribute(b,2):a.getAttribute(b);return a===null?w:a}return c.style(a,b,d)}});var O=/\.(.*)$/,db=function(a){return a.replace(/[^\w\s\.\|`]/g,
function(b){return"\\"+b})};c.event={add:function(a,b,d,f){if(!(a.nodeType===3||a.nodeType===8)){if(a.setInterval&&a!==A&&!a.frameElement)a=A;var e,j;if(d.handler){e=d;d=e.handler}if(!d.guid)d.guid=c.guid++;if(j=c.data(a)){var i=j.events=j.events||{},o=j.handle;if(!o)j.handle=o=function(){return typeof c!=="undefined"&&!c.event.triggered?c.event.handle.apply(o.elem,arguments):w};o.elem=a;b=b.split(" ");for(var k,n=0,r;k=b[n++];){j=e?c.extend({},e):{handler:d,data:f};if(k.indexOf(".")>-1){r=k.split(".");
k=r.shift();j.namespace=r.slice(0).sort().join(".")}else{r=[];j.namespace=""}j.type=k;j.guid=d.guid;var u=i[k],z=c.event.special[k]||{};if(!u){u=i[k]=[];if(!z.setup||z.setup.call(a,f,r,o)===false)if(a.addEventListener)a.addEventListener(k,o,false);else a.attachEvent&&a.attachEvent("on"+k,o)}if(z.add){z.add.call(a,j);if(!j.handler.guid)j.handler.guid=d.guid}u.push(j);c.event.global[k]=true}a=null}}},global:{},remove:function(a,b,d,f){if(!(a.nodeType===3||a.nodeType===8)){var e,j=0,i,o,k,n,r,u,z=c.data(a),
C=z&&z.events;if(z&&C){if(b&&b.type){d=b.handler;b=b.type}if(!b||typeof b==="string"&&b.charAt(0)==="."){b=b||"";for(e in C)c.event.remove(a,e+b)}else{for(b=b.split(" ");e=b[j++];){n=e;i=e.indexOf(".")<0;o=[];if(!i){o=e.split(".");e=o.shift();k=new RegExp("(^|\\.)"+c.map(o.slice(0).sort(),db).join("\\.(?:.*\\.)?")+"(\\.|$)")}if(r=C[e])if(d){n=c.event.special[e]||{};for(B=f||0;B<r.length;B++){u=r[B];if(d.guid===u.guid){if(i||k.test(u.namespace)){f==null&&r.splice(B--,1);n.remove&&n.remove.call(a,u)}if(f!=
null)break}}if(r.length===0||f!=null&&r.length===1){if(!n.teardown||n.teardown.call(a,o)===false)Ca(a,e,z.handle);delete C[e]}}else for(var B=0;B<r.length;B++){u=r[B];if(i||k.test(u.namespace)){c.event.remove(a,n,u.handler,B);r.splice(B--,1)}}}if(c.isEmptyObject(C)){if(b=z.handle)b.elem=null;delete z.events;delete z.handle;c.isEmptyObject(z)&&c.removeData(a)}}}}},trigger:function(a,b,d,f){var e=a.type||a;if(!f){a=typeof a==="object"?a[G]?a:c.extend(c.Event(e),a):c.Event(e);if(e.indexOf("!")>=0){a.type=
e=e.slice(0,-1);a.exclusive=true}if(!d){a.stopPropagation();c.event.global[e]&&c.each(c.cache,function(){this.events&&this.events[e]&&c.event.trigger(a,b,this.handle.elem)})}if(!d||d.nodeType===3||d.nodeType===8)return w;a.result=w;a.target=d;b=c.makeArray(b);b.unshift(a)}a.currentTarget=d;(f=c.data(d,"handle"))&&f.apply(d,b);f=d.parentNode||d.ownerDocument;try{if(!(d&&d.nodeName&&c.noData[d.nodeName.toLowerCase()]))if(d["on"+e]&&d["on"+e].apply(d,b)===false)a.result=false}catch(j){}if(!a.isPropagationStopped()&&
f)c.event.trigger(a,b,f,true);else if(!a.isDefaultPrevented()){f=a.target;var i,o=c.nodeName(f,"a")&&e==="click",k=c.event.special[e]||{};if((!k._default||k._default.call(d,a)===false)&&!o&&!(f&&f.nodeName&&c.noData[f.nodeName.toLowerCase()])){try{if(f[e]){if(i=f["on"+e])f["on"+e]=null;c.event.triggered=true;f[e]()}}catch(n){}if(i)f["on"+e]=i;c.event.triggered=false}}},handle:function(a){var b,d,f,e;a=arguments[0]=c.event.fix(a||A.event);a.currentTarget=this;b=a.type.indexOf(".")<0&&!a.exclusive;
if(!b){d=a.type.split(".");a.type=d.shift();f=new RegExp("(^|\\.)"+d.slice(0).sort().join("\\.(?:.*\\.)?")+"(\\.|$)")}e=c.data(this,"events");d=e[a.type];if(e&&d){d=d.slice(0);e=0;for(var j=d.length;e<j;e++){var i=d[e];if(b||f.test(i.namespace)){a.handler=i.handler;a.data=i.data;a.handleObj=i;i=i.handler.apply(this,arguments);if(i!==w){a.result=i;if(i===false){a.preventDefault();a.stopPropagation()}}if(a.isImmediatePropagationStopped())break}}}return a.result},props:"altKey attrChange attrName bubbles button cancelable charCode clientX clientY ctrlKey currentTarget data detail eventPhase fromElement handler keyCode layerX layerY metaKey newValue offsetX offsetY originalTarget pageX pageY prevValue relatedNode relatedTarget screenX screenY shiftKey srcElement target toElement view wheelDelta which".split(" "),
fix:function(a){if(a[G])return a;var b=a;a=c.Event(b);for(var d=this.props.length,f;d;){f=this.props[--d];a[f]=b[f]}if(!a.target)a.target=a.srcElement||s;if(a.target.nodeType===3)a.target=a.target.parentNode;if(!a.relatedTarget&&a.fromElement)a.relatedTarget=a.fromElement===a.target?a.toElement:a.fromElement;if(a.pageX==null&&a.clientX!=null){b=s.documentElement;d=s.body;a.pageX=a.clientX+(b&&b.scrollLeft||d&&d.scrollLeft||0)-(b&&b.clientLeft||d&&d.clientLeft||0);a.pageY=a.clientY+(b&&b.scrollTop||
d&&d.scrollTop||0)-(b&&b.clientTop||d&&d.clientTop||0)}if(!a.which&&(a.charCode||a.charCode===0?a.charCode:a.keyCode))a.which=a.charCode||a.keyCode;if(!a.metaKey&&a.ctrlKey)a.metaKey=a.ctrlKey;if(!a.which&&a.button!==w)a.which=a.button&1?1:a.button&2?3:a.button&4?2:0;return a},guid:1E8,proxy:c.proxy,special:{ready:{setup:c.bindReady,teardown:c.noop},live:{add:function(a){c.event.add(this,a.origType,c.extend({},a,{handler:oa}))},remove:function(a){var b=true,d=a.origType.replace(O,"");c.each(c.data(this,
"events").live||[],function(){if(d===this.origType.replace(O,""))return b=false});b&&c.event.remove(this,a.origType,oa)}},beforeunload:{setup:function(a,b,d){if(this.setInterval)this.onbeforeunload=d;return false},teardown:function(a,b){if(this.onbeforeunload===b)this.onbeforeunload=null}}}};var Ca=s.removeEventListener?function(a,b,d){a.removeEventListener(b,d,false)}:function(a,b,d){a.detachEvent("on"+b,d)};c.Event=function(a){if(!this.preventDefault)return new c.Event(a);if(a&&a.type){this.originalEvent=
a;this.type=a.type}else this.type=a;this.timeStamp=J();this[G]=true};c.Event.prototype={preventDefault:function(){this.isDefaultPrevented=Z;var a=this.originalEvent;if(a){a.preventDefault&&a.preventDefault();a.returnValue=false}},stopPropagation:function(){this.isPropagationStopped=Z;var a=this.originalEvent;if(a){a.stopPropagation&&a.stopPropagation();a.cancelBubble=true}},stopImmediatePropagation:function(){this.isImmediatePropagationStopped=Z;this.stopPropagation()},isDefaultPrevented:Y,isPropagationStopped:Y,
isImmediatePropagationStopped:Y};var Da=function(a){var b=a.relatedTarget;try{for(;b&&b!==this;)b=b.parentNode;if(b!==this){a.type=a.data;c.event.handle.apply(this,arguments)}}catch(d){}},Ea=function(a){a.type=a.data;c.event.handle.apply(this,arguments)};c.each({mouseenter:"mouseover",mouseleave:"mouseout"},function(a,b){c.event.special[a]={setup:function(d){c.event.add(this,b,d&&d.selector?Ea:Da,a)},teardown:function(d){c.event.remove(this,b,d&&d.selector?Ea:Da)}}});if(!c.support.submitBubbles)c.event.special.submit=
{setup:function(){if(this.nodeName.toLowerCase()!=="form"){c.event.add(this,"click.specialSubmit",function(a){var b=a.target,d=b.type;if((d==="submit"||d==="image")&&c(b).closest("form").length)return na("submit",this,arguments)});c.event.add(this,"keypress.specialSubmit",function(a){var b=a.target,d=b.type;if((d==="text"||d==="password")&&c(b).closest("form").length&&a.keyCode===13)return na("submit",this,arguments)})}else return false},teardown:function(){c.event.remove(this,".specialSubmit")}};
if(!c.support.changeBubbles){var da=/textarea|input|select/i,ea,Fa=function(a){var b=a.type,d=a.value;if(b==="radio"||b==="checkbox")d=a.checked;else if(b==="select-multiple")d=a.selectedIndex>-1?c.map(a.options,function(f){return f.selected}).join("-"):"";else if(a.nodeName.toLowerCase()==="select")d=a.selectedIndex;return d},fa=function(a,b){var d=a.target,f,e;if(!(!da.test(d.nodeName)||d.readOnly)){f=c.data(d,"_change_data");e=Fa(d);if(a.type!=="focusout"||d.type!=="radio")c.data(d,"_change_data",
e);if(!(f===w||e===f))if(f!=null||e){a.type="change";return c.event.trigger(a,b,d)}}};c.event.special.change={filters:{focusout:fa,click:function(a){var b=a.target,d=b.type;if(d==="radio"||d==="checkbox"||b.nodeName.toLowerCase()==="select")return fa.call(this,a)},keydown:function(a){var b=a.target,d=b.type;if(a.keyCode===13&&b.nodeName.toLowerCase()!=="textarea"||a.keyCode===32&&(d==="checkbox"||d==="radio")||d==="select-multiple")return fa.call(this,a)},beforeactivate:function(a){a=a.target;c.data(a,
"_change_data",Fa(a))}},setup:function(){if(this.type==="file")return false;for(var a in ea)c.event.add(this,a+".specialChange",ea[a]);return da.test(this.nodeName)},teardown:function(){c.event.remove(this,".specialChange");return da.test(this.nodeName)}};ea=c.event.special.change.filters}s.addEventListener&&c.each({focus:"focusin",blur:"focusout"},function(a,b){function d(f){f=c.event.fix(f);f.type=b;return c.event.handle.call(this,f)}c.event.special[b]={setup:function(){this.addEventListener(a,
d,true)},teardown:function(){this.removeEventListener(a,d,true)}}});c.each(["bind","one"],function(a,b){c.fn[b]=function(d,f,e){if(typeof d==="object"){for(var j in d)this[b](j,f,d[j],e);return this}if(c.isFunction(f)){e=f;f=w}var i=b==="one"?c.proxy(e,function(k){c(this).unbind(k,i);return e.apply(this,arguments)}):e;if(d==="unload"&&b!=="one")this.one(d,f,e);else{j=0;for(var o=this.length;j<o;j++)c.event.add(this[j],d,i,f)}return this}});c.fn.extend({unbind:function(a,b){if(typeof a==="object"&&
!a.preventDefault)for(var d in a)this.unbind(d,a[d]);else{d=0;for(var f=this.length;d<f;d++)c.event.remove(this[d],a,b)}return this},delegate:function(a,b,d,f){return this.live(b,d,f,a)},undelegate:function(a,b,d){return arguments.length===0?this.unbind("live"):this.die(b,null,d,a)},trigger:function(a,b){return this.each(function(){c.event.trigger(a,b,this)})},triggerHandler:function(a,b){if(this[0]){a=c.Event(a);a.preventDefault();a.stopPropagation();c.event.trigger(a,b,this[0]);return a.result}},
toggle:function(a){for(var b=arguments,d=1;d<b.length;)c.proxy(a,b[d++]);return this.click(c.proxy(a,function(f){var e=(c.data(this,"lastToggle"+a.guid)||0)%d;c.data(this,"lastToggle"+a.guid,e+1);f.preventDefault();return b[e].apply(this,arguments)||false}))},hover:function(a,b){return this.mouseenter(a).mouseleave(b||a)}});var Ga={focus:"focusin",blur:"focusout",mouseenter:"mouseover",mouseleave:"mouseout"};c.each(["live","die"],function(a,b){c.fn[b]=function(d,f,e,j){var i,o=0,k,n,r=j||this.selector,
u=j?this:c(this.context);if(c.isFunction(f)){e=f;f=w}for(d=(d||"").split(" ");(i=d[o++])!=null;){j=O.exec(i);k="";if(j){k=j[0];i=i.replace(O,"")}if(i==="hover")d.push("mouseenter"+k,"mouseleave"+k);else{n=i;if(i==="focus"||i==="blur"){d.push(Ga[i]+k);i+=k}else i=(Ga[i]||i)+k;b==="live"?u.each(function(){c.event.add(this,pa(i,r),{data:f,selector:r,handler:e,origType:i,origHandler:e,preType:n})}):u.unbind(pa(i,r),e)}}return this}});c.each("blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error".split(" "),
function(a,b){c.fn[b]=function(d){return d?this.bind(b,d):this.trigger(b)};if(c.attrFn)c.attrFn[b]=true});A.attachEvent&&!A.addEventListener&&A.attachEvent("onunload",function(){for(var a in c.cache)if(c.cache[a].handle)try{c.event.remove(c.cache[a].handle.elem)}catch(b){}});(function(){function a(g){for(var h="",l,m=0;g[m];m++){l=g[m];if(l.nodeType===3||l.nodeType===4)h+=l.nodeValue;else if(l.nodeType!==8)h+=a(l.childNodes)}return h}function b(g,h,l,m,q,p){q=0;for(var v=m.length;q<v;q++){var t=m[q];
if(t){t=t[g];for(var y=false;t;){if(t.sizcache===l){y=m[t.sizset];break}if(t.nodeType===1&&!p){t.sizcache=l;t.sizset=q}if(t.nodeName.toLowerCase()===h){y=t;break}t=t[g]}m[q]=y}}}function d(g,h,l,m,q,p){q=0;for(var v=m.length;q<v;q++){var t=m[q];if(t){t=t[g];for(var y=false;t;){if(t.sizcache===l){y=m[t.sizset];break}if(t.nodeType===1){if(!p){t.sizcache=l;t.sizset=q}if(typeof h!=="string"){if(t===h){y=true;break}}else if(k.filter(h,[t]).length>0){y=t;break}}t=t[g]}m[q]=y}}}var f=/((?:\((?:\([^()]+\)|[^()]+)+\)|\[(?:\[[^[\]]*\]|['"][^'"]*['"]|[^[\]'"]+)+\]|\\.|[^ >+~,(\[\\]+)+|[>+~])(\s*,\s*)?((?:.|\r|\n)*)/g,
e=0,j=Object.prototype.toString,i=false,o=true;[0,0].sort(function(){o=false;return 0});var k=function(g,h,l,m){l=l||[];var q=h=h||s;if(h.nodeType!==1&&h.nodeType!==9)return[];if(!g||typeof g!=="string")return l;for(var p=[],v,t,y,S,H=true,M=x(h),I=g;(f.exec(""),v=f.exec(I))!==null;){I=v[3];p.push(v[1]);if(v[2]){S=v[3];break}}if(p.length>1&&r.exec(g))if(p.length===2&&n.relative[p[0]])t=ga(p[0]+p[1],h);else for(t=n.relative[p[0]]?[h]:k(p.shift(),h);p.length;){g=p.shift();if(n.relative[g])g+=p.shift();
t=ga(g,t)}else{if(!m&&p.length>1&&h.nodeType===9&&!M&&n.match.ID.test(p[0])&&!n.match.ID.test(p[p.length-1])){v=k.find(p.shift(),h,M);h=v.expr?k.filter(v.expr,v.set)[0]:v.set[0]}if(h){v=m?{expr:p.pop(),set:z(m)}:k.find(p.pop(),p.length===1&&(p[0]==="~"||p[0]==="+")&&h.parentNode?h.parentNode:h,M);t=v.expr?k.filter(v.expr,v.set):v.set;if(p.length>0)y=z(t);else H=false;for(;p.length;){var D=p.pop();v=D;if(n.relative[D])v=p.pop();else D="";if(v==null)v=h;n.relative[D](y,v,M)}}else y=[]}y||(y=t);y||k.error(D||
g);if(j.call(y)==="[object Array]")if(H)if(h&&h.nodeType===1)for(g=0;y[g]!=null;g++){if(y[g]&&(y[g]===true||y[g].nodeType===1&&E(h,y[g])))l.push(t[g])}else for(g=0;y[g]!=null;g++)y[g]&&y[g].nodeType===1&&l.push(t[g]);else l.push.apply(l,y);else z(y,l);if(S){k(S,q,l,m);k.uniqueSort(l)}return l};k.uniqueSort=function(g){if(B){i=o;g.sort(B);if(i)for(var h=1;h<g.length;h++)g[h]===g[h-1]&&g.splice(h--,1)}return g};k.matches=function(g,h){return k(g,null,null,h)};k.find=function(g,h,l){var m,q;if(!g)return[];
for(var p=0,v=n.order.length;p<v;p++){var t=n.order[p];if(q=n.leftMatch[t].exec(g)){var y=q[1];q.splice(1,1);if(y.substr(y.length-1)!=="\\"){q[1]=(q[1]||"").replace(/\\/g,"");m=n.find[t](q,h,l);if(m!=null){g=g.replace(n.match[t],"");break}}}}m||(m=h.getElementsByTagName("*"));return{set:m,expr:g}};k.filter=function(g,h,l,m){for(var q=g,p=[],v=h,t,y,S=h&&h[0]&&x(h[0]);g&&h.length;){for(var H in n.filter)if((t=n.leftMatch[H].exec(g))!=null&&t[2]){var M=n.filter[H],I,D;D=t[1];y=false;t.splice(1,1);if(D.substr(D.length-
1)!=="\\"){if(v===p)p=[];if(n.preFilter[H])if(t=n.preFilter[H](t,v,l,p,m,S)){if(t===true)continue}else y=I=true;if(t)for(var U=0;(D=v[U])!=null;U++)if(D){I=M(D,t,U,v);var Ha=m^!!I;if(l&&I!=null)if(Ha)y=true;else v[U]=false;else if(Ha){p.push(D);y=true}}if(I!==w){l||(v=p);g=g.replace(n.match[H],"");if(!y)return[];break}}}if(g===q)if(y==null)k.error(g);else break;q=g}return v};k.error=function(g){throw"Syntax error, unrecognized expression: "+g;};var n=k.selectors={order:["ID","NAME","TAG"],match:{ID:/#((?:[\w\u00c0-\uFFFF-]|\\.)+)/,
CLASS:/\.((?:[\w\u00c0-\uFFFF-]|\\.)+)/,NAME:/\[name=['"]*((?:[\w\u00c0-\uFFFF-]|\\.)+)['"]*\]/,ATTR:/\[\s*((?:[\w\u00c0-\uFFFF-]|\\.)+)\s*(?:(\S?=)\s*(['"]*)(.*?)\3|)\s*\]/,TAG:/^((?:[\w\u00c0-\uFFFF\*-]|\\.)+)/,CHILD:/:(only|nth|last|first)-child(?:\((even|odd|[\dn+-]*)\))?/,POS:/:(nth|eq|gt|lt|first|last|even|odd)(?:\((\d*)\))?(?=[^-]|$)/,PSEUDO:/:((?:[\w\u00c0-\uFFFF-]|\\.)+)(?:\((['"]?)((?:\([^\)]+\)|[^\(\)]*)+)\2\))?/},leftMatch:{},attrMap:{"class":"className","for":"htmlFor"},attrHandle:{href:function(g){return g.getAttribute("href")}},
relative:{"+":function(g,h){var l=typeof h==="string",m=l&&!/\W/.test(h);l=l&&!m;if(m)h=h.toLowerCase();m=0;for(var q=g.length,p;m<q;m++)if(p=g[m]){for(;(p=p.previousSibling)&&p.nodeType!==1;);g[m]=l||p&&p.nodeName.toLowerCase()===h?p||false:p===h}l&&k.filter(h,g,true)},">":function(g,h){var l=typeof h==="string";if(l&&!/\W/.test(h)){h=h.toLowerCase();for(var m=0,q=g.length;m<q;m++){var p=g[m];if(p){l=p.parentNode;g[m]=l.nodeName.toLowerCase()===h?l:false}}}else{m=0;for(q=g.length;m<q;m++)if(p=g[m])g[m]=
l?p.parentNode:p.parentNode===h;l&&k.filter(h,g,true)}},"":function(g,h,l){var m=e++,q=d;if(typeof h==="string"&&!/\W/.test(h)){var p=h=h.toLowerCase();q=b}q("parentNode",h,m,g,p,l)},"~":function(g,h,l){var m=e++,q=d;if(typeof h==="string"&&!/\W/.test(h)){var p=h=h.toLowerCase();q=b}q("previousSibling",h,m,g,p,l)}},find:{ID:function(g,h,l){if(typeof h.getElementById!=="undefined"&&!l)return(g=h.getElementById(g[1]))?[g]:[]},NAME:function(g,h){if(typeof h.getElementsByName!=="undefined"){var l=[];
h=h.getElementsByName(g[1]);for(var m=0,q=h.length;m<q;m++)h[m].getAttribute("name")===g[1]&&l.push(h[m]);return l.length===0?null:l}},TAG:function(g,h){return h.getElementsByTagName(g[1])}},preFilter:{CLASS:function(g,h,l,m,q,p){g=" "+g[1].replace(/\\/g,"")+" ";if(p)return g;p=0;for(var v;(v=h[p])!=null;p++)if(v)if(q^(v.className&&(" "+v.className+" ").replace(/[\t\n]/g," ").indexOf(g)>=0))l||m.push(v);else if(l)h[p]=false;return false},ID:function(g){return g[1].replace(/\\/g,"")},TAG:function(g){return g[1].toLowerCase()},
CHILD:function(g){if(g[1]==="nth"){var h=/(-?)(\d*)n((?:\+|-)?\d*)/.exec(g[2]==="even"&&"2n"||g[2]==="odd"&&"2n+1"||!/\D/.test(g[2])&&"0n+"+g[2]||g[2]);g[2]=h[1]+(h[2]||1)-0;g[3]=h[3]-0}g[0]=e++;return g},ATTR:function(g,h,l,m,q,p){h=g[1].replace(/\\/g,"");if(!p&&n.attrMap[h])g[1]=n.attrMap[h];if(g[2]==="~=")g[4]=" "+g[4]+" ";return g},PSEUDO:function(g,h,l,m,q){if(g[1]==="not")if((f.exec(g[3])||"").length>1||/^\w/.test(g[3]))g[3]=k(g[3],null,null,h);else{g=k.filter(g[3],h,l,true^q);l||m.push.apply(m,
g);return false}else if(n.match.POS.test(g[0])||n.match.CHILD.test(g[0]))return true;return g},POS:function(g){g.unshift(true);return g}},filters:{enabled:function(g){return g.disabled===false&&g.type!=="hidden"},disabled:function(g){return g.disabled===true},checked:function(g){return g.checked===true},selected:function(g){return g.selected===true},parent:function(g){return!!g.firstChild},empty:function(g){return!g.firstChild},has:function(g,h,l){return!!k(l[3],g).length},header:function(g){return/h\d/i.test(g.nodeName)},
text:function(g){return"text"===g.type},radio:function(g){return"radio"===g.type},checkbox:function(g){return"checkbox"===g.type},file:function(g){return"file"===g.type},password:function(g){return"password"===g.type},submit:function(g){return"submit"===g.type},image:function(g){return"image"===g.type},reset:function(g){return"reset"===g.type},button:function(g){return"button"===g.type||g.nodeName.toLowerCase()==="button"},input:function(g){return/input|select|textarea|button/i.test(g.nodeName)}},
setFilters:{first:function(g,h){return h===0},last:function(g,h,l,m){return h===m.length-1},even:function(g,h){return h%2===0},odd:function(g,h){return h%2===1},lt:function(g,h,l){return h<l[3]-0},gt:function(g,h,l){return h>l[3]-0},nth:function(g,h,l){return l[3]-0===h},eq:function(g,h,l){return l[3]-0===h}},filter:{PSEUDO:function(g,h,l,m){var q=h[1],p=n.filters[q];if(p)return p(g,l,h,m);else if(q==="contains")return(g.textContent||g.innerText||a([g])||"").indexOf(h[3])>=0;else if(q==="not"){h=
h[3];l=0;for(m=h.length;l<m;l++)if(h[l]===g)return false;return true}else k.error("Syntax error, unrecognized expression: "+q)},CHILD:function(g,h){var l=h[1],m=g;switch(l){case "only":case "first":for(;m=m.previousSibling;)if(m.nodeType===1)return false;if(l==="first")return true;m=g;case "last":for(;m=m.nextSibling;)if(m.nodeType===1)return false;return true;case "nth":l=h[2];var q=h[3];if(l===1&&q===0)return true;h=h[0];var p=g.parentNode;if(p&&(p.sizcache!==h||!g.nodeIndex)){var v=0;for(m=p.firstChild;m;m=
m.nextSibling)if(m.nodeType===1)m.nodeIndex=++v;p.sizcache=h}g=g.nodeIndex-q;return l===0?g===0:g%l===0&&g/l>=0}},ID:function(g,h){return g.nodeType===1&&g.getAttribute("id")===h},TAG:function(g,h){return h==="*"&&g.nodeType===1||g.nodeName.toLowerCase()===h},CLASS:function(g,h){return(" "+(g.className||g.getAttribute("class"))+" ").indexOf(h)>-1},ATTR:function(g,h){var l=h[1];g=n.attrHandle[l]?n.attrHandle[l](g):g[l]!=null?g[l]:g.getAttribute(l);l=g+"";var m=h[2];h=h[4];return g==null?m==="!=":m===
"="?l===h:m==="*="?l.indexOf(h)>=0:m==="~="?(" "+l+" ").indexOf(h)>=0:!h?l&&g!==false:m==="!="?l!==h:m==="^="?l.indexOf(h)===0:m==="$="?l.substr(l.length-h.length)===h:m==="|="?l===h||l.substr(0,h.length+1)===h+"-":false},POS:function(g,h,l,m){var q=n.setFilters[h[2]];if(q)return q(g,l,h,m)}}},r=n.match.POS;for(var u in n.match){n.match[u]=new RegExp(n.match[u].source+/(?![^\[]*\])(?![^\(]*\))/.source);n.leftMatch[u]=new RegExp(/(^(?:.|\r|\n)*?)/.source+n.match[u].source.replace(/\\(\d+)/g,function(g,
h){return"\\"+(h-0+1)}))}var z=function(g,h){g=Array.prototype.slice.call(g,0);if(h){h.push.apply(h,g);return h}return g};try{Array.prototype.slice.call(s.documentElement.childNodes,0)}catch(C){z=function(g,h){h=h||[];if(j.call(g)==="[object Array]")Array.prototype.push.apply(h,g);else if(typeof g.length==="number")for(var l=0,m=g.length;l<m;l++)h.push(g[l]);else for(l=0;g[l];l++)h.push(g[l]);return h}}var B;if(s.documentElement.compareDocumentPosition)B=function(g,h){if(!g.compareDocumentPosition||
!h.compareDocumentPosition){if(g==h)i=true;return g.compareDocumentPosition?-1:1}g=g.compareDocumentPosition(h)&4?-1:g===h?0:1;if(g===0)i=true;return g};else if("sourceIndex"in s.documentElement)B=function(g,h){if(!g.sourceIndex||!h.sourceIndex){if(g==h)i=true;return g.sourceIndex?-1:1}g=g.sourceIndex-h.sourceIndex;if(g===0)i=true;return g};else if(s.createRange)B=function(g,h){if(!g.ownerDocument||!h.ownerDocument){if(g==h)i=true;return g.ownerDocument?-1:1}var l=g.ownerDocument.createRange(),m=
h.ownerDocument.createRange();l.setStart(g,0);l.setEnd(g,0);m.setStart(h,0);m.setEnd(h,0);g=l.compareBoundaryPoints(Range.START_TO_END,m);if(g===0)i=true;return g};(function(){var g=s.createElement("div"),h="script"+(new Date).getTime();g.innerHTML="<a name='"+h+"'/>";var l=s.documentElement;l.insertBefore(g,l.firstChild);if(s.getElementById(h)){n.find.ID=function(m,q,p){if(typeof q.getElementById!=="undefined"&&!p)return(q=q.getElementById(m[1]))?q.id===m[1]||typeof q.getAttributeNode!=="undefined"&&
q.getAttributeNode("id").nodeValue===m[1]?[q]:w:[]};n.filter.ID=function(m,q){var p=typeof m.getAttributeNode!=="undefined"&&m.getAttributeNode("id");return m.nodeType===1&&p&&p.nodeValue===q}}l.removeChild(g);l=g=null})();(function(){var g=s.createElement("div");g.appendChild(s.createComment(""));if(g.getElementsByTagName("*").length>0)n.find.TAG=function(h,l){l=l.getElementsByTagName(h[1]);if(h[1]==="*"){h=[];for(var m=0;l[m];m++)l[m].nodeType===1&&h.push(l[m]);l=h}return l};g.innerHTML="<a href='#'></a>";
if(g.firstChild&&typeof g.firstChild.getAttribute!=="undefined"&&g.firstChild.getAttribute("href")!=="#")n.attrHandle.href=function(h){return h.getAttribute("href",2)};g=null})();s.querySelectorAll&&function(){var g=k,h=s.createElement("div");h.innerHTML="<p class='TEST'></p>";if(!(h.querySelectorAll&&h.querySelectorAll(".TEST").length===0)){k=function(m,q,p,v){q=q||s;if(!v&&q.nodeType===9&&!x(q))try{return z(q.querySelectorAll(m),p)}catch(t){}return g(m,q,p,v)};for(var l in g)k[l]=g[l];h=null}}();
(function(){var g=s.createElement("div");g.innerHTML="<div class='test e'></div><div class='test'></div>";if(!(!g.getElementsByClassName||g.getElementsByClassName("e").length===0)){g.lastChild.className="e";if(g.getElementsByClassName("e").length!==1){n.order.splice(1,0,"CLASS");n.find.CLASS=function(h,l,m){if(typeof l.getElementsByClassName!=="undefined"&&!m)return l.getElementsByClassName(h[1])};g=null}}})();var E=s.compareDocumentPosition?function(g,h){return!!(g.compareDocumentPosition(h)&16)}:
function(g,h){return g!==h&&(g.contains?g.contains(h):true)},x=function(g){return(g=(g?g.ownerDocument||g:0).documentElement)?g.nodeName!=="HTML":false},ga=function(g,h){var l=[],m="",q;for(h=h.nodeType?[h]:h;q=n.match.PSEUDO.exec(g);){m+=q[0];g=g.replace(n.match.PSEUDO,"")}g=n.relative[g]?g+"*":g;q=0;for(var p=h.length;q<p;q++)k(g,h[q],l);return k.filter(m,l)};c.find=k;c.expr=k.selectors;c.expr[":"]=c.expr.filters;c.unique=k.uniqueSort;c.text=a;c.isXMLDoc=x;c.contains=E})();var eb=/Until$/,fb=/^(?:parents|prevUntil|prevAll)/,
gb=/,/;R=Array.prototype.slice;var Ia=function(a,b,d){if(c.isFunction(b))return c.grep(a,function(e,j){return!!b.call(e,j,e)===d});else if(b.nodeType)return c.grep(a,function(e){return e===b===d});else if(typeof b==="string"){var f=c.grep(a,function(e){return e.nodeType===1});if(Ua.test(b))return c.filter(b,f,!d);else b=c.filter(b,f)}return c.grep(a,function(e){return c.inArray(e,b)>=0===d})};c.fn.extend({find:function(a){for(var b=this.pushStack("","find",a),d=0,f=0,e=this.length;f<e;f++){d=b.length;
c.find(a,this[f],b);if(f>0)for(var j=d;j<b.length;j++)for(var i=0;i<d;i++)if(b[i]===b[j]){b.splice(j--,1);break}}return b},has:function(a){var b=c(a);return this.filter(function(){for(var d=0,f=b.length;d<f;d++)if(c.contains(this,b[d]))return true})},not:function(a){return this.pushStack(Ia(this,a,false),"not",a)},filter:function(a){return this.pushStack(Ia(this,a,true),"filter",a)},is:function(a){return!!a&&c.filter(a,this).length>0},closest:function(a,b){if(c.isArray(a)){var d=[],f=this[0],e,j=
{},i;if(f&&a.length){e=0;for(var o=a.length;e<o;e++){i=a[e];j[i]||(j[i]=c.expr.match.POS.test(i)?c(i,b||this.context):i)}for(;f&&f.ownerDocument&&f!==b;){for(i in j){e=j[i];if(e.jquery?e.index(f)>-1:c(f).is(e)){d.push({selector:i,elem:f});delete j[i]}}f=f.parentNode}}return d}var k=c.expr.match.POS.test(a)?c(a,b||this.context):null;return this.map(function(n,r){for(;r&&r.ownerDocument&&r!==b;){if(k?k.index(r)>-1:c(r).is(a))return r;r=r.parentNode}return null})},index:function(a){if(!a||typeof a===
"string")return c.inArray(this[0],a?c(a):this.parent().children());return c.inArray(a.jquery?a[0]:a,this)},add:function(a,b){a=typeof a==="string"?c(a,b||this.context):c.makeArray(a);b=c.merge(this.get(),a);return this.pushStack(qa(a[0])||qa(b[0])?b:c.unique(b))},andSelf:function(){return this.add(this.prevObject)}});c.each({parent:function(a){return(a=a.parentNode)&&a.nodeType!==11?a:null},parents:function(a){return c.dir(a,"parentNode")},parentsUntil:function(a,b,d){return c.dir(a,"parentNode",
d)},next:function(a){return c.nth(a,2,"nextSibling")},prev:function(a){return c.nth(a,2,"previousSibling")},nextAll:function(a){return c.dir(a,"nextSibling")},prevAll:function(a){return c.dir(a,"previousSibling")},nextUntil:function(a,b,d){return c.dir(a,"nextSibling",d)},prevUntil:function(a,b,d){return c.dir(a,"previousSibling",d)},siblings:function(a){return c.sibling(a.parentNode.firstChild,a)},children:function(a){return c.sibling(a.firstChild)},contents:function(a){return c.nodeName(a,"iframe")?
a.contentDocument||a.contentWindow.document:c.makeArray(a.childNodes)}},function(a,b){c.fn[a]=function(d,f){var e=c.map(this,b,d);eb.test(a)||(f=d);if(f&&typeof f==="string")e=c.filter(f,e);e=this.length>1?c.unique(e):e;if((this.length>1||gb.test(f))&&fb.test(a))e=e.reverse();return this.pushStack(e,a,R.call(arguments).join(","))}});c.extend({filter:function(a,b,d){if(d)a=":not("+a+")";return c.find.matches(a,b)},dir:function(a,b,d){var f=[];for(a=a[b];a&&a.nodeType!==9&&(d===w||a.nodeType!==1||!c(a).is(d));){a.nodeType===
1&&f.push(a);a=a[b]}return f},nth:function(a,b,d){b=b||1;for(var f=0;a;a=a[d])if(a.nodeType===1&&++f===b)break;return a},sibling:function(a,b){for(var d=[];a;a=a.nextSibling)a.nodeType===1&&a!==b&&d.push(a);return d}});var Ja=/ jQuery\d+="(?:\d+|null)"/g,V=/^\s+/,Ka=/(<([\w:]+)[^>]*?)\/>/g,hb=/^(?:area|br|col|embed|hr|img|input|link|meta|param)$/i,La=/<([\w:]+)/,ib=/<tbody/i,jb=/<|&#?\w+;/,ta=/<script|<object|<embed|<option|<style/i,ua=/checked\s*(?:[^=]|=\s*.checked.)/i,Ma=function(a,b,d){return hb.test(d)?
a:b+"></"+d+">"},F={option:[1,"<select multiple='multiple'>","</select>"],legend:[1,"<fieldset>","</fieldset>"],thead:[1,"<table>","</table>"],tr:[2,"<table><tbody>","</tbody></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],col:[2,"<table><tbody></tbody><colgroup>","</colgroup></table>"],area:[1,"<map>","</map>"],_default:[0,"",""]};F.optgroup=F.option;F.tbody=F.tfoot=F.colgroup=F.caption=F.thead;F.th=F.td;if(!c.support.htmlSerialize)F._default=[1,"div<div>","</div>"];c.fn.extend({text:function(a){if(c.isFunction(a))return this.each(function(b){var d=
c(this);d.text(a.call(this,b,d.text()))});if(typeof a!=="object"&&a!==w)return this.empty().append((this[0]&&this[0].ownerDocument||s).createTextNode(a));return c.text(this)},wrapAll:function(a){if(c.isFunction(a))return this.each(function(d){c(this).wrapAll(a.call(this,d))});if(this[0]){var b=c(a,this[0].ownerDocument).eq(0).clone(true);this[0].parentNode&&b.insertBefore(this[0]);b.map(function(){for(var d=this;d.firstChild&&d.firstChild.nodeType===1;)d=d.firstChild;return d}).append(this)}return this},
wrapInner:function(a){if(c.isFunction(a))return this.each(function(b){c(this).wrapInner(a.call(this,b))});return this.each(function(){var b=c(this),d=b.contents();d.length?d.wrapAll(a):b.append(a)})},wrap:function(a){return this.each(function(){c(this).wrapAll(a)})},unwrap:function(){return this.parent().each(function(){c.nodeName(this,"body")||c(this).replaceWith(this.childNodes)}).end()},append:function(){return this.domManip(arguments,true,function(a){this.nodeType===1&&this.appendChild(a)})},
prepend:function(){return this.domManip(arguments,true,function(a){this.nodeType===1&&this.insertBefore(a,this.firstChild)})},before:function(){if(this[0]&&this[0].parentNode)return this.domManip(arguments,false,function(b){this.parentNode.insertBefore(b,this)});else if(arguments.length){var a=c(arguments[0]);a.push.apply(a,this.toArray());return this.pushStack(a,"before",arguments)}},after:function(){if(this[0]&&this[0].parentNode)return this.domManip(arguments,false,function(b){this.parentNode.insertBefore(b,
this.nextSibling)});else if(arguments.length){var a=this.pushStack(this,"after",arguments);a.push.apply(a,c(arguments[0]).toArray());return a}},remove:function(a,b){for(var d=0,f;(f=this[d])!=null;d++)if(!a||c.filter(a,[f]).length){if(!b&&f.nodeType===1){c.cleanData(f.getElementsByTagName("*"));c.cleanData([f])}f.parentNode&&f.parentNode.removeChild(f)}return this},empty:function(){for(var a=0,b;(b=this[a])!=null;a++)for(b.nodeType===1&&c.cleanData(b.getElementsByTagName("*"));b.firstChild;)b.removeChild(b.firstChild);
return this},clone:function(a){var b=this.map(function(){if(!c.support.noCloneEvent&&!c.isXMLDoc(this)){var d=this.outerHTML,f=this.ownerDocument;if(!d){d=f.createElement("div");d.appendChild(this.cloneNode(true));d=d.innerHTML}return c.clean([d.replace(Ja,"").replace(/=([^="'>\s]+\/)>/g,'="$1">').replace(V,"")],f)[0]}else return this.cloneNode(true)});if(a===true){ra(this,b);ra(this.find("*"),b.find("*"))}return b},html:function(a){if(a===w)return this[0]&&this[0].nodeType===1?this[0].innerHTML.replace(Ja,
""):null;else if(typeof a==="string"&&!ta.test(a)&&(c.support.leadingWhitespace||!V.test(a))&&!F[(La.exec(a)||["",""])[1].toLowerCase()]){a=a.replace(Ka,Ma);try{for(var b=0,d=this.length;b<d;b++)if(this[b].nodeType===1){c.cleanData(this[b].getElementsByTagName("*"));this[b].innerHTML=a}}catch(f){this.empty().append(a)}}else c.isFunction(a)?this.each(function(e){var j=c(this),i=j.html();j.empty().append(function(){return a.call(this,e,i)})}):this.empty().append(a);return this},replaceWith:function(a){if(this[0]&&
this[0].parentNode){if(c.isFunction(a))return this.each(function(b){var d=c(this),f=d.html();d.replaceWith(a.call(this,b,f))});if(typeof a!=="string")a=c(a).detach();return this.each(function(){var b=this.nextSibling,d=this.parentNode;c(this).remove();b?c(b).before(a):c(d).append(a)})}else return this.pushStack(c(c.isFunction(a)?a():a),"replaceWith",a)},detach:function(a){return this.remove(a,true)},domManip:function(a,b,d){function f(u){return c.nodeName(u,"table")?u.getElementsByTagName("tbody")[0]||
u.appendChild(u.ownerDocument.createElement("tbody")):u}var e,j,i=a[0],o=[],k;if(!c.support.checkClone&&arguments.length===3&&typeof i==="string"&&ua.test(i))return this.each(function(){c(this).domManip(a,b,d,true)});if(c.isFunction(i))return this.each(function(u){var z=c(this);a[0]=i.call(this,u,b?z.html():w);z.domManip(a,b,d)});if(this[0]){e=i&&i.parentNode;e=c.support.parentNode&&e&&e.nodeType===11&&e.childNodes.length===this.length?{fragment:e}:sa(a,this,o);k=e.fragment;if(j=k.childNodes.length===
1?(k=k.firstChild):k.firstChild){b=b&&c.nodeName(j,"tr");for(var n=0,r=this.length;n<r;n++)d.call(b?f(this[n],j):this[n],n>0||e.cacheable||this.length>1?k.cloneNode(true):k)}o.length&&c.each(o,Qa)}return this}});c.fragments={};c.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(a,b){c.fn[a]=function(d){var f=[];d=c(d);var e=this.length===1&&this[0].parentNode;if(e&&e.nodeType===11&&e.childNodes.length===1&&d.length===1){d[b](this[0]);
return this}else{e=0;for(var j=d.length;e<j;e++){var i=(e>0?this.clone(true):this).get();c.fn[b].apply(c(d[e]),i);f=f.concat(i)}return this.pushStack(f,a,d.selector)}}});c.extend({clean:function(a,b,d,f){b=b||s;if(typeof b.createElement==="undefined")b=b.ownerDocument||b[0]&&b[0].ownerDocument||s;for(var e=[],j=0,i;(i=a[j])!=null;j++){if(typeof i==="number")i+="";if(i){if(typeof i==="string"&&!jb.test(i))i=b.createTextNode(i);else if(typeof i==="string"){i=i.replace(Ka,Ma);var o=(La.exec(i)||["",
""])[1].toLowerCase(),k=F[o]||F._default,n=k[0],r=b.createElement("div");for(r.innerHTML=k[1]+i+k[2];n--;)r=r.lastChild;if(!c.support.tbody){n=ib.test(i);o=o==="table"&&!n?r.firstChild&&r.firstChild.childNodes:k[1]==="<table>"&&!n?r.childNodes:[];for(k=o.length-1;k>=0;--k)c.nodeName(o[k],"tbody")&&!o[k].childNodes.length&&o[k].parentNode.removeChild(o[k])}!c.support.leadingWhitespace&&V.test(i)&&r.insertBefore(b.createTextNode(V.exec(i)[0]),r.firstChild);i=r.childNodes}if(i.nodeType)e.push(i);else e=
c.merge(e,i)}}if(d)for(j=0;e[j];j++)if(f&&c.nodeName(e[j],"script")&&(!e[j].type||e[j].type.toLowerCase()==="text/javascript"))f.push(e[j].parentNode?e[j].parentNode.removeChild(e[j]):e[j]);else{e[j].nodeType===1&&e.splice.apply(e,[j+1,0].concat(c.makeArray(e[j].getElementsByTagName("script"))));d.appendChild(e[j])}return e},cleanData:function(a){for(var b,d,f=c.cache,e=c.event.special,j=c.support.deleteExpando,i=0,o;(o=a[i])!=null;i++)if(d=o[c.expando]){b=f[d];if(b.events)for(var k in b.events)e[k]?
c.event.remove(o,k):Ca(o,k,b.handle);if(j)delete o[c.expando];else o.removeAttribute&&o.removeAttribute(c.expando);delete f[d]}}});var kb=/z-?index|font-?weight|opacity|zoom|line-?height/i,Na=/alpha\([^)]*\)/,Oa=/opacity=([^)]*)/,ha=/float/i,ia=/-([a-z])/ig,lb=/([A-Z])/g,mb=/^-?\d+(?:px)?$/i,nb=/^-?\d/,ob={position:"absolute",visibility:"hidden",display:"block"},pb=["Left","Right"],qb=["Top","Bottom"],rb=s.defaultView&&s.defaultView.getComputedStyle,Pa=c.support.cssFloat?"cssFloat":"styleFloat",ja=
function(a,b){return b.toUpperCase()};c.fn.css=function(a,b){return X(this,a,b,true,function(d,f,e){if(e===w)return c.curCSS(d,f);if(typeof e==="number"&&!kb.test(f))e+="px";c.style(d,f,e)})};c.extend({style:function(a,b,d){if(!a||a.nodeType===3||a.nodeType===8)return w;if((b==="width"||b==="height")&&parseFloat(d)<0)d=w;var f=a.style||a,e=d!==w;if(!c.support.opacity&&b==="opacity"){if(e){f.zoom=1;b=parseInt(d,10)+""==="NaN"?"":"alpha(opacity="+d*100+")";a=f.filter||c.curCSS(a,"filter")||"";f.filter=
Na.test(a)?a.replace(Na,b):b}return f.filter&&f.filter.indexOf("opacity=")>=0?parseFloat(Oa.exec(f.filter)[1])/100+"":""}if(ha.test(b))b=Pa;b=b.replace(ia,ja);if(e)f[b]=d;return f[b]},css:function(a,b,d,f){if(b==="width"||b==="height"){var e,j=b==="width"?pb:qb;function i(){e=b==="width"?a.offsetWidth:a.offsetHeight;f!=="border"&&c.each(j,function(){f||(e-=parseFloat(c.curCSS(a,"padding"+this,true))||0);if(f==="margin")e+=parseFloat(c.curCSS(a,"margin"+this,true))||0;else e-=parseFloat(c.curCSS(a,
"border"+this+"Width",true))||0})}a.offsetWidth!==0?i():c.swap(a,ob,i);return Math.max(0,Math.round(e))}return c.curCSS(a,b,d)},curCSS:function(a,b,d){var f,e=a.style;if(!c.support.opacity&&b==="opacity"&&a.currentStyle){f=Oa.test(a.currentStyle.filter||"")?parseFloat(RegExp.$1)/100+"":"";return f===""?"1":f}if(ha.test(b))b=Pa;if(!d&&e&&e[b])f=e[b];else if(rb){if(ha.test(b))b="float";b=b.replace(lb,"-$1").toLowerCase();e=a.ownerDocument.defaultView;if(!e)return null;if(a=e.getComputedStyle(a,null))f=
a.getPropertyValue(b);if(b==="opacity"&&f==="")f="1"}else if(a.currentStyle){d=b.replace(ia,ja);f=a.currentStyle[b]||a.currentStyle[d];if(!mb.test(f)&&nb.test(f)){b=e.left;var j=a.runtimeStyle.left;a.runtimeStyle.left=a.currentStyle.left;e.left=d==="fontSize"?"1em":f||0;f=e.pixelLeft+"px";e.left=b;a.runtimeStyle.left=j}}return f},swap:function(a,b,d){var f={};for(var e in b){f[e]=a.style[e];a.style[e]=b[e]}d.call(a);for(e in b)a.style[e]=f[e]}});if(c.expr&&c.expr.filters){c.expr.filters.hidden=function(a){var b=
a.offsetWidth,d=a.offsetHeight,f=a.nodeName.toLowerCase()==="tr";return b===0&&d===0&&!f?true:b>0&&d>0&&!f?false:c.curCSS(a,"display")==="none"};c.expr.filters.visible=function(a){return!c.expr.filters.hidden(a)}}var sb=J(),tb=/<script(.|\s)*?\/script>/gi,ub=/select|textarea/i,vb=/color|date|datetime|email|hidden|month|number|password|range|search|tel|text|time|url|week/i,N=/=\?(&|$)/,ka=/\?/,wb=/(\?|&)_=.*?(&|$)/,xb=/^(\w+:)?\/\/([^\/?#]+)/,yb=/%20/g,zb=c.fn.load;c.fn.extend({load:function(a,b,d){if(typeof a!==
"string")return zb.call(this,a);else if(!this.length)return this;var f=a.indexOf(" ");if(f>=0){var e=a.slice(f,a.length);a=a.slice(0,f)}f="GET";if(b)if(c.isFunction(b)){d=b;b=null}else if(typeof b==="object"){b=c.param(b,c.ajaxSettings.traditional);f="POST"}var j=this;c.ajax({url:a,type:f,dataType:"html",data:b,complete:function(i,o){if(o==="success"||o==="notmodified")j.html(e?c("<div />").append(i.responseText.replace(tb,"")).find(e):i.responseText);d&&j.each(d,[i.responseText,o,i])}});return this},
serialize:function(){return c.param(this.serializeArray())},serializeArray:function(){return this.map(function(){return this.elements?c.makeArray(this.elements):this}).filter(function(){return this.name&&!this.disabled&&(this.checked||ub.test(this.nodeName)||vb.test(this.type))}).map(function(a,b){a=c(this).val();return a==null?null:c.isArray(a)?c.map(a,function(d){return{name:b.name,value:d}}):{name:b.name,value:a}}).get()}});c.each("ajaxStart ajaxStop ajaxComplete ajaxError ajaxSuccess ajaxSend".split(" "),
function(a,b){c.fn[b]=function(d){return this.bind(b,d)}});c.extend({get:function(a,b,d,f){if(c.isFunction(b)){f=f||d;d=b;b=null}return c.ajax({type:"GET",url:a,data:b,success:d,dataType:f})},getScript:function(a,b){return c.get(a,null,b,"script")},getJSON:function(a,b,d){return c.get(a,b,d,"json")},post:function(a,b,d,f){if(c.isFunction(b)){f=f||d;d=b;b={}}return c.ajax({type:"POST",url:a,data:b,success:d,dataType:f})},ajaxSetup:function(a){c.extend(c.ajaxSettings,a)},ajaxSettings:{url:location.href,
global:true,type:"GET",contentType:"application/x-www-form-urlencoded",processData:true,async:true,xhr:A.XMLHttpRequest&&(A.location.protocol!=="file:"||!A.ActiveXObject)?function(){return new A.XMLHttpRequest}:function(){try{return new A.ActiveXObject("Microsoft.XMLHTTP")}catch(a){}},accepts:{xml:"application/xml, text/xml",html:"text/html",script:"text/javascript, application/javascript",json:"application/json, text/javascript",text:"text/plain",_default:"*/*"}},lastModified:{},etag:{},ajax:function(a){function b(){e.success&&
e.success.call(k,o,i,x);e.global&&f("ajaxSuccess",[x,e])}function d(){e.complete&&e.complete.call(k,x,i);e.global&&f("ajaxComplete",[x,e]);e.global&&!--c.active&&c.event.trigger("ajaxStop")}function f(q,p){(e.context?c(e.context):c.event).trigger(q,p)}var e=c.extend(true,{},c.ajaxSettings,a),j,i,o,k=a&&a.context||e,n=e.type.toUpperCase();if(e.data&&e.processData&&typeof e.data!=="string")e.data=c.param(e.data,e.traditional);if(e.dataType==="jsonp"){if(n==="GET")N.test(e.url)||(e.url+=(ka.test(e.url)?
"&":"?")+(e.jsonp||"callback")+"=?");else if(!e.data||!N.test(e.data))e.data=(e.data?e.data+"&":"")+(e.jsonp||"callback")+"=?";e.dataType="json"}if(e.dataType==="json"&&(e.data&&N.test(e.data)||N.test(e.url))){j=e.jsonpCallback||"jsonp"+sb++;if(e.data)e.data=(e.data+"").replace(N,"="+j+"$1");e.url=e.url.replace(N,"="+j+"$1");e.dataType="script";A[j]=A[j]||function(q){o=q;b();d();A[j]=w;try{delete A[j]}catch(p){}z&&z.removeChild(C)}}if(e.dataType==="script"&&e.cache===null)e.cache=false;if(e.cache===
false&&n==="GET"){var r=J(),u=e.url.replace(wb,"$1_="+r+"$2");e.url=u+(u===e.url?(ka.test(e.url)?"&":"?")+"_="+r:"")}if(e.data&&n==="GET")e.url+=(ka.test(e.url)?"&":"?")+e.data;e.global&&!c.active++&&c.event.trigger("ajaxStart");r=(r=xb.exec(e.url))&&(r[1]&&r[1]!==location.protocol||r[2]!==location.host);if(e.dataType==="script"&&n==="GET"&&r){var z=s.getElementsByTagName("head")[0]||s.documentElement,C=s.createElement("script");C.src=e.url;if(e.scriptCharset)C.charset=e.scriptCharset;if(!j){var B=
false;C.onload=C.onreadystatechange=function(){if(!B&&(!this.readyState||this.readyState==="loaded"||this.readyState==="complete")){B=true;b();d();C.onload=C.onreadystatechange=null;z&&C.parentNode&&z.removeChild(C)}}}z.insertBefore(C,z.firstChild);return w}var E=false,x=e.xhr();if(x){e.username?x.open(n,e.url,e.async,e.username,e.password):x.open(n,e.url,e.async);try{if(e.data||a&&a.contentType)x.setRequestHeader("Content-Type",e.contentType);if(e.ifModified){c.lastModified[e.url]&&x.setRequestHeader("If-Modified-Since",
c.lastModified[e.url]);c.etag[e.url]&&x.setRequestHeader("If-None-Match",c.etag[e.url])}r||x.setRequestHeader("X-Requested-With","XMLHttpRequest");x.setRequestHeader("Accept",e.dataType&&e.accepts[e.dataType]?e.accepts[e.dataType]+", */*":e.accepts._default)}catch(ga){}if(e.beforeSend&&e.beforeSend.call(k,x,e)===false){e.global&&!--c.active&&c.event.trigger("ajaxStop");x.abort();return false}e.global&&f("ajaxSend",[x,e]);var g=x.onreadystatechange=function(q){if(!x||x.readyState===0||q==="abort"){E||
d();E=true;if(x)x.onreadystatechange=c.noop}else if(!E&&x&&(x.readyState===4||q==="timeout")){E=true;x.onreadystatechange=c.noop;i=q==="timeout"?"timeout":!c.httpSuccess(x)?"error":e.ifModified&&c.httpNotModified(x,e.url)?"notmodified":"success";var p;if(i==="success")try{o=c.httpData(x,e.dataType,e)}catch(v){i="parsererror";p=v}if(i==="success"||i==="notmodified")j||b();else c.handleError(e,x,i,p);d();q==="timeout"&&x.abort();if(e.async)x=null}};try{var h=x.abort;x.abort=function(){x&&h.call(x);
g("abort")}}catch(l){}e.async&&e.timeout>0&&setTimeout(function(){x&&!E&&g("timeout")},e.timeout);try{x.send(n==="POST"||n==="PUT"||n==="DELETE"?e.data:null)}catch(m){c.handleError(e,x,null,m);d()}e.async||g();return x}},handleError:function(a,b,d,f){if(a.error)a.error.call(a.context||a,b,d,f);if(a.global)(a.context?c(a.context):c.event).trigger("ajaxError",[b,a,f])},active:0,httpSuccess:function(a){try{return!a.status&&location.protocol==="file:"||a.status>=200&&a.status<300||a.status===304||a.status===
1223||a.status===0}catch(b){}return false},httpNotModified:function(a,b){var d=a.getResponseHeader("Last-Modified"),f=a.getResponseHeader("Etag");if(d)c.lastModified[b]=d;if(f)c.etag[b]=f;return a.status===304||a.status===0},httpData:function(a,b,d){var f=a.getResponseHeader("content-type")||"",e=b==="xml"||!b&&f.indexOf("xml")>=0;a=e?a.responseXML:a.responseText;e&&a.documentElement.nodeName==="parsererror"&&c.error("parsererror");if(d&&d.dataFilter)a=d.dataFilter(a,b);if(typeof a==="string")if(b===
"json"||!b&&f.indexOf("json")>=0)a=c.parseJSON(a);else if(b==="script"||!b&&f.indexOf("javascript")>=0)c.globalEval(a);return a},param:function(a,b){function d(i,o){if(c.isArray(o))c.each(o,function(k,n){b||/\[\]$/.test(i)?f(i,n):d(i+"["+(typeof n==="object"||c.isArray(n)?k:"")+"]",n)});else!b&&o!=null&&typeof o==="object"?c.each(o,function(k,n){d(i+"["+k+"]",n)}):f(i,o)}function f(i,o){o=c.isFunction(o)?o():o;e[e.length]=encodeURIComponent(i)+"="+encodeURIComponent(o)}var e=[];if(b===w)b=c.ajaxSettings.traditional;
if(c.isArray(a)||a.jquery)c.each(a,function(){f(this.name,this.value)});else for(var j in a)d(j,a[j]);return e.join("&").replace(yb,"+")}});var la={},Ab=/toggle|show|hide/,Bb=/^([+-]=)?([\d+-.]+)(.*)$/,W,va=[["height","marginTop","marginBottom","paddingTop","paddingBottom"],["width","marginLeft","marginRight","paddingLeft","paddingRight"],["opacity"]];c.fn.extend({show:function(a,b){if(a||a===0)return this.animate(K("show",3),a,b);else{a=0;for(b=this.length;a<b;a++){var d=c.data(this[a],"olddisplay");
this[a].style.display=d||"";if(c.css(this[a],"display")==="none"){d=this[a].nodeName;var f;if(la[d])f=la[d];else{var e=c("<"+d+" />").appendTo("body");f=e.css("display");if(f==="none")f="block";e.remove();la[d]=f}c.data(this[a],"olddisplay",f)}}a=0;for(b=this.length;a<b;a++)this[a].style.display=c.data(this[a],"olddisplay")||"";return this}},hide:function(a,b){if(a||a===0)return this.animate(K("hide",3),a,b);else{a=0;for(b=this.length;a<b;a++){var d=c.data(this[a],"olddisplay");!d&&d!=="none"&&c.data(this[a],
"olddisplay",c.css(this[a],"display"))}a=0;for(b=this.length;a<b;a++)this[a].style.display="none";return this}},_toggle:c.fn.toggle,toggle:function(a,b){var d=typeof a==="boolean";if(c.isFunction(a)&&c.isFunction(b))this._toggle.apply(this,arguments);else a==null||d?this.each(function(){var f=d?a:c(this).is(":hidden");c(this)[f?"show":"hide"]()}):this.animate(K("toggle",3),a,b);return this},fadeTo:function(a,b,d){return this.filter(":hidden").css("opacity",0).show().end().animate({opacity:b},a,d)},
animate:function(a,b,d,f){var e=c.speed(b,d,f);if(c.isEmptyObject(a))return this.each(e.complete);return this[e.queue===false?"each":"queue"](function(){var j=c.extend({},e),i,o=this.nodeType===1&&c(this).is(":hidden"),k=this;for(i in a){var n=i.replace(ia,ja);if(i!==n){a[n]=a[i];delete a[i];i=n}if(a[i]==="hide"&&o||a[i]==="show"&&!o)return j.complete.call(this);if((i==="height"||i==="width")&&this.style){j.display=c.css(this,"display");j.overflow=this.style.overflow}if(c.isArray(a[i])){(j.specialEasing=
j.specialEasing||{})[i]=a[i][1];a[i]=a[i][0]}}if(j.overflow!=null)this.style.overflow="hidden";j.curAnim=c.extend({},a);c.each(a,function(r,u){var z=new c.fx(k,j,r);if(Ab.test(u))z[u==="toggle"?o?"show":"hide":u](a);else{var C=Bb.exec(u),B=z.cur(true)||0;if(C){u=parseFloat(C[2]);var E=C[3]||"px";if(E!=="px"){k.style[r]=(u||1)+E;B=(u||1)/z.cur(true)*B;k.style[r]=B+E}if(C[1])u=(C[1]==="-="?-1:1)*u+B;z.custom(B,u,E)}else z.custom(B,u,"")}});return true})},stop:function(a,b){var d=c.timers;a&&this.queue([]);
this.each(function(){for(var f=d.length-1;f>=0;f--)if(d[f].elem===this){b&&d[f](true);d.splice(f,1)}});b||this.dequeue();return this}});c.each({slideDown:K("show",1),slideUp:K("hide",1),slideToggle:K("toggle",1),fadeIn:{opacity:"show"},fadeOut:{opacity:"hide"}},function(a,b){c.fn[a]=function(d,f){return this.animate(b,d,f)}});c.extend({speed:function(a,b,d){var f=a&&typeof a==="object"?a:{complete:d||!d&&b||c.isFunction(a)&&a,duration:a,easing:d&&b||b&&!c.isFunction(b)&&b};f.duration=c.fx.off?0:typeof f.duration===
"number"?f.duration:c.fx.speeds[f.duration]||c.fx.speeds._default;f.old=f.complete;f.complete=function(){f.queue!==false&&c(this).dequeue();c.isFunction(f.old)&&f.old.call(this)};return f},easing:{linear:function(a,b,d,f){return d+f*a},swing:function(a,b,d,f){return(-Math.cos(a*Math.PI)/2+0.5)*f+d}},timers:[],fx:function(a,b,d){this.options=b;this.elem=a;this.prop=d;if(!b.orig)b.orig={}}});c.fx.prototype={update:function(){this.options.step&&this.options.step.call(this.elem,this.now,this);(c.fx.step[this.prop]||
c.fx.step._default)(this);if((this.prop==="height"||this.prop==="width")&&this.elem.style)this.elem.style.display="block"},cur:function(a){if(this.elem[this.prop]!=null&&(!this.elem.style||this.elem.style[this.prop]==null))return this.elem[this.prop];return(a=parseFloat(c.css(this.elem,this.prop,a)))&&a>-10000?a:parseFloat(c.curCSS(this.elem,this.prop))||0},custom:function(a,b,d){function f(j){return e.step(j)}this.startTime=J();this.start=a;this.end=b;this.unit=d||this.unit||"px";this.now=this.start;
this.pos=this.state=0;var e=this;f.elem=this.elem;if(f()&&c.timers.push(f)&&!W)W=setInterval(c.fx.tick,13)},show:function(){this.options.orig[this.prop]=c.style(this.elem,this.prop);this.options.show=true;this.custom(this.prop==="width"||this.prop==="height"?1:0,this.cur());c(this.elem).show()},hide:function(){this.options.orig[this.prop]=c.style(this.elem,this.prop);this.options.hide=true;this.custom(this.cur(),0)},step:function(a){var b=J(),d=true;if(a||b>=this.options.duration+this.startTime){this.now=
this.end;this.pos=this.state=1;this.update();this.options.curAnim[this.prop]=true;for(var f in this.options.curAnim)if(this.options.curAnim[f]!==true)d=false;if(d){if(this.options.display!=null){this.elem.style.overflow=this.options.overflow;a=c.data(this.elem,"olddisplay");this.elem.style.display=a?a:this.options.display;if(c.css(this.elem,"display")==="none")this.elem.style.display="block"}this.options.hide&&c(this.elem).hide();if(this.options.hide||this.options.show)for(var e in this.options.curAnim)c.style(this.elem,
e,this.options.orig[e]);this.options.complete.call(this.elem)}return false}else{e=b-this.startTime;this.state=e/this.options.duration;a=this.options.easing||(c.easing.swing?"swing":"linear");this.pos=c.easing[this.options.specialEasing&&this.options.specialEasing[this.prop]||a](this.state,e,0,1,this.options.duration);this.now=this.start+(this.end-this.start)*this.pos;this.update()}return true}};c.extend(c.fx,{tick:function(){for(var a=c.timers,b=0;b<a.length;b++)a[b]()||a.splice(b--,1);a.length||
c.fx.stop()},stop:function(){clearInterval(W);W=null},speeds:{slow:600,fast:200,_default:400},step:{opacity:function(a){c.style(a.elem,"opacity",a.now)},_default:function(a){if(a.elem.style&&a.elem.style[a.prop]!=null)a.elem.style[a.prop]=(a.prop==="width"||a.prop==="height"?Math.max(0,a.now):a.now)+a.unit;else a.elem[a.prop]=a.now}}});if(c.expr&&c.expr.filters)c.expr.filters.animated=function(a){return c.grep(c.timers,function(b){return a===b.elem}).length};c.fn.offset="getBoundingClientRect"in s.documentElement?
function(a){var b=this[0];if(a)return this.each(function(e){c.offset.setOffset(this,a,e)});if(!b||!b.ownerDocument)return null;if(b===b.ownerDocument.body)return c.offset.bodyOffset(b);var d=b.getBoundingClientRect(),f=b.ownerDocument;b=f.body;f=f.documentElement;return{top:d.top+(self.pageYOffset||c.support.boxModel&&f.scrollTop||b.scrollTop)-(f.clientTop||b.clientTop||0),left:d.left+(self.pageXOffset||c.support.boxModel&&f.scrollLeft||b.scrollLeft)-(f.clientLeft||b.clientLeft||0)}}:function(a){var b=
this[0];if(a)return this.each(function(r){c.offset.setOffset(this,a,r)});if(!b||!b.ownerDocument)return null;if(b===b.ownerDocument.body)return c.offset.bodyOffset(b);c.offset.initialize();var d=b.offsetParent,f=b,e=b.ownerDocument,j,i=e.documentElement,o=e.body;f=(e=e.defaultView)?e.getComputedStyle(b,null):b.currentStyle;for(var k=b.offsetTop,n=b.offsetLeft;(b=b.parentNode)&&b!==o&&b!==i;){if(c.offset.supportsFixedPosition&&f.position==="fixed")break;j=e?e.getComputedStyle(b,null):b.currentStyle;
k-=b.scrollTop;n-=b.scrollLeft;if(b===d){k+=b.offsetTop;n+=b.offsetLeft;if(c.offset.doesNotAddBorder&&!(c.offset.doesAddBorderForTableAndCells&&/^t(able|d|h)$/i.test(b.nodeName))){k+=parseFloat(j.borderTopWidth)||0;n+=parseFloat(j.borderLeftWidth)||0}f=d;d=b.offsetParent}if(c.offset.subtractsBorderForOverflowNotVisible&&j.overflow!=="visible"){k+=parseFloat(j.borderTopWidth)||0;n+=parseFloat(j.borderLeftWidth)||0}f=j}if(f.position==="relative"||f.position==="static"){k+=o.offsetTop;n+=o.offsetLeft}if(c.offset.supportsFixedPosition&&
f.position==="fixed"){k+=Math.max(i.scrollTop,o.scrollTop);n+=Math.max(i.scrollLeft,o.scrollLeft)}return{top:k,left:n}};c.offset={initialize:function(){var a=s.body,b=s.createElement("div"),d,f,e,j=parseFloat(c.curCSS(a,"marginTop",true))||0;c.extend(b.style,{position:"absolute",top:0,left:0,margin:0,border:0,width:"1px",height:"1px",visibility:"hidden"});b.innerHTML="<div style='position:absolute;top:0;left:0;margin:0;border:5px solid #000;padding:0;width:1px;height:1px;'><div></div></div><table style='position:absolute;top:0;left:0;margin:0;border:5px solid #000;padding:0;width:1px;height:1px;' cellpadding='0' cellspacing='0'><tr><td></td></tr></table>";
a.insertBefore(b,a.firstChild);d=b.firstChild;f=d.firstChild;e=d.nextSibling.firstChild.firstChild;this.doesNotAddBorder=f.offsetTop!==5;this.doesAddBorderForTableAndCells=e.offsetTop===5;f.style.position="fixed";f.style.top="20px";this.supportsFixedPosition=f.offsetTop===20||f.offsetTop===15;f.style.position=f.style.top="";d.style.overflow="hidden";d.style.position="relative";this.subtractsBorderForOverflowNotVisible=f.offsetTop===-5;this.doesNotIncludeMarginInBodyOffset=a.offsetTop!==j;a.removeChild(b);
c.offset.initialize=c.noop},bodyOffset:function(a){var b=a.offsetTop,d=a.offsetLeft;c.offset.initialize();if(c.offset.doesNotIncludeMarginInBodyOffset){b+=parseFloat(c.curCSS(a,"marginTop",true))||0;d+=parseFloat(c.curCSS(a,"marginLeft",true))||0}return{top:b,left:d}},setOffset:function(a,b,d){if(/static/.test(c.curCSS(a,"position")))a.style.position="relative";var f=c(a),e=f.offset(),j=parseInt(c.curCSS(a,"top",true),10)||0,i=parseInt(c.curCSS(a,"left",true),10)||0;if(c.isFunction(b))b=b.call(a,
d,e);d={top:b.top-e.top+j,left:b.left-e.left+i};"using"in b?b.using.call(a,d):f.css(d)}};c.fn.extend({position:function(){if(!this[0])return null;var a=this[0],b=this.offsetParent(),d=this.offset(),f=/^body|html$/i.test(b[0].nodeName)?{top:0,left:0}:b.offset();d.top-=parseFloat(c.curCSS(a,"marginTop",true))||0;d.left-=parseFloat(c.curCSS(a,"marginLeft",true))||0;f.top+=parseFloat(c.curCSS(b[0],"borderTopWidth",true))||0;f.left+=parseFloat(c.curCSS(b[0],"borderLeftWidth",true))||0;return{top:d.top-
f.top,left:d.left-f.left}},offsetParent:function(){return this.map(function(){for(var a=this.offsetParent||s.body;a&&!/^body|html$/i.test(a.nodeName)&&c.css(a,"position")==="static";)a=a.offsetParent;return a})}});c.each(["Left","Top"],function(a,b){var d="scroll"+b;c.fn[d]=function(f){var e=this[0],j;if(!e)return null;if(f!==w)return this.each(function(){if(j=wa(this))j.scrollTo(!a?f:c(j).scrollLeft(),a?f:c(j).scrollTop());else this[d]=f});else return(j=wa(e))?"pageXOffset"in j?j[a?"pageYOffset":
"pageXOffset"]:c.support.boxModel&&j.document.documentElement[d]||j.document.body[d]:e[d]}});c.each(["Height","Width"],function(a,b){var d=b.toLowerCase();c.fn["inner"+b]=function(){return this[0]?c.css(this[0],d,false,"padding"):null};c.fn["outer"+b]=function(f){return this[0]?c.css(this[0],d,false,f?"margin":"border"):null};c.fn[d]=function(f){var e=this[0];if(!e)return f==null?null:this;if(c.isFunction(f))return this.each(function(j){var i=c(this);i[d](f.call(this,j,i[d]()))});return"scrollTo"in
e&&e.document?e.document.compatMode==="CSS1Compat"&&e.document.documentElement["client"+b]||e.document.body["client"+b]:e.nodeType===9?Math.max(e.documentElement["client"+b],e.body["scroll"+b],e.documentElement["scroll"+b],e.body["offset"+b],e.documentElement["offset"+b]):f===w?c.css(e,d):this.css(d,typeof f==="string"?f:f+"px")}});A.jQuery=A.$=c})(window);

/* file:/home/recamier/common/js/x.js */
/** 
 * x.js compiled from X 4.0 with XC 0.27b. 
 * Distributed by GNU LGPL. For copyrights, license, documentation and more visit Cross-Browser.com 
 * Copyright 2001-2005 Michael Foster (Cross-Browser.com)
 **/
function xDeprecate(funcName) {
	var msg = 'DEPRECATED : '+funcName+'() is deprecated function.';
	if (typeof console == 'object' && typeof console.log == 'function') {
		console.log(msg);
	}
}

var xOp7Up,xOp6Dn,xIE4Up,xIE4,xIE5,xIE6,xNN4,xUA=navigator.userAgent.toLowerCase();
if(window.opera){
  var i=xUA.indexOf('opera');
  if(i!=-1){
    var v=parseInt(xUA.charAt(i+6));
    xOp7Up=v>=7;
    xOp6Dn=v<7;
  }
}
else if(navigator.vendor!='KDE' && document.all && xUA.indexOf('msie')!=-1){
  xIE4Up=parseFloat(navigator.appVersion)>=4;
  xIE4=xUA.indexOf('msie 4')!=-1;
  xIE5=xUA.indexOf('msie 5')!=-1;
  xIE6=xUA.indexOf('msie 6')!=-1;
}
else if(document.layers){xNN4=true;}
var xMac=xUA.indexOf('mac')!=-1;
var xFF=xUA.indexOf('firefox')!=-1;

// (element, event(without 'on'), event listener(function name)[, caption])
function xAddEventListener(e,eT,eL,cap)
{
  xDeprecate('xAddEventListener');
  if(!(e=xGetElementById(e))) return;
  eT=eT.toLowerCase();
  if((!xIE4Up && !xOp7Up) && e==window) {
    if(eT=='resize') { window.xPCW=xClientWidth(); window.xPCH=xClientHeight(); window.xREL=eL; xResizeEvent(); return; }
    if(eT=='scroll') { window.xPSL=xScrollLeft(); window.xPST=xScrollTop(); window.xSEL=eL; xScrollEvent(); return; }
  }
  var eh='e.on'+eT+'=eL';
  if(e.addEventListener) e.addEventListener(eT,eL,cap);
  else if(e.attachEvent) e.attachEvent('on'+eT,eL);
  else eval(eh);
}
// called only from the above
function xResizeEvent()
{
  xDeprecate('xResizeEvent');
  if (window.xREL) setTimeout('xResizeEvent()', 250);
  var cw = xClientWidth(), ch = xClientHeight();
  if (window.xPCW != cw || window.xPCH != ch) { window.xPCW = cw; window.xPCH = ch; if (window.xREL) window.xREL(); }
}

function xScrollEvent()
{
  xDeprecate('xScrollEvent');
  if (window.xSEL) setTimeout('xScrollEvent()', 250);
  var sl = xScrollLeft(), st = xScrollTop();
  if (window.xPSL != sl || window.xPST != st) { window.xPSL = sl; window.xPST = st; if (window.xSEL) window.xSEL(); }
}

function xAppendChild(oParent, oChild)
{
  xDeprecate('xAppendChild');
  if (oParent.appendChild) return oParent.appendChild(oChild);
  else return null;
}

function xClientHeight()
{
  xDeprecate('xClientHeight');
  var h=0;
  if(xOp6Dn) h=window.innerHeight;
  else if(document.compatMode == 'CSS1Compat' && !window.opera && document.documentElement && document.documentElement.clientHeight)
    h=document.documentElement.clientHeight;
  else if(document.body && document.body.clientHeight)
    h=document.body.clientHeight;
  else if(xDef(window.innerWidth,window.innerHeight,document.width)) {
    h=window.innerHeight;
    if(document.width>window.innerWidth) h-=16;
  }
  return h;
}

function xClientWidth()
{
  xDeprecate('xClientWidth');
  var w=0;
  if(xOp6Dn) w=window.innerWidth;
  else if(document.compatMode == 'CSS1Compat' && !window.opera && document.documentElement && document.documentElement.clientWidth)
    w=document.documentElement.clientWidth;
  else if(document.body && document.body.clientWidth)
    w=document.body.clientWidth;
  else if(xDef(window.innerWidth,window.innerHeight,document.height)) {
    w=window.innerWidth;
    if(document.height>window.innerHeight) w-=16;
  }
  return w;
}

function xCreateElement(sTag)
{
  xDeprecate('xCreateElement');
  if (document.createElement) return document.createElement(sTag);
  else return null;
}

function xDef()
{
  xDeprecate('xDef');
  for(var i=0; i<arguments.length; ++i){if(typeof(arguments[i])=='undefined') return false;}
  return true;
}

function xDeleteCookie(name, path)
{
  xDeprecate('xDeleteCookie');
  if (xGetCookie(name)) {
    document.cookie = name + "=" +
                    "; path=" + ((!path) ? "/" : path) +
                    "; expires=" + new Date(0).toGMTString();
  }
}

function xDisplay(e,s)
{
  xDeprecate('xDisplay');
  if(!(e=xGetElementById(e))) return null;
  if(e.style && xDef(e.style.display)) {
    if (xStr(s)) e.style.display = s;
    return e.style.display;
  }
  return null;
}

function xEvent(evt) // object prototype
{
  xDeprecate('xEvent');
  var e = evt || window.event;
  if(!e) return;
  if(e.type) this.type = e.type;
  if(e.target) this.target = e.target;
  else if(e.srcElement) this.target = e.srcElement;

  // Section B
  if (e.relatedTarget) this.relatedTarget = e.relatedTarget;
  else if (e.type == 'mouseover' && e.fromElement) this.relatedTarget = e.fromElement;
  else if (e.type == 'mouseout') this.relatedTarget = e.toElement;
  // End Section B

  if(xOp6Dn) { this.pageX = e.clientX; this.pageY = e.clientY; }
  else if(xDef(e.pageX,e.pageY)) { this.pageX = e.pageX; this.pageY = e.pageY; }
  else if(xDef(e.clientX,e.clientY)) { this.pageX = e.clientX + xScrollLeft(); this.pageY = e.clientY + xScrollTop(); }

  // Section A
  if (xDef(e.offsetX,e.offsetY)) {
    this.offsetX = e.offsetX;
    this.offsetY = e.offsetY;
  }
  else if (xDef(e.layerX,e.layerY)) {
    this.offsetX = e.layerX;
    this.offsetY = e.layerY;
  }
  else {
    this.offsetX = this.pageX - xPageX(this.target);
    this.offsetY = this.pageY - xPageY(this.target);
  }
  // End Section A
  
  if (e.keyCode) { this.keyCode = e.keyCode; } // for moz/fb, if keyCode==0 use which
  else if (xDef(e.which) && e.type.indexOf('key')!=-1) { this.keyCode = e.which; }

  this.shiftKey = e.shiftKey;
  this.ctrlKey = e.ctrlKey;
  this.altKey = e.altKey;
}

function xFirstChild(e, t)
{
  xDeprecate('xFirstChild');
  var c = e ? e.firstChild : null;
  if (t) while (c && c.nodeName != t) { c = c.nextSibling; }
  else while (c && c.nodeType != 1) { c = c.nextSibling; }
  return c;
}

function xGetBodyWidth() {
  xDeprecate('xGetBodyWidth');
  var cw = xClientWidth();
  var sw = window.document.body.scrollWidth;
  return cw>sw?cw:sw;
}

function xGetBodyHeight() {
  xDeprecate('xGetBodyHeight');
  var cw = xClientHeight();
  var sw = window.document.body.scrollHeight;
  return cw>sw?cw:sw;
}

function xGetComputedStyle(oEle, sProp, bInt)
{
  xDeprecate('xGetComputedStyle');
  var s, p = 'undefined';
  var dv = document.defaultView;
  if(dv && dv.getComputedStyle){
    s = dv.getComputedStyle(oEle,'');
    if (s) p = s.getPropertyValue(sProp);
  }
  else if(oEle.currentStyle) {
    // convert css property name to object property name for IE
    var a = sProp.split('-');
    sProp = a[0];
    for (var i=1; i<a.length; ++i) {
      c = a[i].charAt(0);
      sProp += a[i].replace(c, c.toUpperCase());
    }   
    p = oEle.currentStyle[sProp];
  }
  else return null;
  return bInt ? (parseInt(p) || 0) : p;
}

function xGetCookie(name)
{
  xDeprecate('xGetCookie');
  var value=null, search=name+"=";
  if (document.cookie.length > 0) {
    var offset = document.cookie.indexOf(search);
    if (offset != -1) {
      offset += search.length;
      var end = document.cookie.indexOf(";", offset);
      if (end == -1) end = document.cookie.length;
      value = unescape(document.cookie.substring(offset, end));
    }
  }
  return value;
}

function xGetElementById(e)
{
  xDeprecate('xGetElementById');
  if(typeof(e)!='string') return e;
  if(document.getElementById) e=document.getElementById(e);
  else if(document.all) e=document.all[e];
  else e=null;
  return e;
}

function xGetElementsByAttribute(sTag, sAtt, sRE, fn)
{
  xDeprecate('xGetElementsByAttribute');
  var a, list, found = new Array(), re = new RegExp(sRE, 'i');
  list = xGetElementsByTagName(sTag);
  for (var i = 0; i < list.length; ++i) {
    a = list[i].getAttribute(sAtt);
    if (!a) {a = list[i][sAtt];}
    if (typeof(a)=='string' && a.search(re) != -1) {
      found[found.length] = list[i];
      if (fn) fn(list[i]);
    }
  }
  return found;
}

function xGetElementsByClassName(c,p,t,f)
{
  xDeprecate('xGetElementsByClassName');
  var found = new Array();
  var re = new RegExp('\\b'+c+'\\b', 'i');
  var list = xGetElementsByTagName(t, p);
  for (var i = 0; i < list.length; ++i) {
    if (list[i].className && list[i].className.search(re) != -1) {
      found[found.length] = list[i];
      if (f) f(list[i]);
    }
  }
  return found;
}

function xGetElementsByTagName(t,p)
{
  xDeprecate('xGetElementsByTagName');
  var list = null;
  t = t || '*';
  p = p || document;
  if (xIE4 || xIE5) {
    if (t == '*') list = p.all;
    else list = p.all.tags(t);
  }
  else if (p.getElementsByTagName) list = p.getElementsByTagName(t);
  return list || new Array();
}

function xGetURLArguments()
{
  xDeprecate('xGetURLArguments');
  var idx = location.href.indexOf('?');
  var params = new Array();
  if (idx != -1) {
    var pairs = location.href.substring(idx+1, location.href.length).split('&');
    for (var i=0; i<pairs.length; i++) {
      nameVal = pairs[i].split('=');
      params[i] = nameVal[1];
      params[nameVal[0]] = nameVal[1];
    }
  }
  return params;
}

function xHeight(e,h)
{
  xDeprecate('xHeight');
  if(!(e=xGetElementById(e))) return 0;
  if (xNum(h)) {
    if (h<0) h = 0;
    else h=Math.round(h);
  }
  else h=-1;
  var css=xDef(e.style);
  if (e == document || e.tagName.toLowerCase() == 'html' || e.tagName.toLowerCase() == 'body') {
    h = xClientHeight();
  }
  else if(css && xDef(e.offsetHeight) && xStr(e.style.height)) {
    if(h>=0) {
      var pt=0,pb=0,bt=0,bb=0;
      if (document.compatMode=='CSS1Compat') {
        var gcs = xGetComputedStyle;
        pt=gcs(e,'padding-top',1);
        if (pt !== null) {
          pb=gcs(e,'padding-bottom',1);
          bt=gcs(e,'border-top-width',1);
          bb=gcs(e,'border-bottom-width',1);
        }
        // Should we try this as a last resort?
        // At this point getComputedStyle and currentStyle do not exist.
        else if(xDef(e.offsetHeight,e.style.height)){
          e.style.height=h+'px';
          pt=e.offsetHeight-h;
        }
      }
      h-=(pt+pb+bt+bb);
      if(isNaN(h)||h<0) return null;
      else e.style.height=h+'px';
    }
    h=e.offsetHeight;
  }
  else if(css && xDef(e.style.pixelHeight)) {
    if(h>=0) e.style.pixelHeight=h;
    h=e.style.pixelHeight;
  }
  return h;
}

function xHex(sn, digits, prefix)
{
  xDeprecate('xHex');
  var p = '';
  var n = Math.ceil(sn);
  if (prefix) p = prefix;
  n = n.toString(16);
  for (var i=0; i < digits - n.length; ++i) {
    p += '0';
  }
  return p + n;
}

function xHide(e){  xDeprecate('xHide'); return xVisibility(e,0);}

function xInnerHtml(e,h)
{
  xDeprecate('xInnerHtml');
  if(!(e=xGetElementById(e)) || !xStr(e.innerHTML)) return null;
  var s = e.innerHTML;
  if (xStr(h)) {e.innerHTML = h;}
  return s;
}

function xLeft(e, iX)
{
  xDeprecate('xLeft');
  if(!(e=xGetElementById(e))) return 0;
  var css=xDef(e.style);
  if (css && xStr(e.style.left)) {
    if(xNum(iX)) e.style.left=iX+'px';
    else {
      iX=parseInt(e.style.left);
      if(isNaN(iX)) iX=0;
    }
  }
  else if(css && xDef(e.style.pixelLeft)) {
    if(xNum(iX)) e.style.pixelLeft=iX;
    else iX=e.style.pixelLeft;
  }
  return iX;
}

function xMoveTo(e,x,y)
{
  xDeprecate('xMoveTo');
  xLeft(e,x);
  xTop(e,y);
}

function xName(e)
{
  xDeprecate('xName');
  if (!e) return e;
  else if (e.id && e.id != "") return e.id;
  else if (e.name && e.name != "") return e.name;
  else if (e.nodeName && e.nodeName != "") return e.nodeName;
  else if (e.tagName && e.tagName != "") return e.tagName;
  else return e;
}

function xNextSib(e,t)
{
  xDeprecate('xNextSib');
  var s = e ? e.nextSibling : null;
  if (t) while (s && s.nodeName != t) { s = s.nextSibling; }
  else while (s && s.nodeType != 1) { s = s.nextSibling; }
  return s;
}

function xNum()
{
  xDeprecate('xNum');
  for(var i=0; i<arguments.length; ++i){if(isNaN(arguments[i]) || typeof(arguments[i])!='number') return false;}
  return true;
}

function xOffsetLeft(e)
{
  xDeprecate('xOffsetLeft');
  if (!(e=xGetElementById(e))) return 0;
  if (xDef(e.offsetLeft)) return e.offsetLeft;
  else return 0;
}

function xOffsetTop(e)
{
  xDeprecate('xOffsetTop');
  if (!(e=xGetElementById(e))) return 0;
  if (xDef(e.offsetTop)) return e.offsetTop;
  else return 0;
}

function xPad(s,len,c,left)
{
  xDeprecate('xPad');
  if(typeof s != 'string') s=s+'';
  if(left) {for(var i=s.length; i<len; ++i) s=c+s;}
  else {for (i=s.length; i<len; ++i) s+=c;}
  return s;
}

function xPageX(e)
{
  xDeprecate('xPageX');
  if (!(e=xGetElementById(e))) return 0;
  var x = 0;
  while (e) {
    if (xDef(e.offsetLeft)) x += e.offsetLeft;
    e = xDef(e.offsetParent) ? e.offsetParent : null;
  }
  return x;
}

function xPageY(e)
{
  xDeprecate('xPageY');
  if (!(e=xGetElementById(e))) return 0;
  var y = 0;
  while (e) {
    if (xDef(e.offsetTop)) y += e.offsetTop;
    e = xDef(e.offsetParent) ? e.offsetParent : null;
  }
//  if (xOp7Up) return y - document.body.offsetTop; // v3.14, temporary hack for opera bug 130324 (reported 1nov03)
  return y;
}

function xParent(e, bNode)
{
  xDeprecate('xParent');
  if (!(e=xGetElementById(e))) return null;
  var p=null;
  if (!bNode && xDef(e.offsetParent)) p=e.offsetParent;
  else if (xDef(e.parentNode)) p=e.parentNode;
  else if (xDef(e.parentElement)) p=e.parentElement;
  return p;
}

function xPreventDefault(e)
{
  xDeprecate('xPreventDefault');
  if (e && e.preventDefault) e.preventDefault()
  else if (window.event) window.event.returnValue = false;
}

function xPrevSib(e,t)
{
  xDeprecate('xPrevSib');
  var s = e ? e.previousSibling : null;
  if (t) while(s && s.nodeName != t) {s=s.previousSibling;}
  else while(s && s.nodeType != 1) {s=s.previousSibling;}
  return s;
}

function xRemoveEventListener(e,eT,eL,cap)
{
  xDeprecate('xRemoveEventListener');
  if(!(e=xGetElementById(e))) return;
  eT=eT.toLowerCase();
  if((!xIE4Up && !xOp7Up) && e==window) {
    if(eT=='resize') { window.xREL=null; return; }
    if(eT=='scroll') { window.xSEL=null; return; }
  }
  var eh='e.on'+eT+'=null';
  if(e.removeEventListener) e.removeEventListener(eT,eL,cap);
  else if(e.detachEvent) e.detachEvent('on'+eT,eL);
  else eval(eh);
}

function xResizeTo(e,w,h)
{
  xDeprecate('xResizeTo');
  xWidth(e,w);
  xHeight(e,h);
}

function xScrollLeft(e, bWin)
{
  xDeprecate('xScrollLeft');
  var offset=0;
  if (!xDef(e) || bWin || e == document || e.tagName.toLowerCase() == 'html' || e.tagName.toLowerCase() == 'body') {
    var w = window;
    if (bWin && e) w = e;
    if(w.document.documentElement && w.document.documentElement.scrollLeft) offset=w.document.documentElement.scrollLeft;
    else if(w.document.body && xDef(w.document.body.scrollLeft)) offset=w.document.body.scrollLeft;
  }
  else {
    e = xGetElementById(e);
    if (e && xNum(e.scrollLeft)) offset = e.scrollLeft;
  }
  return offset;
}

function xScrollTop(e, bWin)
{
  xDeprecate('xScrollTop');
  var offset=0;
  if (!xDef(e) || bWin || e == document || e.tagName.toLowerCase() == 'html' || e.tagName.toLowerCase() == 'body') {
    var w = window;
    if (bWin && e) w = e;
    if(w.document.documentElement && w.document.documentElement.scrollTop) offset=w.document.documentElement.scrollTop;
    else if(w.document.body && xDef(w.document.body.scrollTop)) offset=w.document.body.scrollTop;
  }
  else {
    e = xGetElementById(e);
    if (e && xNum(e.scrollTop)) offset = e.scrollTop;
  }
  return offset;
}

function xSetCookie(name, value, expire, path)
{
  xDeprecate('xSetCookie');
  document.cookie = name + "=" + escape(value) +
                    ((!expire) ? "" : ("; expires=" + expire.toGMTString())) +
                    "; path=" + ((!path) ? "/" : path);
}

function xShow(e) { xDeprecate('xShow'); return xVisibility(e,1);}


function xStr(s)
{
  xDeprecate('xStr');
  for(var i=0; i<arguments.length; ++i){if(typeof(arguments[i])!='string') return false;}
  return true;
}

function xTop(e, iY)
{
  xDeprecate('xTop');
  if(!(e=xGetElementById(e))) return 0;
  var css=xDef(e.style);
  if(css && xStr(e.style.top)) {
    if(xNum(iY)) e.style.top=iY+'px';
    else {
      iY=parseInt(e.style.top);
      if(isNaN(iY)) iY=0;
    }
  }
  else if(css && xDef(e.style.pixelTop)) {
    if(xNum(iY)) e.style.pixelTop=iY;
    else iY=e.style.pixelTop;
  }
  return iY;
}

function xVisibility(e, bShow)
{
  xDeprecate('xVisibility');
  if(!(e=xGetElementById(e))) return null;
  if(e.style && xDef(e.style.visibility)) {
    if (xDef(bShow)) e.style.visibility = bShow ? 'visible' : 'hidden';
    return e.style.visibility;
  }
  return null;
}

function xWidth(e,w)
{
  xDeprecate('xWidth');
  if(!(e=xGetElementById(e))) return 0;
  if (xNum(w)) {
    if (w<0) w = 0;
    else w=Math.round(w);
  }
  else w=-1;
  var css=xDef(e.style);
  if (e == document || e.tagName.toLowerCase() == 'html' || e.tagName.toLowerCase() == 'body') {
    w = xClientWidth();
  }
  else if(css && xDef(e.offsetWidth) && xStr(e.style.width)) {
    if(w>=0) {
      var pl=0,pr=0,bl=0,br=0;
      if (document.compatMode=='CSS1Compat') {
        var gcs = xGetComputedStyle;
        pl=gcs(e,'padding-left',1);
        if (pl !== null) {
          pr=gcs(e,'padding-right',1);
          bl=gcs(e,'border-left-width',1);
          br=gcs(e,'border-right-width',1);
        }
        // Should we try this as a last resort?
        // At this point getComputedStyle and currentStyle do not exist.
        else if(xDef(e.offsetWidth,e.style.width)){
          e.style.width=w+'px';
          pl=e.offsetWidth-w;
        }
      }
      w-=(pl+pr+bl+br);
      if(isNaN(w)||w<0) return null;
      else e.style.width=w+'px';
    }
    w=e.offsetWidth;
  }
  else if(css && xDef(e.style.pixelWidth)) {
    if(w>=0) e.style.pixelWidth=w;
    w=e.style.pixelWidth;
  }
  return w;
}

function xZIndex(e,uZ)
{
  xDeprecate('xZIndex');
  if(!(e=xGetElementById(e))) return 0;
  if(e.style && xDef(e.style.zIndex)) {
    if(xNum(uZ)) e.style.zIndex=uZ;
    uZ=parseInt(e.style.zIndex);
  }
  return uZ;
}

function xStopPropagation(evt)
{
  xDeprecate('xStopPropagation');
  if (evt && evt.stopPropagation) evt.stopPropagation();
  else if (window.event) window.event.cancelBubble = true;
}


/* file:/home/recamier/common/js/common.js */
/**
 * @file common.js
 * @author zero (zero@nzeo.com)
 * @brief 몇가지 유용한 & 기본적으로 자주 사용되는 자바스크립트 함수들 모음
 **/

/* jQuery 참조변수($) 제거 */
if(jQuery) jQuery.noConflict();

(function($) {
    /* OS check */
    var UA = navigator.userAgent.toLowerCase();
    $.os = {
        Linux: /linux/.test(UA),
        Unix: /x11/.test(UA),
        Mac: /mac/.test(UA),
        Windows: /win/.test(UA)
    };
    $.os.name = ($.os.Windows) ? 'Windows' :
        ($.os.Linux) ? 'Linux' :
        ($.os.Unix) ? 'Unix' :
        ($.os.Mac) ? 'Mac' : '';

    /**
     * @brief XE 공용 유틸리티 함수
     * @namespace XE
     */
    window.XE = {
        loaded_popup_menus : new Array(),
        addedDocument : new Array(),
        /**
         * @brief 특정 name을 가진 체크박스들의 checked 속성 변경
         * @param [itemName='cart',][options={}]
         */
        checkboxToggleAll : function() {
            var itemName='cart';
            var options = {
                wrap : null,
                checked : 'toggle',
                doClick : false
            };

            switch(arguments.length) {
                case 1:
                    if(typeof(arguments[0]) == "string") {
                        itemName = arguments[0];
                    } else {
                        $.extend(options, arguments[0] || {});
                    }
                    break;
                case 2:
                    itemName = arguments[0];
                    $.extend(options, arguments[1] || {});
            }

            if(options.doClick == true) options.checked = null;
            if(typeof(options.wrap) == "string") options.wrap ='#'+options.wrap;

            if(options.wrap) {
                var obj = $(options.wrap).find('input[name='+itemName+']:checkbox');
            } else {
                var obj = $('input[name='+itemName+']:checkbox');
            }

            if(options.checked == 'toggle') {
                obj.each(function() {
                    $(this).attr('checked', ($(this).attr('checked')) ? false : true);
                });
            } else {
                (options.doClick == true) ? obj.click() : obj.attr('checked', options.checked);
            }
        },

        /**
         * @brief 문서/회원 등 팝업 메뉴 출력
         */
        displayPopupMenu : function(ret_obj, response_tags, params) {
            var target_srl = params["target_srl"];
            var menu_id = params["menu_id"];
            var menus = ret_obj['menus'];
            var html = "";

            if(this.loaded_popup_menus[menu_id]) {
                html = this.loaded_popup_menus[menu_id];

            } else {
                if(menus) {
                    var item = menus['item'];
                    if(typeof(item.length)=='undefined' || item.length<1) item = new Array(item);
                    if(item.length) {
                        for(var i=0;i<item.length;i++) {
                            var url = item[i].url;
                            var str = item[i].str;
                            var icon = item[i].icon;
                            var target = item[i].target;

                            var styleText = "";
                            var click_str = "";
                            if(icon) styleText = " style=\"background-image:url('"+icon+"')\" ";
                            switch(target) {
                                case "popup" :
                                        click_str = " onclick=\"popopen(this.href,'"+target+"'); return false;\"";
                                    break;
                                case "self" :
                                        //click_str = " onclick=\"location.href='"+url+"' return false;\"";
                                    break;
                                case "javascript" :
                                        click_str = " onclick=\""+url+"; return false; \"";
                                        url="#";
                                    break;
                                default :
                                        click_str = " onclick=\"window.open(this.href); return false;\"";
                                    break;
                            }

                            html += '<li '+styleText+'><a href="'+url+'"'+click_str+'>'+str+'</a></li> ';
                        }
                    }
                }
                this.loaded_popup_menus[menu_id] =  html;
            }

            /* 레이어 출력 */
            if(html) {
                var area = $('#popup_menu_area').html('<ul>'+html+'</ul>');
                var areaOffset = {top:params['page_y'], left:params['page_x']};

                if(area.outerHeight()+areaOffset.top > $(window).height()+$(window).scrollTop())
                    areaOffset.top = $(window).height() - area.outerHeight() + $(window).scrollTop();
                if(area.outerWidth()+areaOffset.left > $(window).width()+$(window).scrollLeft())
                    areaOffset.left = $(window).width() - area.outerWidth() + $(window).scrollLeft();

                area.css({ top:areaOffset.top, left:areaOffset.left }).show();
            }
        }
    }

}) (jQuery);



/* jQuery(document).ready() */
jQuery(function($) {
    /* 팝업메뉴 레이어 생성 */
    if(!$('#popup_menu_area').length) {
        var menuObj = $('<div>')
            .attr('id', 'popup_menu_area')
            .css({display:'none', zIndex:9999});
        $(document.body).append(menuObj);
    }

    $(document).click(function(evt) {
        var area = $('#popup_menu_area');
        if(!area.length) return;

        // 이전에 호출되었을지 모르는 팝업메뉴 숨김
        area.hide();

        var targetObj = $(evt.target);
        if(!targetObj.length) return;

        // obj의 nodeName이 div나 span이 아니면 나올대까지 상위를 찾음
        if(targetObj.length && $.inArray(targetObj.attr('nodeName'), ['DIV', 'SPAN', 'A']) == -1) targetObj = targetObj.parent();
        if(!targetObj.length || $.inArray(targetObj.attr('nodeName'), ['DIV', 'SPAN', 'A']) == -1) return;

        // 객체의 className값을 구함
        var class_name = targetObj.attr('className');
        if(class_name.indexOf('_') <= 0) return;
        // className을 분리
        var class_name_list = class_name.split(' ');

        var menu_id = '';
        var menu_id_regx = /^([a-zA-Z]+)_([0-9]+)$/;


        for(var i = 0, c = class_name_list.length; i < c; i++) {
            if(menu_id_regx.test(class_name_list[i])) {
                menu_id = class_name_list[i];
            }
        }

        if(!menu_id) return;

        // module명과 대상 번호가 없으면 return
        var tmp_arr = menu_id.split('_');
        var module_name = tmp_arr[0];
        var target_srl = tmp_arr[1];
        if(!module_name || !target_srl || target_srl < 1) return;

        // action이름을 규칙에 맞게 작성
        var action_name = "get" + module_name.substr(0,1).toUpperCase() + module_name.substr(1,module_name.length-1) + "Menu";

        // 서버에 메뉴를 요청
        var params = new Array();
        params["target_srl"] = target_srl;
        params["mid"] = params["cur_mid"] = current_mid;
        params["cur_act"] = current_url.getQuery('act');
        params["menu_id"] = menu_id;
        params["page_x"] = evt.pageX;
        params["page_y"] = evt.pageY;
        if(typeof(xeVid)!='undefined') params["vid"] = xeVid;

        var response_tags = new Array("error","message","menus");

        if(typeof(XE.loaded_popup_menus[menu_id]) != 'undefined') {
            XE.displayPopupMenu(params, response_tags, params);
            return;
        }
        show_waiting_message = false;
        exec_xml(module_name, action_name, params, XE.displayPopupMenu, response_tags, params);
        show_waiting_message = true;
    });

    /* select - option의 disabled=disabled 속성을 IE에서도 체크하기 위한 함수 */
    if($.browser.msie) {
        $('select').each(function(i, sels) {
            var disabled_exists = false;
            var first_enable = new Array();

            for(var j=0; j < sels.options.length; j++) {
                if(sels.options[j].disabled) {
                    sels.options[j].style.color = '#CCCCCC';
                    disabled_exists = true;
                }else{
                    first_enable[i] = (first_enable[i] > -1) ? first_enable[i] : j;
                }
            }

            if(!disabled_exists) return;

            sels.oldonchange = sels.onchange;
            sels.onchange = function() {
                if(this.options[this.selectedIndex].disabled) {

                    this.selectedIndex = first_enable[i];
                    /*
                    if(this.options.length<=1) this.selectedIndex = -1;
                    else if(this.selectedIndex < this.options.length - 1) this.selectedIndex++;
                    else this.selectedIndex--;
                    */

                } else {
                    if(this.oldonchange) this.oldonchange();
                }
            };

            if(sels.selectedIndex >= 0 && sels.options[ sels.selectedIndex ].disabled) sels.onchange();

        });
    }

    /* 단락에디터 fold 컴포넌트 펼치기/접기 */
    var drEditorFold = $('.xe_content .fold_button');
    if(drEditorFold.size()) {
        var fold_container = $('div.fold_container', drEditorFold);
        $('button.more', drEditorFold).click(function() {
            $(this).hide().next('button').show().parent().next(fold_container).show();
        });
        $('button.less', drEditorFold).click(function() {
            $(this).hide().prev('button').show().parent().next(fold_container).hide();
        });
    }

});


/**
 * @brief location.href에서 특정 key의 값을 return
 **/
String.prototype.getQuery = function(key) {
    var idx = this.indexOf('?');
    if(idx == -1) return null;
    var query_string = this.substr(idx+1, this.length);
    var args = {};
    query_string.replace(/([^=]+)=([^&]*)(&|$)/g, function() { args[arguments[1]] = arguments[2]; });

    var q = args[key];
    if(typeof(q)=="undefined") q = "";

    return q;
}

/**
 * @brief location.href에서 특정 key의 값을 return
 **/
String.prototype.setQuery = function(key, val) {
    var idx = this.indexOf('?');
    var uri = this;
    uri = uri.replace(/#$/,'');

    if(idx != -1) {
        uri = this.substr(0, idx);
        var query_string = this.substr(idx+1, this.length);
        var args = new Array();
        query_string.replace(/([^=]+)=([^&]*)(&|$)/g, function() { args[arguments[1]] = arguments[2]; });

        args[key] = val;

        var q_list = new Array();
        for(var i in args) {
        if( !args.hasOwnProperty(i) ) continue;
            var arg = args[i];
            if(!arg.toString().trim()) continue;
            arg = decodeURI(arg);
            q_list[q_list.length] = i+'='+arg;
        }
        uri = uri+"?"+q_list.join("&");
    } else {
        if(val.toString().trim()) uri = uri+"?"+key+"="+val;
    }

    var re = /https:\/\/([^:\/]+)(:\d+|)/i;
    var check = re.exec(uri);
    if(check)
    {
        var toReplace = "http://"+check[1];
        if(typeof(http_port)!='undefined' && http_port != 80)
        {
            toReplace += ":" + http_port;
        }
        uri = uri.replace(re,toReplace);
    }
    var bUseSSL = false;
    if(typeof(enforce_ssl)!='undefined' && enforce_ssl)
    {
        bUseSSL = true;
    }
    else if(typeof(ssl_actions)!='undefined' && typeof(ssl_actions.length)!='undefined' && uri.getQuery('act')) {
        var act = uri.getQuery('act');
        for(i=0;i<ssl_actions.length;i++) {
            if(ssl_actions[i]==act) {
                bUseSSL = true;
                break;
            }
        }
    }

    if(bUseSSL)
    {
        var re = /http:\/\/([^:\/]+)(:\d+|)/i;
        var check = re.exec(uri);
        if(check)
        {
            var toReplace = "https://"+check[1];
            if(typeof(https_port)!='undefined' && https_port != 443)
            {
                toReplace += ":" + https_port;
            }
            uri = uri.replace(re,toReplace);
        }
    }

    return encodeURI(uri);
}

/**
 * @brief string prototype으로 trim 함수 추가
 **/
String.prototype.trim = function() {
    return this.replace(/(^\s*)|(\s*$)/g, "");
}

/**
 * @brief xSleep(micro time)
 **/
function xSleep(sec) {
    sec = sec / 1000;
    var now = new Date();
    var sleep = new Date();
    while( sleep.getTime() - now.getTime() < sec) {
        sleep = new Date();
    }
}

/**
 * @brief 주어진 인자가 하나라도 defined되어 있지 않으면 false return
 **/
function isDef() {
    for(var i=0; i < arguments.length; ++i) {
        if(typeof(arguments[i]) == "undefined") return false;
    }
    return true;
}

/**
 * @brief 윈도우 오픈
 * 열려진 윈도우의 관리를 통해 window.focus()등을 FF에서도 비슷하게 구현함
 **/
var winopen_list = new Array();
function winopen(url, target, attribute) {
    if(typeof(xeVid)!='undefined' && url.indexOf(request_uri)>-1 && !url.getQuery('vid')) url = url.setQuery('vid',xeVid);
    try {
        if(target != "_blank" && winopen_list[target]) {
            winopen_list[target].close();
            winopen_list[target] = null;
        }
    } catch(e) {
    }

    if(typeof(target) == 'undefined') target = '_blank';
    if(typeof(attribute) == 'undefined') attribute = '';
    var win = window.open(url, target, attribute);
    win.focus();
    if(target != "_blank") winopen_list[target] = win;
}

/**
 * @brief 팝업으로만 띄우기
 * common/tpl/popup_layout.html이 요청되는 XE내의 팝업일 경우에 사용
 **/
function popopen(url, target) {
    if(typeof(target) == "undefined") target = "_blank";
    if(typeof(xeVid)!='undefined' && url.indexOf(request_uri)>-1 && !url.getQuery('vid')) url = url.setQuery('vid',xeVid);
    winopen(url, target, "left=10,top=10,width=10,height=10,scrollbars=no,resizable=yes,toolbars=no");
}

/**
 * @brief 메일 보내기용
 **/
function sendMailTo(to) {
    location.href="mailto:"+to;
}

/**
 * @brief url이동 (open_window 값이 N 가 아니면 새창으로 띄움)
 **/
function move_url(url, open_wnidow) {
    if(!url) return false;
    if(typeof(open_wnidow) == 'undefined') open_wnidow = 'N';
    if(open_wnidow=='N') {
        open_wnidow = false;
    } else {
        open_wnidow = true;
    }

    if(/^\./.test(url)) url = request_uri+url;

    if(open_wnidow) {
        winopen(url);
    } else {
        location.href=url;
    }

    return false;
}

/**
 * @brief 멀티미디어 출력용 (IE에서 플래쉬/동영상 주변에 점선 생김 방지용)
 **/
function displayMultimedia(src, width, height, options) {
    var html = _displayMultimedia(src, width, height, options);
    if(html) document.writeln(html);
}
function _displayMultimedia(src, width, height, options) {
    if(src.indexOf('files') == 0) src = request_uri + src;

    var defaults = {
        wmode : 'transparent',
        allowScriptAccess : 'sameDomain',
        quality : 'high',
        flashvars : '',
        autostart : false
    };

    var params = jQuery.extend(defaults, options || {});
	var autostart = (params.autostart && params.autostart != 'false') ? 'true' : 'false';
	delete(params.autostart);

    var clsid = "";
    var codebase = "";
    var html = "";

    if(/\.(gif|jpg|jpeg|bmp|png)$/i.test(src)){
        html = '<img src="'+src+'" width="'+width+'" height="'+height+'" />';
    } else if(/\.flv$/i.test(src) || /\.mov$/i.test(src) || /\.moov$/i.test(src) || /\.m4v$/i.test(src)) {
        html = '<embed src="'+request_uri+'common/tpl/images/flvplayer.swf" allowfullscreen="true" autostart="'+autostart+'" width="'+width+'" height="'+height+'" flashvars="&file='+src+'&width='+width+'&height='+height+'&autostart='+autostart+'" wmode="'+params.wmode+'" />';
    } else if(/\.swf/i.test(src)) {
        clsid = 'clsid:D27CDB6E-AE6D-11cf-96B8-444553540000';

        if(typeof(enforce_ssl)!='undefined' && enforce_ssl){ codebase = "https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0"; }
        else { codebase = "http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0"; }
        html = '<object classid="'+clsid+'" codebase="'+codebase+'" width="'+width+'" height="'+height+'" flashvars="'+params.flashvars+'">';
        html += '<param name="movie" value="'+src+'" />';
        for(var name in params) {
            if(params[name] != 'undefined' && params[name] != '') {
                html += '<param name="'+name+'" value="'+params[name]+'" />';
            }
        }
        html += ''
            + '<embed src="'+src+'" autostart="'+autostart+'"  width="'+width+'" height="'+height+'" flashvars="'+params.flashvars+'" wmode="'+params.wmode+'"></embed>'
            + '</object>';
    }  else {
		if (jQuery.browser.mozilla || jQuery.browser.opera) {
			// firefox and opera uses 0 or 1 for autostart parameter.
			autostart = (params.autostart && params.autostart != 'false') ? '1' : '0';
		}

        html = '<embed src="'+src+'" autostart="'+autostart+'" width="'+width+'" height="'+height+'"';
        if(params.wmode == 'transparent') {
            html += ' windowlessvideo="1"';
        }
        html += '></embed>';
    }
    return html;
}

/**
 * @brief 에디터에서 사용되는 내용 여닫는 코드 (고정, zbxe용)
 **/
function zbxe_folder_open(id) {
    jQuery("#folder_open_"+id).hide();
    jQuery("#folder_close_"+id).show();
    jQuery("#folder_"+id).show();
}
function zbxe_folder_close(id) {
    jQuery("#folder_open_"+id).show();
    jQuery("#folder_close_"+id).hide();
    jQuery("#folder_"+id).hide();
}

/**
 * @brief 팝업의 경우 내용에 맞춰 현 윈도우의 크기를 조절해줌
 * 팝업의 내용에 맞게 크기를 늘리는 것은... 쉽게 되지는 않음.. ㅡ.ㅜ
 * popup_layout 에서 window.onload 시 자동 요청됨.
 **/
function setFixedPopupSize() {
	var $ = jQuery;
    var $header = $('#popHeader');
    var $body   = $('#popBody');

	if ($body.length) {
		if ($body.height() > 400) {
			$body.css({ overflow:'auto', overflowX:'hidden', height:400+'px' });
		}
	}

	var $win = $(window);
	var $pc  = $('#popup_content');
	var w    = Math.max($pc[0].offsetWidth, 600);
	var h    = $pc[0].offsetHeight;
	var dw   = $win.width();
	var dh   = $win.height();
	var _w = 0, _h = 0;

	if (w != dw) _w = w - dw;
	if (h != dh) _h = h - dh;

	if (_w || _h) {
		window.resizeBy(_w, _h);
	}

	if (!arguments.callee.executed) {
		setTimeout(setFixedPopupSize, 300);
		arguments.callee.executed = true;
	}
}

/**
 * @brief 추천/비추천,스크랩,신고기능등 특정 srl에 대한 특정 module/action을 호출하는 함수
 **/
function doCallModuleAction(module, action, target_srl) {
    var params = new Array();
    params['target_srl'] = target_srl;
    params['cur_mid'] = current_mid;
    exec_xml(module, action, params, completeCallModuleAction);
}

function completeCallModuleAction(ret_obj, response_tags) {
    if(ret_obj['message']!='success') alert(ret_obj['message']);
    location.reload();
}

function completeMessage(ret_obj) {
    alert(ret_obj['message']);
    location.reload();
}



/* 언어코드 (lang_type) 쿠키값 변경 */
function doChangeLangType(obj) {
    if(typeof(obj) == "string") {
        setLangType(obj);
    } else {
        var val = obj.options[obj.selectedIndex].value;
        setLangType(val);
    }
    location.reload();
}
function setLangType(lang_type) {
    var expire = new Date();
    expire.setTime(expire.getTime()+ (7000 * 24 * 3600000));
    xSetCookie('lang_type', lang_type, expire, '/');
}

/* 미리보기 */
function doDocumentPreview(obj) {
    var fo_obj = obj;
    while(fo_obj.nodeName != "FORM") {
        fo_obj = fo_obj.parentNode;
    }
    if(fo_obj.nodeName != "FORM") return;
    var editor_sequence = fo_obj.getAttribute('editor_sequence');

    var content = editorGetContent(editor_sequence);

    var win = window.open("", "previewDocument","toolbars=no,width=700px;height=800px,scrollbars=yes,resizable=yes");

    var dummy_obj = jQuery("#previewDocument");

    if(!dummy_obj.length) {
        jQuery(
            '<form id="previewDocument" target="previewDocument" method="post" action="'+request_uri+'">'+
            '<input type="hidden" name="module" value="document" />'+
            '<input type="hidden" name="act" value="dispDocumentPreview" />'+
            '<input type="hidden" name="content" />'+
            '</form>'
        ).appendTo(document.body);

        dummy_obj = jQuery("#previewDocument")[0];
    }

    if(dummy_obj) {
        dummy_obj.content.value = content;
        dummy_obj.submit();
    }
}

/* 게시글 저장 */
function doDocumentSave(obj) {
    var editor_sequence = obj.form.getAttribute('editor_sequence');
    var prev_content = editorRelKeys[editor_sequence]['content'].value;
    if(typeof(editor_sequence)!='undefined' && editor_sequence && typeof(editorRelKeys)!='undefined' && typeof(editorGetContent)=='function') {
        var content = editorGetContent(editor_sequence);
        editorRelKeys[editor_sequence]['content'].value = content;
    }

	var params={}, responses=['error','message','document_srl'], elms=obj.form.elements, data=jQuery(obj.form).serializeArray();;
	jQuery.each(data, function(i, field){
		var val = jQuery.trim(field.value);
		if(!val) return true;
		if(/\[\]$/.test(field.name)) field.name = field.name.replace(/\[\]$/, '');
		if(params[field.name]) params[field.name] += '|@|'+val;
		else params[field.name] = field.value;
	});

	exec_xml('member','procMemberSaveDocument', params, completeDocumentSave, responses, params, obj.form);

    editorRelKeys[editor_sequence]['content'].value = prev_content;
    return false;
}

function completeDocumentSave(ret_obj) {
    jQuery('input[name=document_srl]').eq(0).val(ret_obj['document_srl']);
    alert(ret_obj['message']);
}

/* 저장된 게시글 불러오기 */
var objForSavedDoc = null;
function doDocumentLoad(obj) {
    // 저장된 게시글 목록 불러오기
    objForSavedDoc = obj.form;
    popopen(request_uri.setQuery('module','member').setQuery('act','dispSavedDocumentList'));
}

/* 저장된 게시글의 선택 */
function doDocumentSelect(document_srl) {
    if(!opener || !opener.objForSavedDoc) {
        window.close();
        return;
    }

    // 게시글을 가져와서 등록하기
    opener.location.href = opener.current_url.setQuery('document_srl', document_srl).setQuery('act', 'dispBoardWrite');
    window.close();
}


/* 스킨 정보 */
function viewSkinInfo(module, skin) {
    popopen("./?module=module&act=dispModuleSkinInfo&selected_module="+module+"&skin="+skin, 'SkinInfo');
}


/* 관리자가 문서를 관리하기 위해서 선택시 세션에 넣음 */
var addedDocument = new Array();
function doAddDocumentCart(obj) {
    var srl = obj.value;
    addedDocument[addedDocument.length] = srl;
    setTimeout(function() { callAddDocumentCart(addedDocument.length); }, 100);
}

function callAddDocumentCart(document_length) {
    if(addedDocument.length<1 || document_length != addedDocument.length) return;
    var params = new Array();
    params["srls"] = addedDocument.join(",");
    exec_xml("document","procDocumentAddCart", params, null);
    addedDocument = new Array();
}

/* ff의 rgb(a,b,c)를 #... 로 변경 */
function transRGB2Hex(value) {
    if(!value) return value;
    if(value.indexOf('#') > -1) return value.replace(/^#/, '');

    if(value.toLowerCase().indexOf('rgb') < 0) return value;
    value = value.replace(/^rgb\(/i, '').replace(/\)$/, '');
    value_list = value.split(',');

    var hex = '';
    for(var i = 0; i < value_list.length; i++) {
        var color = parseInt(value_list[i], 10).toString(16);
        if(color.length == 1) color = '0'+color;
        hex += color;
    }
    return hex;
}

/* 보안 로그인 모드로 전환 */
function toggleSecuritySignIn() {
    var href = location.href;
    if(/https:\/\//i.test(href)) location.href = href.replace(/^https/i,'http');
    else location.href = href.replace(/^http/i,'https');
}

function reloadDocument() {
    location.reload();
}


/**
*
* Base64 encode / decode
* http://www.webtoolkit.info/
*
**/

var Base64 = {

    // private property
    _keyStr : "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",

    // public method for encoding
    encode : function (input) {
        var output = "";
        var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
        var i = 0;

        input = Base64._utf8_encode(input);

        while (i < input.length) {

            chr1 = input.charCodeAt(i++);
            chr2 = input.charCodeAt(i++);
            chr3 = input.charCodeAt(i++);

            enc1 = chr1 >> 2;
            enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
            enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
            enc4 = chr3 & 63;

            if (isNaN(chr2)) {
                enc3 = enc4 = 64;
            } else if (isNaN(chr3)) {
                enc4 = 64;
            }

            output = output +
            this._keyStr.charAt(enc1) + this._keyStr.charAt(enc2) +
            this._keyStr.charAt(enc3) + this._keyStr.charAt(enc4);

        }

        return output;
    },

    // public method for decoding
    decode : function (input) {
        var output = "";
        var chr1, chr2, chr3;
        var enc1, enc2, enc3, enc4;
        var i = 0;

        input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");

        while (i < input.length) {

            enc1 = this._keyStr.indexOf(input.charAt(i++));
            enc2 = this._keyStr.indexOf(input.charAt(i++));
            enc3 = this._keyStr.indexOf(input.charAt(i++));
            enc4 = this._keyStr.indexOf(input.charAt(i++));

            chr1 = (enc1 << 2) | (enc2 >> 4);
            chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
            chr3 = ((enc3 & 3) << 6) | enc4;

            output = output + String.fromCharCode(chr1);

            if (enc3 != 64) {
                output = output + String.fromCharCode(chr2);
            }
            if (enc4 != 64) {
                output = output + String.fromCharCode(chr3);
            }

        }

        output = Base64._utf8_decode(output);

        return output;

    },

    // private method for UTF-8 encoding
    _utf8_encode : function (string) {
        string = string.replace(/\r\n/g,"\n");
        var utftext = "";

        for (var n = 0; n < string.length; n++) {

            var c = string.charCodeAt(n);

            if (c < 128) {
                utftext += String.fromCharCode(c);
            }
            else if((c > 127) && (c < 2048)) {
                utftext += String.fromCharCode((c >> 6) | 192);
                utftext += String.fromCharCode((c & 63) | 128);
            }
            else {
                utftext += String.fromCharCode((c >> 12) | 224);
                utftext += String.fromCharCode(((c >> 6) & 63) | 128);
                utftext += String.fromCharCode((c & 63) | 128);
            }

        }

        return utftext;
    },

    // private method for UTF-8 decoding
    _utf8_decode : function (utftext) {
        var string = "";
        var i = 0;
        var c = c1 = c2 = 0;

        while ( i < utftext.length ) {

            c = utftext.charCodeAt(i);

            if (c < 128) {
                string += String.fromCharCode(c);
                i++;
            }
            else if((c > 191) && (c < 224)) {
                c2 = utftext.charCodeAt(i+1);
                string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
                i += 2;
            }
            else {
                c2 = utftext.charCodeAt(i+1);
                c3 = utftext.charCodeAt(i+2);
                string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
                i += 3;
            }

        }

        return string;
    }

}






/* ----------------------------------------------
 * DEPRECATED
 * 하위호환용으로 남겨 놓음
 * ------------------------------------------- */

if(typeof(resizeImageContents) == 'undefined') {
    function resizeImageContents() {}
}

if(typeof(activateOptionDisabled) == 'undefined') {
    function activateOptionDisabled() {}
}

objectExtend = jQuery.extend;

/**
 * @brief 특정 Element의 display 옵션 토글
 **/
function toggleDisplay(objId) {
    jQuery('#'+objId).toggle();
}

/* 체크박스 선택 */
function checkboxSelectAll(formObj, name, checked) {
    var itemName = name;
    var option = {};
    if(typeof(formObj) != "undefined") option.wrap = formObj;
    if(typeof(checked) != "undefined") option.checked = checked;

    XE.checkboxToggleAll(itemName, option);
}

/* 체크박스를 실행 */
function clickCheckBoxAll(formObj, name) {
    var itemName = name;
    var option = { doClick:true };
    if(typeof(formObj) != "undefined") option.wrap = formObj;

    XE.checkboxToggleAll(itemName, option);
}

/**
 * @brief 에디터에서 사용하되 내용 여닫는 코드 (zb5beta beta 호환용으로 남겨 놓음)
 **/
function svc_folder_open(id) {
    jQuery("#_folder_open_"+id).hide();
    jQuery("#_folder_close_"+id).show();
    jQuery("#_folder_"+id).show();
}
function svc_folder_close(id) {
    jQuery("#_folder_open_"+id).show();
    jQuery("#_folder_close_"+id).hide();
    jQuery("#_folder_"+id).hide();
}

/**
 * @brief 날짜 선택 (달력 열기)
 **/
function open_calendar(fo_id, day_str, callback_func) {
    if(typeof(day_str)=="undefined") day_str = "";

    var url = "./common/tpl/calendar.php?";
    if(fo_id) url+="fo_id="+fo_id;
    if(day_str) url+="&day_str="+day_str;
    if(callback_func) url+="&callback_func="+callback_func;

    popopen(url, 'Calendar');
}

var loaded_popup_menus = XE.loaded_popup_menus;
function createPopupMenu() {}
function chkPopupMenu() {}
function displayPopupMenu(ret_obj, response_tags, params) {
    XE.displayPopupMenu(ret_obj, response_tags, params);
}

function GetObjLeft(obj) {
    return jQuery(obj).offset().left;
}
function GetObjTop(obj) {
    return jQuery(obj).offset().top;
}

function replaceOuterHTML(obj, html) {
    jQuery(obj).replaceWith(html);
}

function getOuterHTML(obj) {
    return jQuery(obj).html().trim();
}

jQuery(function(){
    jQuery(".lang_code").each(
    function() 
    {
        var objText = jQuery(this);
        var targetName = objText.attr("id");
		if(typeof(targetName) == "undefined") targetName = objText.attr("name");
		if(typeof(targetName) == "undefined") return;
        objText.after("<a href='"+request_uri.setQuery('module','module').setQuery('act','dispModuleAdminLangcode').setQuery('target',targetName)+"' class='buttonSet buttonSetting' onclick='popopen(this.href);return false;'><span>find_langcode</span></a>"); 
    }
    );
});

/* file:/home/recamier/common/js/js_app.js */
/**
 * @file js_app.js
 * @author zero (zero@nzeo.com)
 * @brief XE JavaScript Application Framework (JAF)
 * @namespace xe
 * @update 20091120
 */
(function($){

var _xe_base, _app_base, _plugin_base;
var _apps = [];

_xe_base = {
	/**
	 * @brief return the name of Core module
	 */
	getName : function() {
		return 'Core';
	},

	/**
	 * @brief Create an application class
	 */
	createApp : function(sName, oDef) {
		var _base = getTypeBase();

		$.extend(_base.prototype, _app_base, oDef);

		_base.prototype.getName = function() {
			return sName;
		};

		return _base;
	},

	/**
	 * @brief Create a plugin class
	 */
	createPlugin : function(sName, oDef) {
		var _base = getTypeBase();

		$.extend(_base.prototype, _plugin_base, oDef);

		_base.prototype.getName = function() {
			return sName;
		};

		return _base;
	},

	/**
	 * @brief Get the array of applications
	 */
	getApps : function() {
		return $.makeArray(_apps);
	},

	/**
	 * @brief Get one application
	 */
	getApp : function(indexOrName) {
		indexOrName = (indexOrName||'').toLowerCase();
		if (typeof _apps[indexOrName] != 'undefined') {
			return _apps[indexOrName];
		} else {
			return null;
		}
	},

	/**
	 * @brief Register an application instance
	 */
	registerApp : function(oApp) {
		var sName = oApp.getName().toLowerCase();

		_apps.push(oApp);
		if (!$.isArray(_apps[sName])) {
			_apps[sName] = [];
		}
		_apps[sName].push(oApp);

		oApp.parent = this;
	},

	/**
	 * @brief Unregister an application instance
	 */
	unregisterApp : function(oApp) {
		var sName  = oPlugin.getName().toLowerCase();
		var nIndex = $.inArray(oApp, _apps);

		if (nIndex >= 0) _apps.splice(nIndex, 1);

		if ($.isArray(_apps[sName])) {
			nIndex = $.inArray(oApp, _apps[sName]);
			if (nIndex >= 0) _apps[sName].splice(nIndex, 1);
		}
	},

	/**
	 * @brief overrides broadcast method
	 */
	broadcast : function(sender, msg, params) {
		for(var i=0; i < _apps.length; i++) {
			_apps[i]._cast(sender, msg, params);
		}

		// cast to child plugins
		this._cast(sender, msg, params);
	}
}

_app_base = {
	_plugins  : [],
	_messages : [],

	_fn_level : [],

	/**
	 * @brief register a plugin instance
	 */
	registerPlugin : function(oPlugin) {
		var sName = oPlugin.getName().toLowerCase();

		// check if the plugin is already registered
		if ($.inArray(oPlugin, this._plugins) >= 0) return false;

		// push the plugin into the _plugins array
		this._plugins.push(oPlugin);

		if (!$.isArray(this._plugins[sName])) {
			this._plugins[sName] = [];
		}
		this._plugins[sName].push(oPlugin);

		// register method pool
		var msgs = this._messages;
		$.each(oPlugin, function(key, val){
			if (!$.isFunction(val)) return true;
			if (!/^API_((BEFORE_|AFTER_)?[A-Z0-9_]+)$/.test(key)) return true;
			var fn = function(s,p){ return oPlugin[key](s,p) };
			fn._fn = val;

			if (!$.isArray(msgs[RegExp.$1])) msgs[RegExp.$1] = [];
			msgs[RegExp.$1].push(fn);
		});

		// set the application
		oPlugin.oApp = this;

		// binding
		oPlugin.cast = function(msg, params) {
			return oPlugin._cast(msg, params);
		};

		oPlugin.broadcast = function(msg, params) {
			oPlugin._broadcast(msg, params);
		};

		return true;
	},

	/**
	 * @brief unregister a plugin  instance
	 */
	unregisterPlugin : function(oPlugin) {
		var sName = oPlugin.getName().toLowerCase();

		// remove from _plugins array
		var nIndex = $.inArray(oPlugin, this._plugins);
		if (nIndex >= 0) this._plugins.splice(nIndex, 1);

		if ($.isArray(this._plugins[sName])) {
			nIndex = $.inArray(oPlugin, this._plugins);
			if (nIndex >= 0) this._plugins[sName].splice(nIndex, 1);
		}

		// unregister method pool
		var msgs = this._messages;
		$.each(oPlugin, function(key, val){
			if (!$.isFunction(val)) return true;
			if (!/^API_([A-Z0-9_]+)$/.test(key)) return true;
			if (typeof msgs[RegExp.$1] == 'undefined') return true;

			if ($.isArray(msgs[RegExp.$1])) {
				msgs[RegExp.$1] = $.grep(msgs[RegExp.$1], function(fn,i){ return (fn._fn != val); });
				if (!msgs[RegExp.$1].length) {
					delete msgs[RegExp.$1];
				}
			} else {
				if (msgs[RegExp.$1]._fn == val) {
					delete msgs[RegExp.$1];
				}

			}
		});

		// unset the application
		oPlugin.oApp = null;
	},

	cast : function(msg, params) {
		return this._cast(this, msg, params || []);
	},

	broadcast : function(sender, msg, params) {
		if (this.parent && this.parent.broadcast) {
			this.parent.broadcast(sender, msg, params);
		}
	},

	_cast : function(sender, msg, params) {
		var i, len;
		var aMsg = this._messages;

		msg = msg.toUpperCase();

		// BEFORE hooker
		if (aMsg['BEFORE_'+msg] || this['API_BEFORE_'+msg]) {
			var bContinue = this._cast(sender, 'BEFORE_'+msg, params);
			if (!bContinue) return;
		}

		// main api function
		var vRet = [], sFn = 'API_'+msg;
		if ($.isFunction(this[sFn])) vRet.push( this[sFn](sender, params) );
		if ($.isFunction(aMsg[msg])) vRet.push( aMsg[msg](sender, params) );
		else if ($.isArray(aMsg[msg])) {
			for(i=0; i < aMsg[msg].length; i++) {
				vRet.push( aMsg[msg][i](sender, params) );
			}
		}
		if (vRet.length < 2) vRet = vRet[0];

		// AFTER hooker
		if (aMsg['AFTER_'+msg] || this['API_AFTER_'+msg]) {
			this._cast(sender, 'AFTER_'+msg, params);
		}

		if (!/^(?:AFTER_|BEFORE_)/.test(msg)) { // top level function
			return vRet;
		} else {
			return $.isArray(vRet)?($.inArray(false, vRet)<0):((typeof vRet=='undefined')?true:!!vRet);
		}
	}
};

_plugin_base = {
	oApp : null,
	_binded_fn : [],

	_cast : function(msg, params) {
		if (this.oApp && this.oApp._cast) {
			return this.oApp._cast(this, msg, params || []);
		}
	},
	_broadcast : function(msg, params) {
		if (this.oApp && this.oApp.broadcast) {
			this.oApp.broadcast(this, mag, params || []);
		}
	}

	/**
	 * Event handler prototype
	 *
	 * function (oSender, params)
	 */
};

function getTypeBase() {
	var _base = function() {
		if ($.isArray(this._plugins))   this._plugins   = [];
		if ($.isArray(this._messages))  this._messages  = [];
		if ($.isArray(this._binded_fn)) this._binded_fn = [];

		if ($.isFunction(this.init)) {
			this.init.apply(this, arguments);
		}
	};

	return _base;
}

window.xe = $.extend(_app_base, _xe_base);
window.xe.lang = {}; // language repository

// domready event
$(function(){ xe.broadcast(xe, 'ONREADY'); });

// load event
$(window).load(function(){ xe.broadcast(xe, 'ONLOAD'); });

})(jQuery);

/* file:/home/recamier/css/inc.js */
// Show And Hide Toggle
var cc=0
function hideShow(id) {
    if (cc==0) {
        cc=1
        document.getElementById(id).style.display="block";
    } else {
        cc=0
        document.getElementById(id).style.display="none";
    }

}
(function($){$(document).ready(function($){
				
                $('a.mboxen').boxen({
                    width:650, height:450
                });
            });
;})(jQuery);

var headline_count;
 var headline_interval;
 var old_headline = 0;
 var current_headline = 0;
 
(function($){ $(document).ready(function(){
	
   headline_count = $("div.headline").size();
   $("div.headline:eq("+current_headline+")").css('top','5px');
 
   headline_interval = setInterval(headline_rotate,2500); //time in milliseconds
   $('#scrollup').hover(function() {
     $("#scrollall").stop(true, true).animate({opacity: "show"}, "fast"),clearInterval(headline_interval);;
   }, function() {
     headline_interval = setInterval(headline_rotate,2500); //time in milliseconds
     headline_rotate();
   });
 });
				
	
  	 $(function(){
$(".popuptoday a").hover(function() {
$(this).next("em").stop(true, true).animate({opacity: "show", top: "-23"}, 130);
}, function() {
$(this).next("em").animate({opacity: "hide", top: "-16"}, "fast");
});
    });  
 
	 
  	 $(function(){

		$(".rboard").mouseover(function() {
		$("#scrollall").animate({opacity: "hide"}, "fast"),$("#adbox").mouseover(function() {
		$("#scrollall").animate({opacity: "hide"}, "fast");}),$(".searching").mouseover(function() {
		$("#scrollall").animate({opacity: "hide"}, "fast");})
});

    });  
	 
  	 $(function(){

		$("#today").mouseover(function() {
		$("#scrollall").animate({opacity: "hide"}, "fast"),$("#menu").mouseover(function() {
		$("#scrollall").animate({opacity: "hide"}, "fast");}),$("#top").mouseover(function() {
		$("#scrollall").animate({opacity: "hide"}, "fast");})
});

    });  
	   	 $(function(){

		$(".loginfo").click(function() {
		$(".loginWindow").animate({opacity: "toggle"}, "fast")
});

    });  	
	   	 $(function(){

		$(".bannerbut").click(function() {
		$(".banner1").animate({opacity: "toggle"}, 0), $(".banner2").animate({opacity: "toggle"}, 0)
});

    });    	 
		$(function(){

		$(".bhotitem").click(function() {
		$("#newitem").animate({opacity: "toggle"}, 0),$("#hotitem").animate({opacity: "toggle"}, 0)
});

    });    	 
		$(function(){

		$(".bfinder").click(function() {
		$("#recipefinder").animate({opacity: "toggle"}, 0),$("#ingredientfinder").animate({opacity: "toggle"}, 0)
});

    });  		
		$(function(){

		$(".quickfinder1").click(function() {
		$("#quickfinder1").animate({opacity: "show"}, 0),$("#quickfinder2").animate({opacity: "hide"}, 0),$("#quickfinder3").animate({opacity: "hide"}, 0),$("#quickfinder4").animate({opacity: "hide"}, 0)
});

    });  		$(function(){

		$(".quickfinder2").click(function() {
		$("#quickfinder1").animate({opacity: "hide"}, 0),$("#quickfinder2").animate({opacity: "show"}, 0),$("#quickfinder3").animate({opacity: "hide"}, 0),$("#quickfinder4").animate({opacity: "hide"}, 0)
});

    });  		$(function(){

		$(".quickfinder3").click(function() {
		$("#quickfinder1").animate({opacity: "hide"}, 0),$("#quickfinder2").animate({opacity: "hide"}, 0),$("#quickfinder3").animate({opacity: "show"}, 0),$("#quickfinder4").animate({opacity: "hide"}, 0)
});

    });  		$(function(){

		$(".quickfinder4").click(function() {
		$("#quickfinder1").animate({opacity: "hide"}, 0),$("#quickfinder2").animate({opacity: "hide"}, 0),$("#quickfinder3").animate({opacity: "hide"}, 0),$("#quickfinder4").animate({opacity: "show"}, 0)
});

    });  

 function headline_rotate() {
   current_headline = (old_headline + 1) % headline_count; 
   $("div.headline:eq(" + old_headline + ")").animate({top: -15},"fast", function() {
     $(this).css('top','20px');
   });
   $("div.headline:eq(" + current_headline + ")").show().animate({top: 5},"fast");  
   old_headline = current_headline;
 }

})(jQuery);


(function($){
    $(function(){

		$(".pop_left a").hover(function() {
		$(".popleft").stop(true, true).animate({opacity: "show", left: "2px"}, "fast");
		}, function() {
		$(".popleft").animate({opacity: "hide", left: "10px"}, "fast");
});

    });
	    $(function(){

		$(".pop_2 a").hover(function() {
		$(".pop2").stop(true, true).animate({opacity: "show", left: "-3px"}, "fast");
		}, function() {
		$(".pop2").animate({opacity: "hide", left: "-10px"}, "fast");
});

    });
	    $(function(){

		$(".pop_top a").hover(function() {
		$(".poptop").stop(true, true).animate({opacity: "show", top: "2px"}, "fast");
		}, function() {
		$(".poptop").animate({opacity: "hide", top: "10px"}, "fast");
});

    });
	    $(function(){

		$(".pop_bottom a").hover(function() {
		$(".popbottom").stop(true, true).animate({opacity: "show", top: "-3px"}, "fast");
		}, function() {
		$(".popbottom").animate({opacity: "hide", top: "-10px"}, "fast");
});

    });




})(jQuery);           

function flash(file,width,height,name){
        document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="'+width+'" height="'+height+'" id="'+name+'">');  
        document.write('<param name="movie" value="'+file+'" />');
        document.write('<param name="quality" value="high" />');
        document.write('<param name="wmode" value="transparent" />'); 
        document.write('<param name="salign" value="lt" />');
		document.write('<param name="scale" value="noscale" />');
		document.write('<param name="menu" value="false" />');
		document.write('<embed src="'+file+'" quality="high" wmode="transparent" width="'+width+'" height="'+height+'" name="'+name+'" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
        document.write('</object>')
}

function doFocusUserId(fo_id) {
    if(xScrollTop()) return;
    var fo_obj = xGetElementById(fo_id);
    if(fo_obj.user_id) {
        try{
            fo_obj.user_id.focus();
        } catch(e) {};
    }
}

function completeLogin(ret_obj, response_tags, params, fo_obj) {
    var url =  current_url.setQuery('act','');
    top.location.href = url;
}


/* file:/home/recamier/css/boxen.js */


(function($){
    $.fn.extend({
        boxen: function(url, options){
            switch (typeof url) {
                case 'object' :
                    options = url;
                    break;
                case 'string' :
                    options = $.extend({}, {
                        url: url,
                        urlAttribute: null
                    }, options);
                    break;
            }
            return this.click(function(e){
                $.Boxen.open(this, options);
                return false;
            });
        }
    });
    
    $.Boxen = {
        defaults: {
            urlParams: {},
            showTitleBar: true,
            showCloseButton: true,
            title: null,
            titleAttribute: 'title',
            closeButtonText: null,
            width: 600,
            height: 500,
            url: null,
            urlAttribute: 'href',
            overlayOpacity: 0.8,
            overlayColor: null,
            modal: false,
            postOpen: function(contentAreaElement) {},
            postClose: function() {}
        },
        bigIFrame: null,
        overlay: null,
        container: null,
        options: null,
        titleBar: null,
        closeButton: null,
        contentWindow: null,
        contentArea: null,
        ie6: false,
        setOptions: function(options){
            this.options = $.extend({}, this.defaults, options || {});
            return this;
        },
        getFullUrl: function(){
            var url = this.options.url;
            url += url.indexOf('?') == -1 ? '?' : '&';
            return url += $.param(this.options.urlParams);
        },
        init: function(){
            _this = this;
            this.isIE6 = $.browser.msie && parseInt($.browser.version) < 7;
            if ($.browser.opera) {
                 $.support.opacity = true;
            }
            
            $('#boxen_overlay, #boxen_container').remove();

            this.overlay = $('<div>').attr('id', 'boxen_overlay').css({
                opacity: this.options.overlayOpacity,
                backgroundColor: this.options.overlayColor,
                display: 'none',
                position: 'absolute',
                top: 0,
                left: 0,
                zIndex: 10000
            });
            
            if (!this.options.modal) {
                this.overlay.click(function(e){
                    $.Boxen.close();
                    return false;
                });
            }
            
            this.container = $('<div>')
                .attr('id', 'boxen_container')
                .width(this.options.width)
                .height(this.options.height)
                .css({
                    position: 'absolute',
                    left: '50%',
                    top: '50%',
                    marginLeft: Math.round(this.options.width / -2) + 'px',
                    marginTop: Math.round(this.options.height / -2) + 'px',
                    display: 'none',
                    zIndex: 10001
                });
            
            if (this.isIE6) {
                this.bigIFrame = $('<iframe>').attr('id', 'boxen_big_iframe')
                    .css({
                        zIndex: 9999,
                        position: 'absolute',
                        top: 0,
                        left: 0,
                        opacity: 0
                    }).appendTo('body');
                    
                this._sizeOverlay();
                this._centreContent();
                $(window).bind('scroll.Boxen', function(e){
                    _this._centreContent();
                }).bind('resize.Boxen', function(e){
                    _this._sizeOverlay();
                    _this._centreContent();
                });
            } else {
                this.overlay.css({
                    position: 'fixed',
                    width: '100%',
                    height: '100%'
                });
                
                this.container.css('position', 'fixed');
            }
            
            this.overlay.appendTo('body');
            this.container.appendTo('body');
            
            this.contentWindow = $('<div>').attr('id', 'boxen_content').appendTo(this.container);
            
            if (this.options.showTitleBar) {
                this.titleBar = $('<div>').attr('id', 'boxen_titlebar').append(
                    $('<span>').attr('id', 'boxen_title').html(this.options.title)
                ).appendTo(this.contentWindow);
            } else {
                this.titleBar = null;
            }
            
            if (this.options.showCloseButton) {
                this.closeButton = $('<a>').attr({
                    href: '#',
                    id: 'boxen_close_button'
                }).click(function(e){
                    $.Boxen.close();
                    return false;
                }).appendTo(this.contentWindow);
                
                if (this.options.closeButtonText) {
                    this.closeButton.append(
                        $('<span>').html(this.options.closeButtonText)
                    );
                }
            } else {
                this.closeButton = null;
            }
            
            this.contentArea = $('<div>').attr('id', 'boxen_content_area')
                                         .appendTo(this.contentWindow);
            return this;
        },
        show: function(callback){
            this.overlay.fadeIn('fast');
            this.container.fadeIn('fast', function(){
                var _this = $.Boxen;
                if (null !== _this.options.url) {
                    var iFrame = $('<iframe>').attr({
                        id: 'boxen_iframe_content_' + new Date().getTime(),
                        width: _this.getContentAreaWidth(),
                        height: _this.getContentAreaHeight(),
                        frameBorder: 0,
                        src: _this.getFullUrl()
                    }).appendTo(_this.contentArea);
                } else {
                    _this.contentArea.width(_this.getContentAreaWidth()).height(_this.getContentAreaHeight());
                }
                _this.options.postOpen(_this.getContentAreaElement());
            });
            return this;
        },
        close: function(){
            try {
                if (this.isIE6) {
                    $(window).unbind('scroll.Boxen').unbind('resize.Boxen');
                    throw 'IE6';
                }
                this.container.fadeOut('fast', function(){
                    $(this).remove();
                });
                this.overlay.fadeOut('fast', function(){
                    $(this).remove();
                });
            } 
            catch (e) {
                $('#boxen_big_iframe, #boxen_overlay, #boxen_container').remove();
            }
            this.options.postClose();
            return this;
        },
        open: function(domElement, options){
            this.setOptions(options);
            if (domElement) {
                this.options.title = this.options.titleAttribute && $(domElement).attr(this.options.titleAttribute) || this.options.title;
                this.options.url = this.options.urlAttribute && $(domElement).attr(this.options.urlAttribute) || this.options.url;
            }
            this.init().show();
            return this;
        },
        _centreContent: function() {
            if (this.options.height < $(window).height()) {
                var topMargin = Math.round(this.options.height / -2) + $(document).scrollTop();
                this.container.css({
                    marginTop: topMargin + 'px'
                });
            }
        },
        _sizeOverlay: function() {
            this.bigIFrame.css({
                width: ($(document).width() - 21) + 'px',
                height: ($(document).height() - 4) + 'px'
            });
            this.overlay.css({
                width: ($(document).width() - 21) + 'px',
                height: ($(document).height() - 4) + 'px'
            });
        },
        getContentAreaElement: function() {
            return this.contentArea.get(0);
        },
        getContentAreaHeight: function() {
            return this.titleBar ? this.options.height - this.titleBar.outerHeight() : this.options.height;
        },
        getContentAreaWidth: function() {
            return this.options.width;
        }
    };
})(jQuery);

/* file:/home/recamier/common/js/xml_handler.js */
/**
 * @file   common/js/xml_handler.js
 * @brief  XE에서 ajax기능을 이용함에 있어 module, act를 잘 사용하기 위한 자바스크립트
 **/

// xml handler을 이용하는 user function
var show_waiting_message = true;

/*  This work is licensed under Creative Commons GNU LGPL License.

    License: http://creativecommons.org/licenses/LGPL/2.1/
   Version: 0.9
    Author:  Stefan Goessner/2006
    Web:     http://goessner.net/
*/
function xml2json(xml, tab, ignoreAttrib) {
   var X = {
      toObj: function(xml) {
         var o = {};
         if (xml.nodeType==1) {   // element node ..
            if (ignoreAttrib && xml.attributes.length)   // element with attributes  ..
               for (var i=0; i<xml.attributes.length; i++)
                  o["@"+xml.attributes[i].nodeName] = (xml.attributes[i].nodeValue||"").toString();
            if (xml.firstChild) { // element has child nodes ..
               var textChild=0, cdataChild=0, hasElementChild=false;
               for (var n=xml.firstChild; n; n=n.nextSibling) {
                  if (n.nodeType==1) hasElementChild = true;
                  else if (n.nodeType==3 && n.nodeValue.match(/[^ \f\n\r\t\v]/)) textChild++; // non-whitespace text
                  else if (n.nodeType==4) cdataChild++; // cdata section node
               }
               if (hasElementChild) {
                  if (textChild < 2 && cdataChild < 2) { // structured element with evtl. a single text or/and cdata node ..
                     X.removeWhite(xml);
                     for (var n=xml.firstChild; n; n=n.nextSibling) {
                        if (n.nodeType == 3)  // text node
                           o = X.escape(n.nodeValue);
                        else if (n.nodeType == 4)  // cdata node
//                           o["#cdata"] = X.escape(n.nodeValue);
                            o = X.escape(n.nodeValue);
                        else if (o[n.nodeName]) {  // multiple occurence of element ..
                           if (o[n.nodeName] instanceof Array)
                              o[n.nodeName][o[n.nodeName].length] = X.toObj(n);
                           else
                              o[n.nodeName] = [o[n.nodeName], X.toObj(n)];
                        }
                        else  // first occurence of element..
                           o[n.nodeName] = X.toObj(n);
                     }
                  }
                  else { // mixed content
                     if (!xml.attributes.length)
                        o = X.escape(X.innerXml(xml));
                     else
                        o["#text"] = X.escape(X.innerXml(xml));
                  }
               }
               else if (textChild) { // pure text
                  if (!xml.attributes.length)
                     o = X.escape(X.innerXml(xml));
                  else
                     o["#text"] = X.escape(X.innerXml(xml));
               }
               else if (cdataChild) { // cdata
                  if (cdataChild > 1)
                     o = X.escape(X.innerXml(xml));
                  else
                     for (var n=xml.firstChild; n; n=n.nextSibling){
                        //o["#cdata"] = X.escape(n.nodeValue);
                        o = X.escape(n.nodeValue);
                  }
               }
            }
            if (!xml.attributes.length && !xml.firstChild) o = null;
         }
         else if (xml.nodeType==9) { // document.node
            o = X.toObj(xml.documentElement);
         }
         else
            alert("unhandled node type: " + xml.nodeType);
         return o;
      },
      toJson: function(o, name, ind) {
         var json = name ? ("\""+name+"\"") : "";
         if (o instanceof Array) {
            for (var i=0,n=o.length; i<n; i++)
               o[i] = X.toJson(o[i], "", ind+"\t");
            json += (name?":[":"[") + (o.length > 1 ? ("\n"+ind+"\t"+o.join(",\n"+ind+"\t")+"\n"+ind) : o.join("")) + "]";
         }
         else if (o == null)
            json += (name&&":") + "null";
         else if (typeof(o) == "object") {
            var arr = [];
            for (var m in o)
               arr[arr.length] = X.toJson(o[m], m, ind+"\t");
            json += (name?":{":"{") + (arr.length > 1 ? ("\n"+ind+"\t"+arr.join(",\n"+ind+"\t")+"\n"+ind) : arr.join("")) + "}";
         }
         else if (typeof(o) == "string")
            json += (name&&":") + "\"" + o.toString() + "\"";
         else
            json += (name&&":") + o.toString();
         return json;
      },
      innerXml: function(node) {
         var s = ""
         if ("innerHTML" in node)
            s = node.innerHTML;
         else {
            var asXml = function(n) {
               var s = "";
               if (n.nodeType == 1) {
                  s += "<" + n.nodeName;
                  for (var i=0; i<n.attributes.length;i++)
                     s += " " + n.attributes[i].nodeName + "=\"" + (n.attributes[i].nodeValue||"").toString() + "\"";
                  if (n.firstChild) {
                     s += ">";
                     for (var c=n.firstChild; c; c=c.nextSibling)
                        s += asXml(c);
                     s += "</"+n.nodeName+">";
                  }
                  else
                     s += "/>";
               }
               else if (n.nodeType == 3)
                  s += n.nodeValue;
               else if (n.nodeType == 4)
                  s += "<![CDATA[" + n.nodeValue + "]]>";
               return s;
            };
            for (var c=node.firstChild; c; c=c.nextSibling)
               s += asXml(c);
         }
         return s;
      },
      escape: function(txt) {
         return txt.replace(/[\\]/g, "\\\\")
                   .replace(/[\"]/g, '\\"')
                   .replace(/[\n]/g, '\\n')
                   .replace(/[\r]/g, '\\r');
      },
      removeWhite: function(e) {
         e.normalize();
         for (var n = e.firstChild; n; ) {
            if (n.nodeType == 3) {  // text node
               if (!n.nodeValue.match(/[^ \f\n\r\t\v]/)) { // pure whitespace text node
                  var nxt = n.nextSibling;
                  e.removeChild(n);
                  n = nxt;
               }
               else
                  n = n.nextSibling;
            }
            else if (n.nodeType == 1) {  // element node
               X.removeWhite(n);
               n = n.nextSibling;
            }
            else                      // any other node
               n = n.nextSibling;
         }
         return e;
      }
   };
   if (xml.nodeType == 9) // document node
      xml = xml.documentElement;

   var json_obj = X.toObj(X.removeWhite(xml)), json_str;
   
   if (typeof(JSON)=='object' && jQuery.isFunction(JSON.stringify) && false) {
	   var obj = {}; obj[xml.nodeName] = json_obj;
	   json_str = JSON.stringify(obj);
	   return json_str;
   } else {
	   json_str = X.toJson(json_obj, xml.nodeName, "");
	   return "{" + (tab ? json_str.replace(/\t/g, tab) : json_str.replace(/\t|\n/g, "")) + "}";
   }
}

(function($){
/**
 * @brief exec_xml
 * @author taggon <gonom9@gmail.com>
 **/
$.exec_xml = window.exec_xml = function(module, act, params, callback_func, response_tags, callback_func_arg, fo_obj) {
	var xml_path = request_uri+"index.php"
    if(!params) params = {};

	// {{{ set parameters
	if($.isArray(params)) params = arr2obj(params);
	params['module'] = module;
	params['act']    = act;

    if(typeof(xeVid)!='undefined') params['vid'] = xeVid;
    if(typeof(response_tags)=="undefined" || response_tags.length<1) response_tags = ['error','message'];
	else {
		response_tags.push('error', 'message');
	}
	// }}} set parameters

	// use ssl?
	if ($.isArray(ssl_actions) && params['act'] && $.inArray(params['act'], ssl_actions) >= 0)
	{
		var url    = default_url || request_uri;
		var port   = window.https_port || 443;
		var _ul    = $('<a>').attr('href', url)[0];
		var target = 'https://' + _ul.hostname.replace(/:\d+$/, '');

		if(port != 443) target += ':'+port;
		if(_ul.pathname[0] != '/') target += '/';
		
		target += _ul.pathname;
		xml_path = target.replace(/\/$/, '')+'/index.php';
	}

	var _u1 = $('<a>').attr('href', location.href)[0];
	var _u2 = $('<a>').attr('href', xml_path)[0];

	// 현 url과 ajax call 대상 url의 schema 또는 port가 다르면 직접 form 전송
	if(_u1.protocol != _u2.protocol || _u1.port != _u2.port) return send_by_form(xml_path, params);

	var xml = [], i = 0;
	xml[i++] = '<?xml version="1.0" encoding="utf-8" ?>';
	xml[i++] = '<methodCall>';
	xml[i++] = '<params>';

	$.each(params, function(key, val) {
		xml[i++] = '<'+key+'><![CDATA['+val+']]></'+key+'>';
	});

	xml[i++] = '</params>';
	xml[i++] = '</methodCall>';

	var _xhr = null;
	if (_xhr && _xhr.readyState != 0) _xhr.abort();

	// 전송 성공시
	function onsuccess(data, textStatus, xhr) {
		var resp_xml = $(data).find('response')[0], resp_obj, txt='', ret=[], tags={}, json_str='';

		waiting_obj.css('visibility', 'hidden');

		if(!resp_xml) {
			alert(_xhr.responseText);
			return null;
		}

		json_str = xml2json(resp_xml, false, false);
		resp_obj = (typeof(JSON)=='object' && $.isFunction(JSON.parse))?JSON.parse(json_str):eval('('+json_str+')');
		resp_obj = resp_obj.response;

		if (typeof(resp_obj)=='undefined') {
			ret['error'] = -1;
			ret['message'] = 'Unexpected error occured.';
			try {
				if(typeof(txt=resp_xml.childNodes[0].firstChild.data)!='undefined') ret['message'] += '\r\n'+txt;
			} catch(e){};
			return ret;
		}

		$.each(response_tags, function(key, val){ tags[val] = true; });
        tags["redirect_url"] = true;
        tags["act"] = true;
		$.each(resp_obj, function(key, val){ if(tags[key]) ret[key] = val; });

		if(ret['error'] != 0) {
			if ($.isFunction($.exec_xml.onerror)) {
				return $.exec_xml.onerror(module, act, ret, callback_func, response_tags, callback_func_arg, fo_obj);
			}

			alert(ret['message'] || 'error!');
			return null;
		}

		if(ret['redirect_url']) {
			location.href = ret['redirect_url'].replace(/&amp;/g, '&');
			return null;
		}

		if($.isFunction(callback_func)) callback_func(ret, response_tags, callback_func_arg, fo_obj);
	}

	// 모든 xml데이터는 POST방식으로 전송. try-catch문으로 오류 발생시 대처
	try {
		$.ajax({
			url         : xml_path,
			type        : 'POST',
			dataType    : 'xml',
			data        : xml.join('\n'),
			contentType : 'text/plain',
			beforeSend  : function(xhr){ _xhr = xhr; },
			success     : onsuccess,
			error       : function(xhr, textStatus) {
				waiting_obj.css('visibility', 'hidden');

				var msg = '';
				if (textStatus == 'parsererror') {
					msg  = 'The result is not valid XML :\n-------------------------------------\n';
					if(xhr.responseText == "") return;
					msg += xhr.responseText.replace(/<[^>]+>/g, '');
				} else {
					msg = textStatus;
				}

				alert(msg);
			}
		});
	} catch(e) {
		alert(e);
		return;
	}

	// ajax 통신중 대기 메세지 출력 (show_waiting_message값을 false로 세팅시 보이지 않음)
	var waiting_obj = $('#waitingforserverresponse');
	if(show_waiting_message && waiting_obj.length) {
		var d = $(document);
		waiting_obj.html(waiting_message).css({
			'top'  : (d.scrollTop()+20)+'px',
			'left' : (d.scrollLeft()+20)+'px',
			'visibility' : 'visible'
		});
	}
}
function send_by_form(url, params) {
	var frame_id = 'xeTmpIframe';
	var form_id  = 'xeVirtualForm';

	if (!$('#'+frame_id).length) {
		$('<iframe name="%id%" id="%id%" style="position:absolute;left:-1px;top:1px;width:1px;height:1px"></iframe>'.replace(/%id%/g, frame_id)).appendTo(document.body);
	}

	$('#'+form_id).remove();
	var form = $('<form id="%id%"></form>'.replace(/%id%/g, form_id)).attr({
		'id'     : form_id,
		'method' : 'post',
		'action' : url,
		'target' : frame_id
	});

	params['xeVirtualRequestMethod'] = 'xml';
	params['xeRequestURI']           = location.href.replace(/#(.*)$/i,'');
	params['xeVirtualRequestUrl']    = request_uri;

	$.each(params, function(key, value){
		$('<input type="hidden">').attr('name', key).attr('value', value).appendTo(form);
	});

	form.appendTo(document.body).submit();
}
function arr2obj(arr) {
	var ret = {};
	for(var key in arr) {
		if(arr.hasOwnProperty(key)) ret[key] = arr[key];		
	}
	return ret;
}

/**
 * @brief exec_json (exec_xml와 같은 용도)
 **/
$.exec_json = function(action,data,func){
    if(typeof(data) == 'undefined') data = {};
    action = action.split(".");
    if(action.length == 2){

        if(show_waiting_message) {
            $("#waitingforserverresponse").html(waiting_message).css('top',$(document).scrollTop()+20).css('left',$(document).scrollLeft()+20).css('visibility','visible');
        }

        $.extend(data,{module:action[0],act:action[1]});
        if(typeof(xeVid)!='undefined') $.extend(data,{vid:xeVid});
        $.ajax({
            type:"POST"
            ,dataType:"json"
            ,url:request_uri
            ,contentType:"application/json"
            ,data:$.param(data)
            ,success : function(data){
                $("#waitingforserverresponse").css('visibility','hidden');
                if(data.error > 0) alert(data.message);
                if($.isFunction(func)) func(data);
            }
        });
    }
};

$.fn.exec_html = function(action,data,type,func,args){
    if(typeof(data) == 'undefined') data = {};
    if(!$.inArray(type, ['html','append','prepend'])) type = 'html';

    var self = $(this);
    action = action.split(".");
    if(action.length == 2){
        if(show_waiting_message) {
            $("#waitingforserverresponse").html(waiting_message).css('top',$(document).scrollTop()+20).css('left',$(document).scrollLeft()+20).css('visibility','visible');
        }

        $.extend(data,{module:action[0],act:action[1]});
        $.ajax({
            type:"POST"
            ,dataType:"html"
            ,url:request_uri
            ,data:$.param(data)
            ,success : function(html){
                $("#waitingforserverresponse").css('visibility','hidden');
                self[type](html);
                if($.isFunction(func)) func(args);
            }
        });
    }
};
})(jQuery);

/* file:/home/recamier/common/js/xml_js_filter.js */
/**
 * @file   common/js/xml_js_filter.js
 * @author taggon (taggon@gmail.com)
 * @brief  xml filter (validator) plugin
 * 
 * A rule is a method validate one field.
 * A filter is made up of one or more rules.
 **/
(function($){

var messages  = [];
var rules     = [];
var filters   = [];
var callbacks = [];
var extras    = {};

var Validator = xe.createApp('Validator', {
	init : function() {
		// {{{ add filters
		// email
		var regEmail = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)*$/;
		this.cast('ADD_RULE', ['email', regEmail]);
		this.cast('ADD_RULE', ['email_address', regEmail]);

		// userid
		var regUserid = /^[a-z]+[\w-]*[a-z0-9_]+$/i;
		this.cast('ADD_RULE', ['userid', regUserid]);
		this.cast('ADD_RULE', ['user_id', regUserid]);

		// url
		var regUrl = /^(https?|ftp|mms):\/\/[0-9a-z-]+(\.[_0-9a-z-\/\~]+)+(:[0-9]{2,4})*$/;
		this.cast('ADD_RULE', ['url', regUrl]);
		this.cast('ADD_RULE', ['homepage', regUrl]);

		// korean
		var regKor = /^[가-힣]*$/;
		this.cast('ADD_RULE', ['korean', regKor]);

		// korean_number
		var regKorNum = /^[가-힣0-9]*$/;
		this.cast('ADD_RULE', ['korean_number', regKorNum]);

		// alpha
		var regAlpha = /^[a-z]*$/i;
		this.cast('ADD_RULE', ['alpha', regAlpha]);

		// alpha_number
		var regAlphaNum = /^[a-z][a-z0-9_]*$/i;
		this.cast('ADD_RULE', ['alpha_number', regAlphaNum]);

		// number
		var regNum = /^[0-9]*$/;
		this.cast('ADD_RULE', ['number', regNum]);
		// }}} add filters
	},
	// run validator
	run : function(oForm) {
		var filter = '';

		if (oForm._filter) filter = oForm._filter.value;

		var params = [oForm, filter];
		var result = this.cast('VALIDATE', params);
		if (typeof result == 'undefined') result = false;

		return result;
	},
	API_ONREADY : function() {
		var self = this;

		// hook form submit event
		$('form')
			.each(function(){
				if (this.onsubmit) {
					this['xe:onsubmit'] = this.onsubmit;
					this.onsubmit = null;
				}
			})
			.submit(function(){
				var legacyFn = this['xe:onsubmit'];		
				var hasLegacyFn = $.isFunction(legacyFn);
				var bResult = hasLegacyFn?legacyFn.apply(this):self.run(this);

				return bResult;
			});
	},
	API_VALIDATE : function(sender, params) {
		var self = this, result = true, form = params[0], filter=null, callback=null;

		if (form.elements['_filter']) filter = form.elements['_filter'].value;
		if (!filter) return true;
		if ($.isFunction(callbacks[filter])) callback = callbacks[filter];
		filter = $.extend({}, filters[filter.toLowerCase()] || {}, extras);

		$.each(filter, function(name) {
			var _el = form.elements[name];

			if (!_el) return true;

			var el = $(_el), val = $.trim(get_value(el));
			var minlen = parseInt(this.minlength) || 0;
			var maxlen = parseInt(this.maxlength) || 0;
			var rule   = (this.rule || '').split(',');

			if (this.required && !val) return (result = (!!self.cast('ALERT', [form, name, 'isnull']) && false));
			if (!this.required && !val) return (result = true);
			if ((minlen && val.length < minlen) || (maxlen && val.length > maxlen)) return (result = (!!self.cast('ALERT', [form, name, 'outofrange', minlen, maxlen]) && false));
			
			if (this.equalto) {
				var eq_val = get_value($(form.elements[this.equalto]));
				if (eq_val != val) return (result = (!!self.cast('ALERT', [form, name, 'equalto']) && false));
			}

			$.each(rule, function() {
				var ret = self.cast('APPLY_RULE', [this, val]);
				if (!ret) {
					self.cast('ALERT', [form, name, 'invalid_'+this]);
					return (result = false);
				}
			});

			if (!result) return false;
		});

		if (!result) return false;
		if ($.isFunction(callback)) return callback(form);

		return true;
	},
	API_ADD_RULE : function(sender, params) {
		var name = params[0].toLowerCase();
		rules[name] = params[1];
	},
	API_DEL_RULE : function(sender, params) {
		var name = params[0].toLowerCase();
		delete rules[name];
	},
	API_GET_RULE : function(sender, params) {
		var name = params[0].toLowerCase();

		if (rules[name]) {
			return rules[name];
		} else {
			return null;
		}
	},
	API_ADD_FILTER : function(sender, params) {
		var name   = params[0].toLowerCase();
		var filter = params[1];

		filters[name] = filter;
	},
	API_DEL_FILTER : function(sender, params) {
		var name = params[0].toLowerCase();
		delete filters[name];
	},
	API_GET_FILTER : function(sender, params) {
		var name = params[0].toLowerCase();

		if (filters[name]) {
			return filters[name];
		} else {
			return null;
		}
	},
	API_ADD_EXTRA_FIELD : function(sender, params) {
		var name = params[0].toLowerCase();
		var prop = params[1];

		extras[name] = prop;
	},
	API_GET_EXTRA_FIELD : function(sender, params) {
		var name = params[0].toLowerCase();
		return extras[name];
	},
	API_DEL_EXTRA_FIELD : function(sender, params) {
		var name = params[0].toLowerCase();
		delete extras[name];
	},
	API_APPLY_RULE : function(sender, params) {
		var name  = params[0].toLowerCase();
		var value = params[1];

		if (typeof(rules[name]) == 'undefined') return true; // no filter
		if ($.isFunction(rules[name])) return rules[name](value);
		if (rules[name] instanceof RegExp) return rules[name].test(value);

		return true;
	},
	API_ALERT : function(sender, params) {
		var form = params[0];
		var field_name = params[1];
		var msg_code = params[2];
		var minlen   = params[3];
		var maxlen   = params[4];

		var field_msg = this.cast('GET_MESSAGE', [field_name]);
		var msg = this.cast('GET_MESSAGE', [msg_code]);

		if (msg != msg_code) msg = (msg.indexOf('%s')<0)?(field_msg+msg):(msg.replace('%s',field_msg));
		if (minlen||maxlen) msg +=  '('+(minlen||'')+'~'+(maxlen||'')+')';

		this.cast('SHOW_ALERT', [msg]);

		// set focus
		$(form.elements[field_name]).focus();
	},
	API_SHOW_ALERT : function(sender, params) {
		alert(params[0]);
	},
	API_ADD_MESSAGE : function(sender, params) {
		var msg_code = params[0];
		var msg_str  = params[1];

		messages[msg_code] = msg_str;
	},
	API_GET_MESSAGE : function(sender, params) {
		var msg_code = params[0];

		return messages[msg_code] || msg_code;
	},
	API_ADD_CALLBACK : function(sender, params) {
		var name = params[0];
		var func = params[1];

		callbacks[name] = func;
	},
	API_REMOVE_CALLBACK : function(sender, params) {
		var name = params[0];

		delete callbacks[name];
	}
});

var oValidator = new Validator;

// register validator
xe.registerApp(oValidator);

// 호환성을 위해 추가한 플러그인 - 에디터에서 컨텐트를 가져와서 설정한다.
var EditorStub = xe.createPlugin('editor_stub', {
	API_BEFORE_VALIDATE : function(sender, params) {
		var form = params[0];
		var seq  = form.getAttribute('editor_sequence');

		if (seq) {
			try {
				editorRelKeys[seq].content.value = editorRelKeys[seq].func(seq) || '';
			} catch(e) { }
		}
	}
});
oValidator.registerPlugin(new EditorStub);

// functions
function get_value(elem) {
	var vals = [];
	if (elem.is(':radio')){
		return elem.filter(':checked').val();
	} else if (elem.is(':checkbox')) {
		elem.filter(':checked').each(function(){
			vals.push(this.value);
		});
		return vals.join('|@|');
	} else {
		return elem.val();
	}
}

})(jQuery);

/**
 * @function filterAlertMessage
 * @brief ajax로 서버에 요청후 결과를 처리할 callback_function을 지정하지 않았을 시 호출되는 기본 함수
 **/
function filterAlertMessage(ret_obj) {
	var error = ret_obj["error"];
	var message = ret_obj["message"];
	var act = ret_obj["act"];
	var redirect_url = ret_obj["redirect_url"];
	var url = location.href;

	if(typeof(message)!="undefined"&&message&&message!="success") alert(message);

	if(typeof(act)!="undefined" && act) url = current_url.setQuery("act", act);
	else if(typeof(redirect_url)!="undefined" && redirect_url) url = redirect_url;

	if(url == location.href) url = url.replace(/#(.*)$/,'');

	location.href = url;
}

/**
 * @brief Function to process filters
 * @deprecated
 */
function procFilter(fo_obj, filter_func)
{
	filter_func(fo_obj);
	return false;
}

/* file:/home/recamier/addons/autolink/autolink.js */
/**
 * @file autolink.js
 * @brief javascript code for autolink addon
 * @author taggon (gonom9@gmail.com)
 */
(function($){
	var protocol_re = '(https?|ftp|news|telnet|irc|mms)://';
	var domain_re   = '(?:[\\w\\-]+\\.)+(?:[a-z]+)';
	var max_255_re  = '(?:1[0-9]{2}|2[0-4][0-9]|25[0-5]|[1-9]?[0-9])';
	var ip_re       = '(?:'+max_255_re+'\\.){3}'+max_255_re;
	var port_re     = '(?::([0-9]+))?';
	var user_re     = '(?:/~[\\w-]+)?';
	var path_re     = '((?:/[\\w!"$-/:-@]+)*)';
	var hash_re     = '(?:#([\\w!-@]+))?';

	var url_regex = new RegExp('('+protocol_re+'('+domain_re+'|'+ip_re+'|localhost'+')'+port_re+user_re+path_re+hash_re+')', 'ig');

	var AutoLink = xe.createPlugin("autolink", {
		targets : [],
		init : function() {
			this.targets = [];
		},
		API_ONREADY : function() {
			var thisPlugin = this;

			// extract target text nodes
			this.extractTargets($('.xe_content'));

			$(this.targets).each(function(){
				thisPlugin.cast('AUTOLINK', [this]);
			});
		},
		API_AUTOLINK : function(oSender, params) {
			var textNode = params[0];
			if(!$(textNode).parent().length || $(textNode).parent().get(0).nodeName.toLowerCase() == 'a') return;
			var content  = textNode.nodeValue;
			var dummy    = $('<span>');

			content = content.replace(/</g, '&lt;').replace(/>/g, '&gt;');
			content = content.replace(url_regex, '<a href="$1" target="_blank">$1</a>');

			$(textNode).before(dummy);
			$(textNode).replaceWith(content);
			params[0] = dummy.next('a');
			dummy.remove();
		},
		extractTargets : function(obj) {
			var thisPlugin = this;
			var wrap = $('.xe_content', obj);
			if(wrap.length) {
				this.extractTargets(wrap);
				return;
			}

			$(obj)
			.contents()
			.each(function(){
				var node_name = this.nodeName.toLowerCase();
				if($.inArray(node_name, ['a', 'pre', 'xml', 'textarea', 'input', 'select', 'option', 'code', 'script', 'style', 'iframe', 'button', 'img', 'embed', 'object', 'ins']) != -1) return;

				// FIX ME : When this meanless code wasn't executed, url_regex do not run correctly. why?
				url_regex.exec('');

				if(this.nodeType == 3) { // text node
					var content = this.nodeValue;

					if(content.length < 5) return;

					if(!/(http|https|ftp|news|telnet|irc|mms):\/\//i.test(content)) return;

					thisPlugin.targets.push(this);
				} else {
					thisPlugin.extractTargets(this);
				}
			});
		}
	});

	xe.registerPlugin(new AutoLink());
})(jQuery);
/* file:/home/recamier/addons/source_marking/autosourcing_by_nhn/autosourcing.open.compact.js */

var AutoSourcing = {
  div      : null,
  id       : "",
  timer    : null,
  regex    : null,
  strings  : [],
  skip     : false,
  handlers : {},
  init : function(format, enable) {
    var t = this;
    var n = navigator;
    var is_safari = (n.userAgent.indexOf("WebKit") > -1);
    this.div = document.createElement("div");
    this.div.className = (((/MSIE/.test(n.userAgent)&&!/MSIE 8/.test(n.userAgent))||/Gecko/.test(n.userAgent))&&!is_safari)?"autosourcing-stub":"autosourcing-stub-extra";
    // 임시 아이디 부여
    this.id = "autosourcing_tmp_"+(Math.random()*10000);
    // 형식을 정규식으로 만든다. 일단은 특수문자 처리 생략
    this.regex = new RegExp(format.replace("%id%", "(\\d+)"));
    // bind functions
    this.handlers.copy     = function(){ t.copy() };
    this.handlers.keydown  = function(evt){ t.keydown(evt) };
    this.handlers.keypress = function(evt){ t.keypress(evt) };
    // enable
    if(typeof enable == "undefined") enable = true;
    this.setEnable(enable);
  },
  setEnable : function(bool) {
    if (bool) {
      if (typeof document.body.oncopy != "undefined") {
        // Internet Explorer, Safari
        this.addEvent(document.body, "copy", this.handlers.copy);
      } else {
        this.addEvent(document, "keydown", this.handlers.keydown);
        this.addEvent(document, "keypress", this.handlers.keypress);
        this.addEvent(document, "contextmenu", this.handlers.copy);
      }
    } else {
      if (typeof document.body.oncopy != "undefined") {
        // Internet Explorer, Safari
        this.removeEvent(document.body, "copy", this.handlers.copy);
      } else {
        this.removeEvent(document, "keydown", this.handlers.keydown);
        this.removeEvent(document, "keypress", this.handlers.keypress);
        this.removeEvent(document, "contextmenu", this.handlers.copy);
      }
    }
  },
  getId : function(rng) {
    var range_s, range_e, par, id;
    // 시작노드에 대해서
    range_s = this.cloneRange(rng)
    range_s.collapse(true); // collapse to start point
    par = this.getParentElement(range_s);
    while(par && par.parentNode) {
      if (par.nodeType == 1 && this.regex.test(par.id)) {
        id = parseInt(RegExp.$1);
        return isNaN(id)?0:id;
      }
      par = par.parentNode;
    }
    // 시작노드에 없어? 그럼 끝노드에 대해서
    range_e = this.cloneRange(rng)
    range_e.collapse(false); // collapse to end point
    par = this.getParentElement(range_e);
    while(par && par.parentNode) {
      if (par.nodeType == 1 && this.regex.test(par.id)) {
        id = parseInt(RegExp.$1);
        return isNaN(id)?0:id;
      }
      par = par.parentNode;
    }
    return 0;
  },
  getSelection : function() {
    if (window.getSelection) {
      return window.getSelection();
    } else {
      return document.selection;
    }
  },
  getRange : function(selection) {
    selection = selection || this.getSelection();
    if (selection.getRangeAt) {
      return selection.getRangeAt(0);
    } else {
      return selection.createRange();
    }
  },
  cloneRange : function(rng) {
    rng = rng || this.getRange();
    if (rng.duplicate) {
      return rng.duplicate();
    } else {
      return rng.cloneRange();
    }
  },
  getParentElement : function(range) {
    var par = range.parentElement?range.parentElement():range.commonAncestorContainer;
    if (!par) return null;
    while(par.nodeType != 1) {
      par = par.parentNode;
    }
    return par;
  },
  setString : function(id, sTitle, sName, sLink) {
    var data = { name : sName, link : sLink, title : sTitle };
    this.strings[id] = this._template.replace(/\{(\w+)\}/g,function(m0,m1){
      return data[m1]?data[m1]:"";
    });
  },
  copy : function(evt) {
    var evt    = evt || window.event;
    var self   = this;
    var sel    = this.getSelection();
    var rng    = this.getRange(sel);
    var rngtmp = this.cloneRange(rng);
    var regcopy= /(?:p|<div)[^<>]+class\s*=\s*"?autosourcing\-stub(?:\-extra)?\-saved(?:\b|")/i;
    var regtag = /textarea|input/i;
    var id     = this.getId(rng);
    var node_rng;
    this.skip = false;
    clearTimeout(this.timer);
    if (id == 0) {
      try { this.div.parentNode.removeChild(this.div) }catch(e){};
      return;
    }
    if (evt && evt.srcElement && evt.srcElement.tagName.toUpperCase() == "A") return;
    if(!this.div.innerHTML) this.div.innerHTML = this.strings[id];
    if (window.getSelection) {
      var html = (window.XMLSerializer)?new XMLSerializer().serializeToString(rng.cloneContents()):"";
      if (regcopy.test(html) || regtag.test(rng.commonAncestorContainer.tagName)) {
        this.skip = true;
        return;
      }
      rngtmp.collapse(false);
      rngtmp.insertNode(this.div);
      if (this.div.nextSibling) {
        rng.setEndBefore(this.div.nextSibling);
      } else {
        rng.setEndAfter(this.div);
      }
      sel.removeAllRanges();
      sel.addRange(rng);
    } else if (document.selection) {
      var body = document.body || document.getElementsByTagName("body")[0];
      var div  = document.createElement("div");
      var span = document.createElement("span");
      span.id = this.id;
      if (regcopy.test(rng.htmlText) || regtag.test(rng.parentElement().tagName)) {
        this.skip = true;
        return;
      }
      rngtmp.collapse(false);
      rngtmp.pasteHTML(span.outerHTML+'&nbsp;<a></a>'); // <a>는 노드를 나누기 위해 삽입
      //rngtmp.pasteHTML(span.outerHTML);
      span = document.getElementById(this.id);
      (span || rngtmp.parentElement()).insertAdjacentElement("afterEnd",this.div);
      if(!/MSIE 8/.test(navigator.userAgent)) {
        do {
          rng.moveEnd("character", 1);
          (rngtmp = rng.duplicate()).collapse(false);
        } while(rngtmp.offsetLeft == 0);
      }
      else {
        rng.moveEnd("character", this.div.innerHTML.replace(/<[^>]*>/g, '').replace(/^\s\s*/, '').replace(/\s\s*$/, '').length);
        rngtmp = this.cloneRange(rng);
        rngtmp.collapse(false);
      }
      try { rng.select(); } catch(e){}
      // 블로그를 위한 패치 - 이래도 되는건가...
      if (span && span.parentNode) {
        if(!span.nextSibling.nextSibling) return false;
        span.parentNode.removeChild(span.nextSibling.nextSibling);
        span.parentNode.removeChild(span.nextSibling.nextSibling);
        span.parentNode.removeChild(span);
      }
      if (div.parentNode) {
        div.parentNode.removeChild(div);
      }
    }
    if (typeof document.body.oncopy != "undefined") {
      this.timer = setTimeout(function(){ self.aftercopy(rng); }, 0);
    }
  },
  aftercopy : function(rng) {
    if (this.skip) return;
    try {
      this.div.parentNode.removeChild(this.div);
      if (/WebKit/.test(navigator.userAgent)) {
        var sel = this.getSelection();
        sel.removeAllRanges();
        sel.addRange(rng);
      }
    } catch(e) { }
  },
  keydown : function(e) {
    if ((e.ctrlKey || e.metaKey) && e.keyCode == 67) {
      this.copy();
    }
  },
  keypress : function(e) {
    if ((e.ctrlKey || e.metaKey) && e.keyCode == 67) {
      var t = this;
      this.timer = setTimeout(function(){ t.aftercopy(); }, 10);
    }
    },
  mousedown : function(e) {
  },
  setTemplate : function(html) {
    this._template = html;
  },
  addEvent : function(obj, sEvent, pFunc) {
    function addEventIE(obj, sEvent, pFunc) {
      obj.attachEvent("on"+sEvent, pFunc);
    }
    function addEventFF(obj, sEvent, pFunc) {
      obj.addEventListener(sEvent, pFunc, false);
    }
    if (obj.attachEvent) this.addEvent = addEventIE;
    else this.addEvent = addEventFF;
    this.addEvent(obj, sEvent, pFunc);
  },
  removeEvent : function(obj, sEvent, pFunc) {
    function removeEventIE(obj, sEvent, pFunc) {
      obj.detachEvent("on"+sEvent, pFunc);
    }
    function removeEventFF(obj, sEvent, pFunc) {
      obj.removeEventListener(sEvent, pFunc, false);
    }
    if (obj.detachEvent) this.removeEvent = removeEventIE;
    else this.removeEvent = removeEventFF;
  }
}

/* file:/home/recamier/widgets/content/skins/rmain/js/content_widget.js */
function content_widget_next(obj,list_per_page){
    var page = 1;
    if(obj.is('table')) {
        var list = jQuery('>tbody>tr',obj);
    } else if(obj.is('ul')) {
        var list = jQuery('>li',obj);
    }

    var total_page = parseInt((list.size()-1) / list_per_page,10)+1;
    list.each(function(i){
        if(jQuery(this).css('display') !='none'){
            page = parseInt((i+1)/list_per_page,10)+1;
            return false;
        }
    });
    if(total_page <= page) return;
    list.each(function(i){
        if( (page* list_per_page) <= i && ((page+1) * list_per_page) > i){
            jQuery(this).show();
        }else{
            jQuery(this).hide();
        }
    });
}

function content_widget_prev(obj,list_per_page){
    var page = 1;
    if(obj.is('table')){
        var list = jQuery('>tbody>tr',obj);
    }else if(obj.is('ul')){
        var list = jQuery('>li',obj);
    }

    var total_page = parseInt((list.size()-1) / list_per_page,10)+1;
    list.each(function(i){
        if(jQuery(this).css('display') !='none'){
            page = parseInt((i+1)/list_per_page,10)+1;
            return false;
        }
    });

    if(page <= 1) return;
    list.each(function(i){
        if( ((page-2)* list_per_page)<= i && ((page-1) * list_per_page) > i){
            jQuery(this).show();
        }else{
            jQuery(this).hide();
        }
    });
}

function content_widget_tab_show(tab,list,i){
    tab.parents('ul.widgetTab').children('li.active').removeClass('active');
    tab.parent('li').addClass('active');
    jQuery('>dd',list).each(function(j){
            if(j==i) jQuery(this).addClass('open');
            else jQuery(this).removeClass('open');
            });
}

/* file:/home/recamier/files/cache/js_filter_compiled/d2e220ae4ce49ec51a3c3358ac6565ce.ko.compiled.js */
function widget_login(fo_obj){
	var validator = xe.getApp('validator')[0];
	if(!validator) return false;
	if(!fo_obj.elements['_filter']) jQuery(fo_obj).prepend('<input type="hidden" name="_filter" value="" />');
	fo_obj.elements['_filter'].value = 'widget_login';
	validator.cast('ADD_CALLBACK', ['widget_login', function(form){
		var params={}, responses=[], elms=form.elements, data=jQuery(form).serializeArray();
		jQuery.each(data, function(i, field){
			var val = jQuery.trim(field.value);
			if(!val) return true;
			if(/\[\]$/.test(field.name)) field.name = field.name.replace(/\[\]$/, '');
			if(params[field.name]) params[field.name] += '|@|'+val;
			else params[field.name] = field.value;
		});
		responses = ['error','message'];
		exec_xml('member','procMemberLogin', params, completeLogin, responses, params, form);
	}]);
	validator.cast('VALIDATE', [fo_obj,'widget_login']);
	return false;
};

(function($){
	var validator = xe.getApp('Validator')[0];
	if(!validator) return false;
	validator.cast('ADD_FILTER', ['widget_login', {
		'user_id': {required:true,rule:'user_id'},
		'password': {required:true}
	}]);
	validator.cast('ADD_MESSAGE', ['user_id', '아이디']);
	validator.cast('ADD_MESSAGE', ['password', '비밀번호']);
	validator.cast('ADD_MESSAGE', ['isnull', '%s을 입력해주세요.']);
	validator.cast('ADD_MESSAGE', ['outofrange', '%s의 글자 수를 맞추어 주세요.']);
	validator.cast('ADD_MESSAGE', ['equalto', '%s이 잘못되었습니다.']);
	validator.cast('ADD_MESSAGE', ['invalid_email', '%s의 형식이 잘못되었습니다. (예: xe@xpressengine.com)']);
	validator.cast('ADD_MESSAGE', ['invalid_userid', '%s의 형식이 잘못되었습니다.\n영문, 숫자와 _로 만드실 수 있으며, 첫 글자는 영문이어야 합니다.']);
	validator.cast('ADD_MESSAGE', ['invalid_user_id', '%s의 형식이 잘못되었습니다.\n영문, 숫자와 _로 만드실 수 있으며, 첫 글자는 영문이어야 합니다.']);
	validator.cast('ADD_MESSAGE', ['invalid_homepage', '%s의 형식이 잘못되었습니다. (예: http://www.xpressengine.com)']);
	validator.cast('ADD_MESSAGE', ['invalid_korean', '%s의 형식이 잘못되었습니다. 한글로만 입력하셔야 합니다.']);
	validator.cast('ADD_MESSAGE', ['invalid_korean_number', '%s의 형식이 잘못되었습니다. 한글과 숫자로만 입력하셔야 합니다.']);
	validator.cast('ADD_MESSAGE', ['invalid_alpha', '%s의 형식이 잘못되었습니다. 영문으로만 입력하셔야 합니다.']);
	validator.cast('ADD_MESSAGE', ['invalid_alpha_number', '%s의 형식이 잘못되었습니다. 영문과 숫자로만 입력하셔야 합니다.']);
	validator.cast('ADD_MESSAGE', ['invalid_number', '%s의 형식이 잘못되었습니다. 숫자로만 입력하셔야 합니다.']);
})(jQuery);