import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify89
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData105 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "RlpErr" Flapjack.Shape.one
def simplifiedData105 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "RlpErr" Flapjack.Shape.one
def original105 := Pancake.PanLang.declToHOL originalData105
def simplified105 := Pancake.PanLang.declToHOL simplifiedData105
end InitECandidate.Proofs.FrontendStages.Declarations
