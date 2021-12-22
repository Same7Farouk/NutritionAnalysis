//
//  TotalNutrients.swift
//  Nutrition Analysis
//
//  Created by Sameh Farouk on 22/12/2021.
//

import Foundation

struct TotalNutrients : Codable {
    let fAT : BaseModelDouble?
    let cHOLE : BaseModelDouble?
    let nA : BaseModelDouble?
    let cA : BaseModelDouble?
    let sUGAR : BaseModelDouble?
    let fIBTG : BaseModelDouble?
    let fE : BaseModelDouble?
    let pROCNT : BaseModelDouble?
    let tOCPHA : BaseModelDouble?
    let k : BaseModelDouble?


    let fASAT : BaseModelDouble?
    let fATRN : BaseModelDouble?
    let fAMS : BaseModelDouble?
    let fAPU : BaseModelDouble?
    let cHOCDF : BaseModelDouble?
    let mG : BaseModelDouble?
    let zN : BaseModelDouble?
    let p : BaseModelDouble?
    let vITA_RAE : BaseModelDouble?
    let vITC : BaseModelDouble?
    let tHIA : BaseModelDouble?
    let rIBF : BaseModelDouble?
    let nIA : BaseModelDouble?
    let vITB6A : BaseModelDouble?
    let fOLDFE : BaseModelDouble?
    let fOLFD : BaseModelDouble?
    let fOLAC : BaseModelDouble?
    let vITB12 : BaseModelDouble?
    let vITD : BaseModelDouble?
    let vITK1 : BaseModelDouble?
    let wATER : BaseModelDouble?

    enum CodingKeys: String, CodingKey {
        case fAT = "FAT"
        case cHOLE = "CHOLE"
        case nA = "NA"
        case cA = "CA"
        case fIBTG = "FIBTG"
        case sUGAR = "SUGAR"
        case fE = "FE"
        case pROCNT = "PROCNT"
        case k = "K"
        case tOCPHA = "TOCPHA"

        case fASAT = "FASAT"
        case fATRN = "FATRN"
        case fAMS = "FAMS"
        case fAPU = "FAPU"
        case cHOCDF = "CHOCDF"


        case mG = "MG"
        case zN = "ZN"
        case p = "P"
        case vITA_RAE = "VITA_RAE"
        case vITC = "VITC"
        case tHIA = "THIA"
        case rIBF = "RIBF"
        case nIA = "NIA"
        case vITB6A = "VITB6A"
        case fOLDFE = "FOLDFE"
        case fOLFD = "FOLFD"
        case fOLAC = "FOLAC"
        case vITB12 = "VITB12"
        case vITD = "VITD"
        case vITK1 = "VITK1"
        case wATER = "WATER"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        fAT = try values.decodeIfPresent(BaseModelDouble.self, forKey: .fAT) ?? nil
        cHOLE = try values.decodeIfPresent(BaseModelDouble.self, forKey: .cHOLE) ?? nil
        nA = try values.decodeIfPresent(BaseModelDouble.self, forKey: .nA) ?? nil
        sUGAR = try values.decodeIfPresent(BaseModelDouble.self, forKey: .sUGAR) ?? nil
        fIBTG = try values.decodeIfPresent(BaseModelDouble.self, forKey: .fIBTG) ?? nil
        pROCNT = try values.decodeIfPresent(BaseModelDouble.self, forKey: .pROCNT) ?? nil
        fE = try values.decodeIfPresent(BaseModelDouble.self, forKey: .fE) ?? nil
        tOCPHA = try values.decodeIfPresent(BaseModelDouble.self, forKey: .tOCPHA) ?? nil
        k = try values.decodeIfPresent(BaseModelDouble.self, forKey: .k) ?? nil
        cA = try values.decodeIfPresent(BaseModelDouble.self, forKey: .cA) ?? nil

        fASAT = try values.decodeIfPresent(BaseModelDouble.self, forKey: .fASAT) ?? nil
        fATRN = try values.decodeIfPresent(BaseModelDouble.self, forKey: .fATRN) ?? nil
        fAMS = try values.decodeIfPresent(BaseModelDouble.self, forKey: .fAMS) ?? nil
        fAPU = try values.decodeIfPresent(BaseModelDouble.self, forKey: .fAPU) ?? nil
        cHOCDF = try values.decodeIfPresent(BaseModelDouble.self, forKey: .cHOCDF) ?? nil

        mG = try values.decodeIfPresent(BaseModelDouble.self, forKey: .mG) ?? nil
        zN = try values.decodeIfPresent(BaseModelDouble.self, forKey: .zN) ?? nil
        p = try values.decodeIfPresent(BaseModelDouble.self, forKey: .p) ?? nil
        vITA_RAE = try values.decodeIfPresent(BaseModelDouble.self, forKey: .vITA_RAE) ?? nil
        vITC = try values.decodeIfPresent(BaseModelDouble.self, forKey: .vITC) ?? nil
        tHIA = try values.decodeIfPresent(BaseModelDouble.self, forKey: .tHIA) ?? nil
        rIBF = try values.decodeIfPresent(BaseModelDouble.self, forKey: .rIBF) ?? nil
        nIA = try values.decodeIfPresent(BaseModelDouble.self, forKey: .nIA) ?? nil
        vITB6A = try values.decodeIfPresent(BaseModelDouble.self, forKey: .vITB6A) ?? nil
        fOLDFE = try values.decodeIfPresent(BaseModelDouble.self, forKey: .fOLDFE) ?? nil
        fOLFD = try values.decodeIfPresent(BaseModelDouble.self, forKey: .fOLFD) ?? nil
        fOLAC = try values.decodeIfPresent(BaseModelDouble.self, forKey: .fOLAC) ?? nil
        vITB12 = try values.decodeIfPresent(BaseModelDouble.self, forKey: .vITB12) ?? nil
        vITD = try values.decodeIfPresent(BaseModelDouble.self, forKey: .vITD) ?? nil
        vITK1 = try values.decodeIfPresent(BaseModelDouble.self, forKey: .vITK1) ?? nil
        wATER = try values.decodeIfPresent(BaseModelDouble.self, forKey: .wATER) ?? nil
    }

}
