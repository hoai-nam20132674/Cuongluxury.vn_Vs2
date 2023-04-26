(function (e) {
    e.fn.jas = function (t, n) {
        var r = e.extend({
            data: undefined,
            one: true,
            accX: 0,
            accY: 0
        }, n);
        return this.each(function () {
            var n = e(this);
            n.jased = false;
            if (!t) {
                n.trigger("jas", r.data);
                return
            }
            var i = e(window);
            var s = function () {
                if (!n.is(":visible")) {
                    n.jased = false;
                    return
                }
                var e = i.scrollLeft();
                var t = i.scrollTop();
                var s = n.offset();
                var o = s.left;
                var u = s.top;
                var a = r.accX;
                var f = r.accY;
                var l = n.height();
                var c = i.height();
                var h = n.width();
                var p = i.width();
                if (u + l + f >= t && u <= t + c + f && o + h + a >= e && o <= e + p + a) {
                    if (!n.jased) n.trigger("jas", r.data)
                } else {
                    n.jased = false
                }
            };
            var o = function () {
                n.jased = true;
                if (r.one) {
                    i.unbind("scroll", s);
                    var o = e.inArray(s, e.fn.jas.checks);
                    if (o >= 0) e.fn.jas.checks.splice(o, 1)
                }
                t.apply(this, arguments)
            };
            if (r.one) n.one("jas", r.data, o);
            else n.bind("jas", r.data, o);
            i.scroll(s);
            e.fn.jas.checks.push(s);
            s()
        })
    };
    e.extend(e.fn.jas, {
        checks: [],
        timeout: null,
        checkAll: function () {
            var t = e.fn.jas.checks.length;
            if (t > 0)
                while (t--) e.fn.jas.checks[t]()
        },
        run: function () {
            if (e.fn.jas.timeout) clearTimeout(e.fn.jas.timeout);
            e.fn.jas.timeout = setTimeout(e.fn.jas.checkAll, 20)
        }
    });
    e.each(["append", "prepend", "after", "before", "attr", "removeAttr", "addClass", "removeClass", "toggleClass", "remove", "css", "show", "hide"], function (t, n) {
        var r = e.fn[n];
        if (r) {
            e.fn[n] = function () {
                var t = r.apply(this, arguments);
                e.fn.jas.run();
                return t
            }
        }
    })
})(jQuery);