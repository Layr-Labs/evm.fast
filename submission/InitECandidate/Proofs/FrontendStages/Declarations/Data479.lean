import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify463
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body479_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 5#64]

def body479_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body479_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body479_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body479_4 : Prog (BitVec 64) :=
.seq body479_2 body479_3

def body479_5 : Prog (BitVec 64) :=
.seq body479_1 body479_4

def body479_6 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_div") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]) body479_5

def body479_7 : Prog (BitVec 64) :=
.seq body479_0 body479_6

def body479_8 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body479_7

def body479_9 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body479_8

def body479_10 : Prog (BitVec 64) :=
.seq body479_1 body479_2

def body479_11 : Prog (BitVec 64) :=
.seq body479_10 body479_3

def body479_12 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_div") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]) body479_11

def body479_13 : Prog (BitVec 64) :=
.seq body479_0 body479_12

def body479_14 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body479_13

def body479_15 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body479_14

def originalData479 : Decl (BitVec 64) :=
.function { name := "op_div", inline := false, exported := false, params := [], body := body479_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData479 : Decl (BitVec 64) :=
.function { name := "op_div", inline := false, exported := false, params := [], body := body479_15, returnShape := (Flapjack.Shape.one) }
def original479 := Pancake.PanLang.declToHOL originalData479
def simplified479 := Pancake.PanLang.declToHOL simplifiedData479
end InitECandidate.Proofs.FrontendStages.Declarations
