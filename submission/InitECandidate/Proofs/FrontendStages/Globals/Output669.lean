import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data669
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate653
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody669_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.const 32#64]]

def globalData669 : Decl (BitVec 64) :=
.function { name := "fe_eq", inline := false, exported := false, params := [("fld", Flapjack.Shape.one), ("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := globalBody669_0, returnShape := (Flapjack.Shape.one) }
def globalOutput669 := Pancake.PanLang.declToHOL globalData669
end InitECandidate.Proofs.FrontendStages.Declarations
