import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify225
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData241 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "MptErr" Flapjack.Shape.one
def simplifiedData241 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "MptErr" Flapjack.Shape.one
def original241 := Pancake.PanLang.declToHOL originalData241
def simplified241 := Pancake.PanLang.declToHOL simplifiedData241
end InitECandidate.Proofs.FrontendStages.Declarations
