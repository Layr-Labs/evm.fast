import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source797
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles797
def optimizedBody797_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 4), (52, 2)]

def optimizedBody797_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (52, 52)]

def optimizedBody797_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (52, 52)]

def optimizedBody797_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody797_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_3

def optimizedBody797_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody797_1, 797, 2)) (some 69) ([]) (some (2, optimizedBody797_4, 797, 3))

def optimizedBody797_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody797_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody797_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (52, 52)]

def optimizedBody797_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48), (52, 52)]

def optimizedBody797_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (52, 52)]

def optimizedBody797_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_10 optimizedBody797_3

def optimizedBody797_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody797_9, 797, 4)) (some 68) ([2]) (some (2, optimizedBody797_11, 797, 5))

def optimizedBody797_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 4), (50, 0), (52, 52)]

def optimizedBody797_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (4, 48), (0, 50), (52, 52)]

def optimizedBody797_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50), (52, 52)]

def optimizedBody797_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_15 optimizedBody797_3

def optimizedBody797_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody797_14, 797, 6)) (some 791) ([2]) (some (2, optimizedBody797_16, 797, 7))

def optimizedBody797_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody797_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody797_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 52)]

def optimizedBody797_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 192#64)

def optimizedBody797_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (48, 44), (44, 46)]

def optimizedBody797_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (0, 44)]

def optimizedBody797_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (0, 44)]

def optimizedBody797_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_24 optimizedBody797_3

def optimizedBody797_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody797_23, 797, 8)) (some 78) ([2, 4]) (some (2, optimizedBody797_25, 797, 9))

def optimizedBody797_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (48, 48)]

def optimizedBody797_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 48)]

def optimizedBody797_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 48)]

def optimizedBody797_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_29 optimizedBody797_3

def optimizedBody797_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody797_28, 797, 10)) (some 70) ([2]) (some (2, optimizedBody797_30, 797, 11))

def optimizedBody797_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody797_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody797_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody797_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_33 optimizedBody797_34

def optimizedBody797_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_32 optimizedBody797_35

def optimizedBody797_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_6 optimizedBody797_36

def optimizedBody797_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_31 optimizedBody797_37

def optimizedBody797_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_27 optimizedBody797_38

def optimizedBody797_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_6 optimizedBody797_39

def optimizedBody797_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_26 optimizedBody797_40

def optimizedBody797_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_22 optimizedBody797_41

def optimizedBody797_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_21 optimizedBody797_42

def optimizedBody797_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_20 optimizedBody797_43

def optimizedBody797_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_6 optimizedBody797_44

def optimizedBody797_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (4, 4), (0, 0), (52, 52), (44, 44)]

def optimizedBody797_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody797_45 optimizedBody797_46

def optimizedBody797_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody797_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody797_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 2), (50, 0), (52, 52)]

def optimizedBody797_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (6, 48), (4, 50), (0, 52)]

def optimizedBody797_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (6, 48), (4, 50), (0, 52)]

def optimizedBody797_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_52 optimizedBody797_3

def optimizedBody797_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody797_51, 797, 12)) (some 754) ([2, 4]) (some (2, optimizedBody797_53, 797, 13))

def optimizedBody797_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 4), (52, 0)]

def optimizedBody797_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (6, 48), (0, 50), (4, 52)]

def optimizedBody797_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (6, 48), (0, 50), (4, 52)]

def optimizedBody797_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_57 optimizedBody797_3

def optimizedBody797_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody797_56, 797, 14)) (some 750) ([2, 4, 6]) (some (2, optimizedBody797_58, 797, 15))

def optimizedBody797_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody797_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody797_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody797_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody797_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody797_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody797_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody797_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_66 optimizedBody797_3

def optimizedBody797_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody797_65, 797, 16)) (some 750) ([2, 4, 6]) (some (2, optimizedBody797_67, 797, 17))

def optimizedBody797_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody797_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody797_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody797_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_71 optimizedBody797_3

def optimizedBody797_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody797_70, 797, 18)) (some 70) ([2]) (some (2, optimizedBody797_72, 797, 19))

def optimizedBody797_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody797_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_33 optimizedBody797_74

def optimizedBody797_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_19 optimizedBody797_75

def optimizedBody797_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_6 optimizedBody797_76

def optimizedBody797_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_73 optimizedBody797_77

def optimizedBody797_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_69 optimizedBody797_78

def optimizedBody797_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_6 optimizedBody797_79

def optimizedBody797_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_68 optimizedBody797_80

def optimizedBody797_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_64 optimizedBody797_81

def optimizedBody797_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_63 optimizedBody797_82

def optimizedBody797_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_62 optimizedBody797_83

def optimizedBody797_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_61 optimizedBody797_84

def optimizedBody797_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_60 optimizedBody797_85

def optimizedBody797_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_6 optimizedBody797_86

def optimizedBody797_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_59 optimizedBody797_87

def optimizedBody797_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_55 optimizedBody797_88

def optimizedBody797_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_6 optimizedBody797_89

def optimizedBody797_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_54 optimizedBody797_90

def optimizedBody797_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_50 optimizedBody797_91

def optimizedBody797_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_49 optimizedBody797_92

def optimizedBody797_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_48 optimizedBody797_93

def optimizedBody797_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_6 optimizedBody797_94

def optimizedBody797_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_6 optimizedBody797_95

def optimizedBody797_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_47 optimizedBody797_96

def optimizedBody797_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_19 optimizedBody797_97

def optimizedBody797_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_18 optimizedBody797_98

def optimizedBody797_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_6 optimizedBody797_99

def optimizedBody797_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_17 optimizedBody797_100

def optimizedBody797_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_13 optimizedBody797_101

def optimizedBody797_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_6 optimizedBody797_102

def optimizedBody797_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_12 optimizedBody797_103

def optimizedBody797_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_8 optimizedBody797_104

def optimizedBody797_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_7 optimizedBody797_105

def optimizedBody797_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_6 optimizedBody797_106

def optimizedBody797_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_5 optimizedBody797_107

def optimizedBody797_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_0 optimizedBody797_108

def oracle797 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 23
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 1 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 Flapjack.Spt.ln) 26 (Flapjack.Spt.ls 26)) 24
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 2 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              26
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 (Flapjack.Spt.ls 0)) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 0
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              22
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 23)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              26 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 22
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bs Flapjack.Spt.ln 24
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 26))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)))))))
def optimized797 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(797, 3, optimizedBody797_109)
end InitECandidate.Proofs.SmallStages.Oracles797
