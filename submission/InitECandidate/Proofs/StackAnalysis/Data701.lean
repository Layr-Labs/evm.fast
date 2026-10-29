import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody701_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody701_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody701_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody701_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody701_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody701_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody701_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 150#64)

def optimizedBody701_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (50, 4)]

def optimizedBody701_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 50)]

def optimizedBody701_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50)]

def optimizedBody701_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody701_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_9 optimizedBody701_10

def optimizedBody701_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody701_8, 701, 2)) (some 470) ([2]) (some (2, optimizedBody701_11, 701, 3))

def optimizedBody701_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody701_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody701_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50)]

def optimizedBody701_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody701_15, 701, 4)) (some 68) ([2]) (some (2, optimizedBody701_11, 701, 5))

def optimizedBody701_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 0), (50, 50)]

def optimizedBody701_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody701_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody701_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_19 optimizedBody701_10

def optimizedBody701_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody701_18, 701, 6)) (some 69) ([]) (some (2, optimizedBody701_20, 701, 7))

def optimizedBody701_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody701_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody701_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (46, 46), (48, 48), (0, 50)]

def optimizedBody701_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50)]

def optimizedBody701_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_25 optimizedBody701_10

def optimizedBody701_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody701_24, 701, 8)) (some 68) ([2]) (some (2, optimizedBody701_26, 701, 9))

def optimizedBody701_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody701_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody701_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody701_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody701_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 128#64)

def optimizedBody701_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody701_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 48), (50, 10)]

def optimizedBody701_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (0, 50)]

def optimizedBody701_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (0, 50)]

def optimizedBody701_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_36 optimizedBody701_10

def optimizedBody701_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody701_35, 701, 10)) (some 484) ([2, 4, 6, 8, 10]) (some (2, optimizedBody701_37, 701, 11))

def optimizedBody701_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 4), (48, 48)]

def optimizedBody701_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody701_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody701_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_41 optimizedBody701_10

def optimizedBody701_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody701_40, 701, 12)) (some 698) ([2, 4]) (some (2, optimizedBody701_42, 701, 13))

def optimizedBody701_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 4)]

def optimizedBody701_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46), (0, 48)]

def optimizedBody701_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46), (0, 48)]

def optimizedBody701_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_46 optimizedBody701_10

def optimizedBody701_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody701_45, 701, 14)) (some 70) ([2]) (some (2, optimizedBody701_47, 701, 15))

def optimizedBody701_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody701_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4#64)

def optimizedBody701_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody701_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody701_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody701_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_53 optimizedBody701_10

def optimizedBody701_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_52 optimizedBody701_54

def optimizedBody701_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_51 optimizedBody701_55

def optimizedBody701_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_28 optimizedBody701_56

def optimizedBody701_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_50 optimizedBody701_57

def optimizedBody701_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_13 optimizedBody701_58

def optimizedBody701_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody701_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody701_59 optimizedBody701_60

def optimizedBody701_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody701_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody701_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody701_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody701_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody701_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody701_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody701_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody701_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody701_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody701_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody701_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody701_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_72 optimizedBody701_73

def optimizedBody701_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_49 optimizedBody701_74

def optimizedBody701_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_71 optimizedBody701_75

def optimizedBody701_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_28 optimizedBody701_76

def optimizedBody701_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_14 optimizedBody701_77

def optimizedBody701_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_70 optimizedBody701_78

def optimizedBody701_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_69 optimizedBody701_79

def optimizedBody701_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_0 optimizedBody701_80

def optimizedBody701_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_68 optimizedBody701_81

def optimizedBody701_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_67 optimizedBody701_82

def optimizedBody701_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_66 optimizedBody701_83

def optimizedBody701_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_65 optimizedBody701_84

def optimizedBody701_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_64 optimizedBody701_85

def optimizedBody701_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_63 optimizedBody701_86

def optimizedBody701_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_62 optimizedBody701_87

def optimizedBody701_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_13 optimizedBody701_88

def optimizedBody701_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_13 optimizedBody701_89

def optimizedBody701_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_61 optimizedBody701_90

def optimizedBody701_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_49 optimizedBody701_91

def optimizedBody701_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_28 optimizedBody701_92

def optimizedBody701_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_13 optimizedBody701_93

def optimizedBody701_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_48 optimizedBody701_94

def optimizedBody701_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_44 optimizedBody701_95

def optimizedBody701_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_13 optimizedBody701_96

def optimizedBody701_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_43 optimizedBody701_97

def optimizedBody701_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_39 optimizedBody701_98

def optimizedBody701_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_13 optimizedBody701_99

def optimizedBody701_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_38 optimizedBody701_100

def optimizedBody701_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_34 optimizedBody701_101

def optimizedBody701_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_33 optimizedBody701_102

def optimizedBody701_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_32 optimizedBody701_103

def optimizedBody701_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_31 optimizedBody701_104

def optimizedBody701_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_30 optimizedBody701_105

def optimizedBody701_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_28 optimizedBody701_106

def optimizedBody701_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_29 optimizedBody701_107

def optimizedBody701_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_28 optimizedBody701_108

def optimizedBody701_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_13 optimizedBody701_109

def optimizedBody701_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_27 optimizedBody701_110

def optimizedBody701_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_23 optimizedBody701_111

def optimizedBody701_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_22 optimizedBody701_112

def optimizedBody701_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_13 optimizedBody701_113

def optimizedBody701_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_21 optimizedBody701_114

def optimizedBody701_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_17 optimizedBody701_115

def optimizedBody701_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_13 optimizedBody701_116

def optimizedBody701_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_16 optimizedBody701_117

def optimizedBody701_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_9 optimizedBody701_118

def optimizedBody701_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_14 optimizedBody701_119

def optimizedBody701_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_13 optimizedBody701_120

def optimizedBody701_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_12 optimizedBody701_121

def optimizedBody701_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_7 optimizedBody701_122

def optimizedBody701_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_6 optimizedBody701_123

def optimizedBody701_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_5 optimizedBody701_124

def optimizedBody701_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_4 optimizedBody701_125

def optimizedBody701_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_3 optimizedBody701_126

def optimizedBody701_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_2 optimizedBody701_127

def optimizedBody701_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_1 optimizedBody701_128

def optimizedBody701_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody701_0 optimizedBody701_129

def optimized701 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(701, 1, optimizedBody701_130)
end InitECandidate.Proofs.StackAnalysis
