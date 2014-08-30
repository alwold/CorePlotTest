//
//  ViewController.swift
//  CorePlotTest
//
//  Created by Al Wold on 8/6/14.
//  Copyright (c) 2014 Al Wold. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CPTPlotDataSource {
    @IBOutlet weak var graphView: CPTGraphHostingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create graph
        var graph = CPTXYGraph(frame: CGRectZero)
        graph.title = "Hello Graph"
        
        var plot = CPTScatterPlot()
        plot.dataSource = self
        graph.addPlot(plot)

        var plotSpace = graph.defaultPlotSpace as CPTXYPlotSpace
        var xRange = plotSpace.xRange.mutableCopy() as CPTMutablePlotRange
        var yRange = plotSpace.yRange.mutableCopy() as CPTMutablePlotRange
        xRange.setLengthFloat(10)
        yRange.setLengthFloat(10)
        plotSpace.xRange = xRange
        plotSpace.yRange = yRange
        
        self.graphView.hostedGraph = graph
    }
    
    func numberOfRecordsForPlot(plot: CPTPlot!) -> UInt {
        return 4
    }
    
    func numberForPlot(plot: CPTPlot!, field fieldEnum: UInt, recordIndex idx: UInt) -> NSNumber! {
        return idx+1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

