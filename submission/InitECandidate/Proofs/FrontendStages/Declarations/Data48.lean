import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify32
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body48_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_lt"
  [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def originalData48 : Decl (BitVec 64) :=
.function { name := "u256_gt", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body48_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData48 : Decl (BitVec 64) :=
.function { name := "u256_gt", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body48_0, returnShape := (Flapjack.Shape.one) }
def original48 := Pancake.PanLang.declToHOL originalData48
def simplified48 := Pancake.PanLang.declToHOL simplifiedData48
end InitECandidate.Proofs.FrontendStages.Declarations
