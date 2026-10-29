import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify629
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body645_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body645_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body645_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "rz") (Flapjack.Exp.const 1#64)) body645_0 body645_1

def body645_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "rlt") (Flapjack.Exp.const 0#64)) body645_0 body645_1

def body645_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sz") (Flapjack.Exp.const 1#64)) body645_0 body645_1

def body645_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "slt") (Flapjack.Exp.const 0#64)) body645_0 body645_1

def body645_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "xlt") (Flapjack.Exp.const 0#64)) body645_0 body645_1

def body645_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ylt") (Flapjack.Exp.const 0#64)) body645_0 body645_1

def body645_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qx"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qx"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "qx"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "qx"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qy"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qy"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "qy"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "qy")])
  (Flapjack.Exp.const 0#64)) body645_0 body645_1

def body645_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "onc") (Flapjack.Exp.const 0#64)) body645_0 body645_1

def body645_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "e"), none)) "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "e",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 17562291160714782033#64, Flapjack.Exp.const 13611842547513532036#64,
        Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744069414584320#64]]

def body645_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "elt") (Flapjack.Exp.const 0#64)) body645_10 body645_1

def body645_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "p256_ec_mul2"
  [Flapjack.Exp.var Flapjack.VarKind.local "pr", Flapjack.Exp.var Flapjack.VarKind.local "u1",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 17627433388654248598#64, Flapjack.Exp.const 8575836109218198432#64,
        Flapjack.Exp.const 17923454489921339634#64, Flapjack.Exp.const 7716867327612699207#64],
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 14678990851816772085#64, Flapjack.Exp.const 3156516839386865358#64,
        Flapjack.Exp.const 10297457778147434006#64, Flapjack.Exp.const 5756518291402817435#64],
    Flapjack.Exp.var Flapjack.VarKind.local "u2", Flapjack.Exp.var Flapjack.VarKind.local "qx",
    Flapjack.Exp.var Flapjack.VarKind.local "qy"]

def body645_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body645_14 : Prog (BitVec 64) :=
.seq body645_13 body645_0

def body645_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "zz") (Flapjack.Exp.const 1#64)) body645_14 body645_1

def body645_16 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body645_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 1#64)) body645_16 body645_1

def body645_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "rn"))
  (Flapjack.Exp.const 1#64)) body645_0 body645_1

def body645_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "rnlt") (Flapjack.Exp.const 0#64)) body645_0 body645_1

def body645_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "p256_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "rn4", Flapjack.Exp.var Flapjack.VarKind.local "z2"]

def body645_21 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_eq"
  [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "x"]

def body645_22 : Prog (BitVec 64) :=
.seq body645_20 body645_21

def body645_23 : Prog (BitVec 64) :=
.seq body645_19 body645_22

def body645_24 : Prog (BitVec 64) :=
.decCall ("rnlt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "rn4",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 18446744069414584321#64]]) body645_23

def body645_25 : Prog (BitVec 64) :=
.dec ("rn4") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "rn"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "rn"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "rn"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "rn")]) body645_24

def body645_26 : Prog (BitVec 64) :=
.seq body645_18 body645_25

def body645_27 : Prog (BitVec 64) :=
.decCall ("rn") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 17562291160714782033#64, Flapjack.Exp.const 13611842547513532036#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744069414584320#64]]) body645_26

def body645_28 : Prog (BitVec 64) :=
.seq body645_17 body645_27

def body645_29 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "x"]) body645_28

def body645_30 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "z2"]) body645_29

def body645_31 : Prog (BitVec 64) :=
.seq body645_13 body645_30

def body645_32 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pr")) body645_31

