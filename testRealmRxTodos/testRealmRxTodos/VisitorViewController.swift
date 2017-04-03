//
//  TodosChartViewController.swift
//  testRealmRxTodos
//
//  Created by Jimmy Hoang on 4/2/17.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

import UIKit
import Charts
import RealmSwift

class VisitorViewController: UIViewController {
    
    @IBOutlet weak var tfValue: UITextField!
    @IBOutlet weak var barView: BarChartView!
    
    weak var axisFormatDelegate: IAxisValueFormatter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        axisFormatDelegate = self
        updateChartWithData()
    }
    
    func updateChartWithData() {
        var dataEntries: [BarChartDataEntry] = []
        let visitorCounts = getVisitorCountsFromDatabase()
        
        for i in 0..<visitorCounts.count {
            
            let timeIntervalForDate: TimeInterval = visitorCounts[i].date.timeIntervalSince1970
            
            let dataEntry = BarChartDataEntry(x: Double(timeIntervalForDate), y: Double(visitorCounts[i].count))
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(values: dataEntries, label: "Visitor count")
        let chartData = BarChartData(dataSet: chartDataSet)
        barView.data = chartData
    }
    
    func getVisitorCountsFromDatabase() -> Results<VisitorCount> {
        do {
            let realm = try Realm()
            return realm.objects(VisitorCount.self)
        } catch let error as NSError {
            fatalError(error.localizedDescription)
        }
    }
    
    @IBAction func addTapped(_ sender: UIButton) {
        if let value = tfValue.text, value != "" {
            let visitorCount = VisitorCount()
            visitorCount.count = (NumberFormatter().number(from: value)?.intValue)!
            visitorCount.save()
            tfValue.text = ""
        }
        
        updateChartWithData()
    }
    
}

extension VisitorViewController: IAxisValueFormatter {
    func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm.ss"
        return dateFormatter.string(from: Date(timeIntervalSince1970: value))
    }
}
