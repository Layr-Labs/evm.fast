import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify485
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body501_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 5#64]

def body501_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 256#64, Flapjack.Exp.var Flapjack.VarKind.local "bl"]]

def body501_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body501_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body501_4 : Prog (BitVec 64) :=
.seq body501_2 body501_3

def body501_5 : Prog (BitVec 64) :=
.seq body501_1 body501_4

def body501_6 : Prog (BitVec 64) :=
.decCall ("bl") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) body501_5

def body501_7 : Prog (BitVec 64) :=
.seq body501_0 body501_6

def body501_8 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body501_7

def body501_9 : Prog (BitVec 64) :=
.seq body501_1 body501_2

def body501_10 : Prog (BitVec 64) :=
.seq body501_9 body501_3

def body501_11 : Prog (BitVec 64) :=
.decCall ("bl") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) body501_10

def body501_12 : Prog (BitVec 64) :=
.seq body501_0 body501_11

def body501_13 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body501_12

def originalData501 : Decl (BitVec 64) :=
.function { name := "op_clz", inline := false, exported := false, params := [], body := body501_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData501 : Decl (BitVec 64) :=
.function { name := "op_clz", inline := false, exported := false, params := [], body := body501_13, returnShape := (Flapjack.Shape.one) }
def original501 := Pancake.PanLang.declToHOL originalData501
def simplified501 := Pancake.PanLang.declToHOL simplifiedData501
end InitECandidate.Proofs.FrontendStages.Declarations
