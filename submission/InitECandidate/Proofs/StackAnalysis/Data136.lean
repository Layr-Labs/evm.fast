import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody136_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 22), (24, 24), (0, 0), (26, 2), (32, 4), (30, 6), (28, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18),
    (20, 20)]

def optimizedBody136_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 24 (Flapjack.WordRegImm.reg 22)))

def optimizedBody136_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody136_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 20)))

def optimizedBody136_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody136_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 18)))

def optimizedBody136_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody136_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody136_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody136_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody136_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody136_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody136_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody136_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_11 optimizedBody136_12

def optimizedBody136_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_10 optimizedBody136_13

def optimizedBody136_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_9 optimizedBody136_14

def optimizedBody136_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_6 optimizedBody136_15

def optimizedBody136_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_8 optimizedBody136_16

def optimizedBody136_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_7 optimizedBody136_17

def optimizedBody136_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody136_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody136_18 optimizedBody136_19

def optimizedBody136_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody136_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody136_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody136_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551576#64))

def optimizedBody136_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 424#64)))

def optimizedBody136_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (16, 16)]

def optimizedBody136_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 16 (Flapjack.WordRegImm.reg 14)))

def optimizedBody136_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody136_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 4 (Flapjack.WordRegImm.reg 12)))

def optimizedBody136_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 28)]

def optimizedBody136_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 4 (Flapjack.WordRegImm.reg 8)))

def optimizedBody136_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 30)]

def optimizedBody136_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 28 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody136_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 32)]

def optimizedBody136_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 28 28 (Flapjack.WordRegImm.reg 4)))

def optimizedBody136_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 0#64)

def optimizedBody136_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 26), (4, 10), (44, 0), (56, 16), (46, 2), (64, 8), (48, 24), (60, 4), (50, 20), (66, 12), (70, 26), (52, 18),
    (68, 10), (62, 6), (54, 22), (58, 14)]

def optimizedBody136_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (4, 4), (0, 44), (56, 56), (10, 46), (64, 64), (48, 48), (60, 60), (50, 50), (66, 66), (70, 70), (52, 52),
    (68, 68), (62, 62), (54, 54), (58, 58)]

def optimizedBody136_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (0, 44), (56, 56), (10, 46), (64, 64), (48, 48), (60, 60), (50, 50), (66, 66), (70, 70), (52, 52), (68, 68),
    (62, 62), (54, 54), (58, 58)]

def optimizedBody136_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody136_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_39 optimizedBody136_40

def optimizedBody136_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody136_38, 136, 2)) (some 119) ([2, 4]) (some (2, optimizedBody136_41, 136, 3))

def optimizedBody136_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 4)]

def optimizedBody136_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 48), (14, 54), (12, 50), (10, 52), (2, 8)]

def optimizedBody136_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody136_46 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 131) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody136_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_45 optimizedBody136_46

def optimizedBody136_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_6 optimizedBody136_47

def optimizedBody136_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_9 optimizedBody136_48

def optimizedBody136_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_10 optimizedBody136_49

def optimizedBody136_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_44 optimizedBody136_50

def optimizedBody136_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_7 optimizedBody136_51

def optimizedBody136_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 8), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody136_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody136_52 optimizedBody136_53

def optimizedBody136_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 8), (2, 10)]

def optimizedBody136_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody136_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 0), (56, 56), (46, 2), (64, 64), (48, 48), (60, 60), (50, 50),
    (66, 66), (70, 70), (52, 52), (68, 68), (62, 62), (54, 54), (58, 58)]

def optimizedBody136_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46), (12, 48), (8, 50), (6, 52), (10, 54)]

def optimizedBody136_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46), (12, 48), (8, 50), (6, 52), (10, 54)]

def optimizedBody136_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_59 optimizedBody136_40

def optimizedBody136_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody136_58, 136, 4)) (some 124) ([2, 4, 6, 8, 10]) (some (2, optimizedBody136_60, 136, 5))

def optimizedBody136_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10), (8, 8), (6, 6), (2, 4)]

def optimizedBody136_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4#64)

def optimizedBody136_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody136_65 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 128) ([0, 2, 4, 6, 8, 10, 12]) (none)

def optimizedBody136_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_64 optimizedBody136_65

def optimizedBody136_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_63 optimizedBody136_66

def optimizedBody136_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_62 optimizedBody136_67

def optimizedBody136_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_7 optimizedBody136_68

def optimizedBody136_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_61 optimizedBody136_69

def optimizedBody136_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_57 optimizedBody136_70

def optimizedBody136_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_10 optimizedBody136_71

def optimizedBody136_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_56 optimizedBody136_72

def optimizedBody136_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_55 optimizedBody136_73

def optimizedBody136_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_7 optimizedBody136_74

def optimizedBody136_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_7 optimizedBody136_75

