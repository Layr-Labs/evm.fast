import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody619_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 0), (42, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24), (26, 26), (28, 28), (30, 30), (32, 32), (34, 34), (36, 36), (38, 38)]

def optimizedBody619_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody619_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody619_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody619_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551352#64))

def optimizedBody619_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody619_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 0#64)

def optimizedBody619_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 40), (44, 0), (46, 32), (48, 16), (50, 8), (52, 24), (54, 4), (56, 36), (58, 20), (60, 12), (62, 28),
    (64, 42), (66, 34), (68, 18), (72, 10), (74, 26), (76, 6), (78, 38), (80, 22), (82, 14), (84, 30)]

def optimizedBody619_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62), (64, 64),
    (66, 66), (68, 68), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84)]

def optimizedBody619_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62), (64, 64),
    (66, 66), (68, 68), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84)]

def optimizedBody619_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody619_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_9 optimizedBody619_10

def optimizedBody619_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_8, 619, 2)) (some 613) ([2, 4]) (some (2, optimizedBody619_11, 619, 3))

def optimizedBody619_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody619_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody619_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 112#64))

def optimizedBody619_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1024#64)

def optimizedBody619_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody619_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 128#64))

def optimizedBody619_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody619_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (2, 2)]

def optimizedBody619_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody619_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (2, 2), (0, 64)]

def optimizedBody619_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody619_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody619_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody619_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody619_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody619_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody619_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody619_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 52)]

def optimizedBody619_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody619_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody619_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody619_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody619_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 78)]

def optimizedBody619_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody619_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 183600#64)

def optimizedBody619_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (62, 44)]

def optimizedBody619_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(62, 62)]

def optimizedBody619_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (62, 62)]

def optimizedBody619_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_40 optimizedBody619_10

def optimizedBody619_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_39, 619, 4)) (some 472) ([2]) (some (2, optimizedBody619_41, 619, 5))

def optimizedBody619_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(62, 62)]

def optimizedBody619_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_13 optimizedBody619_43

def optimizedBody619_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_42 optimizedBody619_44

def optimizedBody619_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_38 optimizedBody619_45

def optimizedBody619_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_37 optimizedBody619_46

def optimizedBody619_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_13 optimizedBody619_47

def optimizedBody619_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(62, 44)]

def optimizedBody619_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_13 optimizedBody619_49

def optimizedBody619_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody619_48 optimizedBody619_50

def optimizedBody619_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody619_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody619_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody619_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (62, 62)]

def optimizedBody619_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 62)]

def optimizedBody619_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 62)]

def optimizedBody619_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_57 optimizedBody619_10

def optimizedBody619_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_56, 619, 6)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody619_58, 619, 7))

def optimizedBody619_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody619_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_5 optimizedBody619_60

def optimizedBody619_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_36 optimizedBody619_61

def optimizedBody619_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_13 optimizedBody619_62

def optimizedBody619_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_59 optimizedBody619_63

def optimizedBody619_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_55 optimizedBody619_64

def optimizedBody619_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_36 optimizedBody619_65

def optimizedBody619_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_54 optimizedBody619_66

def optimizedBody619_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_53 optimizedBody619_67

def optimizedBody619_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_52 optimizedBody619_68

def optimizedBody619_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_13 optimizedBody619_69

def optimizedBody619_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_51 optimizedBody619_70

def optimizedBody619_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_36 optimizedBody619_71

def optimizedBody619_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_35 optimizedBody619_72

def optimizedBody619_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_34 optimizedBody619_73

def optimizedBody619_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_33 optimizedBody619_74

def optimizedBody619_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_32 optimizedBody619_75

def optimizedBody619_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_31 optimizedBody619_76

def optimizedBody619_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_30 optimizedBody619_77

def optimizedBody619_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_29 optimizedBody619_78

def optimizedBody619_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_28 optimizedBody619_79

def optimizedBody619_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_27 optimizedBody619_80

def optimizedBody619_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_26 optimizedBody619_81

def optimizedBody619_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_25 optimizedBody619_82

def optimizedBody619_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_24 optimizedBody619_83

def optimizedBody619_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_23 optimizedBody619_84

def optimizedBody619_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_22 optimizedBody619_85

def optimizedBody619_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_21 optimizedBody619_86

def optimizedBody619_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_20 optimizedBody619_87

def optimizedBody619_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_13 optimizedBody619_88

def optimizedBody619_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (50, 50), (0, 0), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (64, 64), (66, 66), (68, 68),
    (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (44, 44)]

def optimizedBody619_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 4) optimizedBody619_89 optimizedBody619_90

def optimizedBody619_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody619_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody619_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody619_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody619_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 0), (64, 64),
    (66, 66), (68, 68), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84)]

