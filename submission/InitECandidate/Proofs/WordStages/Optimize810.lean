import InitECandidate.Proofs.WordStages.Optimize794
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source810
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody810_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (50, 4), (48, 2)]

def optimizedBody810_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody810_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody810_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody810_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_2 optimizedBody810_3

def optimizedBody810_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody810_1, 810, 2)) (some 69) ([]) (some (2, optimizedBody810_4, 810, 3))

def optimizedBody810_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody810_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 144#64)

def optimizedBody810_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48), (54, 0)]

def optimizedBody810_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (48, 48), (54, 54)]

def optimizedBody810_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48), (54, 54)]

def optimizedBody810_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_10 optimizedBody810_3

def optimizedBody810_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody810_9, 810, 4)) (some 68) ([2]) (some (2, optimizedBody810_11, 810, 5))

def optimizedBody810_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (48, 48), (54, 54)]

def optimizedBody810_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (50, 50), (0, 48), (54, 54)]

def optimizedBody810_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (50, 50), (0, 48), (54, 54)]

def optimizedBody810_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_15 optimizedBody810_3

def optimizedBody810_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody810_14, 810, 6)) (some 68) ([2]) (some (2, optimizedBody810_16, 810, 7))

def optimizedBody810_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 6), (48, 4), (50, 50), (52, 0), (54, 54)]

def optimizedBody810_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (48, 48), (50, 50), (4, 52), (52, 54)]

def optimizedBody810_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (50, 50), (4, 52), (52, 54)]

def optimizedBody810_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_20 optimizedBody810_3

def optimizedBody810_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody810_19, 810, 8)) (some 775) ([2, 4]) (some (2, optimizedBody810_21, 810, 9))

def optimizedBody810_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody810_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody810_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody810_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody810_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (44, 44), (46, 6), (48, 48), (50, 50), (52, 52)]

def optimizedBody810_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48), (48, 50), (50, 52)]

def optimizedBody810_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (48, 50), (50, 52)]

def optimizedBody810_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_29 optimizedBody810_3

def optimizedBody810_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody810_28, 810, 10)) (some 775) ([2, 4]) (some (2, optimizedBody810_30, 810, 11))

def optimizedBody810_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (4, 4), (48, 48), (0, 0), (50, 50)]

def optimizedBody810_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_6 optimizedBody810_32

def optimizedBody810_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_31 optimizedBody810_33

def optimizedBody810_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_27 optimizedBody810_34

def optimizedBody810_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_26 optimizedBody810_35

def optimizedBody810_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_25 optimizedBody810_36

def optimizedBody810_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_6 optimizedBody810_37

def optimizedBody810_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (4, 48), (48, 50), (0, 0), (50, 52)]

def optimizedBody810_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_6 optimizedBody810_39

def optimizedBody810_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody810_38 optimizedBody810_40

def optimizedBody810_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody810_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 50), (46, 44)]

def optimizedBody810_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody810_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46)]

def optimizedBody810_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_45 optimizedBody810_3

def optimizedBody810_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody810_44, 810, 12)) (some 70) ([2]) (some (2, optimizedBody810_46, 810, 13))

def optimizedBody810_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody810_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody810_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_48 optimizedBody810_49

def optimizedBody810_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_24 optimizedBody810_50

def optimizedBody810_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_6 optimizedBody810_51

def optimizedBody810_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_47 optimizedBody810_52

def optimizedBody810_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_43 optimizedBody810_53

def optimizedBody810_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_6 optimizedBody810_54

def optimizedBody810_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 6), (4, 4), (48, 48), (50, 50), (44, 44)]

def optimizedBody810_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody810_55 optimizedBody810_56

def optimizedBody810_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 4), (48, 48), (50, 50)]

def optimizedBody810_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody810_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody810_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_60 optimizedBody810_3

def optimizedBody810_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody810_59, 810, 14)) (some 771) ([2, 4, 6]) (some (2, optimizedBody810_61, 810, 15))

def optimizedBody810_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody810_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody810_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody810_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_65 optimizedBody810_3

def optimizedBody810_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody810_64, 810, 16)) (some 776) ([2, 4]) (some (2, optimizedBody810_66, 810, 17))

def optimizedBody810_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody810_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody810_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody810_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_70 optimizedBody810_3

def optimizedBody810_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody810_69, 810, 18)) (some 70) ([2]) (some (2, optimizedBody810_71, 810, 19))

def optimizedBody810_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_42 optimizedBody810_50

def optimizedBody810_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_6 optimizedBody810_73

def optimizedBody810_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_72 optimizedBody810_74

def optimizedBody810_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_68 optimizedBody810_75

def optimizedBody810_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_6 optimizedBody810_76

def optimizedBody810_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_67 optimizedBody810_77

def optimizedBody810_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_63 optimizedBody810_78

def optimizedBody810_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_6 optimizedBody810_79

def optimizedBody810_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_62 optimizedBody810_80

def optimizedBody810_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_58 optimizedBody810_81

def optimizedBody810_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_6 optimizedBody810_82

def optimizedBody810_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_6 optimizedBody810_83

def optimizedBody810_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_57 optimizedBody810_84

def optimizedBody810_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_42 optimizedBody810_85

def optimizedBody810_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_23 optimizedBody810_86

def optimizedBody810_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_6 optimizedBody810_87

def optimizedBody810_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_41 optimizedBody810_88

def optimizedBody810_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_24 optimizedBody810_89

def optimizedBody810_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_23 optimizedBody810_90

def optimizedBody810_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_6 optimizedBody810_91

def optimizedBody810_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_22 optimizedBody810_92

def optimizedBody810_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_18 optimizedBody810_93

def optimizedBody810_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_6 optimizedBody810_94

def optimizedBody810_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_17 optimizedBody810_95

def optimizedBody810_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_13 optimizedBody810_96

def optimizedBody810_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_7 optimizedBody810_97

def optimizedBody810_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_6 optimizedBody810_98

def optimizedBody810_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_12 optimizedBody810_99

def optimizedBody810_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_8 optimizedBody810_100

def optimizedBody810_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_7 optimizedBody810_101

def optimizedBody810_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_6 optimizedBody810_102

def optimizedBody810_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_5 optimizedBody810_103

def optimizedBody810_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody810_0 optimizedBody810_104

def oracle810 : Option (Spt Nat) :=
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
def optimized810 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(810, 3, optimizedBody810_105)
theorem optimize810_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source810, oracle810) = optimized810 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize810_eq
end InitECandidate.Proofs.WordStages
