import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data558
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate542
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody558_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def globalBody558_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 40#64])]

def globalBody558_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody558_3 : Prog (BitVec 64) :=
.seq globalBody558_1 globalBody558_2

def globalBody558_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody558_5 : Prog (BitVec 64) :=
.seq globalBody558_3 globalBody558_4

def globalBody558_6 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) globalBody558_5

def globalBody558_7 : Prog (BitVec 64) :=
.seq globalBody558_0 globalBody558_6

def globalData558 : Decl (BitVec 64) :=
.function { name := "op_number", inline := false, exported := false, params := [], body := globalBody558_7, returnShape := (Flapjack.Shape.one) }
def globalOutput558 := Pancake.PanLang.declToHOL globalData558
end InitECandidate.Proofs.FrontendStages.Declarations
