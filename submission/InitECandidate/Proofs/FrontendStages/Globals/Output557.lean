import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data557
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate541
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody557_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def globalBody557_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 80#64])]

def globalBody557_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody557_3 : Prog (BitVec 64) :=
.seq globalBody557_1 globalBody557_2

def globalBody557_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody557_5 : Prog (BitVec 64) :=
.seq globalBody557_3 globalBody557_4

def globalBody557_6 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) globalBody557_5

def globalBody557_7 : Prog (BitVec 64) :=
.seq globalBody557_0 globalBody557_6

def globalData557 : Decl (BitVec 64) :=
.function { name := "op_timestamp", inline := false, exported := false, params := [], body := globalBody557_7, returnShape := (Flapjack.Shape.one) }
def globalOutput557 := Pancake.PanLang.declToHOL globalData557
end InitECandidate.Proofs.FrontendStages.Declarations
