import InitECandidate.Proofs.WordStages.Optimize554
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source570
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody570_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody570_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (0, 2), (6, 6), (44, 44)]

def optimizedBody570_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody570_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody570_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_2 optimizedBody570_3

def optimizedBody570_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody570_1, 570, 2)) (some 475) ([]) (some (2, optimizedBody570_4, 570, 3))

def optimizedBody570_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody570_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody570_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody570_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody570_8, 570, 4)) (some 466) ([2, 4, 6, 8]) (some (2, optimizedBody570_4, 570, 5))

def optimizedBody570_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (48, 0)]

def optimizedBody570_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48)]

def optimizedBody570_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody570_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_12 optimizedBody570_3

def optimizedBody570_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody570_11, 570, 6)) (some 495) ([2]) (some (2, optimizedBody570_13, 570, 7))

def optimizedBody570_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0), (48, 48)]

def optimizedBody570_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody570_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody570_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_17 optimizedBody570_3

def optimizedBody570_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody570_16, 570, 8)) (some 470) ([2]) (some (2, optimizedBody570_18, 570, 9))

def optimizedBody570_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0)]

def optimizedBody570_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody570_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody570_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_22 optimizedBody570_3

def optimizedBody570_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody570_21, 570, 10)) (some 496) ([2, 4]) (some (2, optimizedBody570_23, 570, 11))

def optimizedBody570_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody570_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody570_8, 570, 12)) (some 407) ([2]) (some (2, optimizedBody570_4, 570, 13))

def optimizedBody570_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0)]

def optimizedBody570_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody570_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody570_28, 570, 14)) (some 416) ([2]) (some (2, optimizedBody570_23, 570, 15))

def optimizedBody570_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody570_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody570_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody570_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody570_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody570_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody570_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody570_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody570_36, 570, 16)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody570_4, 570, 17))

def optimizedBody570_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44)]

def optimizedBody570_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_6 optimizedBody570_38

def optimizedBody570_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_37 optimizedBody570_39

def optimizedBody570_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_35 optimizedBody570_40

def optimizedBody570_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_31 optimizedBody570_41

def optimizedBody570_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_34 optimizedBody570_42

def optimizedBody570_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_33 optimizedBody570_43

def optimizedBody570_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_32 optimizedBody570_44

def optimizedBody570_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_6 optimizedBody570_45

def optimizedBody570_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody570_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody570_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody570_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody570_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (0, 2), (4, 4), (44, 44)]

def optimizedBody570_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody570_51, 570, 18)) (some 146) ([2, 4]) (some (2, optimizedBody570_4, 570, 19))

def optimizedBody570_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody570_36, 570, 20)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody570_4, 570, 21))

def optimizedBody570_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_53 optimizedBody570_39

def optimizedBody570_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_7 optimizedBody570_54

def optimizedBody570_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_6 optimizedBody570_55

def optimizedBody570_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_52 optimizedBody570_56

def optimizedBody570_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_50 optimizedBody570_57

def optimizedBody570_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_49 optimizedBody570_58

def optimizedBody570_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_48 optimizedBody570_59

def optimizedBody570_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_47 optimizedBody570_60

def optimizedBody570_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_6 optimizedBody570_61

def optimizedBody570_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody570_46 optimizedBody570_62

def optimizedBody570_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody570_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody570_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody570_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_66 optimizedBody570_3

def optimizedBody570_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody570_65, 570, 22)) (some 490) ([2]) (some (2, optimizedBody570_67, 570, 23))

def optimizedBody570_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody570_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody570_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_69 optimizedBody570_70

def optimizedBody570_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_31 optimizedBody570_71

def optimizedBody570_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_6 optimizedBody570_72

def optimizedBody570_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_68 optimizedBody570_73

def optimizedBody570_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_2 optimizedBody570_74

def optimizedBody570_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_64 optimizedBody570_75

def optimizedBody570_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_6 optimizedBody570_76

def optimizedBody570_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_63 optimizedBody570_77

def optimizedBody570_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_31 optimizedBody570_78

def optimizedBody570_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_30 optimizedBody570_79

def optimizedBody570_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_6 optimizedBody570_80

def optimizedBody570_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_29 optimizedBody570_81

def optimizedBody570_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_27 optimizedBody570_82

def optimizedBody570_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_6 optimizedBody570_83

def optimizedBody570_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_26 optimizedBody570_84

def optimizedBody570_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_25 optimizedBody570_85

def optimizedBody570_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_6 optimizedBody570_86

def optimizedBody570_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_24 optimizedBody570_87

def optimizedBody570_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_20 optimizedBody570_88

def optimizedBody570_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_6 optimizedBody570_89

def optimizedBody570_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_19 optimizedBody570_90

def optimizedBody570_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_15 optimizedBody570_91

def optimizedBody570_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_6 optimizedBody570_92

def optimizedBody570_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_14 optimizedBody570_93

def optimizedBody570_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_10 optimizedBody570_94

def optimizedBody570_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_6 optimizedBody570_95

def optimizedBody570_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_9 optimizedBody570_96

def optimizedBody570_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_7 optimizedBody570_97

def optimizedBody570_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_6 optimizedBody570_98

def optimizedBody570_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_5 optimizedBody570_99

def optimizedBody570_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody570_0 optimizedBody570_100

def oracle570 : Option (Spt Nat) :=
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
def optimized570 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(570, 1, optimizedBody570_101)
theorem optimize570_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source570, oracle570) = optimized570 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize570_eq
end InitECandidate.Proofs.WordStages
