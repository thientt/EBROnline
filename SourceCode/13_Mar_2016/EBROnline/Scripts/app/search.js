var Search = function () { }

Search.prototype.searchByCNP = function (url, cnp) {
    $('#txtCPN_SAP_Material').autocomplete({
        source: url,
        minLength: 1,
        select: function (event, ui) {
            if (ui.item) {
                $("#txtCPN_SAP_Material").val(ui.item.value);
            }
        },
        autofill: true,
        selectFirst: true,
        highlight: true,
        multiple: false
    });
};

Search.prototype.searchBySLCode = function (url, cnp, slCode) {
    $('#txtCPN_SAP_Material').autocomplete({
        source: url,
        minLength: 1,
        select: function (event, ui) {
            if (ui.item) {
                $("#txtCustomer").val(ui.item.value);
            }
        },
        autofill: true,
        selectFirst: true,
        highlight: true,
        multiple: false
    });
};