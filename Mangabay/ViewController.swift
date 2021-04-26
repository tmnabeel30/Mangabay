//
//  ViewController.swift
//  Mangabay
//
//  Created by Nabeel on 4/25/21.
//

import UIKit
imp

class ViewController: UIViewController {

    @IBOutlet weak var titleCover: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Upload() {
        let VC = UIImagePickerController()
        VC.sourceType = .photoLibrary
        VC.delegate = self
        VC.allowsEditing = true
        present(VC, animated: true)
        
    }
}
extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            titleCover.image = image
            picker.dismiss(animated: true, completion: nil)
        }
        }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)    }
    }
    


