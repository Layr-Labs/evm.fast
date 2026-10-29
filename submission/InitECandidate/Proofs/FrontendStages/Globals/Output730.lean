import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data730
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate714
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody730_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalData730 : Decl (BitVec 64) :=
.function { name := "fp2_dbl", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := globalBody730_0, returnShape := (Flapjack.Shape.one) }
def globalOutput730 := Pancake.PanLang.declToHOL globalData730
end InitECandidate.Proofs.FrontendStages.Declarations
