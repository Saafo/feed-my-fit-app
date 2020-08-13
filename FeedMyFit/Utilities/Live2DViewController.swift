//
//  Live2DViewController.swift
//  FeedMyFit
//
//  Created by 祁汝鑫 on 2020/8/13.
//
//
//import UIKit
//
//final class Live2DViewController: UIViewController {
//    
//    let cameraController = CameraController()
//    var previewView: UIView!
//    
//    override func viewDidLoad() {
//                
//        previewView = UIView(frame: CGRect(x:0, y:0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
//        previewView.contentMode = UIView.ContentMode.scaleAspectFit
//        view.addSubview(previewView)
//        
//        cameraController.prepare {(error) in
//            if let error = error {
//                print(error)
//            }
//            
//            try? self.cameraController.displayPreview(on: self.previewView)
//        }
//        
//    }
//    
//    func glkView(_ view: GLKView,
//                 drawInrect: CGRect) -> () {
//        <#function body#>
//    }
//    
//}
//
//extension Live2DViewController : UIViewControllerRepresentable{
//    public typealias UIViewControllerType = Live2DViewController
//    
//    public func makeUIViewController(context: UIViewControllerRepresentableContext<Live2DViewController>) -> Live2DViewController {
//        return Live2DViewController()
//    }
//    
//    public func updateUIViewController(_ uiViewController: Live2DViewController, context: UIViewControllerRepresentableContext<Live2DViewController>) {
//    }
//}
//
