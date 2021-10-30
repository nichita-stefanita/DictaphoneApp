import UIKit

final class VoiceMemosModuleConfigurator: NSObject {

    @objc func configureModule(for viewController: VoiceMemosViewController) {
        configure(viewController: viewController)
    }

    private func configure(viewController: VoiceMemosViewController) {

        let router = VoiceMemosRouter()
        router.viewController = viewController

        let presenter = VoiceMemosPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = VoiceMemosInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        viewController.moduleInput = presenter as VoiceMemosModuleInput
    }
}
