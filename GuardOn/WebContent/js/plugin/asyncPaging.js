var asyncPaging = {
    title: { "previous": "&#171; Previous", "next": "Next &#187;" },
    options: { "total": 0, "currentPage": 1, "pageSize": 10 },
    css: "page",
    selectedCss: "page_selected",
    onclick: null,
    pagingElement: "",
    init: function (id, t, pz, cp) { // t=17, pz=15, cp=1
        String.prototype.format = function () {
            var result = this;
            for (var i = 0; i < arguments.length; i++) {
                var regExp = new RegExp('\\{' + i + '\\}', 'gi');
                result = result.replace(regExp, arguments[i]);
            }
            return result;
        };

        this.pagingElement = id;
        this.options.total = t;
        this.options.currentPage = cp;
        this.options.pageSize = pz;

        this.draw(id);

    },
    setSelected: function (c) {
        this.options.currentPage = c;
    },
    draw: function () {
        var sPagingLink = "";
        var absoluteLink = document.URL;
        var sLink = "";
        if (document.URL.indexOf("?") > 0) {
            absoluteLink = document.URL.substring(0, document.URL.indexOf("?"));
        }
        var pageCount = 0;
        if (this.options.total > 0) {
            sLink = this.rewriteLink();

            pageCount = parseInt(this.options.total / this.options.pageSize);
            if ((this.options.total / this.options.pageSize) * this.options.pageSize <= this.options.total)
                pageCount++;

            if (pageCount > 1) {
                if (this.options.currentPage !== 1)
                    sPagingLink += sLink.format(this.onclick, this.options.currentPage - 1, this.css, this.title.previous, absoluteLink);

                if (pageCount > 10) {
                    // previous pages
                    var i = this.options.currentPage - 3;
                    i = i < 1 ? 1 : i;
                    for (; i < this.options.currentPage; i++)
                        sPagingLink += sLink.format(this.onclick, i, this.css, i);

                    //current page
                    sPagingLink += sLink.format(this.onclick, this.options.currentPage, this.selectedCss, this.options.currentPage, absoluteLink);

                    // Next pages
                    i = this.options.currentPage + 1;
                    i = i > this.options.total ? this.options.total : i;

                    var limit = this.options.currentPage + 3;
                    limit = limit > this.options.pageCount ? this.options.pageCount : limit;

                    for (; i <= limit; i++)
                        sPagingLink += sLink.format(this.onclick, i, this.css, i, absoluteLink);
                }
                else {
                    for (var i = 1; i <= pageCount; i++) {
                        //Current page can be shown different shape
                        if (i == this.options.currentPage)
                            sPagingLink += sLink.format(this.onclick, i, this.selectedCss, i, absoluteLink);
                        else
                            sPagingLink += sLink.format(this.onclick, i, this.css, i, absoluteLink);
                    }
                }

                // Next
                if (this.options.currentPage !== pageCount)
                    sPagingLink += sLink.format(this.onclick, this.options.currentPage + 1, this.css, this.title.next, absoluteLink);

            }
        }
        document.getElementById(this.pagingElement).innerHTML = "<div class=\"pageSet clearfix\">" + sPagingLink + "</div>";
    },
    rewriteLink: function () {
        return "<a class=\"{2}\" href=\"javascript:void(0);\" onclick=\"asyncPaging.setSelected({1});{0};asyncPaging.draw();\"><span>{3}</span></a>";
    }
};