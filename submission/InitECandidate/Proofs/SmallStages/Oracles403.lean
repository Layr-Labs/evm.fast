import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source403
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles403
def optimizedBody403_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody403_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody403_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody403_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody403_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_2 optimizedBody403_3

def optimizedBody403_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody403_1, 403, 2)) (some 401) ([2]) (some (2, optimizedBody403_4, 403, 3))

def optimizedBody403_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody403_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody403_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody403_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody403_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody403_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551488#64))

def optimizedBody403_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody403_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 2)]

def optimizedBody403_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (12, 44), (46, 46), (10, 48)]

def optimizedBody403_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (46, 46), (10, 48)]

def optimizedBody403_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_15 optimizedBody403_3

def optimizedBody403_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody403_14, 403, 4)) (some 79) ([2, 4, 6]) (some (2, optimizedBody403_16, 403, 5))

def optimizedBody403_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody403_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody403_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody403_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody403_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody403_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody403_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4, 6, 8]

def optimizedBody403_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_23 optimizedBody403_24

def optimizedBody403_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_22 optimizedBody403_25

def optimizedBody403_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_21 optimizedBody403_26

def optimizedBody403_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_20 optimizedBody403_27

def optimizedBody403_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_19 optimizedBody403_28

def optimizedBody403_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_29

def optimizedBody403_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody403_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody403_30 optimizedBody403_31

def optimizedBody403_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (44, 12), (46, 46)]

def optimizedBody403_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody403_1, 403, 6)) (some 402) ([2]) (some (2, optimizedBody403_4, 403, 7))

def optimizedBody403_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (50, 0)]

def optimizedBody403_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody403_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody403_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_37 optimizedBody403_3

def optimizedBody403_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody403_36, 403, 8)) (some 69) ([]) (some (2, optimizedBody403_38, 403, 9))

def optimizedBody403_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody403_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody403_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (46, 48), (50, 50)]

def optimizedBody403_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (50, 50)]

def optimizedBody403_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_43 optimizedBody403_3

def optimizedBody403_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody403_42, 403, 10)) (some 68) ([2]) (some (2, optimizedBody403_44, 403, 11))

def optimizedBody403_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 0)]

def optimizedBody403_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody403_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 50)]

def optimizedBody403_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody403_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody403_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_50 optimizedBody403_3

def optimizedBody403_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody403_49, 403, 12)) (some 158) ([2, 4, 6]) (some (2, optimizedBody403_51, 403, 13))

def optimizedBody403_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody403_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (4, 4), (6, 6), (44, 44), (0, 46)]

def optimizedBody403_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody403_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_55 optimizedBody403_3

def optimizedBody403_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody403_54, 403, 14)) (some 309) ([2, 4]) (some (2, optimizedBody403_56, 403, 15))

def optimizedBody403_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 8), (48, 4), (50, 6)]

def optimizedBody403_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 44), (0, 46), (10, 48), (12, 50)]

def optimizedBody403_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (0, 46), (10, 48), (12, 50)]

def optimizedBody403_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_60 optimizedBody403_3

def optimizedBody403_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody403_59, 403, 16)) (some 70) ([2]) (some (2, optimizedBody403_61, 403, 17))

def optimizedBody403_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2, 4, 6, 8]

def optimizedBody403_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_23 optimizedBody403_63

def optimizedBody403_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_22 optimizedBody403_64

def optimizedBody403_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_21 optimizedBody403_65

def optimizedBody403_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_20 optimizedBody403_66

def optimizedBody403_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_19 optimizedBody403_67

def optimizedBody403_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_68

def optimizedBody403_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody403_69 optimizedBody403_31

def optimizedBody403_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 12), (44, 14)]

def optimizedBody403_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 6), (10, 4), (12, 44)]

def optimizedBody403_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44)]

def optimizedBody403_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_73 optimizedBody403_3

def optimizedBody403_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody403_72, 403, 18)) (some 162) ([2, 4]) (some (2, optimizedBody403_74, 403, 19))

def optimizedBody403_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody403_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody403_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody403_30 optimizedBody403_31

def optimizedBody403_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 0)]

