import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify782
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body798_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body798_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body798_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "c_flag") (Flapjack.Exp.const 1#64)) body798_0 body798_1

def body798_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "xb", Flapjack.Exp.var Flapjack.VarKind.local "bs", Flapjack.Exp.const 48#64]

def body798_4 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "xb")
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 31#64])

def body798_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body798_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "xz") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "a_flag") (Flapjack.Exp.const 1#64)])) body798_0 body798_1

def body798_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_set_inf" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body798_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body798_9 : Prog (BitVec 64) :=
.seq body798_7 body798_8

def body798_10 : Prog (BitVec 64) :=
.seq body798_6 body798_9

def body798_11 : Prog (BitVec 64) :=
.decCall ("xz") (Flapjack.Shape.one) ("bls_fp_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "xc"]) body798_10

def body798_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "b_flag") (Flapjack.Exp.const 1#64)) body798_11 body798_1

def body798_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 0#64)) body798_0 body798_1

def body798_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "rhs"), none)) "bls_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "rhs", Flapjack.Exp.var Flapjack.VarKind.local "x"]

def body798_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "rhs"), none)) "bls_fp_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "rhs", Flapjack.Exp.var Flapjack.VarKind.local "b"]

def body798_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sq") (Flapjack.Exp.const 0#64)) body798_0 body798_1

def body798_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y"), none)) "bls_fp_neg"
  [Flapjack.Exp.var Flapjack.VarKind.local "y"]

def body798_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "hi")
  (Flapjack.Exp.var Flapjack.VarKind.local "a_flag")) body798_17 body798_1

def body798_19 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.var Flapjack.VarKind.local "x")

def body798_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "y")

def body798_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 8505329371266088957#64, Flapjack.Exp.const 17002214543764226050#64,
      Flapjack.Exp.const 6865905132761471162#64, Flapjack.Exp.const 8632934651105793861#64,
      Flapjack.Exp.const 6631298214892334189#64, Flapjack.Exp.const 1582556514881692819#64])

def body798_22 : Prog (BitVec 64) :=
.seq body798_21 body798_8

def body798_23 : Prog (BitVec 64) :=
.seq body798_20 body798_22

def body798_24 : Prog (BitVec 64) :=
.seq body798_19 body798_23

def body798_25 : Prog (BitVec 64) :=
.seq body798_18 body798_24

def body798_26 : Prog (BitVec 64) :=
.decCall ("hi") (Flapjack.Shape.one) ("bls_fp_is_high") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) body798_25

def body798_27 : Prog (BitVec 64) :=
.seq body798_16 body798_26

def body798_28 : Prog (BitVec 64) :=
.decCall ("sq") (Flapjack.Shape.one) ("bls_fp_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "chk", Flapjack.Exp.var Flapjack.VarKind.local "rhs"]) body798_27

def body798_29 : Prog (BitVec 64) :=
.decCall ("chk") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) body798_28

def body798_30 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_pow") ([Flapjack.Exp.var Flapjack.VarKind.local "rhs",
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1432#64],
  Flapjack.Exp.const 6#64]) body798_29

def body798_31 : Prog (BitVec 64) :=
.seq body798_15 body798_30

def body798_32 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 240#64])) body798_31

def body798_33 : Prog (BitVec 64) :=
.seq body798_14 body798_32

def body798_34 : Prog (BitVec 64) :=
.decCall ("rhs") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) body798_33

def body798_35 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_to_mont") ([Flapjack.Exp.var Flapjack.VarKind.local "xc"]) body798_34

def body798_36 : Prog (BitVec 64) :=
.seq body798_13 body798_35

def body798_37 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("bls_fp_lt_raw") ([Flapjack.Exp.var Flapjack.VarKind.local "xc",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13402431016077863595#64, Flapjack.Exp.const 2210141511517208575#64,
      Flapjack.Exp.const 7435674573564081700#64, Flapjack.Exp.const 7239337960414712511#64,
      Flapjack.Exp.const 5412103778470702295#64, Flapjack.Exp.const 1873798617647539866#64]]) body798_36

def body798_38 : Prog (BitVec 64) :=
.seq body798_12 body798_37

def body798_39 : Prog (BitVec 64) :=
.seq body798_5 body798_38

def body798_40 : Prog (BitVec 64) :=
.decCall ("xc") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_from_be48") ([Flapjack.Exp.var Flapjack.VarKind.local "xb"]) body798_39

def body798_41 : Prog (BitVec 64) :=
.seq body798_4 body798_40

def body798_42 : Prog (BitVec 64) :=
.seq body798_3 body798_41

def body798_43 : Prog (BitVec 64) :=
.decCall ("xb") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 48#64]) body798_42

def body798_44 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body798_43

def body798_45 : Prog (BitVec 64) :=
.seq body798_2 body798_44

def body798_46 : Prog (BitVec 64) :=
.dec ("a_flag") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 5#64),
    Flapjack.Exp.const 1#64]) body798_45

def body798_47 : Prog (BitVec 64) :=
.dec ("b_flag") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 6#64),
    Flapjack.Exp.const 1#64]) body798_46

def body798_48 : Prog (BitVec 64) :=
.dec ("c_flag") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 7#64),
    Flapjack.Exp.const 1#64]) body798_47

def body798_49 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "bs")) body798_48

