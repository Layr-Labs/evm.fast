import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody482_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody482_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody482_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody482_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody482_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody482_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_3 optimizedBody482_4

def optimizedBody482_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_1 optimizedBody482_5

def optimizedBody482_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_2 optimizedBody482_6

def optimizedBody482_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody482_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody482_7 optimizedBody482_8

def optimizedBody482_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody482_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody482_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody482_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody482_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody482_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody482_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody482_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4)]

def optimizedBody482_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 10)))

def optimizedBody482_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody482_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody482_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody482_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody482_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 1024#64)))

def optimizedBody482_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(52, 2), (8, 8)]

def optimizedBody482_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_23 optimizedBody482_24

def optimizedBody482_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_3 optimizedBody482_25

def optimizedBody482_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_2 optimizedBody482_26

def optimizedBody482_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_2 optimizedBody482_24

def optimizedBody482_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 2) optimizedBody482_27 optimizedBody482_28

def optimizedBody482_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody482_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody482_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 6), (48, 10), (50, 4), (52, 52), (54, 8)]

def optimizedBody482_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (48, 50), (50, 52), (0, 54)]

def optimizedBody482_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (48, 50), (50, 52), (0, 54)]

def optimizedBody482_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody482_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_34 optimizedBody482_35

def optimizedBody482_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody482_33, 482, 2)) (some 71) ([2]) (some (2, optimizedBody482_36, 482, 3))

def optimizedBody482_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody482_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody482_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody482_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody482_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody482_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0)]

def optimizedBody482_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (10, 46), (4, 48), (46, 50), (0, 52)]

def optimizedBody482_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (4, 48), (46, 50), (0, 52)]

def optimizedBody482_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_45 optimizedBody482_35

def optimizedBody482_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody482_44, 482, 4)) (some 78) ([2, 4]) (some (2, optimizedBody482_46, 482, 5))

def optimizedBody482_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody482_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody482_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody482_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (10, 10), (4, 4), (46, 46)]

def optimizedBody482_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_50 optimizedBody482_51

def optimizedBody482_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_49 optimizedBody482_52

def optimizedBody482_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_48 optimizedBody482_53

def optimizedBody482_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_13 optimizedBody482_54

def optimizedBody482_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_12 optimizedBody482_55

def optimizedBody482_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_11 optimizedBody482_56

def optimizedBody482_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_10 optimizedBody482_57

def optimizedBody482_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_2 optimizedBody482_58

def optimizedBody482_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_47 optimizedBody482_59

def optimizedBody482_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_43 optimizedBody482_60

def optimizedBody482_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_42 optimizedBody482_61

def optimizedBody482_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_41 optimizedBody482_62

def optimizedBody482_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_40 optimizedBody482_63

def optimizedBody482_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_39 optimizedBody482_64

def optimizedBody482_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_13 optimizedBody482_65

def optimizedBody482_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_12 optimizedBody482_66

def optimizedBody482_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_11 optimizedBody482_67

def optimizedBody482_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_10 optimizedBody482_68

def optimizedBody482_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_38 optimizedBody482_69

def optimizedBody482_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_2 optimizedBody482_70

def optimizedBody482_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_37 optimizedBody482_71

def optimizedBody482_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_32 optimizedBody482_72

def optimizedBody482_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_31 optimizedBody482_73

def optimizedBody482_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_30 optimizedBody482_74

def optimizedBody482_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_2 optimizedBody482_75

def optimizedBody482_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_29 optimizedBody482_76

def optimizedBody482_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_22 optimizedBody482_77

def optimizedBody482_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_21 optimizedBody482_78

def optimizedBody482_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_20 optimizedBody482_79

def optimizedBody482_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_2 optimizedBody482_80

def optimizedBody482_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (10, 10), (4, 4), (46, 2)]

def optimizedBody482_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_2 optimizedBody482_82

def optimizedBody482_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 2) optimizedBody482_81 optimizedBody482_83

def optimizedBody482_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody482_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody482_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody482_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody482_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody482_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody482_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.reg 0)))

def optimizedBody482_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46)]

def optimizedBody482_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody482_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody482_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_94 optimizedBody482_35

def optimizedBody482_96 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody482_93, 482, 6)) (some 78) ([2, 4]) (some (2, optimizedBody482_95, 482, 7))

def optimizedBody482_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody482_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody482_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_3 optimizedBody482_98

def optimizedBody482_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_1 optimizedBody482_99

def optimizedBody482_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_50 optimizedBody482_100

def optimizedBody482_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_49 optimizedBody482_101

def optimizedBody482_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_97 optimizedBody482_102

def optimizedBody482_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_13 optimizedBody482_103

def optimizedBody482_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_12 optimizedBody482_104

def optimizedBody482_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_11 optimizedBody482_105

def optimizedBody482_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_10 optimizedBody482_106

def optimizedBody482_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_2 optimizedBody482_107

def optimizedBody482_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_96 optimizedBody482_108

def optimizedBody482_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_92 optimizedBody482_109

def optimizedBody482_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_91 optimizedBody482_110

def optimizedBody482_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_90 optimizedBody482_111

def optimizedBody482_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_89 optimizedBody482_112

def optimizedBody482_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_88 optimizedBody482_113

def optimizedBody482_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_87 optimizedBody482_114

def optimizedBody482_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_86 optimizedBody482_115

def optimizedBody482_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_85 optimizedBody482_116

def optimizedBody482_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_2 optimizedBody482_117

def optimizedBody482_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_84 optimizedBody482_118

def optimizedBody482_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_19 optimizedBody482_119

def optimizedBody482_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_18 optimizedBody482_120

def optimizedBody482_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_17 optimizedBody482_121

def optimizedBody482_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_16 optimizedBody482_122

def optimizedBody482_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_15 optimizedBody482_123

def optimizedBody482_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_14 optimizedBody482_124

def optimizedBody482_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_13 optimizedBody482_125

def optimizedBody482_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_12 optimizedBody482_126

def optimizedBody482_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_11 optimizedBody482_127

def optimizedBody482_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_10 optimizedBody482_128

def optimizedBody482_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_2 optimizedBody482_129

def optimizedBody482_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_2 optimizedBody482_130

def optimizedBody482_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_9 optimizedBody482_131

def optimizedBody482_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_1 optimizedBody482_132

def optimizedBody482_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_0 optimizedBody482_133

def optimized482 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(482, 2, optimizedBody482_134)
end InitECandidate.Proofs.StackAnalysis
