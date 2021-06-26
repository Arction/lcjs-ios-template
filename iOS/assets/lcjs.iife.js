var lcjs=function(t){"use strict";
/*! *****************************************************************************
    Copyright (c) Microsoft Corporation.

    Permission to use, copy, modify, and/or distribute this software for any
    purpose with or without fee is hereby granted.

    THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
    REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
    AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
    INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
    LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
    OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
    PERFORMANCE OF THIS SOFTWARE.
    ***************************************************************************** */var i=function(t,r){return(i=Object.setPrototypeOf||{__proto__:[]}instanceof Array&&function(t,i){t.__proto__=i}||function(t,i){for(var r in i)Object.prototype.hasOwnProperty.call(i,r)&&(t[r]=i[r])})(t,r)};function r(t,r){if("function"!=typeof r&&null!==r)throw new TypeError("Class extends value "+String(r)+" is not a constructor or null");function n(){this.constructor=t}i(t,r),t.prototype=null===r?Object.create(r):(n.prototype=r.prototype,new n)}var n=function(){return(n=Object.assign||function(t){for(var i,r=1,n=arguments.length;r<n;r++)for(var e in i=arguments[r])Object.prototype.hasOwnProperty.call(i,e)&&(t[e]=i[e]);return t}).apply(this,arguments)};function e(t,i,r,n){return new(r||(r=Promise))((function(e,s){function a(t){try{o(n.next(t))}catch(t){s(t)}}function h(t){try{o(n.throw(t))}catch(t){s(t)}}function o(t){var i;t.done?e(t.value):(i=t.value,i instanceof r?i:new r((function(t){t(i)}))).then(a,h)}o((n=n.apply(t,i||[])).next())}))}function s(t,i){var r,n,e,s,a={label:0,sent:function(){if(1&e[0])throw e[1];return e[1]},trys:[],ops:[]};return s={next:h(0),throw:h(1),return:h(2)},"function"==typeof Symbol&&(s[Symbol.iterator]=function(){return this}),s;function h(s){return function(h){return function(s){if(r)throw new TypeError("Generator is already executing.");for(;a;)try{if(r=1,n&&(e=2&s[0]?n.return:s[0]?n.throw||((e=n.return)&&e.call(n),0):n.next)&&!(e=e.call(n,s[1])).done)return e;switch(n=0,e&&(s=[2&s[0],e.value]),s[0]){case 0:case 1:e=s;break;case 4:return a.label++,{value:s[1],done:!1};case 5:a.label++,n=s[1],s=[0];continue;case 7:s=a.ops.pop(),a.trys.pop();continue;default:if(!(e=a.trys,(e=e.length>0&&e[e.length-1])||6!==s[0]&&2!==s[0])){a=0;continue}if(3===s[0]&&(!e||s[1]>e[0]&&s[1]<e[3])){a.label=s[1];break}if(6===s[0]&&a.label<e[1]){a.label=e[1],e=s;break}if(e&&a.label<e[2]){a.label=e[2],a.ops.push(s);break}e[2]&&a.ops.pop(),a.trys.pop();continue}s=i.call(t,a)}catch(t){s=[6,t],n=0}finally{r=e=0}if(5&s[0])throw s[1];return{value:s[0]?s[1]:void 0,done:!0}}([s,h])}}}function a(t){var i="function"==typeof Symbol&&Symbol.iterator,r=i&&t[i],n=0;if(r)return r.call(t);if(t&&"number"==typeof t.length)return{next:function(){return t&&n>=t.length&&(t=void 0),{value:t&&t[n++],done:!t}}};throw new TypeError(i?"Object is not iterable.":"Symbol.iterator is not defined.")}function h(t,i){var r="function"==typeof Symbol&&t[Symbol.iterator];if(!r)return t;var n,e,s=r.call(t),a=[];try{for(;(void 0===i||i-- >0)&&!(n=s.next()).done;)a.push(n.value)}catch(t){e={error:t}}finally{try{n&&!n.done&&(r=s.return)&&r.call(s)}finally{if(e)throw e.error}}return a}function o(t,i){for(var r=0,n=i.length,e=t.length;r<n;r++,e++)t[e]=i[r];return t}
/*! *****************************************************************************
    Copyright (c) Microsoft Corporation. All rights reserved.
    Licensed under the Apache License, Version 2.0 (the "License"); you may not use
    this file except in compliance with the License. You may obtain a copy of the
    License at http://www.apache.org/licenses/LICENSE-2.0

    THIS CODE IS PROVIDED ON AN *AS IS* BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION ANY IMPLIED
    WARRANTIES OR CONDITIONS OF TITLE, FITNESS FOR A PARTICULAR PURPOSE,
    MERCHANTABLITY OR NON-INFRINGEMENT.

    See the Apache Version 2.0 License for specific language governing permissions
    and limitations under the License.