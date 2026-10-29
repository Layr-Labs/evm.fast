import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify156
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body172_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_set_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.var Flapjack.VarKind.local "ax",
    Flapjack.Exp.var Flapjack.VarKind.local "ay"]

def body172_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body172_2 : Prog (BitVec 64) :=
.seq body172_0 body172_1

def body172_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body172_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "zz") (Flapjack.Exp.const 1#64)) body172_2 body172_3

def body172_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "s2"), none)) "fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "ay", Flapjack.Exp.var Flapjack.VarKind.local "s2"]

def body172_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_set_infinity" [Flapjack.Exp.var Flapjack.VarKind.local "pt"]

def body172_7 : Prog (BitVec 64) :=
.seq body172_6 body172_1

def body172_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ysz") (Flapjack.Exp.const 1#64)) body172_7 body172_3

def body172_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_double" [Flapjack.Exp.var Flapjack.VarKind.local "pt"]

def body172_10 : Prog (BitVec 64) :=
.seq body172_9 body172_1

def body172_11 : Prog (BitVec 64) :=
.seq body172_8 body172_10

def body172_12 : Prog (BitVec 64) :=
.decCall ("ysz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "ysum"]) body172_11

def body172_13 : Prog (BitVec 64) :=
.decCall ("ysum") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_add") ([Flapjack.Exp.var Flapjack.VarKind.local "s2", Flapjack.Exp.var Flapjack.VarKind.local "y1"]) body172_12

def body172_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "samex") (Flapjack.Exp.const 1#64)) body172_13 body172_3

def body172_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x3"), none)) "fp_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "x3", Flapjack.Exp.var Flapjack.VarKind.local "hhh"]

def body172_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x3"), none)) "fp_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "x3", Flapjack.Exp.var Flapjack.VarKind.local "v2"]

def body172_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y3"), none)) "fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "rr", Flapjack.Exp.var Flapjack.VarKind.local "y3"]

def body172_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y3"), none)) "fp_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "y3", Flapjack.Exp.var Flapjack.VarKind.local "t"]

def body172_19 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pt") (Flapjack.Exp.var Flapjack.VarKind.local "x3")

def body172_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "y3")

def body172_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "z3")

def body172_22 : Prog (BitVec 64) :=
.seq body172_21 body172_1

def body172_23 : Prog (BitVec 64) :=
.seq body172_20 body172_22

def body172_24 : Prog (BitVec 64) :=
.seq body172_19 body172_23

def body172_25 : Prog (BitVec 64) :=
.decCall ("z3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "z1", Flapjack.Exp.var Flapjack.VarKind.local "h"]) body172_24

def body172_26 : Prog (BitVec 64) :=
.seq body172_18 body172_25

def body172_27 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "y1", Flapjack.Exp.var Flapjack.VarKind.local "hhh"]) body172_26

def body172_28 : Prog (BitVec 64) :=
.seq body172_17 body172_27

def body172_29 : Prog (BitVec 64) :=
.decCall ("y3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "x3"]) body172_28

def body172_30 : Prog (BitVec 64) :=
.seq body172_16 body172_29

def body172_31 : Prog (BitVec 64) :=
.decCall ("v2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_add") ([Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "v"]) body172_30

def body172_32 : Prog (BitVec 64) :=
.seq body172_15 body172_31

def body172_33 : Prog (BitVec 64) :=
.decCall ("x3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "rr"]) body172_32

def body172_34 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "x1", Flapjack.Exp.var Flapjack.VarKind.local "hh"]) body172_33

def body172_35 : Prog (BitVec 64) :=
.decCall ("hhh") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "hh"]) body172_34

def body172_36 : Prog (BitVec 64) :=
.decCall ("hh") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "h"]) body172_35

def body172_37 : Prog (BitVec 64) :=
.decCall ("rr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "s2", Flapjack.Exp.var Flapjack.VarKind.local "y1"]) body172_36

def body172_38 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "u2", Flapjack.Exp.var Flapjack.VarKind.local "x1"]) body172_37

def body172_39 : Prog (BitVec 64) :=
.seq body172_14 body172_38

def body172_40 : Prog (BitVec 64) :=
.decCall ("samex") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "u2", Flapjack.Exp.var Flapjack.VarKind.local "x1"]) body172_39

def body172_41 : Prog (BitVec 64) :=
.seq body172_5 body172_40

