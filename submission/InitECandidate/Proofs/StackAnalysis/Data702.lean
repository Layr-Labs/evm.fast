import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody702_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody702_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody702_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody702_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody702_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody702_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody702_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6000#64)

def optimizedBody702_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (50, 4)]

def optimizedBody702_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 50)]

def optimizedBody702_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50)]

def optimizedBody702_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody702_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_9 optimizedBody702_10

def optimizedBody702_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_8, 702, 2)) (some 470) ([2]) (some (2, optimizedBody702_11, 702, 3))

def optimizedBody702_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody702_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody702_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50)]

def optimizedBody702_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_15, 702, 4)) (some 68) ([2]) (some (2, optimizedBody702_11, 702, 5))

def optimizedBody702_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 0), (50, 50)]

def optimizedBody702_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody702_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody702_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_19 optimizedBody702_10

def optimizedBody702_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_18, 702, 6)) (some 69) ([]) (some (2, optimizedBody702_20, 702, 7))

def optimizedBody702_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody702_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody702_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (46, 46), (48, 48), (0, 50)]

def optimizedBody702_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50)]

def optimizedBody702_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_25 optimizedBody702_10

def optimizedBody702_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_24, 702, 8)) (some 68) ([2]) (some (2, optimizedBody702_26, 702, 9))

def optimizedBody702_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody702_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody702_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody702_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody702_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 96#64)

def optimizedBody702_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody702_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 48), (50, 10)]

def optimizedBody702_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (0, 50)]

def optimizedBody702_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (0, 50)]

def optimizedBody702_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_36 optimizedBody702_10

def optimizedBody702_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_35, 702, 10)) (some 484) ([2, 4, 6, 8, 10]) (some (2, optimizedBody702_37, 702, 11))

def optimizedBody702_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 4), (48, 48)]

def optimizedBody702_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody702_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody702_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_41 optimizedBody702_10

def optimizedBody702_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_40, 702, 12)) (some 699) ([2, 4]) (some (2, optimizedBody702_42, 702, 13))

def optimizedBody702_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 4)]

def optimizedBody702_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46), (0, 48)]

def optimizedBody702_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46), (0, 48)]

def optimizedBody702_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_46 optimizedBody702_10

def optimizedBody702_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody702_45, 702, 14)) (some 70) ([2]) (some (2, optimizedBody702_47, 702, 15))

def optimizedBody702_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody702_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4#64)

def optimizedBody702_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody702_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody702_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody702_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_53 optimizedBody702_10

def optimizedBody702_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_52 optimizedBody702_54

def optimizedBody702_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_51 optimizedBody702_55

def optimizedBody702_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_28 optimizedBody702_56

def optimizedBody702_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_50 optimizedBody702_57

def optimizedBody702_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_13 optimizedBody702_58

def optimizedBody702_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody702_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody702_59 optimizedBody702_60

def optimizedBody702_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody702_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody702_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody702_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody702_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody702_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody702_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody702_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody702_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody702_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody702_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody702_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody702_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_72 optimizedBody702_73

def optimizedBody702_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_49 optimizedBody702_74

def optimizedBody702_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_71 optimizedBody702_75

def optimizedBody702_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_28 optimizedBody702_76

def optimizedBody702_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_14 optimizedBody702_77

def optimizedBody702_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_70 optimizedBody702_78

def optimizedBody702_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_69 optimizedBody702_79

def optimizedBody702_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_0 optimizedBody702_80

def optimizedBody702_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_68 optimizedBody702_81

def optimizedBody702_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_67 optimizedBody702_82

def optimizedBody702_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_66 optimizedBody702_83

def optimizedBody702_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_65 optimizedBody702_84

def optimizedBody702_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_64 optimizedBody702_85

def optimizedBody702_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_63 optimizedBody702_86

def optimizedBody702_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_62 optimizedBody702_87

def optimizedBody702_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_13 optimizedBody702_88

def optimizedBody702_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_13 optimizedBody702_89

def optimizedBody702_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_61 optimizedBody702_90

def optimizedBody702_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_49 optimizedBody702_91

def optimizedBody702_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_28 optimizedBody702_92

def optimizedBody702_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_13 optimizedBody702_93

def optimizedBody702_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_48 optimizedBody702_94

def optimizedBody702_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_44 optimizedBody702_95

def optimizedBody702_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_13 optimizedBody702_96

def optimizedBody702_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_43 optimizedBody702_97

def optimizedBody702_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_39 optimizedBody702_98

def optimizedBody702_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_13 optimizedBody702_99

def optimizedBody702_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_38 optimizedBody702_100

def optimizedBody702_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_34 optimizedBody702_101

def optimizedBody702_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_33 optimizedBody702_102

def optimizedBody702_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_32 optimizedBody702_103

def optimizedBody702_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_31 optimizedBody702_104

def optimizedBody702_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_30 optimizedBody702_105

def optimizedBody702_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_28 optimizedBody702_106

def optimizedBody702_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_29 optimizedBody702_107

def optimizedBody702_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_28 optimizedBody702_108

def optimizedBody702_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_13 optimizedBody702_109

def optimizedBody702_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_27 optimizedBody702_110

def optimizedBody702_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_23 optimizedBody702_111

def optimizedBody702_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_22 optimizedBody702_112

def optimizedBody702_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_13 optimizedBody702_113

def optimizedBody702_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_21 optimizedBody702_114

def optimizedBody702_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_17 optimizedBody702_115

def optimizedBody702_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_13 optimizedBody702_116

def optimizedBody702_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_16 optimizedBody702_117

def optimizedBody702_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_9 optimizedBody702_118

def optimizedBody702_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_14 optimizedBody702_119

def optimizedBody702_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_13 optimizedBody702_120

def optimizedBody702_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_12 optimizedBody702_121

def optimizedBody702_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_7 optimizedBody702_122

def optimizedBody702_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_6 optimizedBody702_123

def optimizedBody702_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_5 optimizedBody702_124

def optimizedBody702_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_4 optimizedBody702_125

def optimizedBody702_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_3 optimizedBody702_126

def optimizedBody702_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_2 optimizedBody702_127

def optimizedBody702_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_1 optimizedBody702_128

def optimizedBody702_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody702_0 optimizedBody702_129

def optimized702 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(702, 1, optimizedBody702_130)
end InitECandidate.Proofs.StackAnalysis
