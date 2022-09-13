//
//  TimerViewController.swift
//  CozinhandoOvo
//
//  Created by Cassiano Carradore Salgado on 10/09/22.
//

import UIKit
import AVFoundation

class TimerViewController: UIViewController {
    
    @IBOutlet weak var timer: UILabel!
    @IBOutlet weak var animaOvo: UIView!
    @IBOutlet weak var barraProgresso: UIProgressView!
    @IBOutlet var pontoOvo: [UIView]!
    @IBOutlet var fundo: UIView!
    @IBOutlet weak var ancoraOvo: UIView!
    
    var tempTimer = Int()
    
    var timerRodando = false
    
    var timers = Timer()
    
    var tempoBarra = Timer()
    
    
    override func viewWillAppear(_ animated: Bool) {
        timer.backgroundColor = UIColor.orange
        timer.layer.masksToBounds = true
        timer.layer.cornerRadius = 10.0
        tempTimer = MeuTimer.tempoTimer
        fundo.bringSubviewToFront(animaOvo)
        animaOvo.layer.cornerRadius = animaOvo.frame.size.width/2
        animaOvo.clipsToBounds = true
        animaOvo.backgroundColor = UIColor.init(red: 255/255, green: 120/255, blue: 0/255, alpha: 1.0)
        for i in pontoOvo {
            i.backgroundColor = UIColor.white
            i.layer.cornerRadius = i.frame.size.width/2
            i.clipsToBounds = true
            i.layer.borderColor = CGColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0)
            i.layer.borderWidth = 1.0
        }
        


    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        timer.text = "\(tempTimer)"
        rodaTimer()
        rodaBarra()
    }
    
    func animando(_ tipoOvo: String, _ tempoAnimacao: Int) {
        if tipoOvo == "Líquido Mole" {
            UIView.animateKeyframes(withDuration: TimeInterval(tempoAnimacao), delay: 0, animations: {
                        
                        UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1, animations: {
                            self.animaOvo.backgroundColor = UIColor.init(red: 255/255, green: 180/255, blue: 0/255, alpha: 1.0)
                        })
                
                        UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1, animations: {
                            self.animaOvo.frame.size.height = 110
                            self.animaOvo.frame.size.width = 110
                            self.animaOvo.center.x = self.ancoraOvo.center.x
                            self.animaOvo.center.y = self.ancoraOvo.center.y
                            self.animaOvo.layer.cornerRadius = self.animaOvo.frame.size.width/2
                            self.animaOvo.clipsToBounds = true
                            self.animaOvo.layoutIfNeeded()
                        })

            })
        } else if tipoOvo == "Mole" {
            UIView.animateKeyframes(withDuration: TimeInterval(tempoAnimacao), delay: 0, animations: {
                        
                        UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1, animations: {
                            self.animaOvo.backgroundColor = UIColor.init(red: 255/255, green: 200/255, blue: 0/255, alpha: 1.0)
                        })
                        UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1, animations: {
                            self.animaOvo.frame.size.height = 100
                            self.animaOvo.frame.size.width = 100
                            self.animaOvo.center.x = self.ancoraOvo.center.x
                            self.animaOvo.center.y = self.ancoraOvo.center.y
                            self.animaOvo.layer.cornerRadius = self.animaOvo.frame.size.width/2
                            self.animaOvo.clipsToBounds = true
                            self.animaOvo.layoutIfNeeded()
                        })
            })
        } else if tipoOvo == "Médio" {
            UIView.animateKeyframes(withDuration: TimeInterval(tempoAnimacao), delay: 0, animations: {
                        
                        UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1, animations: {
                            self.animaOvo.backgroundColor = UIColor.init(red: 255/255, green: 220/255, blue: 0/255, alpha: 1.0)
                        })
                        UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1, animations: {
                            self.animaOvo.frame.size.height = 90
                            self.animaOvo.frame.size.width = 90
                            self.animaOvo.center.x = self.ancoraOvo.center.x
                            self.animaOvo.center.y = self.ancoraOvo.center.y
                            self.animaOvo.layer.cornerRadius = self.animaOvo.frame.size.width/2
                            self.animaOvo.clipsToBounds = true
                            self.animaOvo.layoutIfNeeded()
                        })
            })
        } else if tipoOvo == "Médio Duro" {
            UIView.animateKeyframes(withDuration: TimeInterval(tempoAnimacao), delay: 0, animations: {
                        
                        UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1, animations: {
                            self.animaOvo.backgroundColor = UIColor.init(red: 255/255, green: 240/255, blue: 0/255, alpha: 1.0)
                        })
                        UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1, animations: {
                            self.animaOvo.frame.size.height = 80
                            self.animaOvo.frame.size.width = 80
                            self.animaOvo.center.x = self.ancoraOvo.center.x
                            self.animaOvo.center.y = self.ancoraOvo.center.y
                            self.animaOvo.layer.cornerRadius = self.animaOvo.frame.size.width/2
                            self.animaOvo.clipsToBounds = true
                            self.animaOvo.layoutIfNeeded()
                        })
            })
        } else if tipoOvo == "Duro" {
            UIView.animateKeyframes(withDuration: TimeInterval(tempoAnimacao), delay: 0, animations: {
                        
                        UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1, animations: {
                            self.animaOvo.backgroundColor = UIColor.init(red: 246/255, green: 255/255, blue: 99/255, alpha: 1.0)
                        })
                        UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1, animations: {
                            self.animaOvo.frame.size.height = 70
                            self.animaOvo.frame.size.width = 70
                            self.animaOvo.center.x = self.ancoraOvo.center.x
                            self.animaOvo.center.y = self.ancoraOvo.center.y
                            self.animaOvo.layer.cornerRadius = self.animaOvo.frame.size.width/2
                            self.animaOvo.clipsToBounds = true
                            self.animaOvo.layoutIfNeeded()
                        })
            })
        } else {
            UIView.animateKeyframes(withDuration: TimeInterval(tempoAnimacao), delay: 0, animations: {
                        
                        UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.25, animations: {
                                    self.animaOvo.backgroundColor = UIColor.init(red: 255/255, green: 160/255, blue: 0/255, alpha: 1.0)
                        })
                        UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1, animations: {
                            self.animaOvo.frame.size.height = 120
                            self.animaOvo.frame.size.width = 120
                            self.animaOvo.center.x = self.ancoraOvo.center.x
                            self.animaOvo.center.y = self.ancoraOvo.center.y
                            self.animaOvo.layer.cornerRadius = self.animaOvo.frame.size.width/2
                            self.animaOvo.clipsToBounds = true
                            self.animaOvo.layoutIfNeeded()
                        })

            })
        }
    }
    
    

    @objc func updateTimer() {
        tempTimer -= 1
        
        if tempTimer <= 0 {
            timers.invalidate()
        }
        
        timer.text = "\(tempTimer)"
        
    }
    
    @objc func updateBarra() {
        barraProgresso.progress += 1 / Float(MeuTimer.tempoTimer)
        barraProgresso.setProgress(barraProgresso.progress, animated: true)
        animando(MeuTimer.tempoAnimacao, tempTimer)
                if(barraProgresso.progress == 1.0)
                {
                    AudioServicesPlayAlertSound(SystemSoundID(1322))
                    timer.text = "Seu ovo está pronto!"
                    barraProgresso.progressTintColor = UIColor.green
                    tempoBarra.invalidate()
                }
        
    }
    
    func rodaTimer() {
        timers = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(TimerViewController.updateTimer)), userInfo: nil, repeats: true)
         
    }

    func rodaBarra() {
        barraProgresso.progress = 0.0
        self.tempoBarra = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.updateBarra), userInfo: nil, repeats: true)

    }
}
