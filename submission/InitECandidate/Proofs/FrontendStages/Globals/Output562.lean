import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data562
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate546
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody562_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def globalBody562_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 112#64])]

def globalBody562_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody562_3 : Prog (BitVec 64) :=
.seq globalBody562_1 globalBody562_2

def globalBody562_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody562_5 : Prog (BitVec 64) :=
.seq globalBody562_3 globalBody562_4

def globalBody562_6 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) globalBody562_5

def globalBody562_7 : Prog (BitVec 64) :=
.seq globalBody562_0 globalBody562_6

def globalData562 : Decl (BitVec 64) :=
.function { name := "op_slotnum", inline := false, exported := false, params := [], body := globalBody562_7, returnShape := (Flapjack.Shape.one) }
def globalOutput562 := Pancake.PanLang.declToHOL globalData562
end InitECandidate.Proofs.FrontendStages.Declarations
