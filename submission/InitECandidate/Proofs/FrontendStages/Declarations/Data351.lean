import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify335
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData351 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "ts" (Flapjack.Exp.const 0#64)
def simplifiedData351 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "ts" (Flapjack.Exp.const 0#64)
def original351 := Pancake.PanLang.declToHOL originalData351
def simplified351 := Pancake.PanLang.declToHOL simplifiedData351
end InitECandidate.Proofs.FrontendStages.Declarations
