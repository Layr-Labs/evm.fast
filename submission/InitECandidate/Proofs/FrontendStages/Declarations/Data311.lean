import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify295
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body311_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))

def originalData311 : Decl (BitVec 64) :=
.function { name := "tx_to", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body311_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData311 : Decl (BitVec 64) :=
.function { name := "tx_to", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body311_0, returnShape := (Flapjack.Shape.one) }
def original311 := Pancake.PanLang.declToHOL originalData311
def simplified311 := Pancake.PanLang.declToHOL simplifiedData311
end InitECandidate.Proofs.FrontendStages.Declarations
