import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data501
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate485
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody501_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 5#64]

def globalBody501_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 256#64, Flapjack.Exp.var Flapjack.VarKind.local "bl"]]

def globalBody501_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody501_3 : Prog (BitVec 64) :=
.seq globalBody501_1 globalBody501_2

def globalBody501_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody501_5 : Prog (BitVec 64) :=
.seq globalBody501_3 globalBody501_4

def globalBody501_6 : Prog (BitVec 64) :=
.decCall ("bl") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) globalBody501_5

def globalBody501_7 : Prog (BitVec 64) :=
.seq globalBody501_0 globalBody501_6

def globalBody501_8 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody501_7

def globalData501 : Decl (BitVec 64) :=
.function { name := "op_clz", inline := false, exported := false, params := [], body := globalBody501_8, returnShape := (Flapjack.Shape.one) }
def globalOutput501 := Pancake.PanLang.declToHOL globalData501
end InitECandidate.Proofs.FrontendStages.Declarations
