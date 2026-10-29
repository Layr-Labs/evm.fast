import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify205
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData221 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "HdrErr" Flapjack.Shape.one
def simplifiedData221 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "HdrErr" Flapjack.Shape.one
def original221 := Pancake.PanLang.declToHOL originalData221
def simplified221 := Pancake.PanLang.declToHOL simplifiedData221
end InitECandidate.Proofs.FrontendStages.Declarations