def body172_42 : Prog (BitVec 64) :=
.decCall ("s2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "z1", Flapjack.Exp.var Flapjack.VarKind.local "z1z1"]) body172_41

def body172_43 : Prog (BitVec 64) :=
.decCall ("u2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "ax", Flapjack.Exp.var Flapjack.VarKind.local "z1z1"]) body172_42

def body172_44 : Prog (BitVec 64) :=
.decCall ("z1z1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "z1"]) body172_43

def body172_45 : Prog (BitVec 64) :=
.dec ("y1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 32#64])) body172_44

def body172_46 : Prog (BitVec 64) :=
.dec ("x1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pt")) body172_45

def body172_47 : Prog (BitVec 64) :=
.seq body172_4 body172_46

def body172_48 : Prog (BitVec 64) :=
.decCall ("zz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "z1"]) body172_47

def body172_49 : Prog (BitVec 64) :=
.dec ("z1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 64#64])) body172_48

def body172_50 : Prog (BitVec 64) :=
.seq body172_8 body172_9

def body172_51 : Prog (BitVec 64) :=
.seq body172_50 body172_1

def body172_52 : Prog (BitVec 64) :=
.decCall ("ysz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "ysum"]) body172_51

def body172_53 : Prog (BitVec 64) :=
.decCall ("ysum") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_add") ([Flapjack.Exp.var Flapjack.VarKind.local "s2", Flapjack.Exp.var Flapjack.VarKind.local "y1"]) body172_52

def body172_54 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "samex") (Flapjack.Exp.const 1#64)) body172_53 body172_3

def body172_55 : Prog (BitVec 64) :=
.seq body172_19 body172_20

def body172_56 : Prog (BitVec 64) :=
.seq body172_55 body172_21

def body172_57 : Prog (BitVec 64) :=
.seq body172_56 body172_1

def body172_58 : Prog (BitVec 64) :=
.decCall ("z3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "z1", Flapjack.Exp.var Flapjack.VarKind.local "h"]) body172_57

def body172_59 : Prog (BitVec 64) :=
.seq body172_18 body172_58

def body172_60 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "y1", Flapjack.Exp.var Flapjack.VarKind.local "hhh"]) body172_59

def body172_61 : Prog (BitVec 64) :=
.seq body172_17 body172_60

def body172_62 : Prog (BitVec 64) :=
.decCall ("y3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "x3"]) body172_61

def body172_63 : Prog (BitVec 64) :=
.seq body172_16 body172_62

def body172_64 : Prog (BitVec 64) :=
.decCall ("v2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_add") ([Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "v"]) body172_63

def body172_65 : Prog (BitVec 64) :=
.seq body172_15 body172_64

def body172_66 : Prog (BitVec 64) :=
.decCall ("x3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "rr"]) body172_65

def body172_67 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "x1", Flapjack.Exp.var Flapjack.VarKind.local "hh"]) body172_66

def body172_68 : Prog (BitVec 64) :=
.decCall ("hhh") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "hh"]) body172_67

def body172_69 : Prog (BitVec 64) :=
.decCall ("hh") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "h"]) body172_68

def body172_70 : Prog (BitVec 64) :=
.decCall ("rr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "s2", Flapjack.Exp.var Flapjack.VarKind.local "y1"]) body172_69

def body172_71 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "u2", Flapjack.Exp.var Flapjack.VarKind.local "x1"]) body172_70

def body172_72 : Prog (BitVec 64) :=
.seq body172_54 body172_71

def body172_73 : Prog (BitVec 64) :=
.decCall ("samex") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "u2", Flapjack.Exp.var Flapjack.VarKind.local "x1"]) body172_72

def body172_74 : Prog (BitVec 64) :=
.seq body172_5 body172_73

def body172_75 : Prog (BitVec 64) :=
.decCall ("s2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "z1", Flapjack.Exp.var Flapjack.VarKind.local "z1z1"]) body172_74

def body172_76 : Prog (BitVec 64) :=
.decCall ("u2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "ax", Flapjack.Exp.var Flapjack.VarKind.local "z1z1"]) body172_75

def body172_77 : Prog (BitVec 64) :=
.decCall ("z1z1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "z1"]) body172_76

def body172_78 : Prog (BitVec 64) :=
.dec ("y1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 32#64])) body172_77

def body172_79 : Prog (BitVec 64) :=
.dec ("x1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pt")) body172_78

def body172_80 : Prog (BitVec 64) :=
.seq body172_4 body172_79

def body172_81 : Prog (BitVec 64) :=
.decCall ("zz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "z1"]) body172_80

def body172_82 : Prog (BitVec 64) :=
.dec ("z1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 64#64])) body172_81

def originalData172 : Decl (BitVec 64) :=
.function { name := "ec_add_affine", inline := false, exported := false, params := [("pt", Flapjack.Shape.one),
  ("ax", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ay", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body172_49, returnShape := (Flapjack.Shape.one) }
def simplifiedData172 : Decl (BitVec 64) :=
.function { name := "ec_add_affine", inline := false, exported := false, params := [("pt", Flapjack.Shape.one),
  ("ax", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ay", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body172_82, returnShape := (Flapjack.Shape.one) }
def original172 := Pancake.PanLang.declToHOL originalData172
def simplified172 := Pancake.PanLang.declToHOL simplifiedData172
end InitECandidate.Proofs.FrontendStages.Declarations
