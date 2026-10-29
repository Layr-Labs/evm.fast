import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify75
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData91 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "sha_pad" (Flapjack.Exp.const 0#64)
def simplifiedData91 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "sha_pad" (Flapjack.Exp.const 0#64)
def original91 := Pancake.PanLang.declToHOL originalData91
def simplified91 := Pancake.PanLang.declToHOL simplifiedData91
end InitECandidate.Proofs.FrontendStages.Declarations
