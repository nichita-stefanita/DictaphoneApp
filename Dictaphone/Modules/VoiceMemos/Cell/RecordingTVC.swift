//
//  RecordingTVC.swift
//  Dictaphone
//
//  Created by Nichita Stefanita on 01.11.2021.
//

import UIKit

class RecordingTVC: UITableViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var timestampLabel: UILabel!
    @IBOutlet private weak var recordingDurationLabel: UILabel!
    
    public var playButtonTab: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBAction func playButtonAction(_ sender: UIButton) {
        playButtonTab?()
    }
    
    public func config()  {
        
    }
}
