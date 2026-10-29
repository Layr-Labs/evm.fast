import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody736_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (16, 2)]

def optimizedBody736_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody736_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 4)]

def optimizedBody736_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 14 8#64))

def optimizedBody736_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody736_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 14 16#64))

def optimizedBody736_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 14 24#64))

def optimizedBody736_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 14 32#64))

def optimizedBody736_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 14 40#64))

def optimizedBody736_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 14 48#64))

def optimizedBody736_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 14 56#64))

def optimizedBody736_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 14 64#64))

def optimizedBody736_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 14 72#64))

def optimizedBody736_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 14 80#64))

def optimizedBody736_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 14 88#64))

def optimizedBody736_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0), (56, 16), (46, 14), (48, 18), (50, 20), (52, 22),
    (54, 24), (58, 26)]

def optimizedBody736_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 12), (4, 4), (6, 6), (8, 8), (10, 10), (24, 2), (44, 44), (56, 56), (20, 46), (16, 48), (18, 50), (22, 52),
    (0, 54), (14, 58)]

def optimizedBody736_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (56, 56), (20, 46), (16, 48), (18, 50), (22, 52), (0, 54), (14, 58)]

def optimizedBody736_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody736_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_17 optimizedBody736_18

def optimizedBody736_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody736_16, 736, 2)) (some 712) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody736_19, 736, 3))

def optimizedBody736_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody736_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 14), (8, 16), (10, 18), (12, 20), (44, 44), (46, 12), (48, 4), (50, 6), (52, 8), (54, 10),
    (56, 56), (58, 24)]

def optimizedBody736_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (0, 2), (8, 8), (10, 10), (12, 12), (28, 44), (14, 46), (20, 48), (18, 50), (26, 52), (24, 54),
    (16, 56), (22, 58)]

def optimizedBody736_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (28, 44), (14, 46), (20, 48), (18, 50), (26, 52), (24, 54), (16, 56), (22, 58)]

def optimizedBody736_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_24 optimizedBody736_18

def optimizedBody736_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody736_23, 736, 4)) (some 712) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody736_25, 736, 5))

def optimizedBody736_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (22, 22), (14, 14), (24, 24), (26, 26), (18, 18), (20, 20)]

def optimizedBody736_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody736_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (20, 20)]

def optimizedBody736_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 16 8#64))

def optimizedBody736_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (18, 18)]

def optimizedBody736_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 16 16#64))

def optimizedBody736_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (26, 26)]

def optimizedBody736_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 16 24#64))

def optimizedBody736_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (24, 24)]

def optimizedBody736_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 16 32#64))

def optimizedBody736_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody736_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 16 40#64))

def optimizedBody736_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody736_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody736_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody736_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody736_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody736_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody736_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody736_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody736_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody736_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody736_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody736_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody736_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody736_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody736_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody736_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody736_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 28 [2]

def optimizedBody736_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_54 optimizedBody736_55

def optimizedBody736_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_53 optimizedBody736_56

def optimizedBody736_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_52 optimizedBody736_57

def optimizedBody736_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_51 optimizedBody736_58

def optimizedBody736_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_50 optimizedBody736_59

def optimizedBody736_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_49 optimizedBody736_60

def optimizedBody736_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_48 optimizedBody736_61

def optimizedBody736_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_47 optimizedBody736_62

def optimizedBody736_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_46 optimizedBody736_63

def optimizedBody736_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_45 optimizedBody736_64

def optimizedBody736_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_44 optimizedBody736_65

def optimizedBody736_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_43 optimizedBody736_66

def optimizedBody736_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_42 optimizedBody736_67

def optimizedBody736_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_41 optimizedBody736_68

def optimizedBody736_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_40 optimizedBody736_69

def optimizedBody736_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_39 optimizedBody736_70

def optimizedBody736_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_38 optimizedBody736_71

def optimizedBody736_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_37 optimizedBody736_72

def optimizedBody736_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_36 optimizedBody736_73

def optimizedBody736_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_35 optimizedBody736_74

def optimizedBody736_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_34 optimizedBody736_75

def optimizedBody736_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_33 optimizedBody736_76

def optimizedBody736_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_32 optimizedBody736_77

def optimizedBody736_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_31 optimizedBody736_78

def optimizedBody736_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_30 optimizedBody736_79

def optimizedBody736_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_29 optimizedBody736_80

def optimizedBody736_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_28 optimizedBody736_81

def optimizedBody736_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_27 optimizedBody736_82

def optimizedBody736_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_21 optimizedBody736_83

def optimizedBody736_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_26 optimizedBody736_84

def optimizedBody736_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_22 optimizedBody736_85

def optimizedBody736_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_21 optimizedBody736_86

def optimizedBody736_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_20 optimizedBody736_87

def optimizedBody736_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_15 optimizedBody736_88

def optimizedBody736_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_14 optimizedBody736_89

def optimizedBody736_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_4 optimizedBody736_90

def optimizedBody736_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_13 optimizedBody736_91

def optimizedBody736_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_4 optimizedBody736_92

def optimizedBody736_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_12 optimizedBody736_93

def optimizedBody736_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_4 optimizedBody736_94

def optimizedBody736_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_11 optimizedBody736_95

def optimizedBody736_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_4 optimizedBody736_96

def optimizedBody736_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_10 optimizedBody736_97

def optimizedBody736_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_4 optimizedBody736_98

def optimizedBody736_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_9 optimizedBody736_99

def optimizedBody736_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_4 optimizedBody736_100

def optimizedBody736_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_8 optimizedBody736_101

def optimizedBody736_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_4 optimizedBody736_102

def optimizedBody736_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_7 optimizedBody736_103

def optimizedBody736_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_4 optimizedBody736_104

def optimizedBody736_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_6 optimizedBody736_105

def optimizedBody736_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_4 optimizedBody736_106

def optimizedBody736_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_5 optimizedBody736_107

def optimizedBody736_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_4 optimizedBody736_108

def optimizedBody736_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_3 optimizedBody736_109

def optimizedBody736_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_2 optimizedBody736_110

def optimizedBody736_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_1 optimizedBody736_111

def optimizedBody736_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody736_0 optimizedBody736_112

def optimized736 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(736, 3, optimizedBody736_113)
end InitECandidate.Proofs.StackAnalysis
