import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody727_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (6, 4)]

def optimizedBody727_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 16#64)

def optimizedBody727_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (50, 6), (46, 2)]

def optimizedBody727_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44), (50, 50), (0, 46)]

def optimizedBody727_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (50, 50), (0, 46)]

def optimizedBody727_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody727_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_4 optimizedBody727_5

def optimizedBody727_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody727_3, 727, 2)) (some 80) ([2, 4]) (some (2, optimizedBody727_6, 727, 3))

def optimizedBody727_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody727_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody727_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody727_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody727_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody727_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_11 optimizedBody727_12

def optimizedBody727_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_10 optimizedBody727_13

def optimizedBody727_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_8 optimizedBody727_14

def optimizedBody727_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody727_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody727_15 optimizedBody727_16

def optimizedBody727_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody727_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody727_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 6), (50, 50)]

def optimizedBody727_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (10, 10), (0, 2), (8, 8), (6, 6), (12, 12), (44, 44), (50, 50)]

def optimizedBody727_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50)]

def optimizedBody727_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_22 optimizedBody727_5

def optimizedBody727_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody727_21, 727, 4)) (some 725) ([2]) (some (2, optimizedBody727_23, 727, 5))

def optimizedBody727_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody727_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 1873798617647539866#64)

def optimizedBody727_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 5412103778470702295#64)

def optimizedBody727_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 7239337960414712511#64)

def optimizedBody727_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 7435674573564081700#64)

def optimizedBody727_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 2210141511517208575#64)

def optimizedBody727_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 13402431016077863595#64)

def optimizedBody727_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 4), (48, 10), (50, 50), (52, 2), (54, 8), (56, 6), (58, 12)]

def optimizedBody727_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (16, 44), (4, 46), (10, 48), (46, 50), (14, 52), (8, 54), (6, 56), (12, 58)]

def optimizedBody727_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (4, 46), (10, 48), (46, 50), (14, 52), (8, 54), (6, 56), (12, 58)]

def optimizedBody727_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_34 optimizedBody727_5

def optimizedBody727_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody727_33, 727, 6)) (some 707) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody727_35, 727, 7))

def optimizedBody727_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2]

def optimizedBody727_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_11 optimizedBody727_37

def optimizedBody727_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_10 optimizedBody727_38

def optimizedBody727_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_8 optimizedBody727_39

def optimizedBody727_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody727_40 optimizedBody727_16

def optimizedBody727_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 14), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 16), (46, 46)]

def optimizedBody727_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (10, 10), (6, 6), (14, 2), (8, 8), (12, 12), (16, 44), (0, 46)]

def optimizedBody727_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (0, 46)]

def optimizedBody727_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_44 optimizedBody727_5

def optimizedBody727_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody727_43, 727, 8)) (some 716) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody727_45, 727, 9))

def optimizedBody727_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (14, 14), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody727_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody727_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody727_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody727_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody727_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody727_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody727_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody727_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody727_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody727_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12)]

def optimizedBody727_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody727_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody727_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_59 optimizedBody727_38

def optimizedBody727_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_58 optimizedBody727_60

def optimizedBody727_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_57 optimizedBody727_61

def optimizedBody727_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_56 optimizedBody727_62

def optimizedBody727_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_55 optimizedBody727_63

def optimizedBody727_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_54 optimizedBody727_64

def optimizedBody727_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_53 optimizedBody727_65

def optimizedBody727_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_52 optimizedBody727_66

def optimizedBody727_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_51 optimizedBody727_67

def optimizedBody727_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_50 optimizedBody727_68

def optimizedBody727_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_49 optimizedBody727_69

def optimizedBody727_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_48 optimizedBody727_70

def optimizedBody727_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_47 optimizedBody727_71

def optimizedBody727_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_8 optimizedBody727_72

def optimizedBody727_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_46 optimizedBody727_73

def optimizedBody727_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_42 optimizedBody727_74

def optimizedBody727_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_8 optimizedBody727_75

def optimizedBody727_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_8 optimizedBody727_76

def optimizedBody727_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_41 optimizedBody727_77

def optimizedBody727_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_10 optimizedBody727_78

def optimizedBody727_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_18 optimizedBody727_79

def optimizedBody727_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_8 optimizedBody727_80

def optimizedBody727_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_36 optimizedBody727_81

def optimizedBody727_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_32 optimizedBody727_82

def optimizedBody727_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_31 optimizedBody727_83

def optimizedBody727_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_30 optimizedBody727_84

def optimizedBody727_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_29 optimizedBody727_85

def optimizedBody727_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_28 optimizedBody727_86

def optimizedBody727_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_27 optimizedBody727_87

def optimizedBody727_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_26 optimizedBody727_88

def optimizedBody727_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_25 optimizedBody727_89

def optimizedBody727_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_8 optimizedBody727_90

def optimizedBody727_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_24 optimizedBody727_91

def optimizedBody727_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_20 optimizedBody727_92

def optimizedBody727_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_19 optimizedBody727_93

def optimizedBody727_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_18 optimizedBody727_94

def optimizedBody727_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_8 optimizedBody727_95

def optimizedBody727_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_8 optimizedBody727_96

def optimizedBody727_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_17 optimizedBody727_97

def optimizedBody727_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_10 optimizedBody727_98

def optimizedBody727_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_9 optimizedBody727_99

def optimizedBody727_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_8 optimizedBody727_100

def optimizedBody727_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_7 optimizedBody727_101

def optimizedBody727_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_2 optimizedBody727_102

def optimizedBody727_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_1 optimizedBody727_103

def optimizedBody727_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_0 optimizedBody727_104

def optimized727 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(727, 3, optimizedBody727_105)
end InitECandidate.Proofs.StackAnalysis
