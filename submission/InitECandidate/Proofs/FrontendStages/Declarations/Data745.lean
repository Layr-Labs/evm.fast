import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify729
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body745_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "b"]

def body745_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 96#64]]

def body745_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 192#64]]

def body745_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "b"]

def body745_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 96#64]]

def body745_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 192#64]]

def body745_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "b"]

def body745_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 96#64]]

def body745_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 768#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 192#64]]

def body745_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64]]

def body745_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul_xi"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body745_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "t",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body745_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul_xi"
  [Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 768#64]]

def body745_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]]

def body745_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]]

def body745_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]]

def body745_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]]

def body745_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body745_18 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body745_19 : Prog (BitVec 64) :=
.seq body745_17 body745_18

def body745_20 : Prog (BitVec 64) :=
.seq body745_16 body745_19

def body745_21 : Prog (BitVec 64) :=
.seq body745_15 body745_20

def body745_22 : Prog (BitVec 64) :=
.seq body745_14 body745_21

def body745_23 : Prog (BitVec 64) :=
.seq body745_13 body745_22

def body745_24 : Prog (BitVec 64) :=
.seq body745_12 body745_23

def body745_25 : Prog (BitVec 64) :=
.seq body745_11 body745_24

def body745_26 : Prog (BitVec 64) :=
.seq body745_10 body745_25

def body745_27 : Prog (BitVec 64) :=
.seq body745_9 body745_26

def body745_28 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 864#64]) body745_27

def body745_29 : Prog (BitVec 64) :=
.seq body745_8 body745_28

def body745_30 : Prog (BitVec 64) :=
.seq body745_7 body745_29

def body745_31 : Prog (BitVec 64) :=
.seq body745_6 body745_30

def body745_32 : Prog (BitVec 64) :=
.seq body745_5 body745_31

def body745_33 : Prog (BitVec 64) :=
.seq body745_4 body745_32

def body745_34 : Prog (BitVec 64) :=
.seq body745_3 body745_33

def body745_35 : Prog (BitVec 64) :=
.seq body745_2 body745_34

def body745_36 : Prog (BitVec 64) :=
.seq body745_1 body745_35

def body745_37 : Prog (BitVec 64) :=
.seq body745_0 body745_36

def body745_38 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 10#64]]) body745_37

def body745_39 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body745_38

def body745_40 : Prog (BitVec 64) :=
.seq body745_0 body745_1

def body745_41 : Prog (BitVec 64) :=
.seq body745_40 body745_2

def body745_42 : Prog (BitVec 64) :=
.seq body745_41 body745_3

def body745_43 : Prog (BitVec 64) :=
.seq body745_42 body745_4

def body745_44 : Prog (BitVec 64) :=
.seq body745_43 body745_5

def body745_45 : Prog (BitVec 64) :=
.seq body745_44 body745_6

def body745_46 : Prog (BitVec 64) :=
.seq body745_45 body745_7

def body745_47 : Prog (BitVec 64) :=
.seq body745_46 body745_8

def body745_48 : Prog (BitVec 64) :=
.seq body745_9 body745_10

def body745_49 : Prog (BitVec 64) :=
.seq body745_48 body745_11

def body745_50 : Prog (BitVec 64) :=
.seq body745_49 body745_12

def body745_51 : Prog (BitVec 64) :=
.seq body745_50 body745_13

def body745_52 : Prog (BitVec 64) :=
.seq body745_51 body745_14

def body745_53 : Prog (BitVec 64) :=
.seq body745_52 body745_15

def body745_54 : Prog (BitVec 64) :=
.seq body745_53 body745_16

def body745_55 : Prog (BitVec 64) :=
.seq body745_54 body745_17

def body745_56 : Prog (BitVec 64) :=
.seq body745_55 body745_18

def body745_57 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 864#64]) body745_56

def body745_58 : Prog (BitVec 64) :=
.seq body745_47 body745_57

def body745_59 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 10#64]]) body745_58

def body745_60 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body745_59

def originalData745 : Decl (BitVec 64) :=
.function { name := "fp6_mul", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body745_39, returnShape := (Flapjack.Shape.one) }
def simplifiedData745 : Decl (BitVec 64) :=
.function { name := "fp6_mul", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body745_60, returnShape := (Flapjack.Shape.one) }
def original745 := Pancake.PanLang.declToHOL originalData745
def simplified745 := Pancake.PanLang.declToHOL simplifiedData745
end InitECandidate.Proofs.FrontendStages.Declarations
