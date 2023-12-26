//
//  ViewController.swift
//  MyDicoding
//
//  Created by rohim kurniawan on 06/12/23.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var followedButton: UIButton!
    
    @IBOutlet weak var userName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCircleImageView()
        setUsername()
        //setImage()
    }
    
    private var isFollow = false
    @IBAction func setFollowed(_ sender: UIButton) {
        isFollow = !isFollow
        followedButton.setTitle(isFollow ? "Following" : "Follow", for: .normal) // Mengganti teks dalam button.
    }
    
    private func setImage() {
        profileImageView.image = UIImage(named: "MyJob")
    }
    
    private func setUsername() {
        userName.text = "Uciha Aim"
    }
    private func setupCircleImageView() {
        profileImageView.layer.borderWidth = 1 // menennntukann lebar dari border
        profileImageView.layer.masksToBounds = false // menentukan apakah perlu melakukan masking
        profileImageView.layer.borderColor = UIColor.black.cgColor // menentukan warna border
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2 // Menentukan apakah sudutnya akan membulat (rounded) atau tidak.
        profileImageView.clipsToBounds = true // Menentukan apakah subview terbatas pada batas tampilan atau tidak.
    }


}

