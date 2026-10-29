import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data62
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate46
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody62_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "acc"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p00"))

def globalBody62_1 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p01"),
    Flapjack.Exp.const 0#64]

def globalBody62_2 : Prog (BitVec 64) :=
.seq globalBody62_0 globalBody62_1

def globalBody62_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "acc" (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "t"))

def globalBody62_4 : Prog (BitVec 64) :=
.seq globalBody62_2 globalBody62_3

def globalBody62_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "hi"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "hi", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "t")])

def globalBody62_6 : Prog (BitVec 64) :=
.seq globalBody62_4 globalBody62_5

def globalBody62_7 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p10"),
    Flapjack.Exp.const 0#64]

def globalBody62_8 : Prog (BitVec 64) :=
.seq globalBody62_6 globalBody62_7

def globalBody62_9 : Prog (BitVec 64) :=
.seq globalBody62_8 globalBody62_3

def globalBody62_10 : Prog (BitVec 64) :=
.seq globalBody62_9 globalBody62_5

def globalBody62_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "acc" (Flapjack.Exp.var Flapjack.VarKind.local "hi")

def globalBody62_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "hi" (Flapjack.Exp.const 0#64)

def globalBody62_13 : Prog (BitVec 64) :=
.seq globalBody62_11 globalBody62_12

def globalBody62_14 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p01"),
    Flapjack.Exp.const 0#64]

def globalBody62_15 : Prog (BitVec 64) :=
.seq globalBody62_13 globalBody62_14

def globalBody62_16 : Prog (BitVec 64) :=
.seq globalBody62_15 globalBody62_3

def globalBody62_17 : Prog (BitVec 64) :=
.seq globalBody62_16 globalBody62_5

def globalBody62_18 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p10"),
    Flapjack.Exp.const 0#64]

def globalBody62_19 : Prog (BitVec 64) :=
.seq globalBody62_17 globalBody62_18

def globalBody62_20 : Prog (BitVec 64) :=
.seq globalBody62_19 globalBody62_3

def globalBody62_21 : Prog (BitVec 64) :=
.seq globalBody62_20 globalBody62_5

def globalBody62_22 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p02"),
    Flapjack.Exp.const 0#64]

def globalBody62_23 : Prog (BitVec 64) :=
.seq globalBody62_21 globalBody62_22

def globalBody62_24 : Prog (BitVec 64) :=
.seq globalBody62_23 globalBody62_3

def globalBody62_25 : Prog (BitVec 64) :=
.seq globalBody62_24 globalBody62_5

def globalBody62_26 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p11"),
    Flapjack.Exp.const 0#64]

def globalBody62_27 : Prog (BitVec 64) :=
.seq globalBody62_25 globalBody62_26

def globalBody62_28 : Prog (BitVec 64) :=
.seq globalBody62_27 globalBody62_3

def globalBody62_29 : Prog (BitVec 64) :=
.seq globalBody62_28 globalBody62_5

def globalBody62_30 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p20"),
    Flapjack.Exp.const 0#64]

def globalBody62_31 : Prog (BitVec 64) :=
.seq globalBody62_29 globalBody62_30

def globalBody62_32 : Prog (BitVec 64) :=
.seq globalBody62_31 globalBody62_3

def globalBody62_33 : Prog (BitVec 64) :=
.seq globalBody62_32 globalBody62_5

def globalBody62_34 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p02"),
    Flapjack.Exp.const 0#64]

def globalBody62_35 : Prog (BitVec 64) :=
.seq globalBody62_13 globalBody62_34

def globalBody62_36 : Prog (BitVec 64) :=
.seq globalBody62_35 globalBody62_3

def globalBody62_37 : Prog (BitVec 64) :=
.seq globalBody62_36 globalBody62_5

def globalBody62_38 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p11"),
    Flapjack.Exp.const 0#64]

def globalBody62_39 : Prog (BitVec 64) :=
.seq globalBody62_37 globalBody62_38

def globalBody62_40 : Prog (BitVec 64) :=
.seq globalBody62_39 globalBody62_3

def globalBody62_41 : Prog (BitVec 64) :=
.seq globalBody62_40 globalBody62_5

def globalBody62_42 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p20"),
    Flapjack.Exp.const 0#64]

def globalBody62_43 : Prog (BitVec 64) :=
.seq globalBody62_41 globalBody62_42

def globalBody62_44 : Prog (BitVec 64) :=
.seq globalBody62_43 globalBody62_3

def globalBody62_45 : Prog (BitVec 64) :=
.seq globalBody62_44 globalBody62_5

def globalBody62_46 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p03"),
    Flapjack.Exp.const 0#64]

def globalBody62_47 : Prog (BitVec 64) :=
.seq globalBody62_45 globalBody62_46

def globalBody62_48 : Prog (BitVec 64) :=
.seq globalBody62_47 globalBody62_3

def globalBody62_49 : Prog (BitVec 64) :=
.seq globalBody62_48 globalBody62_5

def globalBody62_50 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p12"),
    Flapjack.Exp.const 0#64]

def globalBody62_51 : Prog (BitVec 64) :=
.seq globalBody62_49 globalBody62_50

def globalBody62_52 : Prog (BitVec 64) :=
.seq globalBody62_51 globalBody62_3

def globalBody62_53 : Prog (BitVec 64) :=
.seq globalBody62_52 globalBody62_5

def globalBody62_54 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p21"),
    Flapjack.Exp.const 0#64]

def globalBody62_55 : Prog (BitVec 64) :=
.seq globalBody62_53 globalBody62_54

def globalBody62_56 : Prog (BitVec 64) :=
.seq globalBody62_55 globalBody62_3

def globalBody62_57 : Prog (BitVec 64) :=
.seq globalBody62_56 globalBody62_5

def globalBody62_58 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p30"),
    Flapjack.Exp.const 0#64]

def globalBody62_59 : Prog (BitVec 64) :=
.seq globalBody62_57 globalBody62_58

def globalBody62_60 : Prog (BitVec 64) :=
.seq globalBody62_59 globalBody62_3

def globalBody62_61 : Prog (BitVec 64) :=
.seq globalBody62_60 globalBody62_5

def globalBody62_62 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p03"),
    Flapjack.Exp.const 0#64]

def globalBody62_63 : Prog (BitVec 64) :=
.seq globalBody62_13 globalBody62_62

def globalBody62_64 : Prog (BitVec 64) :=
.seq globalBody62_63 globalBody62_3

def globalBody62_65 : Prog (BitVec 64) :=
.seq globalBody62_64 globalBody62_5

def globalBody62_66 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p12"),
    Flapjack.Exp.const 0#64]

def globalBody62_67 : Prog (BitVec 64) :=
.seq globalBody62_65 globalBody62_66

def globalBody62_68 : Prog (BitVec 64) :=
.seq globalBody62_67 globalBody62_3

def globalBody62_69 : Prog (BitVec 64) :=
.seq globalBody62_68 globalBody62_5

def globalBody62_70 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p21"),
    Flapjack.Exp.const 0#64]

def globalBody62_71 : Prog (BitVec 64) :=
.seq globalBody62_69 globalBody62_70

def globalBody62_72 : Prog (BitVec 64) :=
.seq globalBody62_71 globalBody62_3

def globalBody62_73 : Prog (BitVec 64) :=
.seq globalBody62_72 globalBody62_5

def globalBody62_74 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p30"),
    Flapjack.Exp.const 0#64]

def globalBody62_75 : Prog (BitVec 64) :=
.seq globalBody62_73 globalBody62_74

def globalBody62_76 : Prog (BitVec 64) :=
.seq globalBody62_75 globalBody62_3

def globalBody62_77 : Prog (BitVec 64) :=
.seq globalBody62_76 globalBody62_5

def globalBody62_78 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p13"),
    Flapjack.Exp.const 0#64]

def globalBody62_79 : Prog (BitVec 64) :=
.seq globalBody62_77 globalBody62_78

def globalBody62_80 : Prog (BitVec 64) :=
.seq globalBody62_79 globalBody62_3

def globalBody62_81 : Prog (BitVec 64) :=
.seq globalBody62_80 globalBody62_5

def globalBody62_82 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p22"),
    Flapjack.Exp.const 0#64]

def globalBody62_83 : Prog (BitVec 64) :=
.seq globalBody62_81 globalBody62_82

def globalBody62_84 : Prog (BitVec 64) :=
.seq globalBody62_83 globalBody62_3

def globalBody62_85 : Prog (BitVec 64) :=
.seq globalBody62_84 globalBody62_5

def globalBody62_86 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p31"),
    Flapjack.Exp.const 0#64]

def globalBody62_87 : Prog (BitVec 64) :=
.seq globalBody62_85 globalBody62_86

def globalBody62_88 : Prog (BitVec 64) :=
.seq globalBody62_87 globalBody62_3

def globalBody62_89 : Prog (BitVec 64) :=
.seq globalBody62_88 globalBody62_5

def globalBody62_90 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p13"),
    Flapjack.Exp.const 0#64]

def globalBody62_91 : Prog (BitVec 64) :=
.seq globalBody62_13 globalBody62_90

def globalBody62_92 : Prog (BitVec 64) :=
.seq globalBody62_91 globalBody62_3

def globalBody62_93 : Prog (BitVec 64) :=
.seq globalBody62_92 globalBody62_5

def globalBody62_94 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p22"),
    Flapjack.Exp.const 0#64]

def globalBody62_95 : Prog (BitVec 64) :=
.seq globalBody62_93 globalBody62_94

def globalBody62_96 : Prog (BitVec 64) :=
.seq globalBody62_95 globalBody62_3

def globalBody62_97 : Prog (BitVec 64) :=
.seq globalBody62_96 globalBody62_5

def globalBody62_98 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p31"),
    Flapjack.Exp.const 0#64]

def globalBody62_99 : Prog (BitVec 64) :=
.seq globalBody62_97 globalBody62_98

def globalBody62_100 : Prog (BitVec 64) :=
.seq globalBody62_99 globalBody62_3

def globalBody62_101 : Prog (BitVec 64) :=
.seq globalBody62_100 globalBody62_5

def globalBody62_102 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p23"),
    Flapjack.Exp.const 0#64]

def globalBody62_103 : Prog (BitVec 64) :=
.seq globalBody62_101 globalBody62_102

def globalBody62_104 : Prog (BitVec 64) :=
.seq globalBody62_103 globalBody62_3

def globalBody62_105 : Prog (BitVec 64) :=
.seq globalBody62_104 globalBody62_5

def globalBody62_106 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p32"),
    Flapjack.Exp.const 0#64]

def globalBody62_107 : Prog (BitVec 64) :=
.seq globalBody62_105 globalBody62_106

def globalBody62_108 : Prog (BitVec 64) :=
.seq globalBody62_107 globalBody62_3

def globalBody62_109 : Prog (BitVec 64) :=
.seq globalBody62_108 globalBody62_5

def globalBody62_110 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p23"),
    Flapjack.Exp.const 0#64]

def globalBody62_111 : Prog (BitVec 64) :=
.seq globalBody62_13 globalBody62_110

def globalBody62_112 : Prog (BitVec 64) :=
.seq globalBody62_111 globalBody62_3

def globalBody62_113 : Prog (BitVec 64) :=
.seq globalBody62_112 globalBody62_5

def globalBody62_114 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p32"),
    Flapjack.Exp.const 0#64]

def globalBody62_115 : Prog (BitVec 64) :=
.seq globalBody62_113 globalBody62_114

def globalBody62_116 : Prog (BitVec 64) :=
.seq globalBody62_115 globalBody62_3

def globalBody62_117 : Prog (BitVec 64) :=
.seq globalBody62_116 globalBody62_5

def globalBody62_118 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p33"),
    Flapjack.Exp.const 0#64]

def globalBody62_119 : Prog (BitVec 64) :=
.seq globalBody62_117 globalBody62_118

def globalBody62_120 : Prog (BitVec 64) :=
.seq globalBody62_119 globalBody62_3

def globalBody62_121 : Prog (BitVec 64) :=
.seq globalBody62_120 globalBody62_5

def globalBody62_122 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "r0", Flapjack.Exp.var Flapjack.VarKind.local "r1",
      Flapjack.Exp.var Flapjack.VarKind.local "r2", Flapjack.Exp.var Flapjack.VarKind.local "r3",
      Flapjack.Exp.var Flapjack.VarKind.local "r4", Flapjack.Exp.var Flapjack.VarKind.local "r5",
      Flapjack.Exp.var Flapjack.VarKind.local "r6", Flapjack.Exp.var Flapjack.VarKind.local "r7"])

