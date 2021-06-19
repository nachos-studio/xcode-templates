//___FILEHEADER___

final class ___VARIABLE_productName:identifier___Builder {

    // MARK: - Public Types

    typealias Module = (
        view: ___VARIABLE_productName:identifier___ViewController,
        input: ___VARIABLE_productName:identifier___Input
    )

    // MARK: - Public Methods

    func build(output: ___VARIABLE_productName:identifier___Output? = nil) -> Module {
        let view = ___VARIABLE_productName:identifier___ViewController()
        let router = ___VARIABLE_productName:identifier___Router()
        let presenter = ___VARIABLE_productName:identifier___Presenter()

        view.output = presenter

        presenter.view = view
        presenter.router = router

        router.view = view

        return (view: view, input: presenter)
    }

}
