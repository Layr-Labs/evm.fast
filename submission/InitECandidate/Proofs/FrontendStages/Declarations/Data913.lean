import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify897
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body913_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "q")

def body913_1 : Prog (BitVec 64) :=
.decCall ("q") (Flapjack.Shape.one) ("udiv") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 5#64]) body913_0

def originalData913 : Decl (BitVec 64) :=
.function { name := "udiv_small5", inline := false, exported := false, params := [("x", Flapjack.Shape.one)], body := body913_1, returnShape := (Flapjack.Shape.one) }
def simplifiedData913 : Decl (BitVec 64) :=
.function { name := "udiv_small5", inline := false, exported := false, params := [("x", Flapjack.Shape.one)], body := body913_1, returnShape := (Flapjack.Shape.one) }
def original913 := Pancake.PanLang.declToHOL originalData913
def simplified913 := Pancake.PanLang.declToHOL simplifiedData913
end InitECandidate.Proofs.FrontendStages.Declarations
