import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify388
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData404 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bal_accounts" (Flapjack.Exp.const 0#64)
def simplifiedData404 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bal_accounts" (Flapjack.Exp.const 0#64)
def original404 := Pancake.PanLang.declToHOL originalData404
def simplified404 := Pancake.PanLang.declToHOL simplifiedData404
end InitECandidate.Proofs.FrontendStages.Declarations
