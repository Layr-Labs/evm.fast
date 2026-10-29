import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source572
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles572
def optimizedBody572_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody572_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (0, 2), (6, 6), (44, 44)]

def optimizedBody572_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody572_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody572_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_2 optimizedBody572_3

def optimizedBody572_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody572_1, 572, 2)) (some 477) ([]) (some (2, optimizedBody572_4, 572, 3))

def optimizedBody572_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody572_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody572_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody572_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody572_8, 572, 4)) (some 468) ([2, 4, 6, 8]) (some (2, optimizedBody572_4, 572, 5))

def optimizedBody572_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (48, 0)]

def optimizedBody572_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48)]

def optimizedBody572_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody572_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_12 optimizedBody572_3

def optimizedBody572_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody572_11, 572, 6)) (some 497) ([2]) (some (2, optimizedBody572_13, 572, 7))

def optimizedBody572_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0), (48, 48)]

def optimizedBody572_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody572_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody572_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_17 optimizedBody572_3

def optimizedBody572_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody572_16, 572, 8)) (some 472) ([2]) (some (2, optimizedBody572_18, 572, 9))

def optimizedBody572_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0)]

def optimizedBody572_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody572_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody572_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_22 optimizedBody572_3

def optimizedBody572_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody572_21, 572, 10)) (some 498) ([2, 4]) (some (2, optimizedBody572_23, 572, 11))

def optimizedBody572_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody572_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody572_8, 572, 12)) (some 409) ([2]) (some (2, optimizedBody572_4, 572, 13))

def optimizedBody572_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0)]

def optimizedBody572_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody572_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody572_28, 572, 14)) (some 418) ([2]) (some (2, optimizedBody572_23, 572, 15))

def optimizedBody572_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody572_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody572_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody572_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody572_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody572_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody572_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody572_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody572_36, 572, 16)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody572_4, 572, 17))

def optimizedBody572_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44)]

def optimizedBody572_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_6 optimizedBody572_38

def optimizedBody572_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_37 optimizedBody572_39

def optimizedBody572_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_35 optimizedBody572_40

def optimizedBody572_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_31 optimizedBody572_41

def optimizedBody572_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_34 optimizedBody572_42

def optimizedBody572_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_33 optimizedBody572_43

def optimizedBody572_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_32 optimizedBody572_44

def optimizedBody572_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_6 optimizedBody572_45

def optimizedBody572_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody572_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody572_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody572_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody572_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (0, 2), (4, 4), (44, 44)]

def optimizedBody572_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody572_51, 572, 18)) (some 146) ([2, 4]) (some (2, optimizedBody572_4, 572, 19))

def optimizedBody572_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody572_36, 572, 20)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody572_4, 572, 21))

def optimizedBody572_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_53 optimizedBody572_39

def optimizedBody572_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_7 optimizedBody572_54

def optimizedBody572_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_6 optimizedBody572_55

def optimizedBody572_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_52 optimizedBody572_56

def optimizedBody572_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_50 optimizedBody572_57

def optimizedBody572_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_49 optimizedBody572_58

def optimizedBody572_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_48 optimizedBody572_59

def optimizedBody572_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_47 optimizedBody572_60

def optimizedBody572_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_6 optimizedBody572_61

def optimizedBody572_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody572_46 optimizedBody572_62

def optimizedBody572_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody572_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody572_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody572_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_66 optimizedBody572_3

def optimizedBody572_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody572_65, 572, 22)) (some 492) ([2]) (some (2, optimizedBody572_67, 572, 23))

def optimizedBody572_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody572_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody572_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_69 optimizedBody572_70

def optimizedBody572_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_31 optimizedBody572_71

def optimizedBody572_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_6 optimizedBody572_72

def optimizedBody572_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_68 optimizedBody572_73

def optimizedBody572_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_2 optimizedBody572_74

def optimizedBody572_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_64 optimizedBody572_75

def optimizedBody572_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_6 optimizedBody572_76

def optimizedBody572_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_63 optimizedBody572_77

def optimizedBody572_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_31 optimizedBody572_78

def optimizedBody572_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_30 optimizedBody572_79

def optimizedBody572_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_6 optimizedBody572_80

def optimizedBody572_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_29 optimizedBody572_81

def optimizedBody572_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_27 optimizedBody572_82

def optimizedBody572_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_6 optimizedBody572_83

def optimizedBody572_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_26 optimizedBody572_84

def optimizedBody572_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_25 optimizedBody572_85

def optimizedBody572_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_6 optimizedBody572_86

def optimizedBody572_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_24 optimizedBody572_87

def optimizedBody572_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_20 optimizedBody572_88

def optimizedBody572_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_6 optimizedBody572_89

def optimizedBody572_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_19 optimizedBody572_90

def optimizedBody572_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_15 optimizedBody572_91

def optimizedBody572_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_6 optimizedBody572_92

def optimizedBody572_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_14 optimizedBody572_93

def optimizedBody572_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_10 optimizedBody572_94

def optimizedBody572_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_6 optimizedBody572_95

def optimizedBody572_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_9 optimizedBody572_96

def optimizedBody572_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_7 optimizedBody572_97

def optimizedBody572_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_6 optimizedBody572_98

def optimizedBody572_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_5 optimizedBody572_99

def optimizedBody572_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_0 optimizedBody572_100

def oracle572 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 Flapjack.Spt.ln) 22 Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 2)) 4 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln) 3
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) Flapjack.Spt.ln) 22
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                2 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 0))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 22
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))))))
def optimized572 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(572, 1, optimizedBody572_101)
end InitECandidate.Proofs.SmallStages.Oracles572
