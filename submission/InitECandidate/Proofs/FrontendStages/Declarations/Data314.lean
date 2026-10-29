import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify298
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body314_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 320#64]))

def originalData314 : Decl (BitVec 64) :=
.function { name := "tx_r", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body314_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData314 : Decl (BitVec 64) :=
.function { name := "tx_r", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body314_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original314 := Pancake.PanLang.declToHOL originalData314
def simplified314 := Pancake.PanLang.declToHOL simplifiedData314
end InitECandidate.Proofs.FrontendStages.Declarations
