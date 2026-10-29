import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data508
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate492
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody508_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 1#64]

def globalBody508_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody508_2 : Prog (BitVec 64) :=
.seq globalBody508_0 globalBody508_1

def globalBody508_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody508_4 : Prog (BitVec 64) :=
.seq globalBody508_2 globalBody508_3

def globalData508 : Decl (BitVec 64) :=
.function { name := "op_jumpdest", inline := false, exported := false, params := [], body := globalBody508_4, returnShape := (Flapjack.Shape.one) }
def globalOutput508 := Pancake.PanLang.declToHOL globalData508
end InitECandidate.Proofs.FrontendStages.Declarations
