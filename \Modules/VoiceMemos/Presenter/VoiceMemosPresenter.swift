import Foundation

final class VoiceMemosPresenter {

    weak var view: VoiceMemosViewInput!
    var interactor: VoiceMemosInteractorInput!
    var router: VoiceMemosRouterInput!
}

// MARK: - VoiceMemosModuleInput

extension VoiceMemosPresenter: VoiceMemosModuleInput {
	
}

// MARK: - VoiceMemosViewOutput

extension VoiceMemosPresenter: VoiceMemosViewOutput {
	func viewIsReady() {
		view.setupInitialState()
    }
}

// MARK: - VoiceMemosInteractorOutput

extension VoiceMemosPresenter: VoiceMemosInteractorOutput {
	
}