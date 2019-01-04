xquery version "1.0-ml";

import module namespace test = "http://marklogic.com/test/unit" at "/test/test-controller.xqy",
                                                                   "/test/assert.xqy";

let $list := test:list()
(: should only find tests that end with .sjs or .xqy :)
return test:assert-not-exists($list//test:test[fn:matches(@path, "([^.xqy|.sjs])$")])