import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody738_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (14, 2)]

def optimizedBody738_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody738_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 4)]

def optimizedBody738_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 12 8#64))

def optimizedBody738_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody738_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 12 16#64))

def optimizedBody738_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 12 24#64))

def optimizedBody738_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 12 32#64))

def optimizedBody738_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 12 40#64))

def optimizedBody738_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 48#64))

def optimizedBody738_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 56#64))

def optimizedBody738_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 64#64))

def optimizedBody738_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 72#64))

def optimizedBody738_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 12 80#64))

def optimizedBody738_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 12 88#64))

def optimizedBody738_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0), (46, 24), (48, 26), (50, 16), (52, 18), (54, 14),
    (56, 22), (58, 20)]

def optimizedBody738_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (0, 2), (8, 8), (4, 4), (12, 12), (10, 10), (28, 44), (16, 46), (14, 48), (20, 50), (22, 52), (18, 54),
    (26, 56), (24, 58)]

def optimizedBody738_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (28, 44), (16, 46), (14, 48), (20, 50), (22, 52), (18, 54), (26, 56), (24, 58)]

def optimizedBody738_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody738_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_17 optimizedBody738_18

def optimizedBody738_20 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody738_16, 738, 2)) (some 712) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody738_19, 738, 3))

def optimizedBody738_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody738_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (22, 22), (16, 16), (14, 14), (26, 26), (24, 24), (20, 20)]

def optimizedBody738_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody738_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (20, 20)]

def optimizedBody738_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 18 8#64))

def optimizedBody738_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (24, 24)]

def optimizedBody738_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 18 16#64))

def optimizedBody738_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (26, 26)]

def optimizedBody738_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 18 24#64))

def optimizedBody738_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (14, 14)]

def optimizedBody738_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 18 32#64))

def optimizedBody738_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (16, 16)]

def optimizedBody738_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 18 40#64))

def optimizedBody738_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody738_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 18 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody738_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody738_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody738_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody738_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody738_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody738_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody738_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody738_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody738_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody738_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody738_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody738_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody738_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody738_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody738_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 28 [2]

def optimizedBody738_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_49 optimizedBody738_50

def optimizedBody738_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_48 optimizedBody738_51

def optimizedBody738_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_47 optimizedBody738_52

def optimizedBody738_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_46 optimizedBody738_53

def optimizedBody738_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_45 optimizedBody738_54

def optimizedBody738_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_44 optimizedBody738_55

def optimizedBody738_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_43 optimizedBody738_56

def optimizedBody738_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_42 optimizedBody738_57

def optimizedBody738_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_41 optimizedBody738_58

def optimizedBody738_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_40 optimizedBody738_59

def optimizedBody738_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_39 optimizedBody738_60

def optimizedBody738_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_38 optimizedBody738_61

def optimizedBody738_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_37 optimizedBody738_62

def optimizedBody738_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_36 optimizedBody738_63

def optimizedBody738_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_35 optimizedBody738_64

def optimizedBody738_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_34 optimizedBody738_65

def optimizedBody738_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_33 optimizedBody738_66

def optimizedBody738_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_32 optimizedBody738_67

def optimizedBody738_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_31 optimizedBody738_68

def optimizedBody738_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_30 optimizedBody738_69

def optimizedBody738_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_29 optimizedBody738_70

def optimizedBody738_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_28 optimizedBody738_71

def optimizedBody738_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_27 optimizedBody738_72

def optimizedBody738_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_26 optimizedBody738_73

def optimizedBody738_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_25 optimizedBody738_74

def optimizedBody738_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_24 optimizedBody738_75

def optimizedBody738_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_23 optimizedBody738_76

def optimizedBody738_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_22 optimizedBody738_77

def optimizedBody738_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_21 optimizedBody738_78

def optimizedBody738_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_20 optimizedBody738_79

def optimizedBody738_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_15 optimizedBody738_80

def optimizedBody738_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_14 optimizedBody738_81

def optimizedBody738_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_4 optimizedBody738_82

def optimizedBody738_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_13 optimizedBody738_83

def optimizedBody738_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_4 optimizedBody738_84

def optimizedBody738_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_12 optimizedBody738_85

def optimizedBody738_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_4 optimizedBody738_86

def optimizedBody738_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_11 optimizedBody738_87

def optimizedBody738_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_4 optimizedBody738_88

def optimizedBody738_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_10 optimizedBody738_89

def optimizedBody738_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_4 optimizedBody738_90

def optimizedBody738_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_9 optimizedBody738_91

def optimizedBody738_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_4 optimizedBody738_92

def optimizedBody738_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_8 optimizedBody738_93

def optimizedBody738_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_4 optimizedBody738_94

def optimizedBody738_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_7 optimizedBody738_95

def optimizedBody738_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_4 optimizedBody738_96

def optimizedBody738_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_6 optimizedBody738_97

def optimizedBody738_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_4 optimizedBody738_98

def optimizedBody738_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_5 optimizedBody738_99

def optimizedBody738_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_4 optimizedBody738_100

def optimizedBody738_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_3 optimizedBody738_101

def optimizedBody738_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_2 optimizedBody738_102

def optimizedBody738_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_1 optimizedBody738_103

def optimizedBody738_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_0 optimizedBody738_104

def optimized738 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(738, 3, optimizedBody738_105)
end InitECandidate.Proofs.StackAnalysis
