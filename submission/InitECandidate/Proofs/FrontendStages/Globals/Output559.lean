import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data559
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate543
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody559_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def globalBody559_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 8#64])]

def globalBody559_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody559_3 : Prog (BitVec 64) :=
.seq globalBody559_1 globalBody559_2

def globalBody559_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody559_5 : Prog (BitVec 64) :=
.seq globalBody559_3 globalBody559_4

def globalBody559_6 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) globalBody559_5

def globalBody559_7 : Prog (BitVec 64) :=
.seq globalBody559_0 globalBody559_6

def globalData559 : Decl (BitVec 64) :=
.function { name := "op_gaslimit", inline := false, exported := false, params := [], body := globalBody559_7, returnShape := (Flapjack.Shape.one) }
def globalOutput559 := Pancake.PanLang.declToHOL globalData559
end InitECandidate.Proofs.FrontendStages.Declarations
