import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify206
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData222 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "BlockErr" Flapjack.Shape.one
def simplifiedData222 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "BlockErr" Flapjack.Shape.one
def original222 := Pancake.PanLang.declToHOL originalData222
def simplified222 := Pancake.PanLang.declToHOL simplifiedData222
end InitECandidate.Proofs.FrontendStages.Declarations
