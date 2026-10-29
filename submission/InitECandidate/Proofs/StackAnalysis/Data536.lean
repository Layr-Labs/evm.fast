import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody536_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody536_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody536_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody536_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody536_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody536_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody536_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody536_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody536_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_6 optimizedBody536_7

def optimizedBody536_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody536_5, 536, 2)) (some 470) ([2]) (some (2, optimizedBody536_8, 536, 3))

def optimizedBody536_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46)]

def optimizedBody536_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_2 optimizedBody536_10

def optimizedBody536_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_9 optimizedBody536_11

def optimizedBody536_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_4 optimizedBody536_12

def optimizedBody536_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_3 optimizedBody536_13

def optimizedBody536_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_2 optimizedBody536_14

def optimizedBody536_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody536_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody536_5, 536, 4)) (some 470) ([2]) (some (2, optimizedBody536_8, 536, 5))

def optimizedBody536_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_17 optimizedBody536_11

def optimizedBody536_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_4 optimizedBody536_18

def optimizedBody536_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_16 optimizedBody536_19

def optimizedBody536_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_2 optimizedBody536_20

def optimizedBody536_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody536_15 optimizedBody536_21

def optimizedBody536_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody536_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody536_23, 536, 6)) (some 69) ([]) (some (2, optimizedBody536_8, 536, 7))

def optimizedBody536_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody536_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 0)]

def optimizedBody536_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (8, 46), (50, 50)]

def optimizedBody536_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (50, 50)]

def optimizedBody536_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_28 optimizedBody536_7

def optimizedBody536_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody536_27, 536, 8)) (some 68) ([2]) (some (2, optimizedBody536_29, 536, 9))

def optimizedBody536_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody536_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody536_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody536_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody536_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody536_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody536_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody536_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody536_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody536_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 10), (48, 8), (50, 50)]

def optimizedBody536_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody536_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody536_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_42 optimizedBody536_7

def optimizedBody536_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody536_41, 536, 10)) (some 484) ([2, 4, 6, 8, 10]) (some (2, optimizedBody536_43, 536, 11))

def optimizedBody536_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (48, 4), (46, 46)]

def optimizedBody536_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (10, 2), (6, 6), (44, 44), (48, 48), (0, 46)]

def optimizedBody536_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody536_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_47 optimizedBody536_7

def optimizedBody536_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody536_46, 536, 12)) (some 146) ([2, 4]) (some (2, optimizedBody536_48, 536, 13))

def optimizedBody536_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 8), (48, 48), (50, 4), (52, 10), (54, 6)]

def optimizedBody536_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (46, 48), (4, 50), (0, 52), (6, 54)]

def optimizedBody536_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (46, 48), (4, 50), (0, 52), (6, 54)]

def optimizedBody536_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_52 optimizedBody536_7

def optimizedBody536_54 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody536_51, 536, 14)) (some 70) ([2]) (some (2, optimizedBody536_53, 536, 15))

def optimizedBody536_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46)]

def optimizedBody536_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody536_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody536_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_57 optimizedBody536_7

def optimizedBody536_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody536_56, 536, 16)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody536_58, 536, 17))

def optimizedBody536_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody536_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody536_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody536_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody536_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody536_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_64 optimizedBody536_7

def optimizedBody536_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody536_63, 536, 18)) (some 490) ([2]) (some (2, optimizedBody536_65, 536, 19))

def optimizedBody536_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody536_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody536_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_67 optimizedBody536_68

def optimizedBody536_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_1 optimizedBody536_69

def optimizedBody536_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_2 optimizedBody536_70

def optimizedBody536_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_66 optimizedBody536_71

def optimizedBody536_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_62 optimizedBody536_72

def optimizedBody536_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_61 optimizedBody536_73

def optimizedBody536_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_60 optimizedBody536_74

def optimizedBody536_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_2 optimizedBody536_75

def optimizedBody536_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_59 optimizedBody536_76

def optimizedBody536_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_55 optimizedBody536_77

def optimizedBody536_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_2 optimizedBody536_78

def optimizedBody536_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_54 optimizedBody536_79

def optimizedBody536_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_50 optimizedBody536_80

def optimizedBody536_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_2 optimizedBody536_81

def optimizedBody536_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_49 optimizedBody536_82

def optimizedBody536_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_45 optimizedBody536_83

def optimizedBody536_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_2 optimizedBody536_84

def optimizedBody536_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_44 optimizedBody536_85

def optimizedBody536_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_40 optimizedBody536_86

def optimizedBody536_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_39 optimizedBody536_87

def optimizedBody536_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_38 optimizedBody536_88

def optimizedBody536_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_36 optimizedBody536_89

def optimizedBody536_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_37 optimizedBody536_90

def optimizedBody536_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_36 optimizedBody536_91

def optimizedBody536_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_35 optimizedBody536_92

def optimizedBody536_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_34 optimizedBody536_93

def optimizedBody536_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_33 optimizedBody536_94

def optimizedBody536_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_32 optimizedBody536_95

def optimizedBody536_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_31 optimizedBody536_96

def optimizedBody536_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_2 optimizedBody536_97

def optimizedBody536_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_30 optimizedBody536_98

def optimizedBody536_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_26 optimizedBody536_99

def optimizedBody536_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_25 optimizedBody536_100

def optimizedBody536_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_2 optimizedBody536_101

def optimizedBody536_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_24 optimizedBody536_102

def optimizedBody536_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_5 optimizedBody536_103

def optimizedBody536_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_2 optimizedBody536_104

def optimizedBody536_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_22 optimizedBody536_105

def optimizedBody536_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_1 optimizedBody536_106

def optimizedBody536_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody536_0 optimizedBody536_107

def optimized536 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(536, 2, optimizedBody536_108)
end InitECandidate.Proofs.StackAnalysis