def optimizedBody403_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody403_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody403_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7#64)

def optimizedBody403_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody403_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_83 optimizedBody403_3

def optimizedBody403_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_82 optimizedBody403_84

def optimizedBody403_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_81 optimizedBody403_85

def optimizedBody403_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_18 optimizedBody403_86

def optimizedBody403_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_80 optimizedBody403_87

def optimizedBody403_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_88

def optimizedBody403_90 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody403_89 optimizedBody403_31

def optimizedBody403_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (44, 12)]

def optimizedBody403_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (10, 2), (6, 6), (4, 4), (0, 44)]

def optimizedBody403_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody403_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_93 optimizedBody403_3

def optimizedBody403_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody403_92, 403, 20)) (some 146) ([2, 4]) (some (2, optimizedBody403_94, 403, 21))

def optimizedBody403_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody403_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody403_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_96 optimizedBody403_97

def optimizedBody403_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_98

def optimizedBody403_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_95 optimizedBody403_99

def optimizedBody403_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_91 optimizedBody403_100

def optimizedBody403_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_101

def optimizedBody403_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_102

def optimizedBody403_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_90 optimizedBody403_103

def optimizedBody403_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_79 optimizedBody403_104

def optimizedBody403_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_40 optimizedBody403_105

def optimizedBody403_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_106

def optimizedBody403_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_107

def optimizedBody403_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_78 optimizedBody403_108

def optimizedBody403_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_77 optimizedBody403_109

def optimizedBody403_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_76 optimizedBody403_110

def optimizedBody403_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_111

def optimizedBody403_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_75 optimizedBody403_112

def optimizedBody403_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_71 optimizedBody403_113

def optimizedBody403_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_114

def optimizedBody403_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_115

def optimizedBody403_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_70 optimizedBody403_116

def optimizedBody403_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_19 optimizedBody403_117

def optimizedBody403_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_18 optimizedBody403_118

def optimizedBody403_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_119

def optimizedBody403_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_62 optimizedBody403_120

def optimizedBody403_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_58 optimizedBody403_121

def optimizedBody403_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_122

def optimizedBody403_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_57 optimizedBody403_123

def optimizedBody403_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_53 optimizedBody403_124

def optimizedBody403_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_125

def optimizedBody403_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_52 optimizedBody403_126

def optimizedBody403_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_48 optimizedBody403_127

def optimizedBody403_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_47 optimizedBody403_128

def optimizedBody403_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_46 optimizedBody403_129

def optimizedBody403_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_130

def optimizedBody403_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_45 optimizedBody403_131

def optimizedBody403_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_41 optimizedBody403_132

def optimizedBody403_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_40 optimizedBody403_133

def optimizedBody403_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_134

def optimizedBody403_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_39 optimizedBody403_135

def optimizedBody403_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_35 optimizedBody403_136

def optimizedBody403_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_137

def optimizedBody403_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_34 optimizedBody403_138

def optimizedBody403_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_33 optimizedBody403_139

def optimizedBody403_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_140

def optimizedBody403_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_141

def optimizedBody403_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_32 optimizedBody403_142

def optimizedBody403_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_19 optimizedBody403_143

def optimizedBody403_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_18 optimizedBody403_144

def optimizedBody403_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_145

def optimizedBody403_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_17 optimizedBody403_146

def optimizedBody403_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_13 optimizedBody403_147

def optimizedBody403_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_12 optimizedBody403_148

def optimizedBody403_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_11 optimizedBody403_149

def optimizedBody403_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_10 optimizedBody403_150

def optimizedBody403_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_9 optimizedBody403_151

def optimizedBody403_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_8 optimizedBody403_152

def optimizedBody403_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_7 optimizedBody403_153

def optimizedBody403_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_6 optimizedBody403_154

def optimizedBody403_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_5 optimizedBody403_155

def optimizedBody403_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody403_0 optimizedBody403_156

def oracle403 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 3
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 3)) 0
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 22
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 6))) 2
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                0 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 23
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 6
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 0
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 24 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22)) 22
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23)) 23
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))))))
def optimized403 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(403, 3, optimizedBody403_157)
end InitECandidate.Proofs.SmallStages.Oracles403
