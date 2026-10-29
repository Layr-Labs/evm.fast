import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data794
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate778
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody794_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "t"]

def globalBody794_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "zt2",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
        Flapjack.Exp.const 4736#64],
    Flapjack.Exp.var Flapjack.VarKind.local "t2"]

def globalBody794_2 : Prog (BitVec 64) :=
.seq globalBody794_0 globalBody794_1

def globalBody794_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "temp", Flapjack.Exp.var Flapjack.VarKind.local "zt2"]

def globalBody794_4 : Prog (BitVec 64) :=
.seq globalBody794_2 globalBody794_3

def globalBody794_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "temp", Flapjack.Exp.var Flapjack.VarKind.local "zt2",
    Flapjack.Exp.var Flapjack.VarKind.local "temp"]

def globalBody794_6 : Prog (BitVec 64) :=
.seq globalBody794_4 globalBody794_5

def globalBody794_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "den",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
        Flapjack.Exp.const 4544#64],
    Flapjack.Exp.var Flapjack.VarKind.local "temp"]

def globalBody794_8 : Prog (BitVec 64) :=
.seq globalBody794_6 globalBody794_7

def globalBody794_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_neg"
  [Flapjack.Exp.var Flapjack.VarKind.local "den", Flapjack.Exp.var Flapjack.VarKind.local "den"]

def globalBody794_10 : Prog (BitVec 64) :=
.seq globalBody794_8 globalBody794_9

def globalBody794_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "w"]

def globalBody794_12 : Prog (BitVec 64) :=
.seq globalBody794_10 globalBody794_11

def globalBody794_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "temp", Flapjack.Exp.var Flapjack.VarKind.local "temp",
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def globalBody794_14 : Prog (BitVec 64) :=
.seq globalBody794_12 globalBody794_13

def globalBody794_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "num",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
        Flapjack.Exp.const 4640#64],
    Flapjack.Exp.var Flapjack.VarKind.local "temp"]

def globalBody794_16 : Prog (BitVec 64) :=
.seq globalBody794_14 globalBody794_15

def globalBody794_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "den",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
        Flapjack.Exp.const 4736#64],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
        Flapjack.Exp.const 4544#64]]

def globalBody794_18 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody794_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "dz") (Flapjack.Exp.const 1#64)) globalBody794_17 globalBody794_18

def globalBody794_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "den"]

def globalBody794_21 : Prog (BitVec 64) :=
.seq globalBody794_19 globalBody794_20

def globalBody794_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "w",
    Flapjack.Exp.var Flapjack.VarKind.local "den"]

def globalBody794_23 : Prog (BitVec 64) :=
.seq globalBody794_21 globalBody794_22

def globalBody794_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
        Flapjack.Exp.const 4544#64],
    Flapjack.Exp.var Flapjack.VarKind.local "num"]

def globalBody794_25 : Prog (BitVec 64) :=
.seq globalBody794_23 globalBody794_24

def globalBody794_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def globalBody794_27 : Prog (BitVec 64) :=
.seq globalBody794_25 globalBody794_26

def globalBody794_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "num"]

def globalBody794_29 : Prog (BitVec 64) :=
.seq globalBody794_27 globalBody794_28

def globalBody794_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "w",
    Flapjack.Exp.var Flapjack.VarKind.local "num"]

def globalBody794_31 : Prog (BitVec 64) :=
.seq globalBody794_29 globalBody794_30

def globalBody794_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def globalBody794_33 : Prog (BitVec 64) :=
.seq globalBody794_31 globalBody794_32

def globalBody794_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "w",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
        Flapjack.Exp.const 4640#64],
    Flapjack.Exp.var Flapjack.VarKind.local "v"]

def globalBody794_35 : Prog (BitVec 64) :=
.seq globalBody794_33 globalBody794_34

def globalBody794_36 : Prog (BitVec 64) :=
.seq globalBody794_35 globalBody794_32

def globalBody794_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "cand", Flapjack.Exp.var Flapjack.VarKind.local "t2",
    Flapjack.Exp.var Flapjack.VarKind.local "t"]

def globalBody794_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "cand", Flapjack.Exp.var Flapjack.VarKind.local "y",
    Flapjack.Exp.var Flapjack.VarKind.local "cand"]

def globalBody794_39 : Prog (BitVec 64) :=
.seq globalBody794_37 globalBody794_38

def globalBody794_40 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "zt2"]

def globalBody794_41 : Prog (BitVec 64) :=
.seq globalBody794_39 globalBody794_40

def globalBody794_42 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "w",
    Flapjack.Exp.var Flapjack.VarKind.local "zt2"]

def globalBody794_43 : Prog (BitVec 64) :=
.seq globalBody794_41 globalBody794_42

def globalBody794_44 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u1", Flapjack.Exp.var Flapjack.VarKind.local "w",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody794_45 : Prog (BitVec 64) :=
.seq globalBody794_43 globalBody794_44

def globalBody794_46 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "w",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
        Flapjack.Exp.const 4832#64,
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 96#64]],
    Flapjack.Exp.var Flapjack.VarKind.local "cand"]

def globalBody794_47 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "temp", Flapjack.Exp.var Flapjack.VarKind.local "w"]

def globalBody794_48 : Prog (BitVec 64) :=
.seq globalBody794_46 globalBody794_47

def globalBody794_49 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "temp", Flapjack.Exp.var Flapjack.VarKind.local "temp",
    Flapjack.Exp.var Flapjack.VarKind.local "v"]

