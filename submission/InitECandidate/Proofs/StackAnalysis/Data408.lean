import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody408_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (8, 4)]

def optimizedBody408_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody408_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody408_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody408_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551480#64))

def optimizedBody408_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody408_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 8), (48, 2)]

def optimizedBody408_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 44), (46, 46), (6, 48)]

def optimizedBody408_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (46, 46), (6, 48)]

def optimizedBody408_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody408_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_8 optimizedBody408_9

def optimizedBody408_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody408_7, 408, 2)) (some 79) ([2, 4, 6]) (some (2, optimizedBody408_10, 408, 3))

def optimizedBody408_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody408_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody408_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody408_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody408_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody408_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4]

def optimizedBody408_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_16 optimizedBody408_17

def optimizedBody408_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_15 optimizedBody408_18

def optimizedBody408_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_14 optimizedBody408_19

def optimizedBody408_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_12 optimizedBody408_20

def optimizedBody408_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody408_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody408_21 optimizedBody408_22

def optimizedBody408_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody408_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody408_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody408_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody408_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody408_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (44, 8), (46, 46), (48, 6)]

def optimizedBody408_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 44), (46, 46), (6, 48)]

def optimizedBody408_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody408_30, 408, 4)) (some 186) ([2, 4]) (some (2, optimizedBody408_10, 408, 5))

def optimizedBody408_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody408_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody408_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody408_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_34 optimizedBody408_18

def optimizedBody408_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_32 optimizedBody408_35

def optimizedBody408_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_33 optimizedBody408_36

def optimizedBody408_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_32 optimizedBody408_37

def optimizedBody408_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_12 optimizedBody408_38

def optimizedBody408_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody408_39 optimizedBody408_22

def optimizedBody408_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def optimizedBody408_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (10, 44), (6, 46), (8, 48)]

def optimizedBody408_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (6, 46), (8, 48)]

def optimizedBody408_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_43 optimizedBody408_9

def optimizedBody408_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody408_42, 408, 6)) (some 186) ([2, 4]) (some (2, optimizedBody408_44, 408, 7))

def optimizedBody408_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4]

def optimizedBody408_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_16 optimizedBody408_46

def optimizedBody408_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_34 optimizedBody408_47

def optimizedBody408_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_32 optimizedBody408_48

def optimizedBody408_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_33 optimizedBody408_49

def optimizedBody408_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_32 optimizedBody408_50

def optimizedBody408_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_12 optimizedBody408_51

def optimizedBody408_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody408_52 optimizedBody408_22

def optimizedBody408_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 8), (44, 10), (46, 8)]

def optimizedBody408_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46)]

def optimizedBody408_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody408_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_56 optimizedBody408_9

def optimizedBody408_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody408_55, 408, 8)) (some 392) ([2, 4]) (some (2, optimizedBody408_57, 408, 9))

def optimizedBody408_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody408_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody408_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody408_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody408_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody408_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_63 optimizedBody408_9

def optimizedBody408_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody408_62, 408, 10)) (some 192) ([2, 4, 6]) (some (2, optimizedBody408_64, 408, 11))

def optimizedBody408_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody408_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 4), (0, 44)]

def optimizedBody408_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody408_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_68 optimizedBody408_9

def optimizedBody408_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody408_67, 408, 12)) (some 402) ([2]) (some (2, optimizedBody408_69, 408, 13))

def optimizedBody408_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6), (4, 4)]

def optimizedBody408_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4]

def optimizedBody408_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_71 optimizedBody408_72

def optimizedBody408_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_12 optimizedBody408_73

def optimizedBody408_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_70 optimizedBody408_74

def optimizedBody408_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_66 optimizedBody408_75

def optimizedBody408_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_12 optimizedBody408_76

def optimizedBody408_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_65 optimizedBody408_77

def optimizedBody408_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_61 optimizedBody408_78

def optimizedBody408_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_60 optimizedBody408_79

def optimizedBody408_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_32 optimizedBody408_80

def optimizedBody408_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_59 optimizedBody408_81

def optimizedBody408_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_27 optimizedBody408_82

def optimizedBody408_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_26 optimizedBody408_83

def optimizedBody408_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_25 optimizedBody408_84

def optimizedBody408_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_24 optimizedBody408_85

def optimizedBody408_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_12 optimizedBody408_86

def optimizedBody408_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_58 optimizedBody408_87

def optimizedBody408_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_54 optimizedBody408_88

def optimizedBody408_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_12 optimizedBody408_89

def optimizedBody408_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_12 optimizedBody408_90

def optimizedBody408_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_53 optimizedBody408_91

def optimizedBody408_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_14 optimizedBody408_92

def optimizedBody408_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_13 optimizedBody408_93

def optimizedBody408_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_12 optimizedBody408_94

def optimizedBody408_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_45 optimizedBody408_95

def optimizedBody408_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_29 optimizedBody408_96

def optimizedBody408_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_28 optimizedBody408_97

def optimizedBody408_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_41 optimizedBody408_98

def optimizedBody408_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_26 optimizedBody408_99

def optimizedBody408_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_25 optimizedBody408_100

def optimizedBody408_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_24 optimizedBody408_101

def optimizedBody408_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_12 optimizedBody408_102

def optimizedBody408_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_12 optimizedBody408_103

def optimizedBody408_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_40 optimizedBody408_104

def optimizedBody408_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_14 optimizedBody408_105

def optimizedBody408_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_13 optimizedBody408_106

def optimizedBody408_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_12 optimizedBody408_107

def optimizedBody408_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_31 optimizedBody408_108

def optimizedBody408_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_29 optimizedBody408_109

def optimizedBody408_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_28 optimizedBody408_110

def optimizedBody408_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_27 optimizedBody408_111

def optimizedBody408_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_26 optimizedBody408_112

def optimizedBody408_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_25 optimizedBody408_113

def optimizedBody408_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_24 optimizedBody408_114

def optimizedBody408_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_12 optimizedBody408_115

def optimizedBody408_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_12 optimizedBody408_116

def optimizedBody408_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_23 optimizedBody408_117

def optimizedBody408_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_14 optimizedBody408_118

def optimizedBody408_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_13 optimizedBody408_119

def optimizedBody408_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_12 optimizedBody408_120

def optimizedBody408_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_11 optimizedBody408_121

def optimizedBody408_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_6 optimizedBody408_122

def optimizedBody408_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_5 optimizedBody408_123

def optimizedBody408_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_4 optimizedBody408_124

def optimizedBody408_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_3 optimizedBody408_125

def optimizedBody408_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_2 optimizedBody408_126

def optimizedBody408_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_1 optimizedBody408_127

def optimizedBody408_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody408_0 optimizedBody408_128

def optimized408 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(408, 3, optimizedBody408_129)
end InitECandidate.Proofs.StackAnalysis
