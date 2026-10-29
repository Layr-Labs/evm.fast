import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody401_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody401_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody401_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody401_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody401_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_2 optimizedBody401_3

def optimizedBody401_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody401_1, 401, 2)) (some 399) ([2]) (some (2, optimizedBody401_4, 401, 3))

def optimizedBody401_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody401_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody401_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody401_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody401_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody401_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551488#64))

def optimizedBody401_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody401_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 2)]

def optimizedBody401_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (12, 44), (46, 46), (10, 48)]

def optimizedBody401_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (46, 46), (10, 48)]

def optimizedBody401_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_15 optimizedBody401_3

def optimizedBody401_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody401_14, 401, 4)) (some 79) ([2, 4, 6]) (some (2, optimizedBody401_16, 401, 5))

def optimizedBody401_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody401_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody401_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody401_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody401_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody401_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody401_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4, 6, 8]

def optimizedBody401_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_23 optimizedBody401_24

def optimizedBody401_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_22 optimizedBody401_25

def optimizedBody401_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_21 optimizedBody401_26

def optimizedBody401_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_20 optimizedBody401_27

def optimizedBody401_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_19 optimizedBody401_28

def optimizedBody401_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_29

def optimizedBody401_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody401_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody401_30 optimizedBody401_31

def optimizedBody401_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (44, 12), (46, 46)]

def optimizedBody401_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody401_1, 401, 6)) (some 400) ([2]) (some (2, optimizedBody401_4, 401, 7))

def optimizedBody401_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (50, 0)]

def optimizedBody401_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody401_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody401_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_37 optimizedBody401_3

def optimizedBody401_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody401_36, 401, 8)) (some 69) ([]) (some (2, optimizedBody401_38, 401, 9))

def optimizedBody401_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody401_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody401_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (46, 48), (50, 50)]

def optimizedBody401_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (50, 50)]

def optimizedBody401_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_43 optimizedBody401_3

def optimizedBody401_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody401_42, 401, 10)) (some 68) ([2]) (some (2, optimizedBody401_44, 401, 11))

def optimizedBody401_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 0)]

def optimizedBody401_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody401_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 50)]

def optimizedBody401_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody401_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody401_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_50 optimizedBody401_3

def optimizedBody401_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody401_49, 401, 12)) (some 158) ([2, 4, 6]) (some (2, optimizedBody401_51, 401, 13))

def optimizedBody401_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody401_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (4, 4), (6, 6), (44, 44), (0, 46)]

def optimizedBody401_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody401_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_55 optimizedBody401_3

def optimizedBody401_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody401_54, 401, 14)) (some 307) ([2, 4]) (some (2, optimizedBody401_56, 401, 15))

def optimizedBody401_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 8), (48, 4), (50, 6)]

def optimizedBody401_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 44), (0, 46), (10, 48), (12, 50)]

def optimizedBody401_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (0, 46), (10, 48), (12, 50)]

def optimizedBody401_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_60 optimizedBody401_3

def optimizedBody401_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody401_59, 401, 16)) (some 70) ([2]) (some (2, optimizedBody401_61, 401, 17))

def optimizedBody401_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2, 4, 6, 8]

def optimizedBody401_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_23 optimizedBody401_63

def optimizedBody401_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_22 optimizedBody401_64

def optimizedBody401_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_21 optimizedBody401_65

def optimizedBody401_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_20 optimizedBody401_66

def optimizedBody401_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_19 optimizedBody401_67

def optimizedBody401_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_68

def optimizedBody401_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody401_69 optimizedBody401_31

def optimizedBody401_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 12), (44, 14)]

def optimizedBody401_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 6), (10, 4), (12, 44)]

def optimizedBody401_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44)]

def optimizedBody401_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_73 optimizedBody401_3

def optimizedBody401_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody401_72, 401, 18)) (some 162) ([2, 4]) (some (2, optimizedBody401_74, 401, 19))

def optimizedBody401_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody401_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody401_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody401_30 optimizedBody401_31

