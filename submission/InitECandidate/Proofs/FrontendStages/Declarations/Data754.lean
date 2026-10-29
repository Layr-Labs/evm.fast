import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify738
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body754_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body754_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 288#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 288#64]]

def body754_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_mul_v"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def body754_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "t0",
    Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def body754_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_inv"
  [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "d"]

def body754_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "d"]

def body754_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 288#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 288#64],
    Flapjack.Exp.var Flapjack.VarKind.local "d"]

def body754_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_neg"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 288#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 288#64]]

def body754_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body754_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body754_10 : Prog (BitVec 64) :=
.seq body754_8 body754_9

def body754_11 : Prog (BitVec 64) :=
.seq body754_7 body754_10

def body754_12 : Prog (BitVec 64) :=
.seq body754_6 body754_11

def body754_13 : Prog (BitVec 64) :=
.seq body754_5 body754_12

def body754_14 : Prog (BitVec 64) :=
.seq body754_4 body754_13

def body754_15 : Prog (BitVec 64) :=
.seq body754_3 body754_14

def body754_16 : Prog (BitVec 64) :=
.seq body754_2 body754_15

def body754_17 : Prog (BitVec 64) :=
.seq body754_1 body754_16

def body754_18 : Prog (BitVec 64) :=
.seq body754_0 body754_17

def body754_19 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) body754_18

def body754_20 : Prog (BitVec 64) :=
.dec ("t1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) body754_19

def body754_21 : Prog (BitVec 64) :=
.dec ("t0") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body754_20

def body754_22 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 288#64, Flapjack.Exp.const 3#64]]) body754_21

def body754_23 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body754_22

def body754_24 : Prog (BitVec 64) :=
.seq body754_0 body754_1

def body754_25 : Prog (BitVec 64) :=
.seq body754_24 body754_2

def body754_26 : Prog (BitVec 64) :=
.seq body754_25 body754_3

def body754_27 : Prog (BitVec 64) :=
.seq body754_26 body754_4

def body754_28 : Prog (BitVec 64) :=
.seq body754_27 body754_5

def body754_29 : Prog (BitVec 64) :=
.seq body754_28 body754_6

def body754_30 : Prog (BitVec 64) :=
.seq body754_29 body754_7

def body754_31 : Prog (BitVec 64) :=
.seq body754_30 body754_8

def body754_32 : Prog (BitVec 64) :=
.seq body754_31 body754_9

def body754_33 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) body754_32

def body754_34 : Prog (BitVec 64) :=
.dec ("t1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) body754_33

def body754_35 : Prog (BitVec 64) :=
.dec ("t0") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body754_34

def body754_36 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 288#64, Flapjack.Exp.const 3#64]]) body754_35

def body754_37 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body754_36

def originalData754 : Decl (BitVec 64) :=
.function { name := "fp12_inv", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body754_23, returnShape := (Flapjack.Shape.one) }
def simplifiedData754 : Decl (BitVec 64) :=
.function { name := "fp12_inv", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body754_37, returnShape := (Flapjack.Shape.one) }
def original754 := Pancake.PanLang.declToHOL originalData754
def simplified754 := Pancake.PanLang.declToHOL simplifiedData754
end InitECandidate.Proofs.FrontendStages.Declarations
