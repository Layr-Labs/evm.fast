import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source707
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles707
def optimizedBody707_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 4), (52, 2)]

def optimizedBody707_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (52, 52)]

def optimizedBody707_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (52, 52)]

def optimizedBody707_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody707_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_2 optimizedBody707_3

def optimizedBody707_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody707_1, 707, 2)) (some 69) ([]) (some (2, optimizedBody707_4, 707, 3))

def optimizedBody707_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody707_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody707_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 0), (52, 52)]

def optimizedBody707_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody707_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody707_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_10 optimizedBody707_3

def optimizedBody707_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody707_9, 707, 4)) (some 68) ([2]) (some (2, optimizedBody707_11, 707, 5))

def optimizedBody707_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52)]

def optimizedBody707_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (48, 48), (50, 50), (0, 52)]

def optimizedBody707_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (50, 50), (0, 52)]

def optimizedBody707_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_15 optimizedBody707_3

def optimizedBody707_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody707_14, 707, 6)) (some 68) ([2]) (some (2, optimizedBody707_16, 707, 7))

def optimizedBody707_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 4), (48, 48), (50, 50), (52, 0), (54, 6)]

def optimizedBody707_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (4, 54)]

def optimizedBody707_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (4, 54)]

def optimizedBody707_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_20 optimizedBody707_3

def optimizedBody707_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody707_19, 707, 8)) (some 704) ([2, 4]) (some (2, optimizedBody707_21, 707, 9))

def optimizedBody707_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody707_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody707_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 50), (52, 44)]

def optimizedBody707_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 52)]

def optimizedBody707_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 52)]

def optimizedBody707_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_27 optimizedBody707_3

def optimizedBody707_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody707_26, 707, 10)) (some 70) ([2]) (some (2, optimizedBody707_28, 707, 11))

def optimizedBody707_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody707_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody707_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody707_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_31 optimizedBody707_32

def optimizedBody707_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_30 optimizedBody707_33

def optimizedBody707_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_34

def optimizedBody707_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_29 optimizedBody707_35

def optimizedBody707_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_25 optimizedBody707_36

def optimizedBody707_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_37

def optimizedBody707_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (48, 48), (50, 50), (0, 0), (4, 4), (44, 44)]

def optimizedBody707_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody707_38 optimizedBody707_39

def optimizedBody707_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody707_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody707_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 4)]

def optimizedBody707_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (48, 48), (50, 50), (8, 52)]

def optimizedBody707_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (50, 50), (8, 52)]

def optimizedBody707_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_45 optimizedBody707_3

def optimizedBody707_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody707_44, 707, 12)) (some 704) ([2, 4]) (some (2, optimizedBody707_46, 707, 13))

def optimizedBody707_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 50), (46, 44)]

def optimizedBody707_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody707_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46)]

def optimizedBody707_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_50 optimizedBody707_3

def optimizedBody707_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody707_49, 707, 14)) (some 70) ([2]) (some (2, optimizedBody707_51, 707, 15))

def optimizedBody707_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody707_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_31 optimizedBody707_53

def optimizedBody707_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_30 optimizedBody707_54

def optimizedBody707_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_55

def optimizedBody707_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_52 optimizedBody707_56

def optimizedBody707_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_48 optimizedBody707_57

def optimizedBody707_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_58

def optimizedBody707_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 6), (48, 48), (50, 50), (8, 8), (44, 44)]

def optimizedBody707_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody707_59 optimizedBody707_60

def optimizedBody707_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody707_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (6, 6), (8, 8), (44, 44), (46, 6), (48, 48), (50, 50)]

def optimizedBody707_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody707_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody707_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_65 optimizedBody707_3

def optimizedBody707_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody707_64, 707, 16)) (some 692) ([2, 4, 6, 8]) (some (2, optimizedBody707_66, 707, 17))

def optimizedBody707_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody707_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody707_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody707_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_70 optimizedBody707_3

def optimizedBody707_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody707_69, 707, 18)) (some 706) ([2, 4]) (some (2, optimizedBody707_71, 707, 19))

def optimizedBody707_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody707_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody707_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody707_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_75 optimizedBody707_3

def optimizedBody707_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody707_74, 707, 20)) (some 70) ([2]) (some (2, optimizedBody707_76, 707, 21))

def optimizedBody707_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_24 optimizedBody707_54

def optimizedBody707_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_78

def optimizedBody707_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_77 optimizedBody707_79

def optimizedBody707_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_73 optimizedBody707_80

def optimizedBody707_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_81

def optimizedBody707_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_72 optimizedBody707_82

def optimizedBody707_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_68 optimizedBody707_83

def optimizedBody707_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_84

def optimizedBody707_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_67 optimizedBody707_85

def optimizedBody707_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_63 optimizedBody707_86

def optimizedBody707_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_30 optimizedBody707_87

def optimizedBody707_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_62 optimizedBody707_88

def optimizedBody707_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_89

def optimizedBody707_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_90

def optimizedBody707_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_61 optimizedBody707_91

def optimizedBody707_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_24 optimizedBody707_92

def optimizedBody707_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_41 optimizedBody707_93

def optimizedBody707_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_94

def optimizedBody707_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_47 optimizedBody707_95

def optimizedBody707_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_43 optimizedBody707_96

def optimizedBody707_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_42 optimizedBody707_97

def optimizedBody707_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_41 optimizedBody707_98

def optimizedBody707_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_99

def optimizedBody707_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_100

def optimizedBody707_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_40 optimizedBody707_101

def optimizedBody707_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_24 optimizedBody707_102

def optimizedBody707_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_23 optimizedBody707_103

def optimizedBody707_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_104

def optimizedBody707_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_22 optimizedBody707_105

def optimizedBody707_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_18 optimizedBody707_106

def optimizedBody707_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_107

def optimizedBody707_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_17 optimizedBody707_108

def optimizedBody707_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_13 optimizedBody707_109

def optimizedBody707_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_7 optimizedBody707_110

def optimizedBody707_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_111

def optimizedBody707_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_12 optimizedBody707_112

def optimizedBody707_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_8 optimizedBody707_113

def optimizedBody707_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_7 optimizedBody707_114

def optimizedBody707_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_6 optimizedBody707_115

def optimizedBody707_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_5 optimizedBody707_116

def optimizedBody707_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody707_0 optimizedBody707_117

def oracle707 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 Flapjack.Spt.ln) 26
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))
              24
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 0
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 24
                (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 25))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
              22
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 22
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 Flapjack.Spt.ln)
                26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 26 (Flapjack.Spt.ls 26)) 22
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 26
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln) 24
                (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 24 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 25 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) 24
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 23 Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))))))
def optimized707 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(707, 3, optimizedBody707_118)
end InitECandidate.Proofs.SmallStages.Oracles707
