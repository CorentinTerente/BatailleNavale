//
//  ScoreViewController.swift
//  BatailleNavale
//
//  Created by formation6 on 13/12/2018.
//  Copyright © 2018 diginamic. All rights reserved.
//

import UIKit
import CoreData

class ScoreViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = self.appDelegate.persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Scores")
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                print(data.value(forKey: "name") as! String)
            }
        } catch {
            print("Failed")
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func returnOnTap(_ sender: Any) {
        self.dismiss(animated: true) {
            
        }
    }
    
    //fontion du bouton validate de l'écran score
    //TODO: Mettre à jour l'écran des score avec un bouton de validation
    
    func validateOnTap(_sender: Any) {
        
        
        let entity = NSEntityDescription.entity(forEntityName: "Scores", in: context)
        let newScore = NSManagedObject(entity: entity!, insertInto: context)
        
        
        //TODO: récupérer les valeurs entrées par l'utilisateur
        //newScore.setValue()
        
        do {
           try context.save()
        } catch {
            print("Failed saving")
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
