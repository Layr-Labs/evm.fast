import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify226
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData242 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "empty_trie_root" (Flapjack.Exp.const 0#64)
def simplifiedData242 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "empty_trie_root" (Flapjack.Exp.const 0#64)
def original242 := Pancake.PanLang.declToHOL originalData242
def simplified242 := Pancake.PanLang.declToHOL simplifiedData242
end InitECandidate.Proofs.FrontendStages.Declarations
