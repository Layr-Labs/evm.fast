import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source822
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles822
def optimizedBody822_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (50, 4), (48, 2)]

def optimizedBody822_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody822_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody822_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody822_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_2 optimizedBody822_3

def optimizedBody822_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody822_1, 822, 2)) (some 69) ([]) (some (2, optimizedBody822_4, 822, 3))

def optimizedBody822_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody822_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 144#64)

def optimizedBody822_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48), (54, 0)]

def optimizedBody822_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (48, 48), (54, 54)]

def optimizedBody822_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48), (54, 54)]

def optimizedBody822_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_10 optimizedBody822_3

def optimizedBody822_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody822_9, 822, 4)) (some 68) ([2]) (some (2, optimizedBody822_11, 822, 5))

def optimizedBody822_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (48, 48), (54, 54)]

def optimizedBody822_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (50, 50), (0, 48), (54, 54)]

def optimizedBody822_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (50, 50), (0, 48), (54, 54)]

def optimizedBody822_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_15 optimizedBody822_3

def optimizedBody822_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody822_14, 822, 6)) (some 68) ([2]) (some (2, optimizedBody822_16, 822, 7))

def optimizedBody822_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 6), (48, 4), (50, 50), (52, 0), (54, 54)]

def optimizedBody822_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (48, 48), (50, 50), (4, 52), (52, 54)]

def optimizedBody822_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (50, 50), (4, 52), (52, 54)]

def optimizedBody822_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_20 optimizedBody822_3

def optimizedBody822_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody822_19, 822, 8)) (some 787) ([2, 4]) (some (2, optimizedBody822_21, 822, 9))

def optimizedBody822_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody822_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody822_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody822_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody822_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (44, 44), (46, 6), (48, 48), (50, 50), (52, 52)]

def optimizedBody822_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48), (48, 50), (50, 52)]

def optimizedBody822_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (48, 50), (50, 52)]

def optimizedBody822_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_29 optimizedBody822_3

def optimizedBody822_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody822_28, 822, 10)) (some 787) ([2, 4]) (some (2, optimizedBody822_30, 822, 11))

def optimizedBody822_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (4, 4), (48, 48), (0, 0), (50, 50)]

def optimizedBody822_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_32

def optimizedBody822_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_31 optimizedBody822_33

def optimizedBody822_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_27 optimizedBody822_34

def optimizedBody822_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_26 optimizedBody822_35

def optimizedBody822_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_25 optimizedBody822_36

def optimizedBody822_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_37

def optimizedBody822_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (4, 48), (48, 50), (0, 0), (50, 52)]

def optimizedBody822_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_39

def optimizedBody822_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody822_38 optimizedBody822_40

def optimizedBody822_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody822_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 50), (46, 44)]

def optimizedBody822_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody822_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46)]

def optimizedBody822_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_45 optimizedBody822_3

def optimizedBody822_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody822_44, 822, 12)) (some 70) ([2]) (some (2, optimizedBody822_46, 822, 13))

def optimizedBody822_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody822_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody822_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_48 optimizedBody822_49

def optimizedBody822_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_24 optimizedBody822_50

def optimizedBody822_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_51

def optimizedBody822_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_47 optimizedBody822_52

def optimizedBody822_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_43 optimizedBody822_53

def optimizedBody822_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_54

def optimizedBody822_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 6), (4, 4), (48, 48), (50, 50), (44, 44)]

def optimizedBody822_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody822_55 optimizedBody822_56

def optimizedBody822_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 4), (48, 48), (50, 50)]

def optimizedBody822_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody822_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody822_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_60 optimizedBody822_3

def optimizedBody822_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody822_59, 822, 14)) (some 783) ([2, 4, 6]) (some (2, optimizedBody822_61, 822, 15))

def optimizedBody822_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody822_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody822_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody822_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_65 optimizedBody822_3

def optimizedBody822_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody822_64, 822, 16)) (some 788) ([2, 4]) (some (2, optimizedBody822_66, 822, 17))

def optimizedBody822_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody822_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody822_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody822_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_70 optimizedBody822_3

def optimizedBody822_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody822_69, 822, 18)) (some 70) ([2]) (some (2, optimizedBody822_71, 822, 19))

def optimizedBody822_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_42 optimizedBody822_50

def optimizedBody822_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_73

def optimizedBody822_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_72 optimizedBody822_74

def optimizedBody822_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_68 optimizedBody822_75

def optimizedBody822_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_76

def optimizedBody822_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_67 optimizedBody822_77

def optimizedBody822_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_63 optimizedBody822_78

def optimizedBody822_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_79

def optimizedBody822_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_62 optimizedBody822_80

def optimizedBody822_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_58 optimizedBody822_81

def optimizedBody822_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_82

def optimizedBody822_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_83

def optimizedBody822_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_57 optimizedBody822_84

def optimizedBody822_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_42 optimizedBody822_85

def optimizedBody822_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_23 optimizedBody822_86

def optimizedBody822_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_87

def optimizedBody822_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_41 optimizedBody822_88

def optimizedBody822_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_24 optimizedBody822_89

def optimizedBody822_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_23 optimizedBody822_90

def optimizedBody822_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_91

def optimizedBody822_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_22 optimizedBody822_92

def optimizedBody822_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_18 optimizedBody822_93

def optimizedBody822_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_94

def optimizedBody822_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_17 optimizedBody822_95

def optimizedBody822_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_13 optimizedBody822_96

def optimizedBody822_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_7 optimizedBody822_97

def optimizedBody822_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_98

def optimizedBody822_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_12 optimizedBody822_99

def optimizedBody822_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_8 optimizedBody822_100

def optimizedBody822_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_7 optimizedBody822_101

def optimizedBody822_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_6 optimizedBody822_102

def optimizedBody822_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_5 optimizedBody822_103

def optimizedBody822_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody822_0 optimizedBody822_104

def oracle822 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
              24
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 22
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              22
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 27
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              25 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
              (Flapjack.Spt.bs Flapjack.Spt.ln 0
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 26)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) 25
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 2))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 22
                (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
              25 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 27
                (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
              22 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 24 Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 25
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))))
def optimized822 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(822, 3, optimizedBody822_105)
end InitECandidate.Proofs.SmallStages.Oracles822
