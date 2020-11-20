const cds = require('@sap/cds');

module.exports = async function () {

    this.on('helloFunction', (req) => {
        console.log("Hello is called" + req.data.name);
        return "hello world " + req.data.name;
    })

    this.on('helloAction', (req) => {
        console.log("Hello is called" + req.data.name);
        return "hello world " + req.data.name;
    })

    this.before(['CREATE','UPDATE'], 'Products', async (req) => {
        if(req.data.salesPrice / req.data.basePrice < 1.5) {
            req.data.salesPrice = req.data.basePrice * 1.5;
        }
    })

    this.after(['READ'], 'Products', async (products, req) => {
        products.map(products => {
            products.salesMargin = (products.salesPrice / products.basePrice) -1;
        });
    })


    this.on('callProcedure', (req) => {
        console.log("teste");
        var procedureStart = 'call "training.procedures::DefinirNovoPrecoMassivamenteProc"(';
        var procedure = procedureStart.concat('P_PERCENT =>', 1+ req.data.value/100, ')');
        const tx = cds.transaction(req);
        tx.run(procedure);
        return "Success";
    } )
}