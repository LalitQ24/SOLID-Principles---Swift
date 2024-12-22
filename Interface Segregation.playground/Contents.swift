import UIKit

//Interface Segregation Principle
// It states that A client should not be forced to depend interfaces it does not use.
//you can use this priciple by breaking down large protocols inot smaller more specific ones. That way you can confirm to multiple protocol better fit your requirement.

//--> Use of Specific interface
//--> Use to avoid unncessary dependencies and enahnce maintainability.
//--> Use smaller protocols
//--> Client-sepefice abstarctions
//--> Flexibility

protocol ReadPermissionProtocl {
    func authorizeReadAccessFile()
}

protocol WritePermissonProtocl {
    func authorizeWriteAccessFile()
}

protocol DeniedPermissionProtocol {
    func deniedPermissionFile()
}

class UserPermission: ReadPermissionProtocl, WritePermissonProtocl, DeniedPermissionProtocol {
    func authorizeReadAccessFile() {
        // Authorize to read access file
    }
    
    func authorizeWriteAccessFile() {
        //Authorize to write access file
    }
    
    func deniedPermissionFile() {
        //Denied permission file
    }
}

class UserDeniedPermission: DeniedPermissionProtocol {
    func deniedPermissionFile() {
        // Denied permisson file
    }
}
