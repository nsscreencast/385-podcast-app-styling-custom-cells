//
//  SearchResultCell.swift
//  PodcastApp
//
//  Created by Ben Scheirman on 3/7/19.
//  Copyright © 2019 NSScreencast. All rights reserved.
//

import UIKit

class SearchResultCell : UITableViewCell {
    @IBOutlet weak var artworkImageView: UIImageView!
    @IBOutlet weak var podcastTitleLabel: UILabel!
    @IBOutlet weak var podcastAuthorLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

        backgroundColor = Theme.Colors.gray4
        backgroundView = UIView()
        backgroundView?.backgroundColor = Theme.Colors.gray4

        selectedBackgroundView = UIView()
        selectedBackgroundView?.backgroundColor = Theme.Colors.gray3

        podcastTitleLabel.textColor = Theme.Colors.gray0
        podcastAuthorLabel.textColor = Theme.Colors.gray1
    }

    func configure(with result: SearchResult) {
        
        podcastTitleLabel.text = result.title
        podcastAuthorLabel.text = result.author
    }
}
