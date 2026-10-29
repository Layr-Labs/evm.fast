import Guest.SoftwareAst
import Flapjack.Pancake.PanToTarget

set_option autoImplicit false
namespace InitE
open Flapjack Flapjack.Pancake.PanLang
/-- The declaration order used by the verified native compiler. -/
def sourceDeclarations : List (DeclHOL 64) :=
  Flapjack.Pancake.PanToTarget.mainFirstHOL (Guest.Software.guestAst.map declToHOL)

end InitE
