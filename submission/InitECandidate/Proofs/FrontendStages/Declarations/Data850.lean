import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify834
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData850 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "block_hashes" (Flapjack.Exp.const 0#64)
def simplifiedData850 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "block_hashes" (Flapjack.Exp.const 0#64)
def original850 := Pancake.PanLang.declToHOL originalData850
def simplified850 := Pancake.PanLang.declToHOL simplifiedData850
end InitECandidate.Proofs.FrontendStages.Declarations
