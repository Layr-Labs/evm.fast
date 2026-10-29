import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData2 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "journal_n" (Flapjack.Exp.const 0#64)
def simplifiedData2 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "journal_n" (Flapjack.Exp.const 0#64)
def original2 := Pancake.PanLang.declToHOL originalData2
def simplified2 := Pancake.PanLang.declToHOL simplifiedData2
end InitECandidate.Proofs.FrontendStages.Declarations
