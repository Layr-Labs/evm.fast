import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify228
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData244 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "mpt_nib_scratch" (Flapjack.Exp.const 0#64)
def simplifiedData244 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "mpt_nib_scratch" (Flapjack.Exp.const 0#64)
def original244 := Pancake.PanLang.declToHOL originalData244
def simplified244 := Pancake.PanLang.declToHOL simplifiedData244
end InitECandidate.Proofs.FrontendStages.Declarations
