import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data330
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate314
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody330_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "tx_encode_generic"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]

def globalData330 : Decl (BitVec 64) :=
.function { name := "encode_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := globalBody330_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput330 := Pancake.PanLang.declToHOL globalData330
end InitECandidate.Proofs.FrontendStages.Declarations
