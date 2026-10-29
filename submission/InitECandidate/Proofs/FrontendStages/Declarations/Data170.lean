import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify154
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body170_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_is_zero" [Flapjack.Exp.var Flapjack.VarKind.local "z"]

def body170_1 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 64#64])) body170_0

def originalData170 : Decl (BitVec 64) :=
.function { name := "ec_is_infinity", inline := false, exported := false, params := [("pt", Flapjack.Shape.one)], body := body170_1, returnShape := (Flapjack.Shape.one) }
def simplifiedData170 : Decl (BitVec 64) :=
.function { name := "ec_is_infinity", inline := false, exported := false, params := [("pt", Flapjack.Shape.one)], body := body170_1, returnShape := (Flapjack.Shape.one) }
def original170 := Pancake.PanLang.declToHOL originalData170
def simplified170 := Pancake.PanLang.declToHOL simplifiedData170
end InitECandidate.Proofs.FrontendStages.Declarations
