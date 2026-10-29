import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify603
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData619 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "b2_sigma" (Flapjack.Exp.const 0#64)
def simplifiedData619 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "b2_sigma" (Flapjack.Exp.const 0#64)
def original619 := Pancake.PanLang.declToHOL originalData619
def simplified619 := Pancake.PanLang.declToHOL simplifiedData619
end InitECandidate.Proofs.FrontendStages.Declarations
