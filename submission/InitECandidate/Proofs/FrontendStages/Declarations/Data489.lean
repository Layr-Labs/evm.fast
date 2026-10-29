import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify473
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body489_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body489_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_bool" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body489_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body489_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body489_4 : Prog (BitVec 64) :=
.seq body489_2 body489_3

def body489_5 : Prog (BitVec 64) :=
.seq body489_1 body489_4

def body489_6 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("u256_slt") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]) body489_5

def body489_7 : Prog (BitVec 64) :=
.seq body489_0 body489_6

def body489_8 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body489_7

def body489_9 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body489_8

def body489_10 : Prog (BitVec 64) :=
.seq body489_1 body489_2

def body489_11 : Prog (BitVec 64) :=
.seq body489_10 body489_3

def body489_12 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("u256_slt") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]) body489_11

def body489_13 : Prog (BitVec 64) :=
.seq body489_0 body489_12

def body489_14 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body489_13

def body489_15 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body489_14

def originalData489 : Decl (BitVec 64) :=
.function { name := "op_slt", inline := false, exported := false, params := [], body := body489_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData489 : Decl (BitVec 64) :=
.function { name := "op_slt", inline := false, exported := false, params := [], body := body489_15, returnShape := (Flapjack.Shape.one) }
def original489 := Pancake.PanLang.declToHOL originalData489
def simplified489 := Pancake.PanLang.declToHOL simplifiedData489
end InitECandidate.Proofs.FrontendStages.Declarations
