import InitECandidate.Proofs.WordStages.Optimize591
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source607
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody607_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (8, 2)]

def optimizedBody607_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 120#64))

def optimizedBody607_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody607_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 128#64))

def optimizedBody607_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody607_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody607_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody607_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody607_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody607_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 239#64)

def optimizedBody607_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 11#64)

def optimizedBody607_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody607_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody607_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody607_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody607_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_13 optimizedBody607_14

def optimizedBody607_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_12 optimizedBody607_15

def optimizedBody607_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_11 optimizedBody607_16

def optimizedBody607_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_8 optimizedBody607_17

def optimizedBody607_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_10 optimizedBody607_18

def optimizedBody607_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_5 optimizedBody607_19

def optimizedBody607_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody607_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 10) optimizedBody607_20 optimizedBody607_21

def optimizedBody607_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 6)]

def optimizedBody607_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_5 optimizedBody607_23

def optimizedBody607_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_5 optimizedBody607_24

def optimizedBody607_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_22 optimizedBody607_25

def optimizedBody607_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_9 optimizedBody607_26

def optimizedBody607_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_8 optimizedBody607_27

def optimizedBody607_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_7 optimizedBody607_28

def optimizedBody607_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_6 optimizedBody607_29

def optimizedBody607_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_5 optimizedBody607_30

def optimizedBody607_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody607_31 optimizedBody607_24

def optimizedBody607_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 65536#64)

def optimizedBody607_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody607_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_34 optimizedBody607_18

def optimizedBody607_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_5 optimizedBody607_35

def optimizedBody607_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody607_36 optimizedBody607_21

def optimizedBody607_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 0), (46, 4), (50, 8), (48, 48)]

def optimizedBody607_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (48, 48)]

def optimizedBody607_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (48, 48)]

def optimizedBody607_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_40 optimizedBody607_14

def optimizedBody607_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody607_39, 607, 2)) (some 465) ([2]) (some (2, optimizedBody607_41, 607, 3))

def optimizedBody607_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody607_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 6#64)

def optimizedBody607_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody607_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody607_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (50, 50), (48, 48)]

def optimizedBody607_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (50, 50), (48, 48)]

def optimizedBody607_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (50, 50), (48, 48)]

def optimizedBody607_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_49 optimizedBody607_14

def optimizedBody607_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody607_48, 607, 4)) (some 470) ([2]) (some (2, optimizedBody607_50, 607, 5))

def optimizedBody607_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody607_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1530#64)

def optimizedBody607_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody607_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 8), (50, 50), (48, 48)]

def optimizedBody607_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (50, 50), (48, 48)]

def optimizedBody607_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50), (48, 48)]

def optimizedBody607_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_57 optimizedBody607_14

def optimizedBody607_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody607_56, 607, 6)) (some 471) ([2]) (some (2, optimizedBody607_58, 607, 7))

def optimizedBody607_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody607_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (48, 48)]

def optimizedBody607_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (50, 50), (4, 48)]

def optimizedBody607_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (50, 50), (4, 48)]

def optimizedBody607_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_63 optimizedBody607_14

def optimizedBody607_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody607_62, 607, 8)) (some 68) ([2]) (some (2, optimizedBody607_64, 607, 9))

def optimizedBody607_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 6), (48, 0), (50, 50)]

def optimizedBody607_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 48), (0, 50)]

def optimizedBody607_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (0, 50)]

def optimizedBody607_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_68 optimizedBody607_14

def optimizedBody607_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody607_67, 607, 10)) (some 77) ([2, 4, 6]) (some (2, optimizedBody607_69, 607, 11))

def optimizedBody607_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody607_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody607_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody607_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody607_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_74 optimizedBody607_14

def optimizedBody607_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody607_73, 607, 12)) (some 431) ([2, 4, 6]) (some (2, optimizedBody607_75, 607, 13))

def optimizedBody607_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody607_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_8 optimizedBody607_77

def optimizedBody607_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_4 optimizedBody607_78

def optimizedBody607_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_5 optimizedBody607_79

def optimizedBody607_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_76 optimizedBody607_80

def optimizedBody607_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_72 optimizedBody607_81

def optimizedBody607_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_71 optimizedBody607_82

def optimizedBody607_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_43 optimizedBody607_83

def optimizedBody607_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_5 optimizedBody607_84

def optimizedBody607_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_70 optimizedBody607_85

def optimizedBody607_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_66 optimizedBody607_86

def optimizedBody607_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_5 optimizedBody607_87

def optimizedBody607_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_65 optimizedBody607_88

def optimizedBody607_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_61 optimizedBody607_89

def optimizedBody607_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_60 optimizedBody607_90

def optimizedBody607_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_43 optimizedBody607_91

def optimizedBody607_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_5 optimizedBody607_92

def optimizedBody607_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_59 optimizedBody607_93

def optimizedBody607_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_55 optimizedBody607_94

def optimizedBody607_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_46 optimizedBody607_95

def optimizedBody607_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_54 optimizedBody607_96

def optimizedBody607_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_53 optimizedBody607_97

def optimizedBody607_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_52 optimizedBody607_98

def optimizedBody607_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_5 optimizedBody607_99

def optimizedBody607_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_51 optimizedBody607_100

def optimizedBody607_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_47 optimizedBody607_101

def optimizedBody607_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_46 optimizedBody607_102

def optimizedBody607_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_45 optimizedBody607_103

def optimizedBody607_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_44 optimizedBody607_104

def optimizedBody607_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_43 optimizedBody607_105

def optimizedBody607_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_5 optimizedBody607_106

def optimizedBody607_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_42 optimizedBody607_107

def optimizedBody607_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_38 optimizedBody607_108

def optimizedBody607_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_5 optimizedBody607_109

def optimizedBody607_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_5 optimizedBody607_110

def optimizedBody607_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_37 optimizedBody607_111

def optimizedBody607_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_2 optimizedBody607_112

def optimizedBody607_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_33 optimizedBody607_113

def optimizedBody607_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_5 optimizedBody607_114

def optimizedBody607_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_32 optimizedBody607_115

def optimizedBody607_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_2 optimizedBody607_116

def optimizedBody607_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_4 optimizedBody607_117

def optimizedBody607_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_3 optimizedBody607_118

def optimizedBody607_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_2 optimizedBody607_119

def optimizedBody607_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_1 optimizedBody607_120

def optimizedBody607_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody607_0 optimizedBody607_121

def oracle607 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            4
            (Flapjack.Spt.bs Flapjack.Spt.ln 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
              2
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 24)) 3
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))) 2
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 23)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 24)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
def optimized607 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(607, 3, optimizedBody607_122)
theorem optimize607_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source607, oracle607) = optimized607 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize607_eq
end InitECandidate.Proofs.WordStages
