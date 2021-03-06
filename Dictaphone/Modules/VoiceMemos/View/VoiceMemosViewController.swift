import UIKit

final class VoiceMemosViewController: UIViewController, StoryboardInstantiable {
	static var storyboardName: String = "VoiceMemosViewController"
    var output: VoiceMemosViewOutput!
    var moduleInput: VoiceMemosModuleInput!

    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
}

// MARK: - VoiceMemosViewInput

extension VoiceMemosViewController: VoiceMemosViewInput {
	func setupInitialState() {
        
    }
}
