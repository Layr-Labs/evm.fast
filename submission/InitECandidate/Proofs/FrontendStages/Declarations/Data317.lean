import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify301
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body317_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64]))

def originalData317 : Decl (BitVec 64) :=
.function { name := "tx_blob_count", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body317_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData317 : Decl (BitVec 64) :=
.function { name := "tx_blob_count", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body317_0, returnShape := (Flapjack.Shape.one) }
def original317 := Pancake.PanLang.declToHOL originalData317
def simplified317 := Pancake.PanLang.declToHOL simplifiedData317
end InitECandidate.Proofs.FrontendStages.Declarations
