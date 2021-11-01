import UIKit

final class VoiceMemosViewController: UIViewController, StoryboardInstantiable {
	static var storyboardName: String = "VoiceMemosViewController"
    var output: VoiceMemosViewOutput!
    var moduleInput: VoiceMemosModuleInput!
    
    private let stopButtonIcon = UIImage(systemName: "stop.fill")
    private let recordButtonIcon = UIImage(systemName: "mic.fill")
    
    // MARK: - Outlets
    @IBOutlet private weak var recordingsTableView: UITableView!
    @IBOutlet private weak var playStopButton: UIButton!
    @IBOutlet private weak var pauseButton: UIButton!
    
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
    
    // MARK: - Button Actions
    
    @IBAction func playStopButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func pauseButtonAction(_ sender: UIButton) {
    }
    
    private func tableViewConfig() {
        recordingsTableView.delegate = self
        recordingsTableView.dataSource = self
        recordingsTableView.register(RecordingTVC.self)
        recordingsTableView.rowHeight = 50
        recordingsTableView.separatorStyle = .none
    }
}

// MARK: - VoiceMemosViewInput

extension VoiceMemosViewController: VoiceMemosViewInput {
	func setupInitialState() {
        tableViewConfig()
    }
}

// MARK: - Table view delegates

extension VoiceMemosViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RecordingTVC.identifier, for: indexPath
        ) as! RecordingTVC
        cell.config()
        cell.playButtonTab = { [weak self] in
            guard let self = self else { return }
            
        }
        
        return cell
    }
    
    
}
