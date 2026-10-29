import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody388_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (48, 4), (46, 2), (56, 6)]

def optimizedBody388_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 2), (44, 44), (48, 48), (46, 46), (56, 56)]

def optimizedBody388_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (56, 56)]

def optimizedBody388_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody388_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_2 optimizedBody388_3

def optimizedBody388_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody388_1, 388, 2)) (some 186) ([2, 4]) (some (2, optimizedBody388_4, 388, 3))

def optimizedBody388_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody388_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody388_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody388_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody388_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551600#64))

def optimizedBody388_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody388_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551408#64))

def optimizedBody388_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody388_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 4), (46, 46), (54, 6), (56, 56)]

def optimizedBody388_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (50, 50), (0, 46), (54, 54), (56, 56)]

def optimizedBody388_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (0, 46), (54, 54), (56, 56)]

def optimizedBody388_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_16 optimizedBody388_3

def optimizedBody388_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody388_15, 388, 4)) (some 66) ([2]) (some (2, optimizedBody388_17, 388, 5))

def optimizedBody388_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (50, 50), (0, 0), (54, 54), (56, 56)]

def optimizedBody388_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_6 optimizedBody388_19

def optimizedBody388_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_18 optimizedBody388_20

def optimizedBody388_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_14 optimizedBody388_21

def optimizedBody388_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_13 optimizedBody388_22

def optimizedBody388_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_6 optimizedBody388_23

def optimizedBody388_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (50, 4), (0, 46), (54, 6), (56, 56)]

def optimizedBody388_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_6 optimizedBody388_25

def optimizedBody388_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody388_24 optimizedBody388_26

def optimizedBody388_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody388_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody388_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 2), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56)]

def optimizedBody388_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody388_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody388_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_32 optimizedBody388_3

def optimizedBody388_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody388_31, 388, 6)) (some 68) ([2]) (some (2, optimizedBody388_33, 388, 7))

def optimizedBody388_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 0), (48, 4), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody388_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (10, 46), (4, 48), (0, 50), (12, 52), (16, 54), (6, 56)]

def optimizedBody388_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (4, 48), (0, 50), (12, 52), (16, 54), (6, 56)]

def optimizedBody388_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_37 optimizedBody388_3

def optimizedBody388_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody388_36, 388, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody388_38, 388, 9))

def optimizedBody388_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody388_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody388_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14 2

def optimizedBody388_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 18446744073709551600#64))

def optimizedBody388_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody388_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14)]

def optimizedBody388_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 14 18446744073709551416#64))

def optimizedBody388_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody388_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 12)]

def optimizedBody388_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody388_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody388_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 8 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody388_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody388_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody388_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 8 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody388_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (16, 16)]

def optimizedBody388_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody388_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody388_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody388_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody388_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 14 (Flapjack.WordRegImm.imm 18446744073709551600#64)))

def optimizedBody388_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 14 18446744073709551600#64))

def optimizedBody388_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody388_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody388_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody388_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody388_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_65 optimizedBody388_3

def optimizedBody388_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody388_64, 388, 10)) (some 192) ([2, 4, 6]) (some (2, optimizedBody388_66, 388, 11))

def optimizedBody388_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody388_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody388_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody388_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_69 optimizedBody388_70

def optimizedBody388_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_68 optimizedBody388_71

def optimizedBody388_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_6 optimizedBody388_72

def optimizedBody388_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_67 optimizedBody388_73

def optimizedBody388_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_63 optimizedBody388_74

def optimizedBody388_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_59 optimizedBody388_75

def optimizedBody388_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_58 optimizedBody388_76

def optimizedBody388_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_62 optimizedBody388_77

def optimizedBody388_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_61 optimizedBody388_78

def optimizedBody388_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_45 optimizedBody388_79

def optimizedBody388_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_60 optimizedBody388_80

def optimizedBody388_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_45 optimizedBody388_81

def optimizedBody388_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_59 optimizedBody388_82

def optimizedBody388_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_58 optimizedBody388_83

def optimizedBody388_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_57 optimizedBody388_84

def optimizedBody388_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_50 optimizedBody388_85

def optimizedBody388_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_56 optimizedBody388_86

def optimizedBody388_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_55 optimizedBody388_87

def optimizedBody388_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_54 optimizedBody388_88

def optimizedBody388_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_50 optimizedBody388_89

def optimizedBody388_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_53 optimizedBody388_90

def optimizedBody388_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_52 optimizedBody388_91

def optimizedBody388_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_51 optimizedBody388_92

def optimizedBody388_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_50 optimizedBody388_93

def optimizedBody388_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_49 optimizedBody388_94

def optimizedBody388_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_48 optimizedBody388_95

def optimizedBody388_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_47 optimizedBody388_96

def optimizedBody388_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_46 optimizedBody388_97

def optimizedBody388_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_45 optimizedBody388_98

def optimizedBody388_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_44 optimizedBody388_99

def optimizedBody388_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_43 optimizedBody388_100

def optimizedBody388_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_42 optimizedBody388_101

def optimizedBody388_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_41 optimizedBody388_102

def optimizedBody388_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_40 optimizedBody388_103

def optimizedBody388_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_6 optimizedBody388_104

def optimizedBody388_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_39 optimizedBody388_105

def optimizedBody388_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_35 optimizedBody388_106

def optimizedBody388_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_6 optimizedBody388_107

def optimizedBody388_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_34 optimizedBody388_108

def optimizedBody388_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_30 optimizedBody388_109

def optimizedBody388_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_29 optimizedBody388_110

def optimizedBody388_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_28 optimizedBody388_111

def optimizedBody388_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_6 optimizedBody388_112

def optimizedBody388_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_27 optimizedBody388_113

def optimizedBody388_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_12 optimizedBody388_114

def optimizedBody388_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_11 optimizedBody388_115

def optimizedBody388_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_10 optimizedBody388_116

def optimizedBody388_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_9 optimizedBody388_117

def optimizedBody388_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_8 optimizedBody388_118

def optimizedBody388_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_7 optimizedBody388_119

def optimizedBody388_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_6 optimizedBody388_120

def optimizedBody388_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_5 optimizedBody388_121

def optimizedBody388_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody388_0 optimizedBody388_122

def optimized388 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(388, 4, optimizedBody388_123)
end InitECandidate.Proofs.StackAnalysis
