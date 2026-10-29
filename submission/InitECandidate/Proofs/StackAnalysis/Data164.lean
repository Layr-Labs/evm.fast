import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody164_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody164_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody164_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 2), (4, 4)]

def optimizedBody164_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.reg 8)))

def optimizedBody164_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody164_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody164_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (8, 8), (46, 12), (48, 4), (6, 6), (50, 8), (10, 10)]

def optimizedBody164_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody164_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody164_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody164_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody164_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody164_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody164_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0), (6, 6), (10, 10)]

def optimizedBody164_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_12 optimizedBody164_13

def optimizedBody164_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_14

def optimizedBody164_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody164_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody164_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody164_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody164_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_19 optimizedBody164_13

def optimizedBody164_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_16 optimizedBody164_20

def optimizedBody164_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_18 optimizedBody164_21

def optimizedBody164_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_16 optimizedBody164_22

def optimizedBody164_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_17 optimizedBody164_23

def optimizedBody164_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_16 optimizedBody164_24

def optimizedBody164_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_25

def optimizedBody164_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody164_15 optimizedBody164_26

def optimizedBody164_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 44), (8, 8), (0, 0), (16, 48), (6, 6), (18, 50), (10, 10)]

def optimizedBody164_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_28

def optimizedBody164_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_27 optimizedBody164_29

def optimizedBody164_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_11 optimizedBody164_30

def optimizedBody164_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_10 optimizedBody164_31

def optimizedBody164_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_32

def optimizedBody164_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 8), (6, 6)]

def optimizedBody164_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody164_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2), (48, 46), (50, 48), (52, 6), (54, 50), (58, 10)]

def optimizedBody164_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (6, 6), (4, 4), (44, 44), (8, 46), (46, 48), (48, 50), (50, 52), (54, 54), (58, 58)]

def optimizedBody164_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (46, 48), (48, 50), (50, 52), (54, 54), (58, 58)]

def optimizedBody164_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody164_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_38 optimizedBody164_39

def optimizedBody164_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody164_37, 164, 2)) (some 163) ([2, 4]) (some (2, optimizedBody164_40, 164, 3))

def optimizedBody164_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody164_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody164_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody164_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody164_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody164_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody164_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 8), (58, 58)]

def optimizedBody164_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (14, 44), (4, 46), (16, 48), (12, 50), (8, 52), (18, 54), (6, 56), (10, 58)]

def optimizedBody164_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (4, 46), (16, 48), (12, 50), (8, 52), (18, 54), (6, 56), (10, 58)]

def optimizedBody164_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_50 optimizedBody164_39

def optimizedBody164_52 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody164_49, 164, 4)) (some 74) ([2]) (some (2, optimizedBody164_51, 164, 5))

def optimizedBody164_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody164_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody164_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody164_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody164_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody164_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody164_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody164_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody164_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (8, 8), (0, 0), (16, 16), (6, 6), (18, 18), (10, 10)]

def optimizedBody164_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_60 optimizedBody164_61

def optimizedBody164_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_59 optimizedBody164_62

def optimizedBody164_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_58 optimizedBody164_63

def optimizedBody164_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_16 optimizedBody164_64

def optimizedBody164_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_57 optimizedBody164_65

def optimizedBody164_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_56 optimizedBody164_66

def optimizedBody164_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_55 optimizedBody164_67

def optimizedBody164_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_16 optimizedBody164_68

def optimizedBody164_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_54 optimizedBody164_69

def optimizedBody164_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_53 optimizedBody164_70

def optimizedBody164_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_71

def optimizedBody164_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_52 optimizedBody164_72

def optimizedBody164_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_48 optimizedBody164_73

def optimizedBody164_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_47 optimizedBody164_74

def optimizedBody164_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_75

def optimizedBody164_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 44), (8, 8), (0, 46), (16, 48), (6, 50), (18, 54), (10, 58)]

def optimizedBody164_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_77

def optimizedBody164_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody164_76 optimizedBody164_78

def optimizedBody164_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_61

def optimizedBody164_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_79 optimizedBody164_80

def optimizedBody164_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_11 optimizedBody164_81

def optimizedBody164_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_46 optimizedBody164_82

def optimizedBody164_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_45 optimizedBody164_83

def optimizedBody164_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_44 optimizedBody164_84

def optimizedBody164_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_43 optimizedBody164_85

def optimizedBody164_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_42 optimizedBody164_86

def optimizedBody164_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_87

def optimizedBody164_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_41 optimizedBody164_88

def optimizedBody164_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_36 optimizedBody164_89

def optimizedBody164_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_35 optimizedBody164_90

def optimizedBody164_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_34 optimizedBody164_91

def optimizedBody164_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_92

def optimizedBody164_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 6) optimizedBody164_33 optimizedBody164_93

def optimizedBody164_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 14), (8, 8), (46, 0), (48, 16), (6, 6), (50, 18), (10, 10)]

def optimizedBody164_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody164_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_95 optimizedBody164_96

def optimizedBody164_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_97

def optimizedBody164_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_94 optimizedBody164_98

def optimizedBody164_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_9 optimizedBody164_99

def optimizedBody164_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_100

def optimizedBody164_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody164_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_102

def optimizedBody164_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 0) optimizedBody164_101 optimizedBody164_103

def optimizedBody164_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (8, 8), (46, 2), (48, 4), (6, 6), (50, 12), (10, 10)]

def optimizedBody164_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_105

def optimizedBody164_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_104 optimizedBody164_106

def optimizedBody164_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_8 optimizedBody164_107

def optimizedBody164_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_7 optimizedBody164_108

def optimizedBody164_110 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody164_109 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody164_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody164_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody164_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_111 optimizedBody164_112

def optimizedBody164_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_11 optimizedBody164_113

def optimizedBody164_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_114

def optimizedBody164_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_110 optimizedBody164_115

def optimizedBody164_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_6 optimizedBody164_116

def optimizedBody164_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_5 optimizedBody164_117

def optimizedBody164_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_4 optimizedBody164_118

def optimizedBody164_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_3 optimizedBody164_119

def optimizedBody164_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_2 optimizedBody164_120

def optimizedBody164_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_1 optimizedBody164_121

def optimizedBody164_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody164_0 optimizedBody164_122

def optimized164 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(164, 3, optimizedBody164_123)
end InitECandidate.Proofs.StackAnalysis
