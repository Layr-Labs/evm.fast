import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData3 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "TrapErr" Flapjack.Shape.one
def simplifiedData3 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "TrapErr" Flapjack.Shape.one
def original3 := Pancake.PanLang.declToHOL originalData3
def simplified3 := Pancake.PanLang.declToHOL simplifiedData3
end InitECandidate.Proofs.FrontendStages.Declarations
