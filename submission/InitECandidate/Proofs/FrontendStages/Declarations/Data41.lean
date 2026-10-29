import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify25
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body41_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))

def originalData41 : Decl (BitVec 64) :=
.function { name := "u256_low", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body41_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData41 : Decl (BitVec 64) :=
.function { name := "u256_low", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body41_0, returnShape := (Flapjack.Shape.one) }
def original41 := Pancake.PanLang.declToHOL originalData41
def simplified41 := Pancake.PanLang.declToHOL simplifiedData41
end InitECandidate.Proofs.FrontendStages.Declarations
