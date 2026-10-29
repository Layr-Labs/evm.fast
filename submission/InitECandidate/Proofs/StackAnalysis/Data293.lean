import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody293_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody293_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4#64)

def optimizedBody293_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody293_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (4, 6), (46, 4), (50, 2)]

def optimizedBody293_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46), (4, 4)]

def optimizedBody293_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody293_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody293_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody293_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody293_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (46, 0)]

def optimizedBody293_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody293_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_9 optimizedBody293_10

def optimizedBody293_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_8 optimizedBody293_11

def optimizedBody293_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_7 optimizedBody293_12

def optimizedBody293_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_2 optimizedBody293_13

def optimizedBody293_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody293_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_9 optimizedBody293_15

def optimizedBody293_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_2 optimizedBody293_16

def optimizedBody293_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody293_14 optimizedBody293_17

def optimizedBody293_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (46, 46)]

def optimizedBody293_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_2 optimizedBody293_19

def optimizedBody293_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_18 optimizedBody293_20

def optimizedBody293_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_6 optimizedBody293_21

def optimizedBody293_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_5 optimizedBody293_22

def optimizedBody293_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_4 optimizedBody293_23

def optimizedBody293_25 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln) optimizedBody293_24 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody293_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody293_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (48, 4), (46, 46), (50, 50)]

def optimizedBody293_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (48, 48), (0, 46), (6, 50)]

def optimizedBody293_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (6, 50)]

def optimizedBody293_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody293_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_29 optimizedBody293_30

def optimizedBody293_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody293_28, 293, 2)) (some 182) ([2, 4]) (some (2, optimizedBody293_31, 293, 3))

def optimizedBody293_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody293_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (46, 8), (0, 0), (6, 6), (4, 4)]

def optimizedBody293_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody293_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody293_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody293_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody293_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody293_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (52, 6), (54, 4)]

def optimizedBody293_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody293_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 6 Flapjack.WordStore.heapLength

def optimizedBody293_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody293_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6 6

def optimizedBody293_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 18446744073709551464#64))

def optimizedBody293_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 48), (48, 46), (50, 0), (52, 52), (54, 54)]

def optimizedBody293_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (50, 50), (0, 52), (8, 54)]

def optimizedBody293_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (0, 52), (8, 54)]

def optimizedBody293_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_48 optimizedBody293_30

def optimizedBody293_50 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody293_47, 293, 4)) (some 158) ([2, 4, 6]) (some (2, optimizedBody293_49, 293, 5))

def optimizedBody293_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody293_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody293_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody293_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551464#64))

def optimizedBody293_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody293_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 8 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody293_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody293_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody293_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 2), (50, 50), (52, 0), (54, 8)]

def optimizedBody293_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (10, 46), (12, 48), (0, 50), (6, 52), (4, 54)]

def optimizedBody293_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (10, 46), (12, 48), (0, 50), (6, 52), (4, 54)]

def optimizedBody293_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_61 optimizedBody293_30

def optimizedBody293_63 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody293_60, 293, 6)) (some 192) ([2, 4, 6]) (some (2, optimizedBody293_62, 293, 7))

def optimizedBody293_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody293_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 8), (48, 10), (46, 12), (0, 0), (6, 6), (4, 4)]

def optimizedBody293_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_65 optimizedBody293_10

def optimizedBody293_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_64 optimizedBody293_66

def optimizedBody293_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_7 optimizedBody293_67

def optimizedBody293_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_2 optimizedBody293_68

def optimizedBody293_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_63 optimizedBody293_69

def optimizedBody293_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_59 optimizedBody293_70

def optimizedBody293_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_58 optimizedBody293_71

def optimizedBody293_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_57 optimizedBody293_72

def optimizedBody293_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_56 optimizedBody293_73

def optimizedBody293_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_55 optimizedBody293_74

def optimizedBody293_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_54 optimizedBody293_75

def optimizedBody293_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_53 optimizedBody293_76

def optimizedBody293_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_8 optimizedBody293_77

def optimizedBody293_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_52 optimizedBody293_78

def optimizedBody293_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_51 optimizedBody293_79

def optimizedBody293_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_2 optimizedBody293_80

def optimizedBody293_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_50 optimizedBody293_81

def optimizedBody293_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_46 optimizedBody293_82

def optimizedBody293_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_45 optimizedBody293_83

def optimizedBody293_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_44 optimizedBody293_84

def optimizedBody293_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_43 optimizedBody293_85

def optimizedBody293_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_42 optimizedBody293_86

def optimizedBody293_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_41 optimizedBody293_87

def optimizedBody293_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_40 optimizedBody293_88

def optimizedBody293_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_39 optimizedBody293_89

def optimizedBody293_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_38 optimizedBody293_90

def optimizedBody293_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_37 optimizedBody293_91

def optimizedBody293_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_36 optimizedBody293_92

def optimizedBody293_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_7 optimizedBody293_93

def optimizedBody293_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_2 optimizedBody293_94

def optimizedBody293_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_2 optimizedBody293_15

def optimizedBody293_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 0) optimizedBody293_95 optimizedBody293_96

def optimizedBody293_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (48, 8), (46, 10), (0, 0), (6, 6), (4, 4)]

def optimizedBody293_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_2 optimizedBody293_98

def optimizedBody293_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_97 optimizedBody293_99

def optimizedBody293_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_35 optimizedBody293_100

def optimizedBody293_102 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody293_101 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody293_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46)]

def optimizedBody293_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody293_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_103 optimizedBody293_104

def optimizedBody293_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_2 optimizedBody293_105

def optimizedBody293_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_102 optimizedBody293_106

def optimizedBody293_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_34 optimizedBody293_107

def optimizedBody293_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_2 optimizedBody293_108

def optimizedBody293_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_33 optimizedBody293_109

def optimizedBody293_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_2 optimizedBody293_110

def optimizedBody293_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_32 optimizedBody293_111

def optimizedBody293_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_27 optimizedBody293_112

def optimizedBody293_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_26 optimizedBody293_113

def optimizedBody293_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_7 optimizedBody293_114

def optimizedBody293_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_2 optimizedBody293_115

def optimizedBody293_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_25 optimizedBody293_116

def optimizedBody293_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_3 optimizedBody293_117

def optimizedBody293_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_2 optimizedBody293_118

def optimizedBody293_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_1 optimizedBody293_119

def optimizedBody293_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody293_0 optimizedBody293_120

def optimized293 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(293, 3, optimizedBody293_121)
end InitECandidate.Proofs.StackAnalysis
