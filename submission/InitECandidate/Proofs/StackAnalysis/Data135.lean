import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody135_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 22), (24, 24), (0, 0), (32, 2), (30, 4), (28, 6), (26, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18),
    (20, 20)]

def optimizedBody135_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 24 (Flapjack.WordRegImm.reg 22)))

def optimizedBody135_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody135_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 20)))

def optimizedBody135_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody135_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 18)))

def optimizedBody135_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody135_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody135_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody135_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody135_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody135_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody135_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody135_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_11 optimizedBody135_12

def optimizedBody135_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_10 optimizedBody135_13

def optimizedBody135_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_9 optimizedBody135_14

def optimizedBody135_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_6 optimizedBody135_15

def optimizedBody135_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_8 optimizedBody135_16

def optimizedBody135_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_7 optimizedBody135_17

def optimizedBody135_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody135_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody135_18 optimizedBody135_19

def optimizedBody135_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 32), (4, 30), (6, 28), (8, 26), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0), (46, 24), (48, 20), (50, 18),
    (54, 22)]

def optimizedBody135_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (4, 4), (10, 10), (8, 8), (6, 6), (0, 44), (46, 46), (48, 48), (50, 50), (54, 54)]

def optimizedBody135_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (46, 46), (48, 48), (50, 50), (54, 54)]

def optimizedBody135_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody135_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_23 optimizedBody135_24

def optimizedBody135_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody135_22, 135, 2)) (some 115) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody135_25, 135, 3))

def optimizedBody135_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (10, 8), (8, 6), (6, 4), (4, 12)]

def optimizedBody135_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody135_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 4), (4, 6), (6, 8), (8, 10), (10, 50), (12, 48), (14, 54), (16, 46)]

def optimizedBody135_30 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 131) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody135_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_29 optimizedBody135_30

def optimizedBody135_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_7 optimizedBody135_31

def optimizedBody135_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (48, 48), (6, 6), (4, 4), (50, 50), (54, 54), (10, 10), (8, 8)]

def optimizedBody135_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 12) optimizedBody135_32 optimizedBody135_33

def optimizedBody135_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody135_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody135_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody135_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551576#64))

def optimizedBody135_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 424#64)))

def optimizedBody135_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 0), (46, 46), (48, 48), (50, 50), (52, 2), (54, 54)]

def optimizedBody135_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (12, 46), (8, 48), (6, 50), (4, 52), (10, 54)]

def optimizedBody135_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (12, 46), (8, 48), (6, 50), (4, 52), (10, 54)]

def optimizedBody135_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_42 optimizedBody135_24

def optimizedBody135_44 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody135_41, 135, 4)) (some 124) ([2, 4, 6, 8, 10]) (some (2, optimizedBody135_43, 135, 5))

def optimizedBody135_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody135_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody135_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 1#64)

def optimizedBody135_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody135_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody135_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody135_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody135_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody135_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10), (8, 8), (6, 6), (2, 2)]

def optimizedBody135_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 10#64)

def optimizedBody135_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody135_56 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 128) ([0, 2, 4, 6, 8, 10, 12]) (none)

def optimizedBody135_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_55 optimizedBody135_56

def optimizedBody135_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_54 optimizedBody135_57

def optimizedBody135_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_53 optimizedBody135_58

def optimizedBody135_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_49 optimizedBody135_59

def optimizedBody135_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_48 optimizedBody135_60

def optimizedBody135_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_52 optimizedBody135_61

def optimizedBody135_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_51 optimizedBody135_62

def optimizedBody135_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_50 optimizedBody135_63

def optimizedBody135_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_49 optimizedBody135_64

def optimizedBody135_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_48 optimizedBody135_65

def optimizedBody135_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_47 optimizedBody135_66

def optimizedBody135_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_46 optimizedBody135_67

def optimizedBody135_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_45 optimizedBody135_68

def optimizedBody135_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_7 optimizedBody135_69

def optimizedBody135_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_44 optimizedBody135_70

def optimizedBody135_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_40 optimizedBody135_71

def optimizedBody135_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_39 optimizedBody135_72

def optimizedBody135_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_38 optimizedBody135_73

def optimizedBody135_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_37 optimizedBody135_74

def optimizedBody135_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_36 optimizedBody135_75

def optimizedBody135_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_35 optimizedBody135_76

def optimizedBody135_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_7 optimizedBody135_77

def optimizedBody135_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_7 optimizedBody135_78

def optimizedBody135_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_34 optimizedBody135_79

def optimizedBody135_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_28 optimizedBody135_80

def optimizedBody135_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_27 optimizedBody135_81

def optimizedBody135_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_7 optimizedBody135_82

def optimizedBody135_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_26 optimizedBody135_83

def optimizedBody135_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_21 optimizedBody135_84

def optimizedBody135_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_7 optimizedBody135_85

def optimizedBody135_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_7 optimizedBody135_86

def optimizedBody135_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_20 optimizedBody135_87

def optimizedBody135_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_6 optimizedBody135_88

def optimizedBody135_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_5 optimizedBody135_89

def optimizedBody135_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_4 optimizedBody135_90

def optimizedBody135_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_3 optimizedBody135_91

def optimizedBody135_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_2 optimizedBody135_92

def optimizedBody135_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_1 optimizedBody135_93

def optimizedBody135_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody135_0 optimizedBody135_94

def optimized135 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(135, 13, optimizedBody135_95)
end InitECandidate.Proofs.StackAnalysis
