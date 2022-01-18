//___FILEHEADER___

import UIKit

final class ___VARIABLE_productName:identifier___ViewController: UIViewController {

    // MARK: - Neested Types

    private enum Constant {

    }

    // MARK: - Public Properties

    var output: ___VARIABLE_productName:identifier___ViewOutput?

    // MARK: - Subviews

    private lazy var tableView = UITableView()

    // MARK: - Private Properties

    private lazy var dataSource = DataSource.create(tableView: tableView)

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

}

extension ___VARIABLE_productName:identifier___ViewController: UITableViewDelegate {

}

private enum Section {

    case main

}

private enum Cell: Hashable {

    case cell(Int)

}

private typealias Snapshot = NSDiffableDataSourceSnapshot<Section, Cell>

private final class DataSource: UITableViewDiffableDataSource<Section, Cell> {

    static func create(tableView: UITableView) -> DataSource {
        DataSource(tableView: tableView) { (tableView, indexPath, item) -> UITableViewCell? in
            switch item {
            case .cell(let viewModel):
                let cell = tableView.dequeueReusableCell(withClass: UITableViewCell.self, for: indexPath)
                cell.configure(with: viewModel)
                return cell
            }
        }
    }

}