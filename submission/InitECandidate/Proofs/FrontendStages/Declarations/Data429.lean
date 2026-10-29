import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify413
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body429_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "update_builder_from_tx" []

def body429_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "merge_tx_into_block" []

def body429_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body429_3 : Prog (BitVec 64) :=
.seq body429_1 body429_2

def body429_4 : Prog (BitVec 64) :=
.seq body429_0 body429_3

def body429_5 : Prog (BitVec 64) :=
.seq body429_0 body429_1

def body429_6 : Prog (BitVec 64) :=
.seq body429_5 body429_2

def originalData429 : Decl (BitVec 64) :=
.function { name := "incorporate_tx_into_block", inline := false, exported := false, params := [], body := body429_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData429 : Decl (BitVec 64) :=
.function { name := "incorporate_tx_into_block", inline := false, exported := false, params := [], body := body429_6, returnShape := (Flapjack.Shape.one) }
def original429 := Pancake.PanLang.declToHOL originalData429
def simplified429 := Pancake.PanLang.declToHOL simplifiedData429
end InitECandidate.Proofs.FrontendStages.Declarations