def body645_33 : Prog (BitVec 64) :=
.decCall ("z2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "z"]) body645_32

def body645_34 : Prog (BitVec 64) :=
.seq body645_15 body645_33

def body645_35 : Prog (BitVec 64) :=
.decCall ("zz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "z"]) body645_34

def body645_36 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pr", Flapjack.Exp.const 64#64])) body645_35

def body645_37 : Prog (BitVec 64) :=
.seq body645_12 body645_36

def body645_38 : Prog (BitVec 64) :=
.decCall ("pr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body645_37

def body645_39 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body645_38

def body645_40 : Prog (BitVec 64) :=
.decCall ("u2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mulmod") ([Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "sinv",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 17562291160714782033#64, Flapjack.Exp.const 13611842547513532036#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744069414584320#64]]) body645_39

def body645_41 : Prog (BitVec 64) :=
.decCall ("u1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mulmod") ([Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.var Flapjack.VarKind.local "sinv",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 17562291160714782033#64, Flapjack.Exp.const 13611842547513532036#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744069414584320#64]]) body645_40

def body645_42 : Prog (BitVec 64) :=
.decCall ("sinv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("modinv_bin") ([Flapjack.Exp.var Flapjack.VarKind.local "s",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 17562291160714782033#64, Flapjack.Exp.const 13611842547513532036#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744069414584320#64]]) body645_41

def body645_43 : Prog (BitVec 64) :=
.seq body645_11 body645_42

def body645_44 : Prog (BitVec 64) :=
.decCall ("elt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "e",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 17562291160714782033#64, Flapjack.Exp.const 13611842547513532036#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744069414584320#64]]) body645_43

def body645_45 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "hash32", Flapjack.Exp.const 32#64]) body645_44

def body645_46 : Prog (BitVec 64) :=
.seq body645_9 body645_45

def body645_47 : Prog (BitVec 64) :=
.decCall ("onc") (Flapjack.Shape.one) ("p256_on_curve") ([Flapjack.Exp.var Flapjack.VarKind.local "qx", Flapjack.Exp.var Flapjack.VarKind.local "qy"]) body645_46

def body645_48 : Prog (BitVec 64) :=
.seq body645_8 body645_47

def body645_49 : Prog (BitVec 64) :=
.seq body645_7 body645_48

def body645_50 : Prog (BitVec 64) :=
.decCall ("ylt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "qy",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 18446744069414584321#64]]) body645_49

def body645_51 : Prog (BitVec 64) :=
.seq body645_6 body645_50

def body645_52 : Prog (BitVec 64) :=
.decCall ("xlt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "qx",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 18446744069414584321#64]]) body645_51

def body645_53 : Prog (BitVec 64) :=
.seq body645_5 body645_52

def body645_54 : Prog (BitVec 64) :=
.decCall ("slt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "s",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 17562291160714782033#64, Flapjack.Exp.const 13611842547513532036#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744069414584320#64]]) body645_53

def body645_55 : Prog (BitVec 64) :=
.seq body645_4 body645_54

def body645_56 : Prog (BitVec 64) :=
.decCall ("sz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "s"]) body645_55

def body645_57 : Prog (BitVec 64) :=
.seq body645_3 body645_56

def body645_58 : Prog (BitVec 64) :=
.decCall ("rlt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 17562291160714782033#64, Flapjack.Exp.const 13611842547513532036#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744069414584320#64]]) body645_57

def body645_59 : Prog (BitVec 64) :=
.seq body645_2 body645_58

def body645_60 : Prog (BitVec 64) :=
.decCall ("rz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "r"]) body645_59

def body645_61 : Prog (BitVec 64) :=
.seq body645_7 body645_8

def body645_62 : Prog (BitVec 64) :=
.seq body645_19 body645_20

def body645_63 : Prog (BitVec 64) :=
.seq body645_62 body645_21

def body645_64 : Prog (BitVec 64) :=
.decCall ("rnlt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "rn4",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 18446744069414584321#64]]) body645_63

def body645_65 : Prog (BitVec 64) :=
.dec ("rn4") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "rn"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "rn"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "rn"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "rn")]) body645_64

def body645_66 : Prog (BitVec 64) :=
.seq body645_18 body645_65

def body645_67 : Prog (BitVec 64) :=
.decCall ("rn") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 17562291160714782033#64, Flapjack.Exp.const 13611842547513532036#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744069414584320#64]]) body645_66

def body645_68 : Prog (BitVec 64) :=
.seq body645_17 body645_67

def body645_69 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "x"]) body645_68

def body645_70 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "z2"]) body645_69

def body645_71 : Prog (BitVec 64) :=
.seq body645_13 body645_70

def body645_72 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pr")) body645_71

def body645_73 : Prog (BitVec 64) :=
.decCall ("z2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "z"]) body645_72

def body645_74 : Prog (BitVec 64) :=
.seq body645_15 body645_73

def body645_75 : Prog (BitVec 64) :=
.decCall ("zz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "z"]) body645_74

def body645_76 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pr", Flapjack.Exp.const 64#64])) body645_75

def body645_77 : Prog (BitVec 64) :=
.seq body645_12 body645_76

def body645_78 : Prog (BitVec 64) :=
.decCall ("pr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body645_77

def body645_79 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body645_78

def body645_80 : Prog (BitVec 64) :=
.decCall ("u2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mulmod") ([Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "sinv",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 17562291160714782033#64, Flapjack.Exp.const 13611842547513532036#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744069414584320#64]]) body645_79

def body645_81 : Prog (BitVec 64) :=
.decCall ("u1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mulmod") ([Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.var Flapjack.VarKind.local "sinv",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 17562291160714782033#64, Flapjack.Exp.const 13611842547513532036#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744069414584320#64]]) body645_80

def body645_82 : Prog (BitVec 64) :=
.decCall ("sinv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("modinv_bin") ([Flapjack.Exp.var Flapjack.VarKind.local "s",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 17562291160714782033#64, Flapjack.Exp.const 13611842547513532036#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744069414584320#64]]) body645_81

def body645_83 : Prog (BitVec 64) :=
.seq body645_11 body645_82

def body645_84 : Prog (BitVec 64) :=
.decCall ("elt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "e",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 17562291160714782033#64, Flapjack.Exp.const 13611842547513532036#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744069414584320#64]]) body645_83

def body645_85 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "hash32", Flapjack.Exp.const 32#64]) body645_84

def body645_86 : Prog (BitVec 64) :=
.seq body645_9 body645_85

def body645_87 : Prog (BitVec 64) :=
.decCall ("onc") (Flapjack.Shape.one) ("p256_on_curve") ([Flapjack.Exp.var Flapjack.VarKind.local "qx", Flapjack.Exp.var Flapjack.VarKind.local "qy"]) body645_86

def body645_88 : Prog (BitVec 64) :=
.seq body645_61 body645_87

def body645_89 : Prog (BitVec 64) :=
.decCall ("ylt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "qy",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 18446744069414584321#64]]) body645_88

def body645_90 : Prog (BitVec 64) :=
.seq body645_6 body645_89

def body645_91 : Prog (BitVec 64) :=
.decCall ("xlt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "qx",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 18446744069414584321#64]]) body645_90

def body645_92 : Prog (BitVec 64) :=
.seq body645_5 body645_91

def body645_93 : Prog (BitVec 64) :=
.decCall ("slt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "s",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 17562291160714782033#64, Flapjack.Exp.const 13611842547513532036#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744069414584320#64]]) body645_92

def body645_94 : Prog (BitVec 64) :=
.seq body645_4 body645_93

def body645_95 : Prog (BitVec 64) :=
.decCall ("sz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "s"]) body645_94

def body645_96 : Prog (BitVec 64) :=
.seq body645_3 body645_95

def body645_97 : Prog (BitVec 64) :=
.decCall ("rlt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 17562291160714782033#64, Flapjack.Exp.const 13611842547513532036#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744069414584320#64]]) body645_96

def body645_98 : Prog (BitVec 64) :=
.seq body645_2 body645_97

def body645_99 : Prog (BitVec 64) :=
.decCall ("rz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "r"]) body645_98

def originalData645 : Decl (BitVec 64) :=
.function { name := "p256_verify", inline := false, exported := false, params := [("hash32", Flapjack.Shape.one),
  ("r", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("s", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("qx", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("qy", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body645_60, returnShape := (Flapjack.Shape.one) }
def simplifiedData645 : Decl (BitVec 64) :=
.function { name := "p256_verify", inline := false, exported := false, params := [("hash32", Flapjack.Shape.one),
  ("r", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("s", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("qx", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("qy", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body645_99, returnShape := (Flapjack.Shape.one) }
def original645 := Pancake.PanLang.declToHOL originalData645
def simplified645 := Pancake.PanLang.declToHOL simplifiedData645
end InitECandidate.Proofs.FrontendStages.Declarations
