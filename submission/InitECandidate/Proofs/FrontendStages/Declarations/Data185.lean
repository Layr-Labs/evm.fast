import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify169
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData185 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "ssz_offs" (Flapjack.Exp.const 0#64)
def simplifiedData185 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "ssz_offs" (Flapjack.Exp.const 0#64)
def original185 := Pancake.PanLang.declToHOL originalData185
def simplified185 := Pancake.PanLang.declToHOL simplifiedData185
end InitECandidate.Proofs.FrontendStages.Declarations
