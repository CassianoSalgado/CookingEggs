//
//  ViewController.swift
//  CozinhandoOvo
//
//  Created by Aluno on 09/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var selecao: [UIButton]!
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet var imagens: [UIImageView]!
    
    var tiposOvosNome = [
        "Líquido",
        "Líquido Mole",
        "Mole",
        "Médio",
        "Médio Duro",
        "Duro"
    ]
    
    var tiposOvosNomeTempo = [
        "Líquido": 2,
        "Líquido Mole": 4,
        "Mole": 6,
        "Médio": 8,
        "Médio Duro": 10,
        "Duro": 15
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        titulo.backgroundColor = UIColor.orange
        titulo.layer.masksToBounds = true
        titulo.layer.cornerRadius = 10.0
        for i in imagens{
            i.layer.borderColor = CGColor.init(red: 241/255, green: 164/255, blue: 58/255, alpha: 1.0)
            i.layer.masksToBounds = true
            i.layer.cornerRadius = 10.0
            i.layer.borderWidth = 3.0
        }
        for i in selecao {
            i.tintColor = UIColor.init(red: 235/255, green: 29/255, blue: 54/255, alpha: 1.0)
    }

    }
    

    @IBAction func selecionando(_ sender: UIButton) {
        let botaoApertado = sender.titleLabel!.text!
        
        MeuTimer.tempoAnimacao = botaoApertado
        MeuTimer.tempoTimer = tiposOvosNomeTempo["\(botaoApertado)"]!
        
    }
    
    
}

