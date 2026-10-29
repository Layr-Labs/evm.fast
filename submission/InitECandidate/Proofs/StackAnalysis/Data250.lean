import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody250_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (10, 2), (6, 6), (8, 8)]

def optimizedBody250_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody250_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody250_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody250_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody250_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_3 optimizedBody250_4

def optimizedBody250_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_1 optimizedBody250_5

def optimizedBody250_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_6

def optimizedBody250_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody250_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody250_7 optimizedBody250_8

def optimizedBody250_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody250_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (8, 8), (12, 12), (4, 4), (10, 10), (6, 6)]

def optimizedBody250_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody250_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody250_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 12 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody250_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody250_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody250_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody250_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody250_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 1#64)

def optimizedBody250_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14)]

def optimizedBody250_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_19 optimizedBody250_20

def optimizedBody250_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody250_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_22 optimizedBody250_20

def optimizedBody250_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 6) optimizedBody250_21 optimizedBody250_23

def optimizedBody250_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody250_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody250_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody250_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_26 optimizedBody250_27

def optimizedBody250_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_1 optimizedBody250_27

def optimizedBody250_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 0) optimizedBody250_28 optimizedBody250_29

def optimizedBody250_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody250_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (2, 2)]

def optimizedBody250_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 14)))

def optimizedBody250_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody250_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 8), (48, 12), (50, 4), (52, 10), (54, 0), (56, 6)]

def optimizedBody250_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (12, 48), (50, 50), (10, 52), (0, 54), (54, 56)]

def optimizedBody250_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (12, 48), (50, 50), (10, 52), (0, 54), (54, 56)]

def optimizedBody250_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody250_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_37 optimizedBody250_38

def optimizedBody250_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody250_36, 250, 2)) (some 245) ([2]) (some (2, optimizedBody250_39, 250, 3))

def optimizedBody250_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (12, 12), (50, 50), (10, 10), (0, 0), (54, 54)]

def optimizedBody250_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_41

def optimizedBody250_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_40 optimizedBody250_42

def optimizedBody250_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_35 optimizedBody250_43

def optimizedBody250_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_34 optimizedBody250_44

def optimizedBody250_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_45

def optimizedBody250_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 8), (12, 12), (50, 4), (10, 10), (0, 0), (54, 6)]

def optimizedBody250_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_47

def optimizedBody250_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 2) optimizedBody250_46 optimizedBody250_48

def optimizedBody250_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (0, 0)]

def optimizedBody250_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 12 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody250_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody250_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551608#64))

def optimizedBody250_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 11#64)

def optimizedBody250_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 12), (50, 50), (52, 10), (54, 54)]

def optimizedBody250_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (12, 48), (4, 50), (10, 52), (6, 54)]

def optimizedBody250_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (12, 48), (4, 50), (10, 52), (6, 54)]

def optimizedBody250_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_57 optimizedBody250_38

def optimizedBody250_59 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody250_56, 250, 4)) (some 245) ([2]) (some (2, optimizedBody250_58, 250, 5))

def optimizedBody250_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (8, 8), (12, 12), (4, 4), (10, 10), (6, 6)]

def optimizedBody250_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_60

def optimizedBody250_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_59 optimizedBody250_61

def optimizedBody250_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_55 optimizedBody250_62

def optimizedBody250_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_54 optimizedBody250_63

def optimizedBody250_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_64

def optimizedBody250_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (8, 46), (12, 12), (4, 50), (10, 10), (6, 54)]

def optimizedBody250_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_66

def optimizedBody250_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody250_65 optimizedBody250_67

def optimizedBody250_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_68 optimizedBody250_61

def optimizedBody250_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_53 optimizedBody250_69

def optimizedBody250_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_52 optimizedBody250_70

def optimizedBody250_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_15 optimizedBody250_71

def optimizedBody250_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_51 optimizedBody250_72

def optimizedBody250_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_50 optimizedBody250_73

def optimizedBody250_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_74

def optimizedBody250_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 12) optimizedBody250_75 optimizedBody250_67

def optimizedBody250_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody250_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody250_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_60 optimizedBody250_78

def optimizedBody250_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_77 optimizedBody250_79

def optimizedBody250_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_13 optimizedBody250_80

def optimizedBody250_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_81

def optimizedBody250_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_76 optimizedBody250_82

def optimizedBody250_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_13 optimizedBody250_83

def optimizedBody250_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_1 optimizedBody250_84

def optimizedBody250_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_85

def optimizedBody250_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_49 optimizedBody250_86

def optimizedBody250_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_33 optimizedBody250_87

def optimizedBody250_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_32 optimizedBody250_88

def optimizedBody250_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_31 optimizedBody250_89

def optimizedBody250_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_90

def optimizedBody250_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_30 optimizedBody250_91

def optimizedBody250_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_25 optimizedBody250_92

def optimizedBody250_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_93

def optimizedBody250_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_24 optimizedBody250_94

def optimizedBody250_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_18 optimizedBody250_95

def optimizedBody250_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_17 optimizedBody250_96

def optimizedBody250_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_16 optimizedBody250_97

def optimizedBody250_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_15 optimizedBody250_98

def optimizedBody250_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_14 optimizedBody250_99

def optimizedBody250_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_13 optimizedBody250_100

def optimizedBody250_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_101

def optimizedBody250_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody250_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_103

def optimizedBody250_105 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 12 (Flapjack.WordRegImm.reg 4) optimizedBody250_102 optimizedBody250_104

def optimizedBody250_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (8, 8), (12, 12), (4, 4), (10, 10), (6, 6)]

def optimizedBody250_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_106

def optimizedBody250_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_105 optimizedBody250_107

def optimizedBody250_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_12 optimizedBody250_108

def optimizedBody250_110 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln) optimizedBody250_109 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody250_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody250_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody250_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 12#64)

def optimizedBody250_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody250_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody250_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody250_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_116 optimizedBody250_38

def optimizedBody250_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody250_115, 250, 6)) (some 245) ([2]) (some (2, optimizedBody250_117, 250, 7))

def optimizedBody250_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody250_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_119

def optimizedBody250_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_118 optimizedBody250_120

def optimizedBody250_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_114 optimizedBody250_121

def optimizedBody250_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_113 optimizedBody250_122

def optimizedBody250_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_123

def optimizedBody250_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody250_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_125

def optimizedBody250_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 6) optimizedBody250_124 optimizedBody250_126

def optimizedBody250_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_127 optimizedBody250_7

def optimizedBody250_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_112 optimizedBody250_128

def optimizedBody250_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_111 optimizedBody250_129

def optimizedBody250_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_15 optimizedBody250_130

def optimizedBody250_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_131

def optimizedBody250_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_110 optimizedBody250_132

def optimizedBody250_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_11 optimizedBody250_133

def optimizedBody250_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_134

def optimizedBody250_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_10 optimizedBody250_135

def optimizedBody250_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_136

def optimizedBody250_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_2 optimizedBody250_137

def optimizedBody250_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_9 optimizedBody250_138

def optimizedBody250_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_1 optimizedBody250_139

def optimizedBody250_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody250_0 optimizedBody250_140

def optimized250 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(250, 5, optimizedBody250_141)
end InitECandidate.Proofs.StackAnalysis
