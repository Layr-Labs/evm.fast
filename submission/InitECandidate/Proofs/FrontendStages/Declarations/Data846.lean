import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify830
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData846 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "be" (Flapjack.Exp.const 0#64)
def simplifiedData846 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "be" (Flapjack.Exp.const 0#64)
def original846 := Pancake.PanLang.declToHOL originalData846
def simplified846 := Pancake.PanLang.declToHOL simplifiedData846
end InitECandidate.Proofs.FrontendStages.Declarations
