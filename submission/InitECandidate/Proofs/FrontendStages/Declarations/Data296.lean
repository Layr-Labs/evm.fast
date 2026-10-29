import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify280
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData296 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "TxErr" Flapjack.Shape.one
def simplifiedData296 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "TxErr" Flapjack.Shape.one
def original296 := Pancake.PanLang.declToHOL originalData296
def simplified296 := Pancake.PanLang.declToHOL simplifiedData296
end InitECandidate.Proofs.FrontendStages.Declarations
