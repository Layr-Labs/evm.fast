import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data333
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate317
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody333_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "tx_signing_hash_mode"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64,
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalData333 : Decl (BitVec 64) :=
.function { name := "signing_hash_pre155", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody333_0, returnShape := (Flapjack.Shape.one) }
def globalOutput333 := Pancake.PanLang.declToHOL globalData333
end InitECandidate.Proofs.FrontendStages.Declarations
