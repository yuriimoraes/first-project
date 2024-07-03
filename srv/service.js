module.exports = (srv) => {

    srv.before('READ','Customers', (req) => {
       

    })

    srv.on('READ','Customers', (req) => {
        console.log(req)

        return {
            name: 'Yuri'
        }

    })

    srv.after('READ','Customers', (req) => {
       

    })
    // srv.on('CREATE')
    // srv.on('UPDATE')
    // srv.on('DELETE')

}