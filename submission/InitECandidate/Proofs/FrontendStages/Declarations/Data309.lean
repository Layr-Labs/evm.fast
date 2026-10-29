import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify293
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body309_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64]))

def originalData309 : Decl (BitVec 64) :=
.function { name := "tx_gas", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body309_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData309 : Decl (BitVec 64) :=
.function { name := "tx_gas", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body309_0, returnShape := (Flapjack.Shape.one) }
def original309 := Pancake.PanLang.declToHOL originalData309
def simplified309 := Pancake.PanLang.declToHOL simplifiedData309
end InitECandidate.Proofs.FrontendStages.Declarations