def globalBody62_123 : Prog (BitVec 64) :=
.dec ("r7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p33")]) globalBody62_122

def globalBody62_124 : Prog (BitVec 64) :=
.seq globalBody62_13 globalBody62_123

def globalBody62_125 : Prog (BitVec 64) :=
.dec ("r6") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") globalBody62_124

def globalBody62_126 : Prog (BitVec 64) :=
.seq globalBody62_121 globalBody62_125

def globalBody62_127 : Prog (BitVec 64) :=
.dec ("r5") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") globalBody62_126

def globalBody62_128 : Prog (BitVec 64) :=
.seq globalBody62_109 globalBody62_127

def globalBody62_129 : Prog (BitVec 64) :=
.dec ("r4") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") globalBody62_128

def globalBody62_130 : Prog (BitVec 64) :=
.seq globalBody62_89 globalBody62_129

def globalBody62_131 : Prog (BitVec 64) :=
.dec ("r3") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") globalBody62_130

def globalBody62_132 : Prog (BitVec 64) :=
.seq globalBody62_61 globalBody62_131

def globalBody62_133 : Prog (BitVec 64) :=
.dec ("r2") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") globalBody62_132

def globalBody62_134 : Prog (BitVec 64) :=
.seq globalBody62_33 globalBody62_133

