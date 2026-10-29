import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify82
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData98 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "keccak_rc" (Flapjack.Exp.const 0#64)
def simplifiedData98 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "keccak_rc" (Flapjack.Exp.const 0#64)
def original98 := Pancake.PanLang.declToHOL originalData98
def simplified98 := Pancake.PanLang.declToHOL simplifiedData98
end InitECandidate.Proofs.FrontendStages.Declarations
