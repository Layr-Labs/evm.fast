import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify768
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body784_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "zsq", Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def body784_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "ysq", Flapjack.Exp.var Flapjack.VarKind.local "qy"]

def body784_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.var Flapjack.VarKind.local "zsq",
    Flapjack.Exp.var Flapjack.VarKind.local "qx"]

def body784_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "qy",
    Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def body784_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def body784_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "ysq"]

def body784_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "zsq"]

def body784_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "zsq"]

def body784_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "t0",
    Flapjack.Exp.var Flapjack.VarKind.local "rx"]

def body784_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "t3", Flapjack.Exp.var Flapjack.VarKind.local "t2"]

def body784_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "t4", Flapjack.Exp.var Flapjack.VarKind.local "t3",
    Flapjack.Exp.var Flapjack.VarKind.local "t3"]

def body784_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "t4", Flapjack.Exp.var Flapjack.VarKind.local "t4",
    Flapjack.Exp.var Flapjack.VarKind.local "t4"]

def body784_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t5", Flapjack.Exp.var Flapjack.VarKind.local "t4",
    Flapjack.Exp.var Flapjack.VarKind.local "t2"]

def body784_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t6", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "ry"]

def body784_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t6", Flapjack.Exp.var Flapjack.VarKind.local "t6",
    Flapjack.Exp.var Flapjack.VarKind.local "ry"]

def body784_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t9", Flapjack.Exp.var Flapjack.VarKind.local "t6",
    Flapjack.Exp.var Flapjack.VarKind.local "qx"]

def body784_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t7", Flapjack.Exp.var Flapjack.VarKind.local "t4",
    Flapjack.Exp.var Flapjack.VarKind.local "rx"]

def body784_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.var Flapjack.VarKind.local "t6"]

def body784_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.var Flapjack.VarKind.local "t0",
    Flapjack.Exp.var Flapjack.VarKind.local "t5"]

def body784_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.var Flapjack.VarKind.local "t0",
    Flapjack.Exp.var Flapjack.VarKind.local "t7"]

def body784_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "t2"]

def body784_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def body784_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "zsq"]

def body784_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "t3"]

def body784_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "t10", Flapjack.Exp.var Flapjack.VarKind.local "qy",
    Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def body784_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t7", Flapjack.Exp.var Flapjack.VarKind.local "t7",
    Flapjack.Exp.var Flapjack.VarKind.local "t0"]

def body784_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t7", Flapjack.Exp.var Flapjack.VarKind.local "t7",
    Flapjack.Exp.var Flapjack.VarKind.local "t6"]

def body784_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "ry",
    Flapjack.Exp.var Flapjack.VarKind.local "t5"]

def body784_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def body784_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "ry", Flapjack.Exp.var Flapjack.VarKind.local "t7",
    Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def body784_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "rx", Flapjack.Exp.var Flapjack.VarKind.local "t0"]

def body784_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "t10", Flapjack.Exp.var Flapjack.VarKind.local "t10"]

def body784_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t10", Flapjack.Exp.var Flapjack.VarKind.local "t10",
    Flapjack.Exp.var Flapjack.VarKind.local "ysq"]

def body784_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def body784_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t10", Flapjack.Exp.var Flapjack.VarKind.local "t10",
    Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def body784_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "t9", Flapjack.Exp.var Flapjack.VarKind.local "t9",
    Flapjack.Exp.var Flapjack.VarKind.local "t9"]

def body784_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "t9", Flapjack.Exp.var Flapjack.VarKind.local "t10"]

def body784_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def body784_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_neg"
  [Flapjack.Exp.var Flapjack.VarKind.local "t6", Flapjack.Exp.var Flapjack.VarKind.local "t6"]

def body784_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "t6", Flapjack.Exp.var Flapjack.VarKind.local "t6"]

def body784_40 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body784_41 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body784_42 : Prog (BitVec 64) :=
.seq body784_40 body784_41

def body784_43 : Prog (BitVec 64) :=
.seq body784_39 body784_42

def body784_44 : Prog (BitVec 64) :=
.seq body784_38 body784_43

def body784_45 : Prog (BitVec 64) :=
.seq body784_37 body784_44

def body784_46 : Prog (BitVec 64) :=
.seq body784_36 body784_45

def body784_47 : Prog (BitVec 64) :=
.seq body784_35 body784_46

def body784_48 : Prog (BitVec 64) :=
.seq body784_34 body784_47

def body784_49 : Prog (BitVec 64) :=
.seq body784_33 body784_48

def body784_50 : Prog (BitVec 64) :=
.seq body784_32 body784_49

def body784_51 : Prog (BitVec 64) :=
.seq body784_31 body784_50

def body784_52 : Prog (BitVec 64) :=
.seq body784_30 body784_51

def body784_53 : Prog (BitVec 64) :=
.seq body784_29 body784_52

def body784_54 : Prog (BitVec 64) :=
.seq body784_28 body784_53

def body784_55 : Prog (BitVec 64) :=
.seq body784_27 body784_54

