//
//  ViewController.swift
//  FlappyBird
//
//  Created by 関智矢 on 2021/01/02.
//  Copyright © 2021 tomoya.seki. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // SKView型に変換する
        let skView = self.view as! SKView
        
        // FPSを表示する
        skView.showsFPS = true
        
        // ノードの数を表示する
        skView.showsNodeCount = true
        
        // ビューと同じサイズでシーンを作成する
        let scene = GameScene(size: skView.frame.size)
        
        // ビューにシーンを表示する
        skView.presentScene(scene)
    }

    // ステータスバーを消す
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
}

