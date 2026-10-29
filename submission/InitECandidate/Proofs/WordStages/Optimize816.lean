import InitECandidate.Proofs.WordStages.Optimize800
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source816
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody816_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (50, 4), (48, 2)]

def optimizedBody816_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody816_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody816_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody816_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_2 optimizedBody816_3

def optimizedBody816_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody816_1, 816, 2)) (some 69) ([]) (some (2, optimizedBody816_4, 816, 3))

def optimizedBody816_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody816_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody816_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48), (54, 0)]

def optimizedBody816_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (48, 48), (54, 54)]

def optimizedBody816_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48), (54, 54)]

def optimizedBody816_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_10 optimizedBody816_3

def optimizedBody816_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody816_9, 816, 4)) (some 68) ([2]) (some (2, optimizedBody816_11, 816, 5))

def optimizedBody816_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 288#64)

def optimizedBody816_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (48, 48), (54, 54)]

def optimizedBody816_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (50, 50), (0, 48), (54, 54)]

def optimizedBody816_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (50, 50), (0, 48), (54, 54)]

def optimizedBody816_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_16 optimizedBody816_3

def optimizedBody816_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody816_15, 816, 6)) (some 68) ([2]) (some (2, optimizedBody816_17, 816, 7))

def optimizedBody816_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 6), (48, 4), (50, 50), (52, 0), (54, 54)]

def optimizedBody816_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (4, 48), (48, 50), (0, 52), (50, 54)]

def optimizedBody816_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (48, 50), (0, 52), (50, 54)]

def optimizedBody816_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_21 optimizedBody816_3

def optimizedBody816_23 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody816_20, 816, 8)) (some 727) ([2, 4]) (some (2, optimizedBody816_22, 816, 9))

def optimizedBody816_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody816_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody816_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody816_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody816_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 4)]

def optimizedBody816_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody816_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 48), (52, 50)]

def optimizedBody816_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48), (48, 50), (50, 52)]

def optimizedBody816_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (48, 50), (50, 52)]

def optimizedBody816_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_32 optimizedBody816_3

def optimizedBody816_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody816_31, 816, 10)) (some 727) ([2, 4]) (some (2, optimizedBody816_33, 816, 11))

def optimizedBody816_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (4, 4), (48, 48), (6, 6), (50, 50)]

def optimizedBody816_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_6 optimizedBody816_35

def optimizedBody816_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_34 optimizedBody816_36

def optimizedBody816_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_30 optimizedBody816_37

def optimizedBody816_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_29 optimizedBody816_38

def optimizedBody816_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_28 optimizedBody816_39

def optimizedBody816_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_27 optimizedBody816_40

def optimizedBody816_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_26 optimizedBody816_41

def optimizedBody816_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_6 optimizedBody816_42

def optimizedBody816_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46), (4, 4), (48, 48), (6, 6), (50, 50)]

def optimizedBody816_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_6 optimizedBody816_44

def optimizedBody816_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody816_43 optimizedBody816_45

def optimizedBody816_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody816_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 50), (46, 44)]

def optimizedBody816_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 46)]

def optimizedBody816_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 46)]

def optimizedBody816_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_50 optimizedBody816_3

def optimizedBody816_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody816_49, 816, 12)) (some 70) ([2]) (some (2, optimizedBody816_51, 816, 13))

def optimizedBody816_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody816_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody816_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_53 optimizedBody816_54

def optimizedBody816_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_25 optimizedBody816_55

def optimizedBody816_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_6 optimizedBody816_56

def optimizedBody816_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_52 optimizedBody816_57

def optimizedBody816_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_48 optimizedBody816_58

def optimizedBody816_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_6 optimizedBody816_59

def optimizedBody816_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 0), (4, 4), (48, 48), (50, 50), (44, 44)]

def optimizedBody816_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody816_60 optimizedBody816_61

def optimizedBody816_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0), (48, 48), (50, 50)]

def optimizedBody816_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody816_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody816_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_65 optimizedBody816_3

def optimizedBody816_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody816_64, 816, 14)) (some 804) ([2, 4]) (some (2, optimizedBody816_66, 816, 15))

def optimizedBody816_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody816_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody816_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody816_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_70 optimizedBody816_3

def optimizedBody816_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody816_69, 816, 16)) (some 788) ([2, 4]) (some (2, optimizedBody816_71, 816, 17))

def optimizedBody816_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody816_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody816_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody816_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_75 optimizedBody816_3

def optimizedBody816_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody816_74, 816, 18)) (some 70) ([2]) (some (2, optimizedBody816_76, 816, 19))

def optimizedBody816_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody816_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_53 optimizedBody816_78

def optimizedBody816_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_47 optimizedBody816_79

def optimizedBody816_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_6 optimizedBody816_80

def optimizedBody816_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_77 optimizedBody816_81

def optimizedBody816_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_73 optimizedBody816_82

def optimizedBody816_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_6 optimizedBody816_83

def optimizedBody816_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_72 optimizedBody816_84

def optimizedBody816_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_68 optimizedBody816_85

def optimizedBody816_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_6 optimizedBody816_86

def optimizedBody816_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_67 optimizedBody816_87

def optimizedBody816_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_63 optimizedBody816_88

def optimizedBody816_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_6 optimizedBody816_89

def optimizedBody816_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_6 optimizedBody816_90

def optimizedBody816_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_62 optimizedBody816_91

def optimizedBody816_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_47 optimizedBody816_92

def optimizedBody816_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_24 optimizedBody816_93

def optimizedBody816_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_6 optimizedBody816_94

def optimizedBody816_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_46 optimizedBody816_95

def optimizedBody816_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_25 optimizedBody816_96

def optimizedBody816_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_24 optimizedBody816_97

def optimizedBody816_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_6 optimizedBody816_98

def optimizedBody816_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_23 optimizedBody816_99

def optimizedBody816_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_19 optimizedBody816_100

def optimizedBody816_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_6 optimizedBody816_101

def optimizedBody816_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_18 optimizedBody816_102

def optimizedBody816_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_14 optimizedBody816_103

def optimizedBody816_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_13 optimizedBody816_104

def optimizedBody816_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_6 optimizedBody816_105

def optimizedBody816_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_12 optimizedBody816_106

def optimizedBody816_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_8 optimizedBody816_107

def optimizedBody816_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_7 optimizedBody816_108

def optimizedBody816_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_6 optimizedBody816_109

def optimizedBody816_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_5 optimizedBody816_110

def optimizedBody816_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody816_0 optimizedBody816_111

def oracle816 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
              24
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22 Flapjack.Spt.ln) 24
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
              22
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 27
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
              25
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 0
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 25
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 22
                (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
              25 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 27
                (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
              22 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 24
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 25
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))))
def optimized816 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(816, 3, optimizedBody816_112)
theorem optimize816_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source816, oracle816) = optimized816 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize816_eq
end InitECandidate.Proofs.WordStages