def optimizedBody619_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84)]

def optimizedBody619_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84)]

def optimizedBody619_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_98 optimizedBody619_10

def optimizedBody619_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_97, 619, 8)) (some 75) ([]) (some (2, optimizedBody619_99, 619, 9))

def optimizedBody619_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 0), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84)]

def optimizedBody619_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (26, 46), (6, 48), (14, 50), (10, 52), (34, 54), (30, 56), (18, 58), (48, 60), (20, 62), (8, 64),
    (28, 66), (24, 68), (50, 70), (16, 72), (22, 74), (12, 76), (52, 78), (32, 80), (0, 82), (54, 84)]

def optimizedBody619_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (26, 46), (6, 48), (14, 50), (10, 52), (34, 54), (30, 56), (18, 58), (48, 60), (20, 62), (8, 64),
    (28, 66), (24, 68), (50, 70), (16, 72), (22, 74), (12, 76), (52, 78), (32, 80), (0, 82), (54, 84)]

def optimizedBody619_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_103 optimizedBody619_10

def optimizedBody619_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_102, 619, 10)) (some 72) ([]) (some (2, optimizedBody619_104, 619, 11))

def optimizedBody619_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 6), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (26, 26), (28, 28), (30, 30), (32, 32), (34, 34), (44, 44), (46, 4), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody619_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (8, 46), (12, 48), (6, 50), (10, 52), (14, 54)]

def optimizedBody619_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (12, 48), (6, 50), (10, 52), (14, 54)]

def optimizedBody619_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_108 optimizedBody619_10

def optimizedBody619_110 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody619_107, 619, 12)) (some 612) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34]) (some (2, optimizedBody619_109, 619, 13))

def optimizedBody619_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (12, 12), (10, 10), (8, 8), (6, 6), (2, 0)]

def optimizedBody619_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody619_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody619_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody619_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody619_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody619_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_116 optimizedBody619_10

def optimizedBody619_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody619_115, 619, 14)) (some 603) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody619_117, 619, 15))

def optimizedBody619_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody619_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody619_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_5 optimizedBody619_120

def optimizedBody619_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_119 optimizedBody619_121

def optimizedBody619_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_13 optimizedBody619_122

def optimizedBody619_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_118 optimizedBody619_123

def optimizedBody619_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_114 optimizedBody619_124

def optimizedBody619_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_113 optimizedBody619_125

def optimizedBody619_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_112 optimizedBody619_126

def optimizedBody619_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_111 optimizedBody619_127

def optimizedBody619_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_13 optimizedBody619_128

def optimizedBody619_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_110 optimizedBody619_129

def optimizedBody619_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_106 optimizedBody619_130

def optimizedBody619_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_13 optimizedBody619_131

def optimizedBody619_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_105 optimizedBody619_132

def optimizedBody619_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_101 optimizedBody619_133

def optimizedBody619_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_13 optimizedBody619_134

def optimizedBody619_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_100 optimizedBody619_135

def optimizedBody619_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_96 optimizedBody619_136

def optimizedBody619_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_95 optimizedBody619_137

def optimizedBody619_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_94 optimizedBody619_138

def optimizedBody619_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_93 optimizedBody619_139

def optimizedBody619_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_3 optimizedBody619_140

def optimizedBody619_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_2 optimizedBody619_141

def optimizedBody619_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_1 optimizedBody619_142

def optimizedBody619_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_92 optimizedBody619_143

def optimizedBody619_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_13 optimizedBody619_144

def optimizedBody619_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_13 optimizedBody619_145

def optimizedBody619_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_91 optimizedBody619_146

def optimizedBody619_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_19 optimizedBody619_147

def optimizedBody619_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_18 optimizedBody619_148

def optimizedBody619_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_17 optimizedBody619_149

def optimizedBody619_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_16 optimizedBody619_150

def optimizedBody619_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_15 optimizedBody619_151

def optimizedBody619_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_14 optimizedBody619_152

def optimizedBody619_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_3 optimizedBody619_153

def optimizedBody619_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_2 optimizedBody619_154

def optimizedBody619_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_1 optimizedBody619_155

def optimizedBody619_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_13 optimizedBody619_156

def optimizedBody619_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_12 optimizedBody619_157

def optimizedBody619_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_7 optimizedBody619_158

def optimizedBody619_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_6 optimizedBody619_159

def optimizedBody619_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_5 optimizedBody619_160

def optimizedBody619_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_4 optimizedBody619_161

def optimizedBody619_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_3 optimizedBody619_162

def optimizedBody619_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_2 optimizedBody619_163

def optimizedBody619_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_1 optimizedBody619_164

def optimizedBody619_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody619_0 optimizedBody619_165

def optimized619 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(619, 20, optimizedBody619_166)
end InitECandidate.Proofs.StackAnalysis
