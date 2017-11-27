//
//  AbstractionController.swift
//  Juan_CSP
//
//  Created by Dela Cruz, Juan on 10/26/17.
//  Copyright © 2017 Dela Cruz, Juan. All rights reserved.
//

import UIKit

public class AbstractionController: UIPageViewController, UIPageViewControllerDataSource{
    private (set) lazy var ordereedAbstractionViews: [UIViewController] = {
        return [
                self.newAbstractionController(abstractionLevel: "Block"),
                self.newAbstractionController(abstractionLevel: "Java"),
                self.newAbstractionController(abstractionLevel: "ByteCode"),
                self.newAbstractionController(abstractionLevel: "Binary"),
                self.newAbstractionController(abstractionLevel: "AndGate")]
    }()
    private func newAbstractionController(abstractionLevel: String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(abstractionLevel)ViewController")
    }
    override public func viewDidLoad(){
        super.viewDidLoad()
        dataSource = self
        if let firstViewController = ordereedAbstractionViews.first
        {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
    }
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = ordereedAbstractionViews.index(of: viewController)
        else{
            return nil
        }
        let previousIndex = viewControllerIndex - 1
        guard previousIndex >= 0
        else
        {
            return ordereedAbstractionViews.last
        }
        guard ordereedAbstractionViews.count > previousIndex
        else
        {
            return nil
        }
        return ordereedAbstractionViews[previousIndex]
    }
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = ordereedAbstractionViews.index(of: viewController)
        else
        {
           return nil
        }
        let nextIndex = viewControllerIndex + 1
        guard nextIndex >= 0
        else
        {
            return nil
        }
        guard nextIndex < ordereedAbstractionViews.count
        else
        {
            return ordereedAbstractionViews.first
        }
        return ordereedAbstractionViews[nextIndex]
        
    }
    public func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return ordereedAbstractionViews.count
    }
    public func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let firstViewController = viewControllers?.first,let firstViewControllerIndex = ordereedAbstractionViews.index(of: firstViewController)
        else{
            return 0
        }
        return firstViewControllerIndex
    }
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
