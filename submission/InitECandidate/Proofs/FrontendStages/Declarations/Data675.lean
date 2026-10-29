import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify659
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body675_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "p2",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 3#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]

def body675_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body675_2 : Prog (BitVec 64) :=
.seq body675_0 body675_1

def body675_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body675_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z1z") (Flapjack.Exp.const 1#64)) body675_2 body675_3

def body675_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "p1",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 3#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]

def body675_6 : Prog (BitVec 64) :=
.seq body675_5 body675_1

def body675_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z2z") (Flapjack.Exp.const 1#64)) body675_6 body675_3

def body675_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "U1",
    Flapjack.Exp.var Flapjack.VarKind.local "y2", Flapjack.Exp.var Flapjack.VarKind.local "z1"]

def body675_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "U2",
    Flapjack.Exp.var Flapjack.VarKind.local "y1", Flapjack.Exp.var Flapjack.VarKind.local "z2"]

def body675_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "V1",
    Flapjack.Exp.var Flapjack.VarKind.local "x2", Flapjack.Exp.var Flapjack.VarKind.local "z1"]

def body675_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "V2",
    Flapjack.Exp.var Flapjack.VarKind.local "x1", Flapjack.Exp.var Flapjack.VarKind.local "z2"]

def body675_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body675_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_double"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.var Flapjack.VarKind.local "p1"]

def body675_14 : Prog (BitVec 64) :=
.seq body675_13 body675_1

def body675_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ueq") (Flapjack.Exp.const 1#64)) body675_14 body675_3

def body675_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_set_inf"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body675_17 : Prog (BitVec 64) :=
.seq body675_16 body675_1

def body675_18 : Prog (BitVec 64) :=
.seq body675_15 body675_17

def body675_19 : Prog (BitVec 64) :=
.seq body675_12 body675_18

def body675_20 : Prog (BitVec 64) :=
.decCall ("ueq") (Flapjack.Shape.one) ("fe_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "U1",
  Flapjack.Exp.var Flapjack.VarKind.local "U2"]) body675_19

def body675_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "veq") (Flapjack.Exp.const 1#64)) body675_20 body675_3

def body675_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "U",
    Flapjack.Exp.var Flapjack.VarKind.local "U1", Flapjack.Exp.var Flapjack.VarKind.local "U2"]

def body675_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "V",
    Flapjack.Exp.var Flapjack.VarKind.local "V1", Flapjack.Exp.var Flapjack.VarKind.local "V2"]

def body675_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "Vsq",
    Flapjack.Exp.var Flapjack.VarKind.local "V"]

def body675_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "VsqV2",
    Flapjack.Exp.var Flapjack.VarKind.local "Vsq", Flapjack.Exp.var Flapjack.VarKind.local "V2"]

def body675_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "Vcu",
    Flapjack.Exp.var Flapjack.VarKind.local "V", Flapjack.Exp.var Flapjack.VarKind.local "Vsq"]

def body675_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "W",
    Flapjack.Exp.var Flapjack.VarKind.local "z1", Flapjack.Exp.var Flapjack.VarKind.local "z2"]

def body675_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "A",
    Flapjack.Exp.var Flapjack.VarKind.local "U"]

def body675_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "A",
    Flapjack.Exp.var Flapjack.VarKind.local "A", Flapjack.Exp.var Flapjack.VarKind.local "W"]

def body675_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "A",
    Flapjack.Exp.var Flapjack.VarKind.local "A", Flapjack.Exp.var Flapjack.VarKind.local "Vcu"]

def body675_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul_small"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T",
    Flapjack.Exp.var Flapjack.VarKind.local "VsqV2", Flapjack.Exp.const 2#64]

def body675_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "A",
    Flapjack.Exp.var Flapjack.VarKind.local "A", Flapjack.Exp.var Flapjack.VarKind.local "T"]

def body675_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T",
    Flapjack.Exp.var Flapjack.VarKind.local "V", Flapjack.Exp.var Flapjack.VarKind.local "A"]