def body784_56 : Prog (BitVec 64) :=
.seq body784_26 body784_55

def body784_57 : Prog (BitVec 64) :=
.seq body784_25 body784_56

def body784_58 : Prog (BitVec 64) :=
.seq body784_24 body784_57

def body784_59 : Prog (BitVec 64) :=
.seq body784_23 body784_58

def body784_60 : Prog (BitVec 64) :=
.seq body784_22 body784_59

def body784_61 : Prog (BitVec 64) :=
.seq body784_21 body784_60

def body784_62 : Prog (BitVec 64) :=
.seq body784_20 body784_61

def body784_63 : Prog (BitVec 64) :=
.seq body784_19 body784_62

def body784_64 : Prog (BitVec 64) :=
.seq body784_19 body784_63

def body784_65 : Prog (BitVec 64) :=
.seq body784_18 body784_64

def body784_66 : Prog (BitVec 64) :=
.seq body784_17 body784_65

def body784_67 : Prog (BitVec 64) :=
.seq body784_16 body784_66

def body784_68 : Prog (BitVec 64) :=
.seq body784_15 body784_67

def body784_69 : Prog (BitVec 64) :=
.seq body784_14 body784_68

def body784_70 : Prog (BitVec 64) :=
.seq body784_13 body784_69

def body784_71 : Prog (BitVec 64) :=
.seq body784_12 body784_70

def body784_72 : Prog (BitVec 64) :=
.seq body784_11 body784_71

def body784_73 : Prog (BitVec 64) :=
.seq body784_10 body784_72

def body784_74 : Prog (BitVec 64) :=
.seq body784_9 body784_73

def body784_75 : Prog (BitVec 64) :=
.seq body784_8 body784_74

def body784_76 : Prog (BitVec 64) :=
.seq body784_7 body784_75

def body784_77 : Prog (BitVec 64) :=
.seq body784_6 body784_76

def body784_78 : Prog (BitVec 64) :=
.seq body784_5 body784_77

def body784_79 : Prog (BitVec 64) :=
.seq body784_4 body784_78

def body784_80 : Prog (BitVec 64) :=
.seq body784_3 body784_79

def body784_81 : Prog (BitVec 64) :=
.seq body784_2 body784_80

def body784_82 : Prog (BitVec 64) :=
.seq body784_1 body784_81

def body784_83 : Prog (BitVec 64) :=
.seq body784_0 body784_82

def body784_84 : Prog (BitVec 64) :=
.dec ("rz") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 192#64]) body784_83

def body784_85 : Prog (BitVec 64) :=
.dec ("ry") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 96#64]) body784_84

def body784_86 : Prog (BitVec 64) :=
.dec ("rx") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "rp") body784_85

def body784_87 : Prog (BitVec 64) :=
.dec ("t10") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1056#64]) body784_86

def body784_88 : Prog (BitVec 64) :=
.dec ("t9") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 960#64]) body784_87