def globalBody794_50 : Prog (BitVec 64) :=
.seq globalBody794_48 globalBody794_49

def globalBody794_51 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "temp", Flapjack.Exp.var Flapjack.VarKind.local "temp",
    Flapjack.Exp.var Flapjack.VarKind.local "u1"]

def globalBody794_52 : Prog (BitVec 64) :=
.seq globalBody794_50 globalBody794_51

def globalBody794_53 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "w"]

def globalBody794_54 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "success2" (Flapjack.Exp.const 1#64)

def globalBody794_55 : Prog (BitVec 64) :=
.seq globalBody794_53 globalBody794_54

def globalBody794_56 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 1#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "success")
        (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "success2")
        (Flapjack.Exp.const 0#64))]) globalBody794_55 globalBody794_18

def globalBody794_57 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody794_58 : Prog (BitVec 64) :=
.seq globalBody794_56 globalBody794_57

def globalBody794_59 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("fp2_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "temp"]) globalBody794_58

def globalBody794_60 : Prog (BitVec 64) :=
.seq globalBody794_52 globalBody794_59

def globalBody794_61 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 4#64)) globalBody794_60

def globalBody794_62 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "num", Flapjack.Exp.var Flapjack.VarKind.local "num",
    Flapjack.Exp.var Flapjack.VarKind.local "zt2"]

def globalBody794_63 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "success") (Flapjack.Exp.const 0#64)) globalBody794_62 globalBody794_18

def globalBody794_64 : Prog (BitVec 64) :=
.seq globalBody794_61 globalBody794_63

def globalBody794_65 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_neg"
  [Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "y"]

def globalBody794_66 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "st_")
  (Flapjack.Exp.var Flapjack.VarKind.local "sy")) globalBody794_65 globalBody794_18

def globalBody794_67 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "y",
    Flapjack.Exp.var Flapjack.VarKind.local "den"]

def globalBody794_68 : Prog (BitVec 64) :=
.seq globalBody794_66 globalBody794_67

def globalBody794_69 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "num"]

def globalBody794_70 : Prog (BitVec 64) :=
.seq globalBody794_68 globalBody794_69

def globalBody794_71 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "y"]

def globalBody794_72 : Prog (BitVec 64) :=
.seq globalBody794_70 globalBody794_71

def globalBody794_73 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "den"]

def globalBody794_74 : Prog (BitVec 64) :=
.seq globalBody794_72 globalBody794_73

def globalBody794_75 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody794_76 : Prog (BitVec 64) :=
.seq globalBody794_74 globalBody794_75

def globalBody794_77 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody794_78 : Prog (BitVec 64) :=
.seq globalBody794_76 globalBody794_77

def globalBody794_79 : Prog (BitVec 64) :=
.decCall ("sy") (Flapjack.Shape.one) ("fp2_sgn0") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) globalBody794_78

def globalBody794_80 : Prog (BitVec 64) :=
.decCall ("st_") (Flapjack.Shape.one) ("fp2_sgn0") ([Flapjack.Exp.var Flapjack.VarKind.local "t"]) globalBody794_79

def globalBody794_81 : Prog (BitVec 64) :=
.seq globalBody794_64 globalBody794_80

def globalBody794_82 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody794_81

def globalBody794_83 : Prog (BitVec 64) :=
.dec ("success2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody794_82

def globalBody794_84 : Prog (BitVec 64) :=
.seq globalBody794_45 globalBody794_83

def globalBody794_85 : Prog (BitVec 64) :=
.decCall ("success") (Flapjack.Shape.one) ("swu_sqrt_division_fp2") ([Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "u",
  Flapjack.Exp.var Flapjack.VarKind.local "v"]) globalBody794_84

def globalBody794_86 : Prog (BitVec 64) :=
.seq globalBody794_36 globalBody794_85

def globalBody794_87 : Prog (BitVec 64) :=
.decCall ("dz") (Flapjack.Shape.one) ("fp2_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "den"]) globalBody794_86

def globalBody794_88 : Prog (BitVec 64) :=
.seq globalBody794_16 globalBody794_87

def globalBody794_89 : Prog (BitVec 64) :=
.dec ("u1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 960#64]) globalBody794_88

def globalBody794_90 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 864#64]) globalBody794_89

def globalBody794_91 : Prog (BitVec 64) :=
.dec ("cand") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 768#64]) globalBody794_90

def globalBody794_92 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 672#64]) globalBody794_91

def globalBody794_93 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 576#64]) globalBody794_92

def globalBody794_94 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 480#64]) globalBody794_93

def globalBody794_95 : Prog (BitVec 64) :=
.dec ("num") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 384#64]) globalBody794_94

def globalBody794_96 : Prog (BitVec 64) :=
.dec ("den") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 288#64]) globalBody794_95

def globalBody794_97 : Prog (BitVec 64) :=
.dec ("temp") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 192#64]) globalBody794_96

def globalBody794_98 : Prog (BitVec 64) :=
.dec ("zt2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 96#64]) globalBody794_97

def globalBody794_99 : Prog (BitVec 64) :=
.dec ("t2") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "s") globalBody794_98

def globalBody794_100 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 11#64]]) globalBody794_99

def globalBody794_101 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody794_100

def globalData794 : Decl (BitVec 64) :=
.function { name := "swu_g2", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("t", Flapjack.Shape.one)], body := globalBody794_101, returnShape := (Flapjack.Shape.one) }
def globalOutput794 := Pancake.PanLang.declToHOL globalData794
end InitECandidate.Proofs.FrontendStages.Declarations
