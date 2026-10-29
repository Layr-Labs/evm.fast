import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data429
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate413
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody429_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "update_builder_from_tx" []

def globalBody429_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "merge_tx_into_block" []

def globalBody429_2 : Prog (BitVec 64) :=
.seq globalBody429_0 globalBody429_1

def globalBody429_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody429_4 : Prog (BitVec 64) :=
.seq globalBody429_2 globalBody429_3

def globalData429 : Decl (BitVec 64) :=
.function { name := "incorporate_tx_into_block", inline := false, exported := false, params := [], body := globalBody429_4, returnShape := (Flapjack.Shape.one) }
def globalOutput429 := Pancake.PanLang.declToHOL globalData429
end InitECandidate.Proofs.FrontendStages.Declarations
