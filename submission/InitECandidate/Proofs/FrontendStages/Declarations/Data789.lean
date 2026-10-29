import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify773
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body789_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "temp"), none)) "bls_fp_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "zt2", Flapjack.Exp.var Flapjack.VarKind.local "temp"]

def body789_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "den"), none)) "bls_fp_neg"
  [Flapjack.Exp.var Flapjack.VarKind.local "den"]

def body789_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "temp"), none)) "bls_fp_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "temp", Flapjack.Exp.var Flapjack.VarKind.local "one"]

def body789_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "den"), none)) "bls_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "zc", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body789_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body789_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "dz") (Flapjack.Exp.const 1#64)) body789_3 body789_4

def body789_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "u"), none)) "bls_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "num"]

def body789_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "bls_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "den2"]

def body789_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "u"), none)) "bls_fp_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "w"]

def body789_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "bls_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body789_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y"), none)) "bls_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "t3"]

def body789_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y"), none)) "bls_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "c"]

def body789_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "num"), none)) "bls_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "num", Flapjack.Exp.var Flapjack.VarKind.local "zt2"]

def body789_13 : Prog (BitVec 64) :=
.seq body789_11 body789_12

def body789_14 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1856#64])) body789_13

def body789_15 : Prog (BitVec 64) :=
.seq body789_10 body789_14

def body789_16 : Prog (BitVec 64) :=
.decCall ("t3") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "t"]) body789_15

def body789_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "sq"))
  (Flapjack.Exp.const 0#64)) body789_16 body789_4

def body789_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y"), none)) "bls_fp_neg"
  [Flapjack.Exp.var Flapjack.VarKind.local "y"]

def body789_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "st_")
  (Flapjack.Exp.var Flapjack.VarKind.local "sy")) body789_18 body789_4

def body789_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y"), none)) "bls_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "den"]

def body789_21 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.var Flapjack.VarKind.local "num")

def body789_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "y")

def body789_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "den")

def body789_24 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body789_25 : Prog (BitVec 64) :=
.seq body789_23 body789_24

def body789_26 : Prog (BitVec 64) :=
.seq body789_22 body789_25

def body789_27 : Prog (BitVec 64) :=
.seq body789_21 body789_26

def body789_28 : Prog (BitVec 64) :=
.seq body789_20 body789_27

def body789_29 : Prog (BitVec 64) :=
.seq body789_19 body789_28

def body789_30 : Prog (BitVec 64) :=
.decCall ("sy") (Flapjack.Shape.one) ("bls_fp_sgn0") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) body789_29

def body789_31 : Prog (BitVec 64) :=
.decCall ("st_") (Flapjack.Shape.one) ("bls_fp_sgn0") ([Flapjack.Exp.var Flapjack.VarKind.local "t"]) body789_30

def body789_32 : Prog (BitVec 64) :=
.seq body789_17 body789_31

def body789_33 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sq"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "sq"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "sq"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "sq"),
    Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "sq"),
    Flapjack.Exp.rField 6 (Flapjack.Exp.var Flapjack.VarKind.local "sq")]) body789_32

def body789_34 : Prog (BitVec 64) :=
.decCall ("sq") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one]) ("swu_sqrt_division_fp") ([Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "v"]) body789_33

def body789_35 : Prog (BitVec 64) :=
.seq body789_8 body789_34

def body789_36 : Prog (BitVec 64) :=
.seq body789_9 body789_35

def body789_37 : Prog (BitVec 64) :=
.seq body789_8 body789_36

def body789_38 : Prog (BitVec 64) :=
.seq body789_7 body789_37

def body789_39 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "num"]) body789_38

def body789_40 : Prog (BitVec 64) :=
.seq body789_6 body789_39

def body789_41 : Prog (BitVec 64) :=
.decCall ("u") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "num"]) body789_40

def body789_42 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "den2", Flapjack.Exp.var Flapjack.VarKind.local "den"]) body789_41

def body789_43 : Prog (BitVec 64) :=
.decCall ("den2") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "den"]) body789_42

def body789_44 : Prog (BitVec 64) :=
.seq body789_5 body789_43

def body789_45 : Prog (BitVec 64) :=
.decCall ("dz") (Flapjack.Shape.one) ("bls_fp_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "den"]) body789_44

def body789_46 : Prog (BitVec 64) :=
.decCall ("num") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "temp"]) body789_45

def body789_47 : Prog (BitVec 64) :=
.seq body789_2 body789_46

def body789_48 : Prog (BitVec 64) :=
.dec ("one") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 8505329371266088957#64, Flapjack.Exp.const 17002214543764226050#64,
    Flapjack.Exp.const 6865905132761471162#64, Flapjack.Exp.const 8632934651105793861#64,
    Flapjack.Exp.const 6631298214892334189#64, Flapjack.Exp.const 1582556514881692819#64]) body789_47

def body789_49 : Prog (BitVec 64) :=
.seq body789_1 body789_48

def body789_50 : Prog (BitVec 64) :=
.decCall ("den") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "temp"]) body789_49

