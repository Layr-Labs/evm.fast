import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data784
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate768
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody784_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "zsq", Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def globalBody784_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "ysq", Flapjack.Exp.var Flapjack.VarKind.local "qy"]

def globalBody784_2 : Prog (BitVec 64) :=
.seq globalBody784_0 globalBody784_1

def globalBody784_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.var Flapjack.VarKind.local "zsq",
    Flapjack.Exp.var Flapjack.VarKind.local "qx"]

def globalBody784_4 : Prog (BitVec 64) :=
.seq globalBody784_2 globalBody784_3

def globalBody784_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "qy",
    Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def globalBody784_6 : Prog (BitVec 64) :=
.seq globalBody784_4 globalBody784_5

def globalBody784_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def globalBody784_8 : Prog (BitVec 64) :=
.seq globalBody784_6 globalBody784_7

def globalBody784_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "ysq"]

def globalBody784_10 : Prog (BitVec 64) :=
.seq globalBody784_8 globalBody784_9

def globalBody784_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "zsq"]

def globalBody784_12 : Prog (BitVec 64) :=
.seq globalBody784_10 globalBody784_11

def globalBody784_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "zsq"]

def globalBody784_14 : Prog (BitVec 64) :=
.seq globalBody784_12 globalBody784_13

def globalBody784_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "t0",
    Flapjack.Exp.var Flapjack.VarKind.local "rx"]

def globalBody784_16 : Prog (BitVec 64) :=
.seq globalBody784_14 globalBody784_15

def globalBody784_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "t3", Flapjack.Exp.var Flapjack.VarKind.local "t2"]

def globalBody784_18 : Prog (BitVec 64) :=
.seq globalBody784_16 globalBody784_17

def globalBody784_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "t4", Flapjack.Exp.var Flapjack.VarKind.local "t3",
    Flapjack.Exp.var Flapjack.VarKind.local "t3"]

def globalBody784_20 : Prog (BitVec 64) :=
.seq globalBody784_18 globalBody784_19

def globalBody784_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "t4", Flapjack.Exp.var Flapjack.VarKind.local "t4",
    Flapjack.Exp.var Flapjack.VarKind.local "t4"]

def globalBody784_22 : Prog (BitVec 64) :=
.seq globalBody784_20 globalBody784_21

def globalBody784_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t5", Flapjack.Exp.var Flapjack.VarKind.local "t4",
    Flapjack.Exp.var Flapjack.VarKind.local "t2"]

def globalBody784_24 : Prog (BitVec 64) :=
.seq globalBody784_22 globalBody784_23

def globalBody784_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t6", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "ry"]

def globalBody784_26 : Prog (BitVec 64) :=
.seq globalBody784_24 globalBody784_25

def globalBody784_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t6", Flapjack.Exp.var Flapjack.VarKind.local "t6",
    Flapjack.Exp.var Flapjack.VarKind.local "ry"]

def globalBody784_28 : Prog (BitVec 64) :=
.seq globalBody784_26 globalBody784_27

def globalBody784_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t9", Flapjack.Exp.var Flapjack.VarKind.local "t6",
    Flapjack.Exp.var Flapjack.VarKind.local "qx"]

def globalBody784_30 : Prog (BitVec 64) :=
.seq globalBody784_28 globalBody784_29

def globalBody784_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t7", Flapjack.Exp.var Flapjack.VarKind.local "t4",
    Flapjack.Exp.var Flapjack.VarKind.local "rx"]

def globalBody784_32 : Prog (BitVec 64) :=
.seq globalBody784_30 globalBody784_31

def globalBody784_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.var Flapjack.VarKind.local "t6"]

def globalBody784_34 : Prog (BitVec 64) :=
.seq globalBody784_32 globalBody784_33

def globalBody784_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.var Flapjack.VarKind.local "t0",
    Flapjack.Exp.var Flapjack.VarKind.local "t5"]

def globalBody784_36 : Prog (BitVec 64) :=
.seq globalBody784_34 globalBody784_35

def globalBody784_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.var Flapjack.VarKind.local "t0",
    Flapjack.Exp.var Flapjack.VarKind.local "t7"]

def globalBody784_38 : Prog (BitVec 64) :=
.seq globalBody784_36 globalBody784_37

def globalBody784_39 : Prog (BitVec 64) :=
.seq globalBody784_38 globalBody784_37

def globalBody784_40 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "t2"]

def globalBody784_41 : Prog (BitVec 64) :=
.seq globalBody784_39 globalBody784_40

def globalBody784_42 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def globalBody784_43 : Prog (BitVec 64) :=
.seq globalBody784_41 globalBody784_42

def globalBody784_44 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "zsq"]

def globalBody784_45 : Prog (BitVec 64) :=
.seq globalBody784_43 globalBody784_44

def globalBody784_46 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "t3"]

def globalBody784_47 : Prog (BitVec 64) :=
.seq globalBody784_45 globalBody784_46

def globalBody784_48 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "t10", Flapjack.Exp.var Flapjack.VarKind.local "qy",
    Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def globalBody784_49 : Prog (BitVec 64) :=
.seq globalBody784_47 globalBody784_48

def globalBody784_50 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t7", Flapjack.Exp.var Flapjack.VarKind.local "t7",
    Flapjack.Exp.var Flapjack.VarKind.local "t0"]

def globalBody784_51 : Prog (BitVec 64) :=
.seq globalBody784_49 globalBody784_50

