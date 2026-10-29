import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source482
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles482
def optimizedBody482_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 12), (6, 14), (8, 16), (44, 0), (46, 16), (48, 8), (50, 4), (52, 12), (54, 2), (56, 10), (58, 6),
    (60, 14)]

def optimizedBody482_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (14, 44), (46, 46), (8, 48), (12, 50), (48, 52), (10, 54), (50, 56), (6, 58), (52, 60)]

def optimizedBody482_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (14, 44), (46, 46), (8, 48), (12, 50), (48, 52), (10, 54), (50, 56), (6, 58), (52, 60)]

def optimizedBody482_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody482_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_2 optimizedBody482_3

def optimizedBody482_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody482_1, 482, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody482_4, 482, 3))

def optimizedBody482_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody482_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody482_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody482_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody482_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody482_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2, 4]

def optimizedBody482_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_10 optimizedBody482_11

def optimizedBody482_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_9 optimizedBody482_12

def optimizedBody482_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_8 optimizedBody482_13

def optimizedBody482_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_14

def optimizedBody482_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody482_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody482_15 optimizedBody482_16

def optimizedBody482_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 12), (6, 6), (8, 8), (44, 14), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody482_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (8, 46), (4, 48), (0, 50), (6, 52)]

def optimizedBody482_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (4, 48), (0, 50), (6, 52)]

def optimizedBody482_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_20 optimizedBody482_3

def optimizedBody482_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody482_19, 482, 4)) (some 464) ([2, 4, 6, 8]) (some (2, optimizedBody482_21, 482, 5))

def optimizedBody482_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 10)]

def optimizedBody482_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody482_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody482_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_25 optimizedBody482_3

def optimizedBody482_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody482_24, 482, 6)) (some 464) ([2, 4, 6, 8]) (some (2, optimizedBody482_26, 482, 7))

def optimizedBody482_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44)]

def optimizedBody482_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44)]

def optimizedBody482_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44)]

def optimizedBody482_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_30 optimizedBody482_3

def optimizedBody482_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody482_29, 482, 8)) (some 465) ([2, 4]) (some (2, optimizedBody482_31, 482, 9))

def optimizedBody482_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody482_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2, 4]

def optimizedBody482_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_10 optimizedBody482_34

def optimizedBody482_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_9 optimizedBody482_35

def optimizedBody482_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_33 optimizedBody482_36

def optimizedBody482_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_37

def optimizedBody482_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody482_38 optimizedBody482_16

def optimizedBody482_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody482_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody482_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody482_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody482_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody482_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 6), (46, 0)]

def optimizedBody482_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody482_24, 482, 10)) (some 466) ([2]) (some (2, optimizedBody482_26, 482, 11))

def optimizedBody482_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4)]

def optimizedBody482_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 44), (6, 46)]

def optimizedBody482_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46)]

def optimizedBody482_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_49 optimizedBody482_3

def optimizedBody482_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody482_48, 482, 12)) (some 466) ([2]) (some (2, optimizedBody482_50, 482, 13))

def optimizedBody482_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody482_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4]

def optimizedBody482_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_10 optimizedBody482_53

def optimizedBody482_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_9 optimizedBody482_54

def optimizedBody482_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_8 optimizedBody482_55

def optimizedBody482_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_56

def optimizedBody482_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 0) optimizedBody482_57 optimizedBody482_16

def optimizedBody482_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 8), (46, 6), (50, 0)]

def optimizedBody482_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody482_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody482_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_61 optimizedBody482_3

def optimizedBody482_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody482_60, 482, 14)) (some 481) ([2]) (some (2, optimizedBody482_62, 482, 15))

def optimizedBody482_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0), (48, 4), (50, 50)]

def optimizedBody482_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (12, 44), (6, 46), (8, 48), (0, 50)]

def optimizedBody482_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (6, 46), (8, 48), (0, 50)]

def optimizedBody482_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_66 optimizedBody482_3

def optimizedBody482_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody482_65, 482, 16)) (some 481) ([2]) (some (2, optimizedBody482_67, 482, 17))

def optimizedBody482_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody482_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4]

def optimizedBody482_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_10 optimizedBody482_70

def optimizedBody482_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_9 optimizedBody482_71

def optimizedBody482_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_33 optimizedBody482_72

def optimizedBody482_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_73

def optimizedBody482_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody482_74 optimizedBody482_16

def optimizedBody482_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody482_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody482_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody482_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody482_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_79 optimizedBody482_71

def optimizedBody482_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_78 optimizedBody482_80

def optimizedBody482_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_77 optimizedBody482_81

def optimizedBody482_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_76 optimizedBody482_82

def optimizedBody482_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_83

def optimizedBody482_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_84

def optimizedBody482_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_75 optimizedBody482_85

def optimizedBody482_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_33 optimizedBody482_86

def optimizedBody482_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_69 optimizedBody482_87

def optimizedBody482_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_88

def optimizedBody482_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_68 optimizedBody482_89

def optimizedBody482_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_64 optimizedBody482_90

def optimizedBody482_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_91

def optimizedBody482_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_63 optimizedBody482_92

def optimizedBody482_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_59 optimizedBody482_93

def optimizedBody482_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_94

def optimizedBody482_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_95

def optimizedBody482_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_58 optimizedBody482_96

def optimizedBody482_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_52 optimizedBody482_97

def optimizedBody482_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_98

def optimizedBody482_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_51 optimizedBody482_99

def optimizedBody482_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_47 optimizedBody482_100

def optimizedBody482_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_101

def optimizedBody482_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_46 optimizedBody482_102

def optimizedBody482_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_45 optimizedBody482_103

def optimizedBody482_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_44 optimizedBody482_104

def optimizedBody482_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_43 optimizedBody482_105

def optimizedBody482_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_42 optimizedBody482_106

def optimizedBody482_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_41 optimizedBody482_107

def optimizedBody482_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_40 optimizedBody482_108

def optimizedBody482_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_109

def optimizedBody482_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_110

def optimizedBody482_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_39 optimizedBody482_111

def optimizedBody482_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_33 optimizedBody482_112

def optimizedBody482_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_7 optimizedBody482_113

def optimizedBody482_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_114

def optimizedBody482_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_32 optimizedBody482_115

def optimizedBody482_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_28 optimizedBody482_116

def optimizedBody482_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_117

def optimizedBody482_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_27 optimizedBody482_118

def optimizedBody482_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_23 optimizedBody482_119

def optimizedBody482_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_120

def optimizedBody482_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_22 optimizedBody482_121

def optimizedBody482_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_18 optimizedBody482_122

def optimizedBody482_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_123

def optimizedBody482_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_124

def optimizedBody482_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_17 optimizedBody482_125

def optimizedBody482_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_8 optimizedBody482_126

def optimizedBody482_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_7 optimizedBody482_127

def optimizedBody482_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_6 optimizedBody482_128

def optimizedBody482_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_5 optimizedBody482_129

def optimizedBody482_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody482_0 optimizedBody482_130

def oracle482 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 24 (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 26 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 6)) 4 (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1 Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 6
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 5
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 25)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 29
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 26 Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 30 (Flapjack.Spt.ls 24)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 26))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22))))))))))
def optimized482 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(482, 9, optimizedBody482_131)
end InitECandidate.Proofs.SmallStages.Oracles482