def optimizedBody136_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_54 optimizedBody136_76

def optimizedBody136_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_8 optimizedBody136_77

def optimizedBody136_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_43 optimizedBody136_78

def optimizedBody136_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_7 optimizedBody136_79

def optimizedBody136_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_42 optimizedBody136_80

def optimizedBody136_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_37 optimizedBody136_81

def optimizedBody136_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_7 optimizedBody136_82

def optimizedBody136_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(44, 0), (16, 16), (46, 2), (8, 8), (48, 24), (4, 4), (50, 20), (12, 12), (26, 26), (56, 18), (10, 10), (6, 6),
    (58, 22), (14, 14)]

def optimizedBody136_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 30) optimizedBody136_83 optimizedBody136_84

def optimizedBody136_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 26), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (56, 56), (58, 58)]

def optimizedBody136_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (12, 12), (10, 10), (8, 8), (6, 6), (0, 4), (16, 16), (14, 14), (44, 44), (18, 46), (48, 48), (50, 50),
    (56, 56), (58, 58)]

def optimizedBody136_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (18, 46), (48, 48), (50, 50), (56, 56), (58, 58)]

def optimizedBody136_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_88 optimizedBody136_40

def optimizedBody136_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12, 14, 16]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody136_87, 136, 6)) (some 121) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody136_89, 136, 7))

def optimizedBody136_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 18), (4, 4), (6, 0), (8, 6), (10, 8), (44, 44), (46, 18), (48, 48), (50, 50), (52, 12), (54, 10), (56, 56),
    (58, 58), (60, 16), (62, 14)]

def optimizedBody136_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (0, 46), (48, 48), (50, 50), (6, 52), (4, 54), (52, 56), (54, 58), (10, 60), (8, 62)]

def optimizedBody136_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (6, 52), (4, 54), (52, 56), (54, 58), (10, 60), (8, 62)]

def optimizedBody136_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_93 optimizedBody136_40

def optimizedBody136_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody136_92, 136, 8)) (some 124) ([2, 4, 6, 8, 10]) (some (2, optimizedBody136_94, 136, 9))

def optimizedBody136_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody136_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody136_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody136_99 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody136_58, 136, 10)) (some 124) ([2, 4, 6, 8, 10]) (some (2, optimizedBody136_60, 136, 11))

def optimizedBody136_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 16#64)

def optimizedBody136_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_100 optimizedBody136_66

def optimizedBody136_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_62 optimizedBody136_101

def optimizedBody136_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_7 optimizedBody136_102

def optimizedBody136_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_99 optimizedBody136_103

def optimizedBody136_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_98 optimizedBody136_104

def optimizedBody136_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_97 optimizedBody136_105

def optimizedBody136_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_96 optimizedBody136_106

def optimizedBody136_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_7 optimizedBody136_107

def optimizedBody136_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_95 optimizedBody136_108

def optimizedBody136_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_91 optimizedBody136_109

def optimizedBody136_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_7 optimizedBody136_110

def optimizedBody136_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_90 optimizedBody136_111

def optimizedBody136_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_86 optimizedBody136_112

def optimizedBody136_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_7 optimizedBody136_113

def optimizedBody136_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_7 optimizedBody136_114

def optimizedBody136_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_85 optimizedBody136_115

def optimizedBody136_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_36 optimizedBody136_116

def optimizedBody136_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_35 optimizedBody136_117

def optimizedBody136_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_34 optimizedBody136_118

def optimizedBody136_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_33 optimizedBody136_119

def optimizedBody136_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_32 optimizedBody136_120

def optimizedBody136_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_31 optimizedBody136_121

def optimizedBody136_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_30 optimizedBody136_122

def optimizedBody136_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_29 optimizedBody136_123

def optimizedBody136_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_28 optimizedBody136_124

def optimizedBody136_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_27 optimizedBody136_125

def optimizedBody136_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_26 optimizedBody136_126

def optimizedBody136_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_25 optimizedBody136_127

def optimizedBody136_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_24 optimizedBody136_128

def optimizedBody136_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_23 optimizedBody136_129

def optimizedBody136_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_22 optimizedBody136_130

def optimizedBody136_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_21 optimizedBody136_131

def optimizedBody136_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_7 optimizedBody136_132

def optimizedBody136_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_7 optimizedBody136_133

def optimizedBody136_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_20 optimizedBody136_134

def optimizedBody136_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_6 optimizedBody136_135

def optimizedBody136_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_5 optimizedBody136_136

def optimizedBody136_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_4 optimizedBody136_137

def optimizedBody136_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_3 optimizedBody136_138

def optimizedBody136_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_2 optimizedBody136_139

def optimizedBody136_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_1 optimizedBody136_140

def optimizedBody136_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody136_0 optimizedBody136_141

def optimized136 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(136, 13, optimizedBody136_142)
end InitECandidate.Proofs.StackAnalysis
