//setup({output: false});
add_completion_callback(
    function (tests, harness_status) {
        alert("RESULT: " + JSON.stringify({
            tests: tests.map(function(t) {
                return { name: t.name, status: t.status, message: t.message }
            }),
            status: harness_status.status,
            message: harness_status.message,
        }));
        //window.close();
        //setTimeout(function() { window.close(); }, 0);
    });
