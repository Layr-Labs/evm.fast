import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify550
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData566 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "null_address" (Flapjack.Exp.const 0#64)
def simplifiedData566 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "null_address" (Flapjack.Exp.const 0#64)
def original566 := Pancake.PanLang.declToHOL originalData566
def simplified566 := Pancake.PanLang.declToHOL simplifiedData566
end InitECandidate.Proofs.FrontendStages.Declarations
