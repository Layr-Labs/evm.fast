import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody143_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 8), (0, 0), (18, 2), (16, 4), (14, 6), (10, 10)]

def optimizedBody143_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 12 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody143_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody143_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 256#64)

def optimizedBody143_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody143_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody143_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody143_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody143_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 18446744073709551615#64)

def optimizedBody143_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18446744073709551615#64)

def optimizedBody143_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 18446744073709551615#64)

def optimizedBody143_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody143_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody143_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_11 optimizedBody143_12

def optimizedBody143_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_10 optimizedBody143_13

def optimizedBody143_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_9 optimizedBody143_14

def optimizedBody143_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_8 optimizedBody143_15

def optimizedBody143_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_7 optimizedBody143_16

def optimizedBody143_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_4 optimizedBody143_17

def optimizedBody143_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody143_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody143_18 optimizedBody143_19

def optimizedBody143_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody143_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody143_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody143_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody143_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_24 optimizedBody143_13

def optimizedBody143_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_23 optimizedBody143_25

def optimizedBody143_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_22 optimizedBody143_26

def optimizedBody143_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_21 optimizedBody143_27

def optimizedBody143_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_4 optimizedBody143_28

def optimizedBody143_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_4 optimizedBody143_29

def optimizedBody143_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_20 optimizedBody143_30

def optimizedBody143_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_6 optimizedBody143_31

def optimizedBody143_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_5 optimizedBody143_32

def optimizedBody143_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_4 optimizedBody143_33

def optimizedBody143_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 2)]

def optimizedBody143_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 4) optimizedBody143_34 optimizedBody143_35

def optimizedBody143_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 18), (4, 16), (6, 14), (8, 12), (10, 10), (44, 0), (46, 46), (48, 10)]

def optimizedBody143_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (16, 2), (8, 8), (4, 4), (44, 44), (10, 46), (0, 48)]

def optimizedBody143_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (0, 48)]

def optimizedBody143_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody143_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_39 optimizedBody143_40

def optimizedBody143_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody143_38, 143, 2)) (some 142) ([2, 4, 6, 8, 10]) (some (2, optimizedBody143_41, 143, 3))

def optimizedBody143_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody143_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody143_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody143_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 10 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody143_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 18446744073709551615#64)

def optimizedBody143_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 18446744073709551615#64)

def optimizedBody143_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 18446744073709551615#64)

def optimizedBody143_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 0), (6, 12), (8, 14), (10, 10), (44, 44), (46, 6), (48, 16), (50, 8), (52, 4)]

def optimizedBody143_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (14, 6), (16, 8), (12, 4), (44, 44), (6, 46), (0, 48), (8, 50), (4, 52)]

def optimizedBody143_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48), (8, 50), (4, 52)]

def optimizedBody143_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_52 optimizedBody143_40

def optimizedBody143_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody143_51, 143, 4)) (some 141) ([2, 4, 6, 8, 10]) (some (2, optimizedBody143_53, 143, 5))

def optimizedBody143_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody143_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (16, 2), (8, 8), (4, 4), (0, 44)]

def optimizedBody143_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody143_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_57 optimizedBody143_40

def optimizedBody143_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody143_56, 143, 6)) (some 113) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody143_58, 143, 7))

def optimizedBody143_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 6), (16, 16), (8, 8), (4, 4)]

def optimizedBody143_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_4 optimizedBody143_60

def optimizedBody143_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_59 optimizedBody143_61

def optimizedBody143_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_55 optimizedBody143_62

def optimizedBody143_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_4 optimizedBody143_63

def optimizedBody143_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_54 optimizedBody143_64

def optimizedBody143_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_50 optimizedBody143_65

def optimizedBody143_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_7 optimizedBody143_66

def optimizedBody143_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_49 optimizedBody143_67

def optimizedBody143_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_48 optimizedBody143_68

def optimizedBody143_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_47 optimizedBody143_69

def optimizedBody143_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_46 optimizedBody143_70

def optimizedBody143_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_44 optimizedBody143_71

def optimizedBody143_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_45 optimizedBody143_72

def optimizedBody143_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_4 optimizedBody143_73

def optimizedBody143_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (6, 6), (16, 16), (8, 8), (4, 4)]

def optimizedBody143_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_4 optimizedBody143_75

def optimizedBody143_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody143_74 optimizedBody143_76

def optimizedBody143_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_77 optimizedBody143_61

def optimizedBody143_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_21 optimizedBody143_78

def optimizedBody143_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_44 optimizedBody143_79

def optimizedBody143_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_4 optimizedBody143_80

def optimizedBody143_82 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody143_81 optimizedBody143_76

def optimizedBody143_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 16), (4, 4), (6, 6), (8, 8)]

def optimizedBody143_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_83 optimizedBody143_12

def optimizedBody143_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_4 optimizedBody143_84

def optimizedBody143_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_82 optimizedBody143_85

def optimizedBody143_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_43 optimizedBody143_86

def optimizedBody143_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_2 optimizedBody143_87

def optimizedBody143_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_4 optimizedBody143_88

def optimizedBody143_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_42 optimizedBody143_89

def optimizedBody143_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_37 optimizedBody143_90

def optimizedBody143_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_4 optimizedBody143_91

def optimizedBody143_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_4 optimizedBody143_92

def optimizedBody143_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_36 optimizedBody143_93

def optimizedBody143_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_3 optimizedBody143_94

def optimizedBody143_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_2 optimizedBody143_95

def optimizedBody143_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_1 optimizedBody143_96

def optimizedBody143_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody143_0 optimizedBody143_97

def optimized143 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(143, 6, optimizedBody143_98)
end InitECandidate.Proofs.StackAnalysis
