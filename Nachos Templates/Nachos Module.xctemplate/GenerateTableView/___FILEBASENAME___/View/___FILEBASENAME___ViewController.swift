//___FILEHEADER___

import UIKit

final class ___VARIABLE_productName:identifier___ViewController: UIViewController {

    // MARK: - Neested Types

    private enum Constant {

    }

    private enum Section {
        case main
    }

    private enum Item {
        case cell
    }

    private typealias Snapshot = NSDiffableDataSourceSnapshot<Section, Item>
    private typealias DataSource = UITableViewDiffableDataSource<Section, Item>

    // MARK: - Public Properties

    var output: ___VARIABLE_productName:identifier___ViewOutput?

    // MARK: - Subviews

    private lazy var tableView = UITableView()

    // MARK: - Private Properties

    private lazy var dataSource = createDataSource()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureAppearance()
        self.output?.ready()
    }

    // MARK: - Actions

}

// MARK: - Public Methods

extension ___VARIABLE_productName:identifier___ViewController {

}

// MARK: - ___VARIABLE_productName:identifier___ViewInput

extension ___VARIABLE_productName:identifier___ViewController: ___VARIABLE_productName:identifier___ViewInput {

    func configure() {
        var snapshot = Snapshot()

        dataSource.apply(snapshot)
    }

}

// MARK: - Private methods

private extension ___VARIABLE_productName:identifier___ViewController {

    private func configureAppearance() {
        configureView()
        configureSubviews()
        configureNavigation()
        configureConstraints()
        configureInitialState()
    }

    private func configureNavigation() {

    }

    private func configureView() {
        tableView.dataSource = dataSource
        tableView.delegate = self

        dataSource.apply(Snapshot(), animatingDifferences: false)
    }

    private func configureSubviews() {

    }

    private func configureConstraints() {

    }

    private func configureInitialState() {

    }

    private func createDataSource() -> DataSource {
        DataSource(tableView: tableView) { [weak self] (tableView: UITableView, indexPath: IndexPath, item: Item) in
            return self?.dequeReusableCell(for: tableView, indexPath: indexPath, item: item)
        }
    }

    private func dequeReusableCell(for tableView: UITableView, indexPath: IndexPath, item: Item) -> UITableViewCell? {
        switch item {
        case .cell:
            let cell = tableView.dequeueReusableCell(withClass: UITableViewCell.self, for: indexPath)
            //cell.configure(with: viewModel)
            return cell
        }
    }

}

extension ___VARIABLE_productName:identifier___ViewController: UITableViewDelegate {

}
