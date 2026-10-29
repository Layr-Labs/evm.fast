import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify735
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body751_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "b"]

def body751_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 288#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 288#64]]

def body751_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "sa", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 288#64]]

def body751_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "sb", Flapjack.Exp.var Flapjack.VarKind.local "b",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 288#64]]

def body751_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "sa",
    Flapjack.Exp.var Flapjack.VarKind.local "sb"]

def body751_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "t2",
    Flapjack.Exp.var Flapjack.VarKind.local "t0"]

def body751_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_sub"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 288#64],
    Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def body751_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_mul_v"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def body751_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "t0",
    Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def body751_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body751_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body751_11 : Prog (BitVec 64) :=
.seq body751_9 body751_10

def body751_12 : Prog (BitVec 64) :=
.seq body751_8 body751_11

def body751_13 : Prog (BitVec 64) :=
.seq body751_7 body751_12

def body751_14 : Prog (BitVec 64) :=
.seq body751_6 body751_13

def body751_15 : Prog (BitVec 64) :=
.seq body751_5 body751_14

def body751_16 : Prog (BitVec 64) :=
.seq body751_4 body751_15

def body751_17 : Prog (BitVec 64) :=
.seq body751_3 body751_16

def body751_18 : Prog (BitVec 64) :=
.seq body751_2 body751_17

def body751_19 : Prog (BitVec 64) :=
.seq body751_1 body751_18

def body751_20 : Prog (BitVec 64) :=
.seq body751_0 body751_19

def body751_21 : Prog (BitVec 64) :=
.dec ("sb") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1152#64]) body751_20

def body751_22 : Prog (BitVec 64) :=
.dec ("sa") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 864#64]) body751_21

def body751_23 : Prog (BitVec 64) :=
.dec ("t2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) body751_22

def body751_24 : Prog (BitVec 64) :=
.dec ("t1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) body751_23

def body751_25 : Prog (BitVec 64) :=
.dec ("t0") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body751_24

def body751_26 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 288#64, Flapjack.Exp.const 5#64]]) body751_25

def body751_27 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body751_26

def body751_28 : Prog (BitVec 64) :=
.seq body751_0 body751_1

def body751_29 : Prog (BitVec 64) :=
.seq body751_28 body751_2

def body751_30 : Prog (BitVec 64) :=
.seq body751_29 body751_3

def body751_31 : Prog (BitVec 64) :=
.seq body751_30 body751_4

def body751_32 : Prog (BitVec 64) :=
.seq body751_31 body751_5

def body751_33 : Prog (BitVec 64) :=
.seq body751_32 body751_6

def body751_34 : Prog (BitVec 64) :=
.seq body751_33 body751_7

def body751_35 : Prog (BitVec 64) :=
.seq body751_34 body751_8

def body751_36 : Prog (BitVec 64) :=
.seq body751_35 body751_9

def body751_37 : Prog (BitVec 64) :=
.seq body751_36 body751_10

def body751_38 : Prog (BitVec 64) :=
.dec ("sb") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1152#64]) body751_37

def body751_39 : Prog (BitVec 64) :=
.dec ("sa") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 864#64]) body751_38

def body751_40 : Prog (BitVec 64) :=
.dec ("t2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) body751_39

def body751_41 : Prog (BitVec 64) :=
.dec ("t1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) body751_40

def body751_42 : Prog (BitVec 64) :=
.dec ("t0") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body751_41

def body751_43 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 288#64, Flapjack.Exp.const 5#64]]) body751_42

def body751_44 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body751_43

def originalData751 : Decl (BitVec 64) :=
.function { name := "fp12_mul", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body751_27, returnShape := (Flapjack.Shape.one) }
def simplifiedData751 : Decl (BitVec 64) :=
.function { name := "fp12_mul", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body751_44, returnShape := (Flapjack.Shape.one) }
def original751 := Pancake.PanLang.declToHOL originalData751
def simplified751 := Pancake.PanLang.declToHOL simplifiedData751
end InitECandidate.Proofs.FrontendStages.Declarations
