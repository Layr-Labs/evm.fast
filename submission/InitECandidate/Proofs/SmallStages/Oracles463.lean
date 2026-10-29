import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source463
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles463
def optimizedBody463_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody463_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody463_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody463_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody463_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody463_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551400#64))

def optimizedBody463_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody463_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody463_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody463_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (6, 6), (4, 4), (48, 2), (46, 8)]

def optimizedBody463_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody463_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody463_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody463_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody463_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551400#64))

def optimizedBody463_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 6), (48, 4), (50, 48), (52, 46)]

def optimizedBody463_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (10, 2), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody463_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody463_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody463_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_17 optimizedBody463_18

def optimizedBody463_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody463_16, 463, 2)) (some 196) ([2, 4]) (some (2, optimizedBody463_19, 463, 3))

def optimizedBody463_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody463_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody463_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody463_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody463_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody463_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody463_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 12 24#64))

def optimizedBody463_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 52)]

def optimizedBody463_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody463_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody463_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (52, 0)]

def optimizedBody463_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody463_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody463_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (0, 0), (62, 4), (4, 2), (60, 10), (50, 50), (8, 8), (54, 12), (58, 6), (56, 6),
    (52, 52)]

def optimizedBody463_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody463_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 8), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0), (52, 62), (54, 4), (56, 60), (58, 50), (60, 8), (62, 54),
    (64, 58), (66, 56), (68, 52)]

def optimizedBody463_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (24, 62),
    (64, 64), (66, 66), (68, 68)]

def optimizedBody463_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (24, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody463_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_38 optimizedBody463_18

def optimizedBody463_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
  Flapjack.Spt.ln)), optimizedBody463_37, 463, 4)) (some 196) ([2, 4]) (some (2, optimizedBody463_39, 463, 5))

def optimizedBody463_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody463_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 24), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 24),
    (64, 64), (66, 66), (68, 68)]

def optimizedBody463_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 2), (44, 44), (6, 46), (12, 48), (0, 50), (10, 52), (4, 54), (22, 56), (20, 58), (8, 60), (24, 62), (18, 64),
    (16, 66), (52, 68)]

def optimizedBody463_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (12, 48), (0, 50), (10, 52), (4, 54), (22, 56), (20, 58), (8, 60), (24, 62), (18, 64),
    (16, 66), (52, 68)]

def optimizedBody463_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_44 optimizedBody463_18

def optimizedBody463_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
  Flapjack.Spt.ln)), optimizedBody463_43, 463, 6)) (some 187) ([2, 4]) (some (2, optimizedBody463_45, 463, 7))

def optimizedBody463_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody463_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody463_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(52, 2)]

def optimizedBody463_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_48 optimizedBody463_49

def optimizedBody463_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_28 optimizedBody463_50

def optimizedBody463_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_51

def optimizedBody463_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(52, 52)]

def optimizedBody463_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_53

def optimizedBody463_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 2) optimizedBody463_52 optimizedBody463_54

def optimizedBody463_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (6, 6), (12, 12), (0, 0), (10, 10), (4, 4), (22, 22), (20, 20), (8, 8), (24, 24), (18, 18), (16, 16),
    (52, 52)]

def optimizedBody463_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_56

def optimizedBody463_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_55 optimizedBody463_57

def optimizedBody463_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_33 optimizedBody463_58

def optimizedBody463_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_47 optimizedBody463_59

def optimizedBody463_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_60

def optimizedBody463_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_46 optimizedBody463_61

def optimizedBody463_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_42 optimizedBody463_62

def optimizedBody463_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_63

def optimizedBody463_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (6, 46), (12, 48), (0, 50), (10, 52), (4, 54), (22, 56), (20, 58), (8, 60), (24, 24), (18, 64), (16, 66),
    (52, 68)]

def optimizedBody463_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_65

def optimizedBody463_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody463_64 optimizedBody463_66

def optimizedBody463_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody463_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody463_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 6), (48, 12), (0, 0), (62, 10), (4, 4), (60, 22), (50, 20), (8, 8), (54, 24), (58, 18), (56, 16),
    (52, 52)]

def optimizedBody463_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody463_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_70 optimizedBody463_71

def optimizedBody463_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_69 optimizedBody463_72

def optimizedBody463_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_68 optimizedBody463_73

def optimizedBody463_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_74

def optimizedBody463_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_67 optimizedBody463_75

def optimizedBody463_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_33 optimizedBody463_76

def optimizedBody463_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_41 optimizedBody463_77

def optimizedBody463_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_78

def optimizedBody463_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_40 optimizedBody463_79

def optimizedBody463_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_36 optimizedBody463_80

def optimizedBody463_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_81

def optimizedBody463_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody463_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_83

def optimizedBody463_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 0) optimizedBody463_82 optimizedBody463_84

def optimizedBody463_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (46, 6), (48, 10), (0, 0), (62, 12), (4, 4), (60, 14), (50, 16), (8, 8), (54, 18), (58, 20), (56, 22),
    (52, 24)]

def optimizedBody463_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_86

def optimizedBody463_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_85 optimizedBody463_87

def optimizedBody463_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_35 optimizedBody463_88

