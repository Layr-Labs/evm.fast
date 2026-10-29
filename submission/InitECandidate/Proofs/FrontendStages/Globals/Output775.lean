import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data775
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate759
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody775_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "x"]

def globalBody775_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "w",
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def globalBody775_2 : Prog (BitVec 64) :=
.seq globalBody775_0 globalBody775_1

def globalBody775_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def globalBody775_4 : Prog (BitVec 64) :=
.seq globalBody775_2 globalBody775_3

def globalBody775_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.var Flapjack.VarKind.local "y",
    Flapjack.Exp.var Flapjack.VarKind.local "z"]

def globalBody775_6 : Prog (BitVec 64) :=
.seq globalBody775_4 globalBody775_5

def globalBody775_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "x",
    Flapjack.Exp.var Flapjack.VarKind.local "y"]

def globalBody775_8 : Prog (BitVec 64) :=
.seq globalBody775_6 globalBody775_7

def globalBody775_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "b",
    Flapjack.Exp.var Flapjack.VarKind.local "s"]

def globalBody775_10 : Prog (BitVec 64) :=
.seq globalBody775_8 globalBody775_9

def globalBody775_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "b",
    Flapjack.Exp.var Flapjack.VarKind.local "b"]

def globalBody775_12 : Prog (BitVec 64) :=
.seq globalBody775_10 globalBody775_11

def globalBody775_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody775_14 : Prog (BitVec 64) :=
.seq globalBody775_12 globalBody775_13

def globalBody775_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody775_16 : Prog (BitVec 64) :=
.seq globalBody775_14 globalBody775_15

def globalBody775_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "nx", Flapjack.Exp.var Flapjack.VarKind.local "w"]

def globalBody775_18 : Prog (BitVec 64) :=
.seq globalBody775_16 globalBody775_17

def globalBody775_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "nx",
    Flapjack.Exp.var Flapjack.VarKind.local "h"]

def globalBody775_20 : Prog (BitVec 64) :=
.seq globalBody775_18 globalBody775_19

def globalBody775_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "s2", Flapjack.Exp.var Flapjack.VarKind.local "s"]

def globalBody775_22 : Prog (BitVec 64) :=
.seq globalBody775_20 globalBody775_21

def globalBody775_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "nx", Flapjack.Exp.var Flapjack.VarKind.local "h",
    Flapjack.Exp.var Flapjack.VarKind.local "s"]

def globalBody775_24 : Prog (BitVec 64) :=
.seq globalBody775_22 globalBody775_23

def globalBody775_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "nx", Flapjack.Exp.var Flapjack.VarKind.local "nx",
    Flapjack.Exp.var Flapjack.VarKind.local "nx"]

def globalBody775_26 : Prog (BitVec 64) :=
.seq globalBody775_24 globalBody775_25

def globalBody775_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "h"]

def globalBody775_28 : Prog (BitVec 64) :=
.seq globalBody775_26 globalBody775_27

def globalBody775_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "ny", Flapjack.Exp.var Flapjack.VarKind.local "w",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody775_30 : Prog (BitVec 64) :=
.seq globalBody775_28 globalBody775_29

def globalBody775_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "y"]

def globalBody775_32 : Prog (BitVec 64) :=
.seq globalBody775_30 globalBody775_31

def globalBody775_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "s2"]

def globalBody775_34 : Prog (BitVec 64) :=
.seq globalBody775_32 globalBody775_33

def globalBody775_35 : Prog (BitVec 64) :=
.seq globalBody775_34 globalBody775_13

def globalBody775_36 : Prog (BitVec 64) :=
.seq globalBody775_35 globalBody775_13

def globalBody775_37 : Prog (BitVec 64) :=
.seq globalBody775_36 globalBody775_13

def globalBody775_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "ny", Flapjack.Exp.var Flapjack.VarKind.local "ny",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody775_39 : Prog (BitVec 64) :=
.seq globalBody775_37 globalBody775_38

def globalBody775_40 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "s",
    Flapjack.Exp.var Flapjack.VarKind.local "s2"]

def globalBody775_41 : Prog (BitVec 64) :=
.seq globalBody775_39 globalBody775_40

def globalBody775_42 : Prog (BitVec 64) :=
.seq globalBody775_41 globalBody775_13

def globalBody775_43 : Prog (BitVec 64) :=
.seq globalBody775_42 globalBody775_13

def globalBody775_44 : Prog (BitVec 64) :=
.seq globalBody775_43 globalBody775_13

def globalBody775_45 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "nx"]

def globalBody775_46 : Prog (BitVec 64) :=
.seq globalBody775_44 globalBody775_45

def globalBody775_47 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "ny"]

def globalBody775_48 : Prog (BitVec 64) :=
.seq globalBody775_46 globalBody775_47

def globalBody775_49 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody775_50 : Prog (BitVec 64) :=
.seq globalBody775_48 globalBody775_49

def globalBody775_51 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody775_52 : Prog (BitVec 64) :=
.seq globalBody775_50 globalBody775_51

def globalBody775_53 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody775_54 : Prog (BitVec 64) :=
.seq globalBody775_52 globalBody775_53

def globalBody775_55 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 192#64]) globalBody775_54

def globalBody775_56 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 96#64]) globalBody775_55

def globalBody775_57 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p") globalBody775_56

def globalBody775_58 : Prog (BitVec 64) :=
.dec ("ny") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64]) globalBody775_57

def globalBody775_59 : Prog (BitVec 64) :=
.dec ("nx") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) globalBody775_58

def globalBody775_60 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64]) globalBody775_59

def globalBody775_61 : Prog (BitVec 64) :=
.dec ("s2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]) globalBody775_60

def globalBody775_62 : Prog (BitVec 64) :=
.dec ("h") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) globalBody775_61

def globalBody775_63 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64]) globalBody775_62

def globalBody775_64 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]) globalBody775_63

def globalBody775_65 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") globalBody775_64

def globalBody775_66 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 8#64]]) globalBody775_65

def globalBody775_67 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody775_66

def globalData775 : Decl (BitVec 64) :=
.function { name := "g2_double", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one)], body := globalBody775_67, returnShape := (Flapjack.Shape.one) }
def globalOutput775 := Pancake.PanLang.declToHOL globalData775
end InitECandidate.Proofs.FrontendStages.Declarations