def globalBody784_52 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t7", Flapjack.Exp.var Flapjack.VarKind.local "t7",
    Flapjack.Exp.var Flapjack.VarKind.local "t6"]

def globalBody784_53 : Prog (BitVec 64) :=
.seq globalBody784_51 globalBody784_52

def globalBody784_54 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "ry",
    Flapjack.Exp.var Flapjack.VarKind.local "t5"]

def globalBody784_55 : Prog (BitVec 64) :=
.seq globalBody784_53 globalBody784_54

def globalBody784_56 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def globalBody784_57 : Prog (BitVec 64) :=
.seq globalBody784_55 globalBody784_56

def globalBody784_58 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "ry", Flapjack.Exp.var Flapjack.VarKind.local "t7",
    Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def globalBody784_59 : Prog (BitVec 64) :=
.seq globalBody784_57 globalBody784_58

def globalBody784_60 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "rx", Flapjack.Exp.var Flapjack.VarKind.local "t0"]

def globalBody784_61 : Prog (BitVec 64) :=
.seq globalBody784_59 globalBody784_60

def globalBody784_62 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "t10", Flapjack.Exp.var Flapjack.VarKind.local "t10"]

def globalBody784_63 : Prog (BitVec 64) :=
.seq globalBody784_61 globalBody784_62

def globalBody784_64 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t10", Flapjack.Exp.var Flapjack.VarKind.local "t10",
    Flapjack.Exp.var Flapjack.VarKind.local "ysq"]

def globalBody784_65 : Prog (BitVec 64) :=
.seq globalBody784_63 globalBody784_64

def globalBody784_66 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def globalBody784_67 : Prog (BitVec 64) :=
.seq globalBody784_65 globalBody784_66

def globalBody784_68 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "t10", Flapjack.Exp.var Flapjack.VarKind.local "t10",
    Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def globalBody784_69 : Prog (BitVec 64) :=
.seq globalBody784_67 globalBody784_68

def globalBody784_70 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "t9", Flapjack.Exp.var Flapjack.VarKind.local "t9",
    Flapjack.Exp.var Flapjack.VarKind.local "t9"]

def globalBody784_71 : Prog (BitVec 64) :=
.seq globalBody784_69 globalBody784_70

def globalBody784_72 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "t9", Flapjack.Exp.var Flapjack.VarKind.local "t10"]

def globalBody784_73 : Prog (BitVec 64) :=
.seq globalBody784_71 globalBody784_72

def globalBody784_74 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def globalBody784_75 : Prog (BitVec 64) :=
.seq globalBody784_73 globalBody784_74

def globalBody784_76 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_neg"
  [Flapjack.Exp.var Flapjack.VarKind.local "t6", Flapjack.Exp.var Flapjack.VarKind.local "t6"]

def globalBody784_77 : Prog (BitVec 64) :=
.seq globalBody784_75 globalBody784_76

def globalBody784_78 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "t6", Flapjack.Exp.var Flapjack.VarKind.local "t6"]

def globalBody784_79 : Prog (BitVec 64) :=
.seq globalBody784_77 globalBody784_78

def globalBody784_80 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody784_81 : Prog (BitVec 64) :=
.seq globalBody784_79 globalBody784_80

def globalBody784_82 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody784_83 : Prog (BitVec 64) :=
.seq globalBody784_81 globalBody784_82

def globalBody784_84 : Prog (BitVec 64) :=
.dec ("rz") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 192#64]) globalBody784_83

def globalBody784_85 : Prog (BitVec 64) :=
.dec ("ry") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 96#64]) globalBody784_84

def globalBody784_86 : Prog (BitVec 64) :=
.dec ("rx") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "rp") globalBody784_85

def globalBody784_87 : Prog (BitVec 64) :=
.dec ("t10") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1056#64]) globalBody784_86

def globalBody784_88 : Prog (BitVec 64) :=
.dec ("t9") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 960#64]) globalBody784_87

def globalBody784_89 : Prog (BitVec 64) :=
.dec ("t7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 864#64]) globalBody784_88

def globalBody784_90 : Prog (BitVec 64) :=
.dec ("t6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 768#64]) globalBody784_89

def globalBody784_91 : Prog (BitVec 64) :=
.dec ("t5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64]) globalBody784_90

def globalBody784_92 : Prog (BitVec 64) :=
.dec ("t4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) globalBody784_91

def globalBody784_93 : Prog (BitVec 64) :=
.dec ("t3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64]) globalBody784_92

def globalBody784_94 : Prog (BitVec 64) :=
.dec ("t2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]) globalBody784_93

def globalBody784_95 : Prog (BitVec 64) :=
.dec ("t1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) globalBody784_94

def globalBody784_96 : Prog (BitVec 64) :=
.dec ("t0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64]) globalBody784_95

def globalBody784_97 : Prog (BitVec 64) :=
.dec ("ysq") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]) globalBody784_96

def globalBody784_98 : Prog (BitVec 64) :=
.dec ("zsq") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") globalBody784_97

def globalBody784_99 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 12#64]]) globalBody784_98

def globalBody784_100 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody784_99

def globalData784 : Decl (BitVec 64) :=
.function { name := "pair_addition_step", inline := false, exported := false, params := [("rp", Flapjack.Shape.one), ("qx", Flapjack.Shape.one), ("qy", Flapjack.Shape.one), ("co", Flapjack.Shape.one)], body := globalBody784_100, returnShape := (Flapjack.Shape.one) }
def globalOutput784 := Pancake.PanLang.declToHOL globalData784
end InitECandidate.Proofs.FrontendStages.Declarations
