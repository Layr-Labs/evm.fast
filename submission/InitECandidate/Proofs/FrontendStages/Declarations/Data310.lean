import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify294
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body310_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 16#64]))

def originalData310 : Decl (BitVec 64) :=
.function { name := "tx_nonce", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body310_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData310 : Decl (BitVec 64) :=
.function { name := "tx_nonce", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body310_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original310 := Pancake.PanLang.declToHOL originalData310
def simplified310 := Pancake.PanLang.declToHOL simplifiedData310
end InitECandidate.Proofs.FrontendStages.Declarations
