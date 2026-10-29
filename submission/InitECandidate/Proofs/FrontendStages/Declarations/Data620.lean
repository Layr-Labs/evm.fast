import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify604
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData620 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "b2_iv" (Flapjack.Exp.const 0#64)
def simplifiedData620 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "b2_iv" (Flapjack.Exp.const 0#64)
def original620 := Pancake.PanLang.declToHOL originalData620
def simplified620 := Pancake.PanLang.declToHOL simplifiedData620
end InitECandidate.Proofs.FrontendStages.Declarations