def body789_51 : Prog (BitVec 64) :=
.seq body789_0 body789_50

def body789_52 : Prog (BitVec 64) :=
.decCall ("temp") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "zt2"]) body789_51

def body789_53 : Prog (BitVec 64) :=
.decCall ("zt2") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "zc", Flapjack.Exp.var Flapjack.VarKind.local "t2"]) body789_52

def body789_54 : Prog (BitVec 64) :=
.decCall ("t2") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "t"]) body789_53

def body789_55 : Prog (BitVec 64) :=
.dec ("zc") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1808#64])) body789_54

def body789_56 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1760#64])) body789_55

def body789_57 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1712#64])) body789_56

def body789_58 : Prog (BitVec 64) :=
.seq body789_7 body789_8

def body789_59 : Prog (BitVec 64) :=
.seq body789_58 body789_9

def body789_60 : Prog (BitVec 64) :=
.seq body789_59 body789_8

def body789_61 : Prog (BitVec 64) :=
.seq body789_19 body789_20

def body789_62 : Prog (BitVec 64) :=
.seq body789_61 body789_21

def body789_63 : Prog (BitVec 64) :=
.seq body789_62 body789_22

def body789_64 : Prog (BitVec 64) :=
.seq body789_63 body789_23

def body789_65 : Prog (BitVec 64) :=
.seq body789_64 body789_24

def body789_66 : Prog (BitVec 64) :=
.decCall ("sy") (Flapjack.Shape.one) ("bls_fp_sgn0") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) body789_65

def body789_67 : Prog (BitVec 64) :=
.decCall ("st_") (Flapjack.Shape.one) ("bls_fp_sgn0") ([Flapjack.Exp.var Flapjack.VarKind.local "t"]) body789_66

def body789_68 : Prog (BitVec 64) :=
.seq body789_17 body789_67

def body789_69 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sq"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "sq"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "sq"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "sq"),
    Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "sq"),
    Flapjack.Exp.rField 6 (Flapjack.Exp.var Flapjack.VarKind.local "sq")]) body789_68

def body789_70 : Prog (BitVec 64) :=
.decCall ("sq") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one]) ("swu_sqrt_division_fp") ([Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "v"]) body789_69

def body789_71 : Prog (BitVec 64) :=
.seq body789_60 body789_70

def body789_72 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "num"]) body789_71

def body789_73 : Prog (BitVec 64) :=
.seq body789_6 body789_72

def body789_74 : Prog (BitVec 64) :=
.decCall ("u") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "num"]) body789_73

def body789_75 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "den2", Flapjack.Exp.var Flapjack.VarKind.local "den"]) body789_74

def body789_76 : Prog (BitVec 64) :=
.decCall ("den2") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "den"]) body789_75

def body789_77 : Prog (BitVec 64) :=
.seq body789_5 body789_76

def body789_78 : Prog (BitVec 64) :=
.decCall ("dz") (Flapjack.Shape.one) ("bls_fp_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "den"]) body789_77

def body789_79 : Prog (BitVec 64) :=
.decCall ("num") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "temp"]) body789_78

def body789_80 : Prog (BitVec 64) :=
.seq body789_2 body789_79

def body789_81 : Prog (BitVec 64) :=
.dec ("one") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 8505329371266088957#64, Flapjack.Exp.const 17002214543764226050#64,
    Flapjack.Exp.const 6865905132761471162#64, Flapjack.Exp.const 8632934651105793861#64,
    Flapjack.Exp.const 6631298214892334189#64, Flapjack.Exp.const 1582556514881692819#64]) body789_80

def body789_82 : Prog (BitVec 64) :=
.seq body789_1 body789_81

def body789_83 : Prog (BitVec 64) :=
.decCall ("den") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "temp"]) body789_82

def body789_84 : Prog (BitVec 64) :=
.seq body789_0 body789_83

def body789_85 : Prog (BitVec 64) :=
.decCall ("temp") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "zt2"]) body789_84

def body789_86 : Prog (BitVec 64) :=
.decCall ("zt2") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "zc", Flapjack.Exp.var Flapjack.VarKind.local "t2"]) body789_85

def body789_87 : Prog (BitVec 64) :=
.decCall ("t2") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "t"]) body789_86

def body789_88 : Prog (BitVec 64) :=
.dec ("zc") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1808#64])) body789_87

def body789_89 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1760#64])) body789_88

def body789_90 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1712#64])) body789_89

def originalData789 : Decl (BitVec 64) :=
.function { name := "swu_g1", inline := false, exported := false, params := [("r", Flapjack.Shape.one),
  ("t",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body789_57, returnShape := (Flapjack.Shape.one) }
def simplifiedData789 : Decl (BitVec 64) :=
.function { name := "swu_g1", inline := false, exported := false, params := [("r", Flapjack.Shape.one),
  ("t",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body789_90, returnShape := (Flapjack.Shape.one) }
def original789 := Pancake.PanLang.declToHOL originalData789
def simplified789 := Pancake.PanLang.declToHOL simplifiedData789
end InitECandidate.Proofs.FrontendStages.Declarations
