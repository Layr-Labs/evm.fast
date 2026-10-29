import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody480_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 12), (6, 14), (8, 16), (44, 0), (46, 16), (48, 8), (50, 4), (52, 12), (54, 2), (56, 10), (58, 6),
    (60, 14)]

def optimizedBody480_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (14, 44), (46, 46), (8, 48), (12, 50), (48, 52), (10, 54), (50, 56), (6, 58), (52, 60)]

def optimizedBody480_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (14, 44), (46, 46), (8, 48), (12, 50), (48, 52), (10, 54), (50, 56), (6, 58), (52, 60)]

def optimizedBody480_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody480_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_2 optimizedBody480_3

def optimizedBody480_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody480_1, 480, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody480_4, 480, 3))

def optimizedBody480_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody480_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody480_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody480_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody480_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody480_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2, 4]

def optimizedBody480_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_10 optimizedBody480_11

def optimizedBody480_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_9 optimizedBody480_12

def optimizedBody480_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_8 optimizedBody480_13

def optimizedBody480_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_14

def optimizedBody480_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody480_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody480_15 optimizedBody480_16

def optimizedBody480_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 12), (6, 6), (8, 8), (44, 14), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody480_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (8, 46), (4, 48), (0, 50), (6, 52)]

def optimizedBody480_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (4, 48), (0, 50), (6, 52)]

def optimizedBody480_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_20 optimizedBody480_3

def optimizedBody480_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody480_19, 480, 4)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody480_21, 480, 5))

def optimizedBody480_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 10)]

def optimizedBody480_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody480_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody480_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_25 optimizedBody480_3

def optimizedBody480_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody480_24, 480, 6)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody480_26, 480, 7))

def optimizedBody480_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44)]

def optimizedBody480_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44)]

def optimizedBody480_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44)]

def optimizedBody480_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_30 optimizedBody480_3

def optimizedBody480_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody480_29, 480, 8)) (some 463) ([2, 4]) (some (2, optimizedBody480_31, 480, 9))

def optimizedBody480_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody480_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2, 4]

def optimizedBody480_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_10 optimizedBody480_34

def optimizedBody480_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_9 optimizedBody480_35

def optimizedBody480_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_33 optimizedBody480_36

def optimizedBody480_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_37

def optimizedBody480_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody480_38 optimizedBody480_16

def optimizedBody480_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody480_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody480_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody480_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody480_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody480_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 6), (46, 0)]

def optimizedBody480_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody480_24, 480, 10)) (some 464) ([2]) (some (2, optimizedBody480_26, 480, 11))

def optimizedBody480_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4)]

def optimizedBody480_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 44), (6, 46)]

def optimizedBody480_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46)]

def optimizedBody480_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_49 optimizedBody480_3

def optimizedBody480_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody480_48, 480, 12)) (some 464) ([2]) (some (2, optimizedBody480_50, 480, 13))

def optimizedBody480_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody480_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4]

def optimizedBody480_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_10 optimizedBody480_53

def optimizedBody480_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_9 optimizedBody480_54

def optimizedBody480_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_8 optimizedBody480_55

def optimizedBody480_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_56

def optimizedBody480_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 0) optimizedBody480_57 optimizedBody480_16

def optimizedBody480_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 8), (46, 6), (50, 0)]

def optimizedBody480_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody480_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody480_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_61 optimizedBody480_3

def optimizedBody480_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody480_60, 480, 14)) (some 479) ([2]) (some (2, optimizedBody480_62, 480, 15))

def optimizedBody480_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0), (48, 4), (50, 50)]

def optimizedBody480_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (12, 44), (6, 46), (8, 48), (0, 50)]

def optimizedBody480_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (6, 46), (8, 48), (0, 50)]

def optimizedBody480_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_66 optimizedBody480_3

def optimizedBody480_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody480_65, 480, 16)) (some 479) ([2]) (some (2, optimizedBody480_67, 480, 17))

def optimizedBody480_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody480_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4]

def optimizedBody480_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_10 optimizedBody480_70

def optimizedBody480_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_9 optimizedBody480_71

def optimizedBody480_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_33 optimizedBody480_72

def optimizedBody480_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_73

def optimizedBody480_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody480_74 optimizedBody480_16

def optimizedBody480_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody480_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody480_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody480_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody480_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_79 optimizedBody480_71

def optimizedBody480_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_78 optimizedBody480_80

def optimizedBody480_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_77 optimizedBody480_81

def optimizedBody480_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_76 optimizedBody480_82

def optimizedBody480_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_83

def optimizedBody480_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_84

def optimizedBody480_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_75 optimizedBody480_85

def optimizedBody480_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_33 optimizedBody480_86

def optimizedBody480_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_69 optimizedBody480_87

def optimizedBody480_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_88

def optimizedBody480_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_68 optimizedBody480_89

def optimizedBody480_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_64 optimizedBody480_90

def optimizedBody480_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_91

def optimizedBody480_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_63 optimizedBody480_92

def optimizedBody480_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_59 optimizedBody480_93

def optimizedBody480_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_94

def optimizedBody480_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_95

def optimizedBody480_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_58 optimizedBody480_96

def optimizedBody480_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_52 optimizedBody480_97

def optimizedBody480_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_98

def optimizedBody480_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_51 optimizedBody480_99

def optimizedBody480_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_47 optimizedBody480_100

def optimizedBody480_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_101

def optimizedBody480_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_46 optimizedBody480_102

def optimizedBody480_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_45 optimizedBody480_103

def optimizedBody480_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_44 optimizedBody480_104

def optimizedBody480_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_43 optimizedBody480_105

def optimizedBody480_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_42 optimizedBody480_106

def optimizedBody480_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_41 optimizedBody480_107

def optimizedBody480_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_40 optimizedBody480_108

def optimizedBody480_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_109

def optimizedBody480_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_110

def optimizedBody480_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_39 optimizedBody480_111

def optimizedBody480_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_33 optimizedBody480_112

def optimizedBody480_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_7 optimizedBody480_113

def optimizedBody480_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_114

def optimizedBody480_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_32 optimizedBody480_115

def optimizedBody480_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_28 optimizedBody480_116

def optimizedBody480_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_117

def optimizedBody480_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_27 optimizedBody480_118

def optimizedBody480_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_23 optimizedBody480_119

def optimizedBody480_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_120

def optimizedBody480_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_22 optimizedBody480_121

def optimizedBody480_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_18 optimizedBody480_122

def optimizedBody480_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_123

def optimizedBody480_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_124

def optimizedBody480_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_17 optimizedBody480_125

def optimizedBody480_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_8 optimizedBody480_126

def optimizedBody480_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_7 optimizedBody480_127

def optimizedBody480_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_6 optimizedBody480_128

def optimizedBody480_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_5 optimizedBody480_129

def optimizedBody480_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody480_0 optimizedBody480_130

def optimized480 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(480, 9, optimizedBody480_131)
end InitECandidate.Proofs.StackAnalysis
