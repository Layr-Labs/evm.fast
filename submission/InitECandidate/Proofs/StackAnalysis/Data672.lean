import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody672_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody672_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody672_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody672_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (14, 8), (46, 4), (10, 10), (0, 2), (18, 6)]

def optimizedBody672_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody672_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody672_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 10 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody672_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody672_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.reg 18)))

def optimizedBody672_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody672_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (50, 10), (18, 18)]

def optimizedBody672_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 18 (Flapjack.WordRegImm.reg 12)))

def optimizedBody672_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody672_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (12, 12), (50, 50), (54, 18)]

def optimizedBody672_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody672_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (12, 12), (50, 50), (54, 54)]

def optimizedBody672_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody672_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (12, 12), (50, 50)]

def optimizedBody672_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 12 (Flapjack.WordRegImm.reg 14)))

def optimizedBody672_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody672_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (50, 50), (14, 14)]

def optimizedBody672_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody672_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 16 8#64))

def optimizedBody672_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (50, 50), (48, 14)]

def optimizedBody672_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 16 16#64))

def optimizedBody672_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (50, 50), (48, 48)]

def optimizedBody672_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 16 24#64))

def optimizedBody672_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 48), (48, 46), (50, 50),
    (52, 0), (54, 54)]

def optimizedBody672_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (4, 4), (6, 6), (8, 8), (20, 44), (14, 46), (12, 48), (16, 50), (0, 52), (18, 54)]

def optimizedBody672_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (20, 44), (14, 46), (12, 48), (16, 50), (0, 52), (18, 54)]

def optimizedBody672_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody672_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_29 optimizedBody672_30

def optimizedBody672_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody672_28, 672, 2)) (some 658) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody672_31, 672, 3))

def optimizedBody672_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody672_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 16 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody672_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody672_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody672_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody672_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody672_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody672_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody672_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody672_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody672_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody672_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody672_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody672_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 20), (14, 14), (46, 12), (10, 10), (0, 0), (18, 18)]

def optimizedBody672_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody672_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_46 optimizedBody672_47

def optimizedBody672_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_45 optimizedBody672_48

def optimizedBody672_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_33 optimizedBody672_49

def optimizedBody672_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_44 optimizedBody672_50

def optimizedBody672_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_43 optimizedBody672_51

def optimizedBody672_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_42 optimizedBody672_52

def optimizedBody672_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_41 optimizedBody672_53

def optimizedBody672_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_40 optimizedBody672_54

def optimizedBody672_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_39 optimizedBody672_55

def optimizedBody672_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_38 optimizedBody672_56

def optimizedBody672_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_37 optimizedBody672_57

def optimizedBody672_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_36 optimizedBody672_58

def optimizedBody672_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_35 optimizedBody672_59

def optimizedBody672_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_34 optimizedBody672_60

def optimizedBody672_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_33 optimizedBody672_61

def optimizedBody672_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_2 optimizedBody672_62

def optimizedBody672_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_32 optimizedBody672_63

def optimizedBody672_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_27 optimizedBody672_64

def optimizedBody672_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_26 optimizedBody672_65

def optimizedBody672_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_25 optimizedBody672_66

def optimizedBody672_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_24 optimizedBody672_67

def optimizedBody672_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_23 optimizedBody672_68

def optimizedBody672_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_22 optimizedBody672_69

def optimizedBody672_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_21 optimizedBody672_70

def optimizedBody672_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_20 optimizedBody672_71

def optimizedBody672_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_19 optimizedBody672_72

def optimizedBody672_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_18 optimizedBody672_73

def optimizedBody672_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_17 optimizedBody672_74

def optimizedBody672_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_16 optimizedBody672_75

def optimizedBody672_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_15 optimizedBody672_76

def optimizedBody672_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_14 optimizedBody672_77

def optimizedBody672_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_13 optimizedBody672_78

def optimizedBody672_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_12 optimizedBody672_79

def optimizedBody672_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_11 optimizedBody672_80

def optimizedBody672_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_10 optimizedBody672_81

def optimizedBody672_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_9 optimizedBody672_82

def optimizedBody672_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_8 optimizedBody672_83

def optimizedBody672_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_7 optimizedBody672_84

def optimizedBody672_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_6 optimizedBody672_85

def optimizedBody672_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_5 optimizedBody672_86

def optimizedBody672_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_2 optimizedBody672_87

def optimizedBody672_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody672_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_2 optimizedBody672_89

def optimizedBody672_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 0) optimizedBody672_88 optimizedBody672_90

def optimizedBody672_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (14, 14), (46, 4), (10, 10), (0, 0), (18, 18)]

def optimizedBody672_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_2 optimizedBody672_92

def optimizedBody672_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_91 optimizedBody672_93

def optimizedBody672_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_4 optimizedBody672_94

def optimizedBody672_96 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody672_95 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody672_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody672_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody672_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody672_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_98 optimizedBody672_99

def optimizedBody672_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_97 optimizedBody672_100

def optimizedBody672_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_2 optimizedBody672_101

def optimizedBody672_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_96 optimizedBody672_102

def optimizedBody672_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_3 optimizedBody672_103

def optimizedBody672_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_2 optimizedBody672_104

def optimizedBody672_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_1 optimizedBody672_105

def optimizedBody672_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody672_0 optimizedBody672_106

def optimized672 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(672, 5, optimizedBody672_107)
end InitECandidate.Proofs.StackAnalysis