def optimizedBody401_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 0)]

def optimizedBody401_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody401_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody401_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7#64)

def optimizedBody401_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody401_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_83 optimizedBody401_3

def optimizedBody401_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_82 optimizedBody401_84

def optimizedBody401_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_81 optimizedBody401_85

def optimizedBody401_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_18 optimizedBody401_86

def optimizedBody401_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_80 optimizedBody401_87

def optimizedBody401_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_88

def optimizedBody401_90 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody401_89 optimizedBody401_31

def optimizedBody401_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (44, 12)]

def optimizedBody401_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (10, 2), (6, 6), (4, 4), (0, 44)]

def optimizedBody401_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody401_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_93 optimizedBody401_3

def optimizedBody401_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody401_92, 401, 20)) (some 146) ([2, 4]) (some (2, optimizedBody401_94, 401, 21))

def optimizedBody401_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody401_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody401_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_96 optimizedBody401_97

def optimizedBody401_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_98

def optimizedBody401_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_95 optimizedBody401_99

def optimizedBody401_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_91 optimizedBody401_100

def optimizedBody401_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_101

def optimizedBody401_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_102

def optimizedBody401_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_90 optimizedBody401_103

def optimizedBody401_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_79 optimizedBody401_104

def optimizedBody401_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_40 optimizedBody401_105

def optimizedBody401_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_106

def optimizedBody401_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_107

def optimizedBody401_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_78 optimizedBody401_108

def optimizedBody401_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_77 optimizedBody401_109

def optimizedBody401_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_76 optimizedBody401_110

def optimizedBody401_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_111

def optimizedBody401_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_75 optimizedBody401_112

def optimizedBody401_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_71 optimizedBody401_113

def optimizedBody401_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_114

def optimizedBody401_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_115

def optimizedBody401_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_70 optimizedBody401_116

def optimizedBody401_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_19 optimizedBody401_117

def optimizedBody401_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_18 optimizedBody401_118

def optimizedBody401_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_119

def optimizedBody401_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_62 optimizedBody401_120

def optimizedBody401_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_58 optimizedBody401_121

def optimizedBody401_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_122

def optimizedBody401_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_57 optimizedBody401_123

def optimizedBody401_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_53 optimizedBody401_124

def optimizedBody401_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_125

def optimizedBody401_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_52 optimizedBody401_126

def optimizedBody401_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_48 optimizedBody401_127

def optimizedBody401_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_47 optimizedBody401_128

def optimizedBody401_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_46 optimizedBody401_129

def optimizedBody401_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_130

def optimizedBody401_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_45 optimizedBody401_131

def optimizedBody401_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_41 optimizedBody401_132

def optimizedBody401_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_40 optimizedBody401_133

def optimizedBody401_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_134

def optimizedBody401_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_39 optimizedBody401_135

def optimizedBody401_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_35 optimizedBody401_136

def optimizedBody401_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_137

def optimizedBody401_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_34 optimizedBody401_138

def optimizedBody401_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_33 optimizedBody401_139

def optimizedBody401_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_140

def optimizedBody401_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_141

def optimizedBody401_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_32 optimizedBody401_142

def optimizedBody401_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_19 optimizedBody401_143

def optimizedBody401_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_18 optimizedBody401_144

def optimizedBody401_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_145

def optimizedBody401_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_17 optimizedBody401_146

def optimizedBody401_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_13 optimizedBody401_147

def optimizedBody401_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_12 optimizedBody401_148

def optimizedBody401_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_11 optimizedBody401_149

def optimizedBody401_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_10 optimizedBody401_150

def optimizedBody401_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_9 optimizedBody401_151

def optimizedBody401_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_8 optimizedBody401_152

def optimizedBody401_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_7 optimizedBody401_153

def optimizedBody401_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_6 optimizedBody401_154

def optimizedBody401_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_5 optimizedBody401_155

def optimizedBody401_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody401_0 optimizedBody401_156

def optimized401 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(401, 3, optimizedBody401_157)
end InitECandidate.Proofs.StackAnalysis