def body675_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "V",
    Flapjack.Exp.var Flapjack.VarKind.local "VsqV2", Flapjack.Exp.var Flapjack.VarKind.local "A"]

def body675_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "V",
    Flapjack.Exp.var Flapjack.VarKind.local "U", Flapjack.Exp.var Flapjack.VarKind.local "V"]

def body675_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "U1",
    Flapjack.Exp.var Flapjack.VarKind.local "Vcu", Flapjack.Exp.var Flapjack.VarKind.local "U2"]

def body675_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "V",
    Flapjack.Exp.var Flapjack.VarKind.local "V", Flapjack.Exp.var Flapjack.VarKind.local "U1"]

def body675_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "W",
    Flapjack.Exp.var Flapjack.VarKind.local "Vcu", Flapjack.Exp.var Flapjack.VarKind.local "W"]

def body675_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "T",
    Flapjack.Exp.var Flapjack.VarKind.local "esz"]

def body675_40 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "esz"],
    Flapjack.Exp.var Flapjack.VarKind.local "V", Flapjack.Exp.var Flapjack.VarKind.local "esz"]

def body675_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "out",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]],
    Flapjack.Exp.var Flapjack.VarKind.local "W", Flapjack.Exp.var Flapjack.VarKind.local "esz"]

def body675_42 : Prog (BitVec 64) :=
.seq body675_12 body675_1

def body675_43 : Prog (BitVec 64) :=
.seq body675_41 body675_42

def body675_44 : Prog (BitVec 64) :=
.seq body675_40 body675_43

def body675_45 : Prog (BitVec 64) :=
.seq body675_39 body675_44

def body675_46 : Prog (BitVec 64) :=
.seq body675_38 body675_45

def body675_47 : Prog (BitVec 64) :=
.seq body675_37 body675_46

def body675_48 : Prog (BitVec 64) :=
.seq body675_36 body675_47

def body675_49 : Prog (BitVec 64) :=
.seq body675_35 body675_48

def body675_50 : Prog (BitVec 64) :=
.seq body675_34 body675_49

def body675_51 : Prog (BitVec 64) :=
.seq body675_33 body675_50

def body675_52 : Prog (BitVec 64) :=
.seq body675_32 body675_51

def body675_53 : Prog (BitVec 64) :=
.seq body675_31 body675_52

def body675_54 : Prog (BitVec 64) :=
.seq body675_30 body675_53

def body675_55 : Prog (BitVec 64) :=
.seq body675_29 body675_54

def body675_56 : Prog (BitVec 64) :=
.seq body675_28 body675_55

def body675_57 : Prog (BitVec 64) :=
.seq body675_27 body675_56

def body675_58 : Prog (BitVec 64) :=
.seq body675_26 body675_57

def body675_59 : Prog (BitVec 64) :=
.seq body675_25 body675_58

def body675_60 : Prog (BitVec 64) :=
.seq body675_24 body675_59

def body675_61 : Prog (BitVec 64) :=
.seq body675_23 body675_60

def body675_62 : Prog (BitVec 64) :=
.seq body675_22 body675_61

def body675_63 : Prog (BitVec 64) :=
.decCall ("T") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_62

def body675_64 : Prog (BitVec 64) :=
.decCall ("A") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_63

def body675_65 : Prog (BitVec 64) :=
.decCall ("W") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_64

def body675_66 : Prog (BitVec 64) :=
.decCall ("Vcu") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_65

def body675_67 : Prog (BitVec 64) :=
.decCall ("VsqV2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_66

def body675_68 : Prog (BitVec 64) :=
.decCall ("Vsq") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_67

def body675_69 : Prog (BitVec 64) :=
.decCall ("V") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_68

def body675_70 : Prog (BitVec 64) :=
.decCall ("U") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_69

def body675_71 : Prog (BitVec 64) :=
.seq body675_21 body675_70

def body675_72 : Prog (BitVec 64) :=
.decCall ("veq") (Flapjack.Shape.one) ("fe_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "V1",
  Flapjack.Exp.var Flapjack.VarKind.local "V2"]) body675_71

