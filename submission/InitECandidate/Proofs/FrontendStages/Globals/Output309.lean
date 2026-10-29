import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data309
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate292
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody309_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64]))

def globalData309 : Decl (BitVec 64) :=
.function { name := "tx_gas", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := globalBody309_0, returnShape := (Flapjack.Shape.one) }
def globalOutput309 := Pancake.PanLang.declToHOL globalData309
end InitECandidate.Proofs.FrontendStages.Declarations
