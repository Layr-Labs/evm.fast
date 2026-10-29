import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody414_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody414_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody414_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody414_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody414_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551432#64))

def optimizedBody414_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody414_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4)]

def optimizedBody414_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 2), (8, 44), (0, 46)]

def optimizedBody414_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46)]

def optimizedBody414_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody414_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_8 optimizedBody414_9

def optimizedBody414_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody414_7, 414, 2)) (some 186) ([2, 4]) (some (2, optimizedBody414_10, 414, 3))

def optimizedBody414_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody414_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody414_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody414_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody414_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody414_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody414_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody414_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody414_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_18 optimizedBody414_19

def optimizedBody414_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_17 optimizedBody414_20

def optimizedBody414_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_12 optimizedBody414_21

def optimizedBody414_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody414_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody414_22 optimizedBody414_23

def optimizedBody414_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_12 optimizedBody414_12

def optimizedBody414_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_24 optimizedBody414_25

def optimizedBody414_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_16 optimizedBody414_26

def optimizedBody414_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_15 optimizedBody414_27

def optimizedBody414_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_14 optimizedBody414_28

def optimizedBody414_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_12 optimizedBody414_29

def optimizedBody414_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody414_30 optimizedBody414_12

def optimizedBody414_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551440#64))

def optimizedBody414_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 0), (44, 8), (46, 0)]

def optimizedBody414_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 44), (6, 46)]

def optimizedBody414_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46)]

def optimizedBody414_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_35 optimizedBody414_9

def optimizedBody414_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody414_34, 414, 4)) (some 186) ([2, 4]) (some (2, optimizedBody414_36, 414, 5))

def optimizedBody414_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody414_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody414_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody414_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody414_22 optimizedBody414_23

def optimizedBody414_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_41 optimizedBody414_25

def optimizedBody414_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_40 optimizedBody414_42

def optimizedBody414_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_15 optimizedBody414_43

def optimizedBody414_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_39 optimizedBody414_44

def optimizedBody414_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_12 optimizedBody414_45

def optimizedBody414_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody414_46 optimizedBody414_12

def optimizedBody414_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 8), (46, 6)]

def optimizedBody414_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody414_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody414_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_50 optimizedBody414_9

def optimizedBody414_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody414_49, 414, 6)) (some 396) ([2]) (some (2, optimizedBody414_51, 414, 7))

def optimizedBody414_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody414_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody414_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody414_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_55 optimizedBody414_9

def optimizedBody414_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody414_54, 414, 8)) (some 403) ([2]) (some (2, optimizedBody414_56, 414, 9))

def optimizedBody414_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody414_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody414_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_58 optimizedBody414_59

def optimizedBody414_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_12 optimizedBody414_60

def optimizedBody414_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_57 optimizedBody414_61

def optimizedBody414_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_53 optimizedBody414_62

def optimizedBody414_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_12 optimizedBody414_63

def optimizedBody414_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_52 optimizedBody414_64

def optimizedBody414_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_48 optimizedBody414_65

def optimizedBody414_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_12 optimizedBody414_66

def optimizedBody414_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_47 optimizedBody414_67

def optimizedBody414_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_14 optimizedBody414_68

def optimizedBody414_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_38 optimizedBody414_69

def optimizedBody414_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_12 optimizedBody414_70

def optimizedBody414_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_37 optimizedBody414_71

def optimizedBody414_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_33 optimizedBody414_72

def optimizedBody414_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_5 optimizedBody414_73

def optimizedBody414_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_32 optimizedBody414_74

def optimizedBody414_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_3 optimizedBody414_75

def optimizedBody414_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_2 optimizedBody414_76

def optimizedBody414_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_1 optimizedBody414_77

def optimizedBody414_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_12 optimizedBody414_78

def optimizedBody414_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_31 optimizedBody414_79

def optimizedBody414_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_14 optimizedBody414_80

def optimizedBody414_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_13 optimizedBody414_81

def optimizedBody414_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_12 optimizedBody414_82

def optimizedBody414_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_11 optimizedBody414_83

def optimizedBody414_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_6 optimizedBody414_84

def optimizedBody414_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_5 optimizedBody414_85

def optimizedBody414_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_4 optimizedBody414_86

def optimizedBody414_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_3 optimizedBody414_87

def optimizedBody414_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_2 optimizedBody414_88

def optimizedBody414_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_1 optimizedBody414_89

def optimizedBody414_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody414_0 optimizedBody414_90

def optimized414 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(414, 2, optimizedBody414_91)
end InitECandidate.Proofs.StackAnalysis