def body675_73 : Prog (BitVec 64) :=
.seq body675_11 body675_72

def body675_74 : Prog (BitVec 64) :=
.seq body675_10 body675_73

def body675_75 : Prog (BitVec 64) :=
.seq body675_9 body675_74

def body675_76 : Prog (BitVec 64) :=
.seq body675_8 body675_75

def body675_77 : Prog (BitVec 64) :=
.decCall ("V2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_76

def body675_78 : Prog (BitVec 64) :=
.decCall ("V1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_77

def body675_79 : Prog (BitVec 64) :=
.decCall ("U2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_78

def body675_80 : Prog (BitVec 64) :=
.decCall ("U1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_79

def body675_81 : Prog (BitVec 64) :=
.dec ("z2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "p2",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]) body675_80

def body675_82 : Prog (BitVec 64) :=
.dec ("y2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "p2", Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_81

def body675_83 : Prog (BitVec 64) :=
.dec ("x2") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p2") body675_82

def body675_84 : Prog (BitVec 64) :=
.dec ("z1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "p1",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]) body675_83

def body675_85 : Prog (BitVec 64) :=
.dec ("y1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_84

def body675_86 : Prog (BitVec 64) :=
.dec ("x1") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p1") body675_85

def body675_87 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body675_86

def body675_88 : Prog (BitVec 64) :=
.seq body675_7 body675_87

def body675_89 : Prog (BitVec 64) :=
.decCall ("z2z") (Flapjack.Shape.one) ("fe_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "fld",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p2",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]]) body675_88

def body675_90 : Prog (BitVec 64) :=
.seq body675_4 body675_89

def body675_91 : Prog (BitVec 64) :=
.decCall ("z1z") (Flapjack.Shape.one) ("fe_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "fld",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p1",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]]) body675_90

def body675_92 : Prog (BitVec 64) :=
.dec ("esz") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.const 32#64]) body675_91

def body675_93 : Prog (BitVec 64) :=
.seq body675_8 body675_9

def body675_94 : Prog (BitVec 64) :=
.seq body675_93 body675_10

def body675_95 : Prog (BitVec 64) :=
.seq body675_94 body675_11

def body675_96 : Prog (BitVec 64) :=
.seq body675_12 body675_15

def body675_97 : Prog (BitVec 64) :=
.seq body675_96 body675_16

def body675_98 : Prog (BitVec 64) :=
.seq body675_97 body675_1

def body675_99 : Prog (BitVec 64) :=
.decCall ("ueq") (Flapjack.Shape.one) ("fe_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "U1",
  Flapjack.Exp.var Flapjack.VarKind.local "U2"]) body675_98

def body675_100 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "veq") (Flapjack.Exp.const 1#64)) body675_99 body675_3

def body675_101 : Prog (BitVec 64) :=
.seq body675_22 body675_23

def body675_102 : Prog (BitVec 64) :=
.seq body675_101 body675_24

def body675_103 : Prog (BitVec 64) :=
.seq body675_102 body675_25

def body675_104 : Prog (BitVec 64) :=
.seq body675_103 body675_26

def body675_105 : Prog (BitVec 64) :=
.seq body675_104 body675_27

def body675_106 : Prog (BitVec 64) :=
.seq body675_105 body675_28

def body675_107 : Prog (BitVec 64) :=
.seq body675_106 body675_29

def body675_108 : Prog (BitVec 64) :=
.seq body675_107 body675_30

def body675_109 : Prog (BitVec 64) :=
.seq body675_108 body675_31

def body675_110 : Prog (BitVec 64) :=
.seq body675_109 body675_32

def body675_111 : Prog (BitVec 64) :=
.seq body675_110 body675_33

def body675_112 : Prog (BitVec 64) :=
.seq body675_111 body675_34

def body675_113 : Prog (BitVec 64) :=
.seq body675_112 body675_35

def body675_114 : Prog (BitVec 64) :=
.seq body675_113 body675_36

def body675_115 : Prog (BitVec 64) :=
.seq body675_114 body675_37

def body675_116 : Prog (BitVec 64) :=
.seq body675_115 body675_38

def body675_117 : Prog (BitVec 64) :=
.seq body675_116 body675_39

def body675_118 : Prog (BitVec 64) :=
.seq body675_117 body675_40

def body675_119 : Prog (BitVec 64) :=
.seq body675_118 body675_41

def body675_120 : Prog (BitVec 64) :=
.seq body675_119 body675_12

def body675_121 : Prog (BitVec 64) :=
.seq body675_120 body675_1

def body675_122 : Prog (BitVec 64) :=
.decCall ("T") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_121

def body675_123 : Prog (BitVec 64) :=
.decCall ("A") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_122

def body675_124 : Prog (BitVec 64) :=
.decCall ("W") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_123

def body675_125 : Prog (BitVec 64) :=
.decCall ("Vcu") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_124

def body675_126 : Prog (BitVec 64) :=
.decCall ("VsqV2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_125

def body675_127 : Prog (BitVec 64) :=
.decCall ("Vsq") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_126

def body675_128 : Prog (BitVec 64) :=
.decCall ("V") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_127

def body675_129 : Prog (BitVec 64) :=
.decCall ("U") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_128

def body675_130 : Prog (BitVec 64) :=
.seq body675_100 body675_129

def body675_131 : Prog (BitVec 64) :=
.decCall ("veq") (Flapjack.Shape.one) ("fe_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "V1",
  Flapjack.Exp.var Flapjack.VarKind.local "V2"]) body675_130

def body675_132 : Prog (BitVec 64) :=
.seq body675_95 body675_131

def body675_133 : Prog (BitVec 64) :=
.decCall ("V2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_132

def body675_134 : Prog (BitVec 64) :=
.decCall ("V1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_133

def body675_135 : Prog (BitVec 64) :=
.decCall ("U2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_134

def body675_136 : Prog (BitVec 64) :=
.decCall ("U1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_135

def body675_137 : Prog (BitVec 64) :=
.dec ("z2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "p2",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]) body675_136

def body675_138 : Prog (BitVec 64) :=
.dec ("y2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "p2", Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_137

def body675_139 : Prog (BitVec 64) :=
.dec ("x2") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p2") body675_138

def body675_140 : Prog (BitVec 64) :=
.dec ("z1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "p1",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]) body675_139

def body675_141 : Prog (BitVec 64) :=
.dec ("y1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body675_140

def body675_142 : Prog (BitVec 64) :=
.dec ("x1") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p1") body675_141

def body675_143 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body675_142

def body675_144 : Prog (BitVec 64) :=
.seq body675_7 body675_143

def body675_145 : Prog (BitVec 64) :=
.decCall ("z2z") (Flapjack.Shape.one) ("fe_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "fld",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p2",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]]) body675_144

def body675_146 : Prog (BitVec 64) :=
.seq body675_4 body675_145

def body675_147 : Prog (BitVec 64) :=
.decCall ("z1z") (Flapjack.Shape.one) ("fe_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "fld",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p1",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]]) body675_146

def body675_148 : Prog (BitVec 64) :=
.dec ("esz") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.const 32#64]) body675_147

def originalData675 : Decl (BitVec 64) :=
.function { name := "ecp_add", inline := false, exported := false, params := [("fld", Flapjack.Shape.one), ("out", Flapjack.Shape.one), ("p1", Flapjack.Shape.one), ("p2", Flapjack.Shape.one)], body := body675_92, returnShape := (Flapjack.Shape.one) }
def simplifiedData675 : Decl (BitVec 64) :=
.function { name := "ecp_add", inline := false, exported := false, params := [("fld", Flapjack.Shape.one), ("out", Flapjack.Shape.one), ("p1", Flapjack.Shape.one), ("p2", Flapjack.Shape.one)], body := body675_148, returnShape := (Flapjack.Shape.one) }
def original675 := Pancake.PanLang.declToHOL originalData675
def simplified675 := Pancake.PanLang.declToHOL simplifiedData675
end InitECandidate.Proofs.FrontendStages.Declarations