def body798_50 : Prog (BitVec 64) :=
.seq body798_3 body798_4

def body798_51 : Prog (BitVec 64) :=
.seq body798_6 body798_7

def body798_52 : Prog (BitVec 64) :=
.seq body798_51 body798_8

def body798_53 : Prog (BitVec 64) :=
.decCall ("xz") (Flapjack.Shape.one) ("bls_fp_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "xc"]) body798_52

def body798_54 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "b_flag") (Flapjack.Exp.const 1#64)) body798_53 body798_1

def body798_55 : Prog (BitVec 64) :=
.seq body798_5 body798_54

def body798_56 : Prog (BitVec 64) :=
.seq body798_18 body798_19

def body798_57 : Prog (BitVec 64) :=
.seq body798_56 body798_20

def body798_58 : Prog (BitVec 64) :=
.seq body798_57 body798_21

def body798_59 : Prog (BitVec 64) :=
.seq body798_58 body798_8

def body798_60 : Prog (BitVec 64) :=
.decCall ("hi") (Flapjack.Shape.one) ("bls_fp_is_high") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) body798_59

def body798_61 : Prog (BitVec 64) :=
.seq body798_16 body798_60

def body798_62 : Prog (BitVec 64) :=
.decCall ("sq") (Flapjack.Shape.one) ("bls_fp_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "chk", Flapjack.Exp.var Flapjack.VarKind.local "rhs"]) body798_61

def body798_63 : Prog (BitVec 64) :=
.decCall ("chk") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) body798_62

def body798_64 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_pow") ([Flapjack.Exp.var Flapjack.VarKind.local "rhs",
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1432#64],
  Flapjack.Exp.const 6#64]) body798_63

def body798_65 : Prog (BitVec 64) :=
.seq body798_15 body798_64

def body798_66 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 240#64])) body798_65

def body798_67 : Prog (BitVec 64) :=
.seq body798_14 body798_66

def body798_68 : Prog (BitVec 64) :=
.decCall ("rhs") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) body798_67

def body798_69 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_to_mont") ([Flapjack.Exp.var Flapjack.VarKind.local "xc"]) body798_68

def body798_70 : Prog (BitVec 64) :=
.seq body798_13 body798_69

def body798_71 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("bls_fp_lt_raw") ([Flapjack.Exp.var Flapjack.VarKind.local "xc",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13402431016077863595#64, Flapjack.Exp.const 2210141511517208575#64,
      Flapjack.Exp.const 7435674573564081700#64, Flapjack.Exp.const 7239337960414712511#64,
      Flapjack.Exp.const 5412103778470702295#64, Flapjack.Exp.const 1873798617647539866#64]]) body798_70

def body798_72 : Prog (BitVec 64) :=
.seq body798_55 body798_71

def body798_73 : Prog (BitVec 64) :=
.decCall ("xc") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_from_be48") ([Flapjack.Exp.var Flapjack.VarKind.local "xb"]) body798_72

def body798_74 : Prog (BitVec 64) :=
.seq body798_50 body798_73

def body798_75 : Prog (BitVec 64) :=
.decCall ("xb") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 48#64]) body798_74

def body798_76 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body798_75

def body798_77 : Prog (BitVec 64) :=
.seq body798_2 body798_76

def body798_78 : Prog (BitVec 64) :=
.dec ("a_flag") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 5#64),
    Flapjack.Exp.const 1#64]) body798_77

def body798_79 : Prog (BitVec 64) :=
.dec ("b_flag") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 6#64),
    Flapjack.Exp.const 1#64]) body798_78

def body798_80 : Prog (BitVec 64) :=
.dec ("c_flag") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 7#64),
    Flapjack.Exp.const 1#64]) body798_79

def body798_81 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "bs")) body798_80

def originalData798 : Decl (BitVec 64) :=
.function { name := "kzg_decompress_g1", inline := false, exported := false, params := [("bs", Flapjack.Shape.one), ("r", Flapjack.Shape.one)], body := body798_49, returnShape := (Flapjack.Shape.one) }
def simplifiedData798 : Decl (BitVec 64) :=
.function { name := "kzg_decompress_g1", inline := false, exported := false, params := [("bs", Flapjack.Shape.one), ("r", Flapjack.Shape.one)], body := body798_81, returnShape := (Flapjack.Shape.one) }
def original798 := Pancake.PanLang.declToHOL originalData798
def simplified798 := Pancake.PanLang.declToHOL simplifiedData798
end InitECandidate.Proofs.FrontendStages.Declarations
