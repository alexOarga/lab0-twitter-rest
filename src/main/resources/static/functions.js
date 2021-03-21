function registerSearch() {
    $("#search").submit(function (event) {
        event.preventDefault();
        var target = $(this).attr('action');
        var query = $("#q").val();
        console.log("GET request: " + target + "?q=" + query);
        $.get(target, {q: query})
            .done(function (data) {
                console.log("Response: ");
                console.log(data);
                let tweets = data.tweets;
                var template = document.getElementById('template').innerHTML;
                var rendered = Mustache.render(template, { tweets: tweets });
                document.getElementById('resultsBlock').innerHTML = rendered;
            }).fail(function () {
            $("#resultsBlock").empty();
        });
    });
}

$(document).ready(function () {
    registerSearch();
});


