import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify334
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData350 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bs" (Flapjack.Exp.const 0#64)
def simplifiedData350 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bs" (Flapjack.Exp.const 0#64)
def original350 := Pancake.PanLang.declToHOL originalData350
def simplified350 := Pancake.PanLang.declToHOL simplifiedData350
end InitECandidate.Proofs.FrontendStages.Declarations