def body784_89 : Prog (BitVec 64) :=
.dec ("t7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 864#64]) body784_88

def body784_90 : Prog (BitVec 64) :=
.dec ("t6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 768#64]) body784_89

def body784_91 : Prog (BitVec 64) :=
.dec ("t5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64]) body784_90

def body784_92 : Prog (BitVec 64) :=
.dec ("t4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) body784_91

def body784_93 : Prog (BitVec 64) :=
.dec ("t3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64]) body784_92

def body784_94 : Prog (BitVec 64) :=
.dec ("t2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]) body784_93

def body784_95 : Prog (BitVec 64) :=
.dec ("t1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) body784_94

def body784_96 : Prog (BitVec 64) :=
.dec ("t0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64]) body784_95

def body784_97 : Prog (BitVec 64) :=
.dec ("ysq") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]) body784_96

def body784_98 : Prog (BitVec 64) :=
.dec ("zsq") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body784_97

def body784_99 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 12#64]]) body784_98

def body784_100 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body784_99

def body784_101 : Prog (BitVec 64) :=
.seq body784_0 body784_1

def body784_102 : Prog (BitVec 64) :=
.seq body784_101 body784_2

def body784_103 : Prog (BitVec 64) :=
.seq body784_102 body784_3

def body784_104 : Prog (BitVec 64) :=
.seq body784_103 body784_4

def body784_105 : Prog (BitVec 64) :=
.seq body784_104 body784_5

def body784_106 : Prog (BitVec 64) :=
.seq body784_105 body784_6

def body784_107 : Prog (BitVec 64) :=
.seq body784_106 body784_7

def body784_108 : Prog (BitVec 64) :=
.seq body784_107 body784_8

def body784_109 : Prog (BitVec 64) :=
.seq body784_108 body784_9

def body784_110 : Prog (BitVec 64) :=
.seq body784_109 body784_10

def body784_111 : Prog (BitVec 64) :=
.seq body784_110 body784_11

def body784_112 : Prog (BitVec 64) :=
.seq body784_111 body784_12

def body784_113 : Prog (BitVec 64) :=
.seq body784_112 body784_13

def body784_114 : Prog (BitVec 64) :=
.seq body784_113 body784_14

def body784_115 : Prog (BitVec 64) :=
.seq body784_114 body784_15

def body784_116 : Prog (BitVec 64) :=
.seq body784_115 body784_16

def body784_117 : Prog (BitVec 64) :=
.seq body784_116 body784_17

def body784_118 : Prog (BitVec 64) :=
.seq body784_117 body784_18

def body784_119 : Prog (BitVec 64) :=
.seq body784_118 body784_19

def body784_120 : Prog (BitVec 64) :=
.seq body784_119 body784_19

def body784_121 : Prog (BitVec 64) :=
.seq body784_120 body784_20

def body784_122 : Prog (BitVec 64) :=
.seq body784_121 body784_21

def body784_123 : Prog (BitVec 64) :=
.seq body784_122 body784_22

def body784_124 : Prog (BitVec 64) :=
.seq body784_123 body784_23

def body784_125 : Prog (BitVec 64) :=
.seq body784_124 body784_24

def body784_126 : Prog (BitVec 64) :=
.seq body784_125 body784_25

def body784_127 : Prog (BitVec 64) :=
.seq body784_126 body784_26

def body784_128 : Prog (BitVec 64) :=
.seq body784_127 body784_27

def body784_129 : Prog (BitVec 64) :=
.seq body784_128 body784_28

def body784_130 : Prog (BitVec 64) :=
.seq body784_129 body784_29

def body784_131 : Prog (BitVec 64) :=
.seq body784_130 body784_30

def body784_132 : Prog (BitVec 64) :=
.seq body784_131 body784_31

def body784_133 : Prog (BitVec 64) :=
.seq body784_132 body784_32

def body784_134 : Prog (BitVec 64) :=
.seq body784_133 body784_33

def body784_135 : Prog (BitVec 64) :=
.seq body784_134 body784_34

def body784_136 : Prog (BitVec 64) :=
.seq body784_135 body784_35

def body784_137 : Prog (BitVec 64) :=
.seq body784_136 body784_36

def body784_138 : Prog (BitVec 64) :=
.seq body784_137 body784_37

def body784_139 : Prog (BitVec 64) :=
.seq body784_138 body784_38

def body784_140 : Prog (BitVec 64) :=
.seq body784_139 body784_39

def body784_141 : Prog (BitVec 64) :=
.seq body784_140 body784_40

def body784_142 : Prog (BitVec 64) :=
.seq body784_141 body784_41

def body784_143 : Prog (BitVec 64) :=
.dec ("rz") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 192#64]) body784_142

def body784_144 : Prog (BitVec 64) :=
.dec ("ry") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 96#64]) body784_143

def body784_145 : Prog (BitVec 64) :=
.dec ("rx") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "rp") body784_144

def body784_146 : Prog (BitVec 64) :=
.dec ("t10") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1056#64]) body784_145

def body784_147 : Prog (BitVec 64) :=
.dec ("t9") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 960#64]) body784_146

def body784_148 : Prog (BitVec 64) :=
.dec ("t7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 864#64]) body784_147

def body784_149 : Prog (BitVec 64) :=
.dec ("t6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 768#64]) body784_148

def body784_150 : Prog (BitVec 64) :=
.dec ("t5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64]) body784_149

def body784_151 : Prog (BitVec 64) :=
.dec ("t4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) body784_150

def body784_152 : Prog (BitVec 64) :=
.dec ("t3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64]) body784_151

def body784_153 : Prog (BitVec 64) :=
.dec ("t2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]) body784_152

def body784_154 : Prog (BitVec 64) :=
.dec ("t1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) body784_153

def body784_155 : Prog (BitVec 64) :=
.dec ("t0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64]) body784_154

def body784_156 : Prog (BitVec 64) :=
.dec ("ysq") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]) body784_155

def body784_157 : Prog (BitVec 64) :=
.dec ("zsq") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body784_156

def body784_158 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 12#64]]) body784_157

def body784_159 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body784_158

def originalData784 : Decl (BitVec 64) :=
.function { name := "pair_addition_step", inline := false, exported := false, params := [("rp", Flapjack.Shape.one), ("qx", Flapjack.Shape.one), ("qy", Flapjack.Shape.one), ("co", Flapjack.Shape.one)], body := body784_100, returnShape := (Flapjack.Shape.one) }
def simplifiedData784 : Decl (BitVec 64) :=
.function { name := "pair_addition_step", inline := false, exported := false, params := [("rp", Flapjack.Shape.one), ("qx", Flapjack.Shape.one), ("qy", Flapjack.Shape.one), ("co", Flapjack.Shape.one)], body := body784_159, returnShape := (Flapjack.Shape.one) }
def original784 := Pancake.PanLang.declToHOL originalData784
def simplified784 := Pancake.PanLang.declToHOL simplifiedData784
end InitECandidate.Proofs.FrontendStages.Declarations
