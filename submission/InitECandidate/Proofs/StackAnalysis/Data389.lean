import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody389_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (50, 4), (46, 2)]

def optimizedBody389_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (6, 44), (50, 50), (46, 46)]

def optimizedBody389_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (50, 50), (46, 46)]

def optimizedBody389_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody389_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_2 optimizedBody389_3

def optimizedBody389_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody389_1, 389, 2)) (some 186) ([2, 4]) (some (2, optimizedBody389_4, 389, 3))

def optimizedBody389_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody389_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody389_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody389_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody389_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody389_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_9 optimizedBody389_10

def optimizedBody389_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_8 optimizedBody389_11

def optimizedBody389_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_6 optimizedBody389_12

def optimizedBody389_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody389_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody389_13 optimizedBody389_14

def optimizedBody389_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody389_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody389_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody389_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551600#64))

def optimizedBody389_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody389_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551408#64))

def optimizedBody389_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody389_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 6), (48, 4), (50, 50), (46, 46)]

def optimizedBody389_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (50, 50), (0, 46)]

def optimizedBody389_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (0, 46)]

def optimizedBody389_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_25 optimizedBody389_3

def optimizedBody389_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody389_24, 389, 4)) (some 66) ([2]) (some (2, optimizedBody389_26, 389, 5))

def optimizedBody389_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (50, 50), (0, 0)]

def optimizedBody389_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_6 optimizedBody389_28

def optimizedBody389_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_27 optimizedBody389_29

def optimizedBody389_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_23 optimizedBody389_30

def optimizedBody389_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_22 optimizedBody389_31

def optimizedBody389_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_6 optimizedBody389_32

def optimizedBody389_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 6), (48, 4), (50, 50), (0, 46)]

def optimizedBody389_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_6 optimizedBody389_34

def optimizedBody389_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody389_33 optimizedBody389_35

def optimizedBody389_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody389_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 2), (48, 48), (50, 50), (52, 0)]

def optimizedBody389_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (46, 48), (4, 50), (52, 52)]

def optimizedBody389_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (46, 48), (4, 50), (52, 52)]

def optimizedBody389_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_40 optimizedBody389_3

def optimizedBody389_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody389_39, 389, 6)) (some 68) ([2]) (some (2, optimizedBody389_41, 389, 7))

def optimizedBody389_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 4), (50, 0), (52, 52)]

def optimizedBody389_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (8, 50), (10, 52)]

def optimizedBody389_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (8, 50), (10, 52)]

def optimizedBody389_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_45 optimizedBody389_3

def optimizedBody389_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody389_44, 389, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody389_46, 389, 9))

def optimizedBody389_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody389_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody389_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12 2

def optimizedBody389_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 18446744073709551600#64))

def optimizedBody389_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody389_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12)]

def optimizedBody389_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 18446744073709551416#64))

def optimizedBody389_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody389_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 10)]

def optimizedBody389_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody389_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody389_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody389_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody389_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody389_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody389_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody389_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody389_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody389_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody389_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody389_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody389_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 12 (Flapjack.WordRegImm.imm 18446744073709551600#64)))

def optimizedBody389_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 12 18446744073709551600#64))

def optimizedBody389_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody389_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody389_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody389_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody389_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_74 optimizedBody389_3

def optimizedBody389_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody389_73, 389, 10)) (some 193) ([2, 4]) (some (2, optimizedBody389_75, 389, 11))

def optimizedBody389_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody389_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_9 optimizedBody389_77

def optimizedBody389_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_8 optimizedBody389_78

def optimizedBody389_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_6 optimizedBody389_79

def optimizedBody389_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_76 optimizedBody389_80

def optimizedBody389_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_72 optimizedBody389_81

def optimizedBody389_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_68 optimizedBody389_82

def optimizedBody389_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_67 optimizedBody389_83

def optimizedBody389_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_71 optimizedBody389_84

def optimizedBody389_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_70 optimizedBody389_85

def optimizedBody389_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_53 optimizedBody389_86

def optimizedBody389_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_69 optimizedBody389_87

def optimizedBody389_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_53 optimizedBody389_88

def optimizedBody389_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_68 optimizedBody389_89

def optimizedBody389_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_67 optimizedBody389_90

def optimizedBody389_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_66 optimizedBody389_91

def optimizedBody389_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_58 optimizedBody389_92

def optimizedBody389_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_65 optimizedBody389_93

def optimizedBody389_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_64 optimizedBody389_94

def optimizedBody389_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_63 optimizedBody389_95

def optimizedBody389_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_62 optimizedBody389_96

def optimizedBody389_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_58 optimizedBody389_97

def optimizedBody389_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_61 optimizedBody389_98

def optimizedBody389_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_60 optimizedBody389_99

def optimizedBody389_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_59 optimizedBody389_100

def optimizedBody389_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_58 optimizedBody389_101

def optimizedBody389_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_57 optimizedBody389_102

def optimizedBody389_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_56 optimizedBody389_103

def optimizedBody389_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_55 optimizedBody389_104

def optimizedBody389_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_54 optimizedBody389_105

def optimizedBody389_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_53 optimizedBody389_106

def optimizedBody389_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_52 optimizedBody389_107

def optimizedBody389_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_51 optimizedBody389_108

def optimizedBody389_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_50 optimizedBody389_109

def optimizedBody389_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_49 optimizedBody389_110

def optimizedBody389_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_48 optimizedBody389_111

def optimizedBody389_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_6 optimizedBody389_112

def optimizedBody389_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_47 optimizedBody389_113

def optimizedBody389_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_43 optimizedBody389_114

def optimizedBody389_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_6 optimizedBody389_115

def optimizedBody389_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_42 optimizedBody389_116

def optimizedBody389_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_38 optimizedBody389_117

def optimizedBody389_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_37 optimizedBody389_118

def optimizedBody389_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_7 optimizedBody389_119

def optimizedBody389_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_6 optimizedBody389_120

def optimizedBody389_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_36 optimizedBody389_121

def optimizedBody389_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_21 optimizedBody389_122

def optimizedBody389_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_20 optimizedBody389_123

def optimizedBody389_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_19 optimizedBody389_124

def optimizedBody389_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_18 optimizedBody389_125

def optimizedBody389_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_17 optimizedBody389_126

def optimizedBody389_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_16 optimizedBody389_127

def optimizedBody389_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_6 optimizedBody389_128

def optimizedBody389_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_6 optimizedBody389_129

def optimizedBody389_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_15 optimizedBody389_130

def optimizedBody389_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_8 optimizedBody389_131

def optimizedBody389_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_7 optimizedBody389_132

def optimizedBody389_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_6 optimizedBody389_133

def optimizedBody389_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_5 optimizedBody389_134

def optimizedBody389_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody389_0 optimizedBody389_135

def optimized389 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(389, 3, optimizedBody389_136)
end InitECandidate.Proofs.StackAnalysis