def globalBody62_135 : Prog (BitVec 64) :=
.dec ("r1") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") globalBody62_134

def globalBody62_136 : Prog (BitVec 64) :=
.seq globalBody62_10 globalBody62_135

def globalBody62_137 : Prog (BitVec 64) :=
.dec ("r0") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p00")) globalBody62_136

def globalBody62_138 : Prog (BitVec 64) :=
.dec ("hi") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody62_137

def globalBody62_139 : Prog (BitVec 64) :=
.dec ("acc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody62_138

def globalBody62_140 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody62_139

def globalBody62_141 : Prog (BitVec 64) :=
.decCall ("p33") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_140

def globalBody62_142 : Prog (BitVec 64) :=
.decCall ("p32") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_141

def globalBody62_143 : Prog (BitVec 64) :=
.decCall ("p23") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_142

def globalBody62_144 : Prog (BitVec 64) :=
.decCall ("p31") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_143

def globalBody62_145 : Prog (BitVec 64) :=
.decCall ("p22") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_144

def globalBody62_146 : Prog (BitVec 64) :=
.decCall ("p13") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_145

def globalBody62_147 : Prog (BitVec 64) :=
.decCall ("p30") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_146

def globalBody62_148 : Prog (BitVec 64) :=
.decCall ("p21") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_147

def globalBody62_149 : Prog (BitVec 64) :=
.decCall ("p12") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_148

def globalBody62_150 : Prog (BitVec 64) :=
.decCall ("p03") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_149

def globalBody62_151 : Prog (BitVec 64) :=
.decCall ("p20") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_150

def globalBody62_152 : Prog (BitVec 64) :=
.decCall ("p11") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_151

def globalBody62_153 : Prog (BitVec 64) :=
.decCall ("p02") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_152

def globalBody62_154 : Prog (BitVec 64) :=
.decCall ("p10") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_153

def globalBody62_155 : Prog (BitVec 64) :=
.decCall ("p01") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_154

def globalBody62_156 : Prog (BitVec 64) :=
.decCall ("p00") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody62_155

def globalData62 : Decl (BitVec 64) :=
.function { name := "u256_mul_full", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody62_156, returnShape := (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput62 := Pancake.PanLang.declToHOL globalData62
end InitECandidate.Proofs.FrontendStages.Declarations
