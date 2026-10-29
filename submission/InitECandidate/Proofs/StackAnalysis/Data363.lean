import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody363_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (0, 0)]

def optimizedBody363_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody363_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody363_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody363_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody363_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody363_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 10)]

def optimizedBody363_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody363_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody363_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody363_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_8 optimizedBody363_9

def optimizedBody363_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody363_7, 363, 2)) (some 358) ([2, 4, 6, 8]) (some (2, optimizedBody363_10, 363, 3))

def optimizedBody363_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody363_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody363_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody363_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 4), (46, 0)]

def optimizedBody363_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody363_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody363_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_17 optimizedBody363_9

def optimizedBody363_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody363_16, 363, 4)) (some 181) ([2]) (some (2, optimizedBody363_18, 363, 5))

def optimizedBody363_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody363_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 0), (50, 4)]

def optimizedBody363_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (48, 48), (0, 46), (50, 50)]

def optimizedBody363_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (50, 50)]

def optimizedBody363_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_23 optimizedBody363_9

def optimizedBody363_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody363_22, 363, 6)) (some 181) ([2]) (some (2, optimizedBody363_24, 363, 7))

def optimizedBody363_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody363_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody363_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody363_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody363_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (46, 0), (50, 50), (52, 10)]

def optimizedBody363_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (48, 48), (0, 46), (50, 50), (52, 52)]

def optimizedBody363_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (50, 50), (52, 52)]

def optimizedBody363_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_32 optimizedBody363_9

def optimizedBody363_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody363_31, 363, 8)) (some 358) ([2, 4, 6, 8]) (some (2, optimizedBody363_33, 363, 9))

def optimizedBody363_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody363_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody363_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 104#64))

def optimizedBody363_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody363_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 10), (48, 48), (50, 50), (52, 52)]

def optimizedBody363_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (12, 44), (10, 46), (0, 48), (4, 50), (6, 52)]

def optimizedBody363_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (10, 46), (0, 48), (4, 50), (6, 52)]

def optimizedBody363_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_41 optimizedBody363_9

def optimizedBody363_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody363_40, 363, 10)) (some 358) ([2, 4, 6, 8]) (some (2, optimizedBody363_42, 363, 11))

def optimizedBody363_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody363_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody363_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody363_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody363_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody363_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody363_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody363_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 21#64)))

def optimizedBody363_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody363_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody363_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_52 optimizedBody363_53

def optimizedBody363_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_51 optimizedBody363_54

def optimizedBody363_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_50 optimizedBody363_55

def optimizedBody363_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_13 optimizedBody363_56

def optimizedBody363_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_49 optimizedBody363_57

def optimizedBody363_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_48 optimizedBody363_58

def optimizedBody363_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_47 optimizedBody363_59

def optimizedBody363_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_46 optimizedBody363_60

def optimizedBody363_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_45 optimizedBody363_61

def optimizedBody363_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_44 optimizedBody363_62

def optimizedBody363_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_12 optimizedBody363_63

def optimizedBody363_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_43 optimizedBody363_64

def optimizedBody363_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_39 optimizedBody363_65

def optimizedBody363_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_38 optimizedBody363_66

def optimizedBody363_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_13 optimizedBody363_67

def optimizedBody363_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_37 optimizedBody363_68

def optimizedBody363_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_13 optimizedBody363_69

def optimizedBody363_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_36 optimizedBody363_70

def optimizedBody363_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_13 optimizedBody363_71

def optimizedBody363_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_35 optimizedBody363_72

def optimizedBody363_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_13 optimizedBody363_73

def optimizedBody363_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_12 optimizedBody363_74

def optimizedBody363_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_34 optimizedBody363_75

def optimizedBody363_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_30 optimizedBody363_76

def optimizedBody363_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_29 optimizedBody363_77

def optimizedBody363_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_13 optimizedBody363_78

def optimizedBody363_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_28 optimizedBody363_79

def optimizedBody363_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_13 optimizedBody363_80

def optimizedBody363_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_27 optimizedBody363_81

def optimizedBody363_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_13 optimizedBody363_82

def optimizedBody363_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_26 optimizedBody363_83

def optimizedBody363_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_13 optimizedBody363_84

def optimizedBody363_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_12 optimizedBody363_85

def optimizedBody363_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_25 optimizedBody363_86

def optimizedBody363_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_21 optimizedBody363_87

def optimizedBody363_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_20 optimizedBody363_88

def optimizedBody363_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_13 optimizedBody363_89

def optimizedBody363_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_12 optimizedBody363_90

def optimizedBody363_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_19 optimizedBody363_91

def optimizedBody363_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_15 optimizedBody363_92

def optimizedBody363_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_14 optimizedBody363_93

def optimizedBody363_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_13 optimizedBody363_94

def optimizedBody363_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_12 optimizedBody363_95

def optimizedBody363_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_11 optimizedBody363_96

def optimizedBody363_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_6 optimizedBody363_97

def optimizedBody363_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_5 optimizedBody363_98

def optimizedBody363_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_2 optimizedBody363_99

def optimizedBody363_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_4 optimizedBody363_100

def optimizedBody363_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_2 optimizedBody363_101

def optimizedBody363_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_3 optimizedBody363_102

def optimizedBody363_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_2 optimizedBody363_103

def optimizedBody363_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_1 optimizedBody363_104

def optimizedBody363_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody363_0 optimizedBody363_105

def optimized363 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(363, 2, optimizedBody363_106)
end InitECandidate.Proofs.StackAnalysis
