import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify34
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body50_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_slt"
  [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def originalData50 : Decl (BitVec 64) :=
.function { name := "u256_sgt", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body50_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData50 : Decl (BitVec 64) :=
.function { name := "u256_sgt", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body50_0, returnShape := (Flapjack.Shape.one) }
def original50 := Pancake.PanLang.declToHOL originalData50
def simplified50 := Pancake.PanLang.declToHOL simplifiedData50
end InitECandidate.Proofs.FrontendStages.Declarations
