import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source827
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles827
def optimizedBody827_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 4), (50, 2)]

def optimizedBody827_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50)]

def optimizedBody827_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50)]

def optimizedBody827_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody827_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_2 optimizedBody827_3

def optimizedBody827_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody827_1, 827, 2)) (some 69) ([]) (some (2, optimizedBody827_4, 827, 3))

def optimizedBody827_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody827_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 48#64)

def optimizedBody827_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50)]

def optimizedBody827_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody827_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody827_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_10 optimizedBody827_3

def optimizedBody827_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody827_9, 827, 4)) (some 68) ([2]) (some (2, optimizedBody827_11, 827, 5))

def optimizedBody827_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 144#64)

def optimizedBody827_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0)]

def optimizedBody827_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (48, 48), (0, 50), (4, 52)]

def optimizedBody827_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (4, 52)]

def optimizedBody827_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_16 optimizedBody827_3

def optimizedBody827_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody827_15, 827, 6)) (some 68) ([2]) (some (2, optimizedBody827_17, 827, 7))

def optimizedBody827_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 6), (52, 4)]

def optimizedBody827_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48), (0, 50), (14, 52)]

def optimizedBody827_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (14, 52)]

def optimizedBody827_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_21 optimizedBody827_3

def optimizedBody827_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody827_20, 827, 8)) (some 737) ([2, 4]) (some (2, optimizedBody827_22, 827, 9))

def optimizedBody827_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody827_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody827_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 46), (50, 44)]

def optimizedBody827_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 50)]

def optimizedBody827_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 50)]

def optimizedBody827_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_28 optimizedBody827_3

def optimizedBody827_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody827_27, 827, 10)) (some 70) ([2]) (some (2, optimizedBody827_29, 827, 11))

def optimizedBody827_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody827_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody827_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody827_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_32 optimizedBody827_33

def optimizedBody827_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_31 optimizedBody827_34

def optimizedBody827_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_6 optimizedBody827_35

def optimizedBody827_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_30 optimizedBody827_36

def optimizedBody827_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_26 optimizedBody827_37

def optimizedBody827_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_6 optimizedBody827_38

def optimizedBody827_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (48, 48), (0, 0), (14, 14), (44, 44)]

def optimizedBody827_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody827_39 optimizedBody827_40

def optimizedBody827_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody827_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody827_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 14 8#64))

def optimizedBody827_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 14 16#64))

def optimizedBody827_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 14 24#64))

def optimizedBody827_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 14 32#64))

def optimizedBody827_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 14 40#64))

def optimizedBody827_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (44, 44), (46, 46), (48, 48), (50, 0)]

def optimizedBody827_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody827_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody827_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_51 optimizedBody827_3

def optimizedBody827_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody827_50, 827, 12)) (some 811) ([2, 4, 6, 8, 10, 12, 14]) (some (2, optimizedBody827_52, 827, 13))

def optimizedBody827_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody827_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody827_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody827_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_56 optimizedBody827_3

def optimizedBody827_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody827_55, 827, 14)) (some 788) ([2, 4]) (some (2, optimizedBody827_57, 827, 15))

def optimizedBody827_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody827_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody827_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody827_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_61 optimizedBody827_3

def optimizedBody827_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody827_60, 827, 16)) (some 70) ([2]) (some (2, optimizedBody827_62, 827, 17))

def optimizedBody827_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody827_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_32 optimizedBody827_64

def optimizedBody827_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_25 optimizedBody827_65

def optimizedBody827_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_6 optimizedBody827_66

def optimizedBody827_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_63 optimizedBody827_67

def optimizedBody827_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_59 optimizedBody827_68

def optimizedBody827_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_6 optimizedBody827_69

def optimizedBody827_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_58 optimizedBody827_70

def optimizedBody827_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_54 optimizedBody827_71

def optimizedBody827_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_6 optimizedBody827_72

def optimizedBody827_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_53 optimizedBody827_73

def optimizedBody827_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_49 optimizedBody827_74

def optimizedBody827_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_48 optimizedBody827_75

def optimizedBody827_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_42 optimizedBody827_76

def optimizedBody827_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_47 optimizedBody827_77

def optimizedBody827_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_42 optimizedBody827_78

def optimizedBody827_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_46 optimizedBody827_79

def optimizedBody827_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_42 optimizedBody827_80

def optimizedBody827_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_45 optimizedBody827_81

def optimizedBody827_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_42 optimizedBody827_82

def optimizedBody827_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_44 optimizedBody827_83

def optimizedBody827_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_42 optimizedBody827_84

def optimizedBody827_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_43 optimizedBody827_85

def optimizedBody827_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_42 optimizedBody827_86

def optimizedBody827_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_6 optimizedBody827_87

def optimizedBody827_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_6 optimizedBody827_88

def optimizedBody827_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_41 optimizedBody827_89

def optimizedBody827_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_25 optimizedBody827_90

def optimizedBody827_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_24 optimizedBody827_91

def optimizedBody827_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_6 optimizedBody827_92

def optimizedBody827_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_23 optimizedBody827_93

def optimizedBody827_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_19 optimizedBody827_94

def optimizedBody827_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_6 optimizedBody827_95

def optimizedBody827_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_18 optimizedBody827_96

def optimizedBody827_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_14 optimizedBody827_97

def optimizedBody827_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_13 optimizedBody827_98

def optimizedBody827_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_6 optimizedBody827_99

def optimizedBody827_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_12 optimizedBody827_100

def optimizedBody827_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_8 optimizedBody827_101

def optimizedBody827_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_7 optimizedBody827_102

def optimizedBody827_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_6 optimizedBody827_103

def optimizedBody827_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_5 optimizedBody827_104

def optimizedBody827_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody827_0 optimizedBody827_105

def oracle827 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 7))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 24)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 7))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 24 (Flapjack.Spt.ls 23)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.ls 22))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 25
                (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              22 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 (Flapjack.Spt.ls 24))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.ls 25))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 (Flapjack.Spt.ls 25))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 24
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))))
def optimized827 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(827, 3, optimizedBody827_106)
end InitECandidate.Proofs.SmallStages.Oracles827
