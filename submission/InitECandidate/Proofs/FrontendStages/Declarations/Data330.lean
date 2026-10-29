import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify314
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body330_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "tx_encode_generic"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]

def originalData330 : Decl (BitVec 64) :=
.function { name := "encode_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body330_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData330 : Decl (BitVec 64) :=
.function { name := "encode_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body330_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original330 := Pancake.PanLang.declToHOL originalData330
def simplified330 := Pancake.PanLang.declToHOL simplifiedData330
end InitECandidate.Proofs.FrontendStages.Declarations