def optimizedBody463_90 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody463_89 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody463_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 46), (0, 48), (2, 50), (46, 52)]

def optimizedBody463_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_91

def optimizedBody463_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_90 optimizedBody463_92

def optimizedBody463_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_34 optimizedBody463_93

def optimizedBody463_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_94

def optimizedBody463_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_33 optimizedBody463_95

def optimizedBody463_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_32 optimizedBody463_96

def optimizedBody463_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_31 optimizedBody463_97

def optimizedBody463_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_30 optimizedBody463_98

def optimizedBody463_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_29 optimizedBody463_99

def optimizedBody463_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_28 optimizedBody463_100

def optimizedBody463_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_27 optimizedBody463_101

def optimizedBody463_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_26 optimizedBody463_102

def optimizedBody463_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_25 optimizedBody463_103

def optimizedBody463_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_23 optimizedBody463_104

def optimizedBody463_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_24 optimizedBody463_105

def optimizedBody463_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_23 optimizedBody463_106

def optimizedBody463_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_107

def optimizedBody463_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 0) optimizedBody463_108 optimizedBody463_92

def optimizedBody463_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody463_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (4, 4), (48, 2), (46, 46)]

def optimizedBody463_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_111 optimizedBody463_71

def optimizedBody463_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_110 optimizedBody463_112

def optimizedBody463_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_41 optimizedBody463_113

def optimizedBody463_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_114

def optimizedBody463_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_109 optimizedBody463_115

def optimizedBody463_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_22 optimizedBody463_116

def optimizedBody463_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_21 optimizedBody463_117

def optimizedBody463_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_118

def optimizedBody463_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_20 optimizedBody463_119

def optimizedBody463_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_15 optimizedBody463_120

def optimizedBody463_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_14 optimizedBody463_121

def optimizedBody463_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_13 optimizedBody463_122

def optimizedBody463_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_12 optimizedBody463_123

def optimizedBody463_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_11 optimizedBody463_124

def optimizedBody463_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_125

def optimizedBody463_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 6) optimizedBody463_126 optimizedBody463_84

def optimizedBody463_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (6, 6), (4, 4), (48, 2), (46, 8)]

def optimizedBody463_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_128

def optimizedBody463_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_127 optimizedBody463_129

def optimizedBody463_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_10 optimizedBody463_130

def optimizedBody463_132 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody463_131 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody463_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 48)]

def optimizedBody463_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2000#64)

def optimizedBody463_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46)]

def optimizedBody463_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody463_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody463_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_137 optimizedBody463_18

def optimizedBody463_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody463_136, 463, 8)) (some 95) ([2, 4]) (some (2, optimizedBody463_138, 463, 9))

def optimizedBody463_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody463_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 40#64)

def optimizedBody463_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody463_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody463_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody463_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_144 optimizedBody463_18

def optimizedBody463_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_143 optimizedBody463_145

def optimizedBody463_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_142 optimizedBody463_146

def optimizedBody463_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_41 optimizedBody463_147

def optimizedBody463_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_141 optimizedBody463_148

def optimizedBody463_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_149

def optimizedBody463_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody463_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody463_150 optimizedBody463_151

def optimizedBody463_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody463_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody463_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_153 optimizedBody463_154

def optimizedBody463_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_33 optimizedBody463_155

def optimizedBody463_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_156

def optimizedBody463_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_157

def optimizedBody463_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_152 optimizedBody463_158

def optimizedBody463_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_140 optimizedBody463_159

def optimizedBody463_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_160

def optimizedBody463_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_139 optimizedBody463_161

def optimizedBody463_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_135 optimizedBody463_162

def optimizedBody463_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_134 optimizedBody463_163

def optimizedBody463_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_133 optimizedBody463_164

def optimizedBody463_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_165

def optimizedBody463_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_132 optimizedBody463_166

def optimizedBody463_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_9 optimizedBody463_167

def optimizedBody463_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_8 optimizedBody463_168

def optimizedBody463_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_7 optimizedBody463_169

def optimizedBody463_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_6 optimizedBody463_170

def optimizedBody463_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_5 optimizedBody463_171

def optimizedBody463_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_4 optimizedBody463_172

def optimizedBody463_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_3 optimizedBody463_173

def optimizedBody463_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_2 optimizedBody463_174

def optimizedBody463_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_1 optimizedBody463_175

def optimizedBody463_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody463_0 optimizedBody463_176

def oracle463 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 0 Flapjack.Spt.ln)
                0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 11))) 24
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 5)) 6
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 9)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26)) 25 (Flapjack.Spt.ls 31)))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 8)) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))))
                2
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) 4
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              4
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))))
                3
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 11))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                2
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 12 Flapjack.Spt.ln) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 29 (Flapjack.Spt.ls 22)))
                2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 Flapjack.Spt.ln) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 25)))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 4)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 2)))
                2 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 12)))
                3
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 32 (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 (Flapjack.Spt.ls 3)))
                3
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 26 (Flapjack.Spt.ls 2)))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 9)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
                22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                23
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                2 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 1 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 26
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 22 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))))))))
def optimized463 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(463, 2, optimizedBody463_177)
end InitECandidate.Proofs.SmallStages.Oracles463
