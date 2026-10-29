import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify168
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData184 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "ssz_len_chunk" (Flapjack.Exp.const 0#64)
def simplifiedData184 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "ssz_len_chunk" (Flapjack.Exp.const 0#64)
def original184 := Pancake.PanLang.declToHOL originalData184
def simplified184 := Pancake.PanLang.declToHOL simplifiedData184
end InitECandidate.Proofs.FrontendStages.Declarations
