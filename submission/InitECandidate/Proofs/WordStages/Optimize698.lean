import InitECandidate.Proofs.WordStages.Optimize682
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source698
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody698_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 4), (52, 2)]

def optimizedBody698_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (52, 52)]

def optimizedBody698_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (52, 52)]

def optimizedBody698_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody698_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_2 optimizedBody698_3

def optimizedBody698_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody698_1, 698, 2)) (some 69) ([]) (some (2, optimizedBody698_4, 698, 3))

def optimizedBody698_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody698_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody698_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 0), (52, 52)]

def optimizedBody698_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody698_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody698_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_10 optimizedBody698_3

def optimizedBody698_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody698_9, 698, 4)) (some 68) ([2]) (some (2, optimizedBody698_11, 698, 5))

def optimizedBody698_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52)]

def optimizedBody698_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (48, 48), (50, 50), (0, 52)]

def optimizedBody698_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (50, 50), (0, 52)]

def optimizedBody698_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_15 optimizedBody698_3

def optimizedBody698_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody698_14, 698, 6)) (some 68) ([2]) (some (2, optimizedBody698_16, 698, 7))

def optimizedBody698_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 4), (48, 48), (50, 50), (52, 0), (54, 6)]

def optimizedBody698_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (4, 54)]

def optimizedBody698_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (4, 54)]

def optimizedBody698_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_20 optimizedBody698_3

def optimizedBody698_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody698_19, 698, 8)) (some 695) ([2, 4]) (some (2, optimizedBody698_21, 698, 9))

def optimizedBody698_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody698_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody698_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 50), (52, 44)]

def optimizedBody698_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 52)]

def optimizedBody698_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 52)]

def optimizedBody698_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_27 optimizedBody698_3

def optimizedBody698_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody698_26, 698, 10)) (some 70) ([2]) (some (2, optimizedBody698_28, 698, 11))

def optimizedBody698_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody698_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody698_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody698_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_31 optimizedBody698_32

def optimizedBody698_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_30 optimizedBody698_33

def optimizedBody698_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_34

def optimizedBody698_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_29 optimizedBody698_35

def optimizedBody698_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_25 optimizedBody698_36

def optimizedBody698_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_37

def optimizedBody698_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (48, 48), (50, 50), (0, 0), (4, 4), (44, 44)]

def optimizedBody698_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody698_38 optimizedBody698_39

def optimizedBody698_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody698_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody698_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 4)]

def optimizedBody698_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (48, 48), (50, 50), (8, 52)]

def optimizedBody698_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (50, 50), (8, 52)]

def optimizedBody698_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_45 optimizedBody698_3

def optimizedBody698_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody698_44, 698, 12)) (some 695) ([2, 4]) (some (2, optimizedBody698_46, 698, 13))

def optimizedBody698_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 50), (46, 44)]

def optimizedBody698_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody698_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46)]

def optimizedBody698_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_50 optimizedBody698_3

def optimizedBody698_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody698_49, 698, 14)) (some 70) ([2]) (some (2, optimizedBody698_51, 698, 15))

def optimizedBody698_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody698_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_31 optimizedBody698_53

def optimizedBody698_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_30 optimizedBody698_54

def optimizedBody698_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_55

def optimizedBody698_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_52 optimizedBody698_56

def optimizedBody698_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_48 optimizedBody698_57

def optimizedBody698_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_58

def optimizedBody698_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 6), (48, 48), (50, 50), (8, 8), (44, 44)]

def optimizedBody698_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody698_59 optimizedBody698_60

def optimizedBody698_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody698_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (6, 6), (8, 8), (44, 44), (46, 6), (48, 48), (50, 50)]

def optimizedBody698_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody698_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody698_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_65 optimizedBody698_3

def optimizedBody698_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody698_64, 698, 16)) (some 683) ([2, 4, 6, 8]) (some (2, optimizedBody698_66, 698, 17))

def optimizedBody698_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody698_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody698_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody698_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_70 optimizedBody698_3

def optimizedBody698_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody698_69, 698, 18)) (some 697) ([2, 4]) (some (2, optimizedBody698_71, 698, 19))

def optimizedBody698_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody698_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody698_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody698_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_75 optimizedBody698_3

def optimizedBody698_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody698_74, 698, 20)) (some 70) ([2]) (some (2, optimizedBody698_76, 698, 21))

def optimizedBody698_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_24 optimizedBody698_54

def optimizedBody698_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_78

def optimizedBody698_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_77 optimizedBody698_79

def optimizedBody698_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_73 optimizedBody698_80

def optimizedBody698_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_81

def optimizedBody698_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_72 optimizedBody698_82

def optimizedBody698_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_68 optimizedBody698_83

def optimizedBody698_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_84

def optimizedBody698_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_67 optimizedBody698_85

def optimizedBody698_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_63 optimizedBody698_86

def optimizedBody698_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_30 optimizedBody698_87

def optimizedBody698_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_62 optimizedBody698_88

def optimizedBody698_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_89

def optimizedBody698_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_90

def optimizedBody698_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_61 optimizedBody698_91

def optimizedBody698_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_24 optimizedBody698_92

def optimizedBody698_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_41 optimizedBody698_93

def optimizedBody698_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_94

def optimizedBody698_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_47 optimizedBody698_95

def optimizedBody698_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_43 optimizedBody698_96

def optimizedBody698_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_42 optimizedBody698_97

def optimizedBody698_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_41 optimizedBody698_98

def optimizedBody698_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_99

def optimizedBody698_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_100

def optimizedBody698_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_40 optimizedBody698_101

def optimizedBody698_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_24 optimizedBody698_102

def optimizedBody698_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_23 optimizedBody698_103

def optimizedBody698_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_104

def optimizedBody698_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_22 optimizedBody698_105

def optimizedBody698_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_18 optimizedBody698_106

def optimizedBody698_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_107

def optimizedBody698_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_17 optimizedBody698_108

def optimizedBody698_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_13 optimizedBody698_109

def optimizedBody698_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_7 optimizedBody698_110

def optimizedBody698_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_111

def optimizedBody698_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_12 optimizedBody698_112

def optimizedBody698_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_8 optimizedBody698_113

def optimizedBody698_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_7 optimizedBody698_114

def optimizedBody698_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_6 optimizedBody698_115

def optimizedBody698_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_5 optimizedBody698_116

def optimizedBody698_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody698_0 optimizedBody698_117

def oracle698 : Option (Spt Nat) :=
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
def optimized698 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(698, 3, optimizedBody698_118)
theorem optimize698_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source698, oracle698) = optimized698 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize698_eq
end InitECandidate.Proofs.WordStages
