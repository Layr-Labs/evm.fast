import InitECandidate.Proofs.WordStages.Optimize798
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source814
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody814_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (54, 2), (58, 6)]

def optimizedBody814_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (54, 54), (58, 58)]

def optimizedBody814_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (54, 54), (58, 58)]

def optimizedBody814_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody814_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_2 optimizedBody814_3

def optimizedBody814_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_1, 814, 2)) (some 69) ([]) (some (2, optimizedBody814_4, 814, 3))

def optimizedBody814_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody814_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 144#64)

def optimizedBody814_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (54, 54), (58, 58)]

def optimizedBody814_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (54, 54), (58, 58)]

def optimizedBody814_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (54, 54), (58, 58)]

def optimizedBody814_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_10 optimizedBody814_3

def optimizedBody814_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_9, 814, 4)) (some 68) ([2]) (some (2, optimizedBody814_11, 814, 5))

def optimizedBody814_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 288#64)

def optimizedBody814_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 0), (54, 54), (58, 58)]

def optimizedBody814_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (58, 58)]

def optimizedBody814_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (58, 58)]

def optimizedBody814_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_16 optimizedBody814_3

def optimizedBody814_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_15, 814, 6)) (some 68) ([2]) (some (2, optimizedBody814_17, 814, 7))

def optimizedBody814_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 576#64)

def optimizedBody814_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (52, 0), (48, 48), (50, 50), (54, 54), (58, 58)]

def optimizedBody814_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (52, 52), (48, 48), (50, 50), (54, 54), (58, 58)]

def optimizedBody814_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (52, 52), (48, 48), (50, 50), (54, 54), (58, 58)]

def optimizedBody814_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_22 optimizedBody814_3

def optimizedBody814_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_21, 814, 8)) (some 68) ([2]) (some (2, optimizedBody814_23, 814, 9))

def optimizedBody814_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (52, 52), (48, 48), (50, 50), (54, 54), (56, 0), (58, 58)]

def optimizedBody814_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (52, 52), (46, 48), (14, 50), (12, 54), (48, 56), (50, 58)]

def optimizedBody814_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (52, 52), (46, 48), (14, 50), (12, 54), (48, 56), (50, 58)]

def optimizedBody814_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_27 optimizedBody814_3

def optimizedBody814_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_26, 814, 10)) (some 756) ([2]) (some (2, optimizedBody814_28, 814, 11))

def optimizedBody814_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody814_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 8), (52, 52), (46, 46), (14, 14), (12, 12), (48, 48), (10, 10), (50, 50)]

def optimizedBody814_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (10, 10)]

def optimizedBody814_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody814_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 384#64)

def optimizedBody814_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 10), (4, 4)]

def optimizedBody814_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody814_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (0, 0)]

def optimizedBody814_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody814_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 14), (44, 44), (46, 8), (48, 52), (50, 46), (52, 14), (54, 12), (56, 48), (58, 10), (60, 50), (62, 2)]

def optimizedBody814_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody814_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody814_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_41 optimizedBody814_3

def optimizedBody814_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_40, 814, 12)) (some 775) ([2, 4]) (some (2, optimizedBody814_42, 814, 13))

def optimizedBody814_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody814_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody814_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 50), (52, 44)]

def optimizedBody814_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 52)]

def optimizedBody814_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 52)]

def optimizedBody814_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_48 optimizedBody814_3

def optimizedBody814_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_47, 814, 14)) (some 70) ([2]) (some (2, optimizedBody814_49, 814, 15))

def optimizedBody814_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody814_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody814_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody814_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_52 optimizedBody814_53

def optimizedBody814_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_51 optimizedBody814_54

def optimizedBody814_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_55

def optimizedBody814_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_50 optimizedBody814_56

def optimizedBody814_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_46 optimizedBody814_57

def optimizedBody814_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_58

def optimizedBody814_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (50, 50), (0, 0), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (44, 44)]

def optimizedBody814_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody814_59 optimizedBody814_60

def optimizedBody814_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody814_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (0, 62)]

def optimizedBody814_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (0, 62)]

def optimizedBody814_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_64 optimizedBody814_3

def optimizedBody814_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_63, 814, 16)) (some 777) ([2]) (some (2, optimizedBody814_65, 814, 17))

def optimizedBody814_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody814_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 50), (48, 44)]

def optimizedBody814_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 48)]

def optimizedBody814_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 48)]

def optimizedBody814_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_70 optimizedBody814_3

def optimizedBody814_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_69, 814, 18)) (some 70) ([2]) (some (2, optimizedBody814_71, 814, 19))

def optimizedBody814_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody814_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_52 optimizedBody814_73

def optimizedBody814_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_51 optimizedBody814_74

def optimizedBody814_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_75

def optimizedBody814_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_72 optimizedBody814_76

def optimizedBody814_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_68 optimizedBody814_77

def optimizedBody814_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_78

def optimizedBody814_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (4, 4), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (0, 0), (44, 44)]

def optimizedBody814_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody814_79 optimizedBody814_80

def optimizedBody814_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody814_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody814_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 4), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody814_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody814_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody814_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_86 optimizedBody814_3

def optimizedBody814_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_85, 814, 20)) (some 787) ([2, 4]) (some (2, optimizedBody814_87, 814, 21))

def optimizedBody814_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 48)]

def optimizedBody814_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 48)]

def optimizedBody814_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_90 optimizedBody814_3

def optimizedBody814_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_89, 814, 22)) (some 70) ([2]) (some (2, optimizedBody814_91, 814, 23))

def optimizedBody814_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_92 optimizedBody814_56

def optimizedBody814_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_68 optimizedBody814_93

def optimizedBody814_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_94

def optimizedBody814_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (0, 0), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (44, 44)]

def optimizedBody814_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody814_95 optimizedBody814_96

def optimizedBody814_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody814_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (44, 44), (46, 46), (6, 48), (50, 50), (4, 52), (54, 54), (0, 56), (58, 58), (60, 60)]

def optimizedBody814_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (6, 48), (50, 50), (4, 52), (54, 54), (0, 56), (58, 58), (60, 60)]

def optimizedBody814_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_100 optimizedBody814_3

def optimizedBody814_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_99, 814, 24)) (some 789) ([2]) (some (2, optimizedBody814_101, 814, 25))

def optimizedBody814_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody814_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 48)]

def optimizedBody814_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 48)]

def optimizedBody814_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_105 optimizedBody814_3

def optimizedBody814_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_104, 814, 26)) (some 70) ([2]) (some (2, optimizedBody814_106, 814, 27))

def optimizedBody814_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody814_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_52 optimizedBody814_108

def optimizedBody814_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_51 optimizedBody814_109

def optimizedBody814_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_110

def optimizedBody814_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_107 optimizedBody814_111

def optimizedBody814_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_68 optimizedBody814_112

def optimizedBody814_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_113

def optimizedBody814_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (6, 6), (50, 50), (4, 4), (54, 54), (0, 0), (58, 58), (60, 60), (44, 44)]

def optimizedBody814_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody814_114 optimizedBody814_115

def optimizedBody814_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 50), (52, 4), (54, 54), (56, 0), (58, 58), (60, 60)]

def optimizedBody814_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (4, 48), (46, 50), (14, 52), (12, 54), (6, 56), (0, 58), (50, 60)]

def optimizedBody814_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (8, 46), (4, 48), (46, 50), (14, 52), (12, 54), (6, 56), (0, 58), (50, 60)]

def optimizedBody814_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_119 optimizedBody814_3

def optimizedBody814_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_118, 814, 28)) (some 794) ([2, 4, 6]) (some (2, optimizedBody814_120, 814, 29))

def optimizedBody814_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody814_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (8, 8), (52, 4), (46, 46), (14, 14), (12, 12), (48, 6), (10, 10), (50, 50)]

def optimizedBody814_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody814_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_123 optimizedBody814_124

def optimizedBody814_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_122 optimizedBody814_125

def optimizedBody814_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_82 optimizedBody814_126

def optimizedBody814_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_127

def optimizedBody814_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_121 optimizedBody814_128

def optimizedBody814_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_117 optimizedBody814_129

def optimizedBody814_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_130

def optimizedBody814_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_131

def optimizedBody814_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_116 optimizedBody814_132

def optimizedBody814_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_45 optimizedBody814_133

def optimizedBody814_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_103 optimizedBody814_134

def optimizedBody814_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_135

def optimizedBody814_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_102 optimizedBody814_136

def optimizedBody814_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_98 optimizedBody814_137

def optimizedBody814_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_138

def optimizedBody814_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_139

def optimizedBody814_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_97 optimizedBody814_140

def optimizedBody814_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_45 optimizedBody814_141

def optimizedBody814_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_44 optimizedBody814_142

def optimizedBody814_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_143

def optimizedBody814_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_88 optimizedBody814_144

def optimizedBody814_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_84 optimizedBody814_145

def optimizedBody814_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_83 optimizedBody814_146

def optimizedBody814_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_82 optimizedBody814_147

def optimizedBody814_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_148

def optimizedBody814_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_149

def optimizedBody814_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_81 optimizedBody814_150

def optimizedBody814_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_45 optimizedBody814_151

def optimizedBody814_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_67 optimizedBody814_152

def optimizedBody814_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_153

def optimizedBody814_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_66 optimizedBody814_154

def optimizedBody814_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_62 optimizedBody814_155

def optimizedBody814_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_156

def optimizedBody814_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_157

def optimizedBody814_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_61 optimizedBody814_158

def optimizedBody814_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_45 optimizedBody814_159

def optimizedBody814_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_44 optimizedBody814_160

def optimizedBody814_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_161

def optimizedBody814_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_43 optimizedBody814_162

def optimizedBody814_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_39 optimizedBody814_163

def optimizedBody814_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_38 optimizedBody814_164

def optimizedBody814_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_37 optimizedBody814_165

def optimizedBody814_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_36 optimizedBody814_166

def optimizedBody814_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_35 optimizedBody814_167

def optimizedBody814_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_34 optimizedBody814_168

def optimizedBody814_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_33 optimizedBody814_169

def optimizedBody814_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_170

def optimizedBody814_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody814_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_172

def optimizedBody814_174 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 10 (Flapjack.WordRegImm.reg 8) optimizedBody814_171 optimizedBody814_173

def optimizedBody814_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (8, 8), (52, 2), (46, 4), (14, 14), (12, 12), (48, 6), (10, 10), (50, 16)]

def optimizedBody814_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_175

def optimizedBody814_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_174 optimizedBody814_176

def optimizedBody814_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_32 optimizedBody814_177

def optimizedBody814_179 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody814_178 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody814_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 48), (4, 48), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody814_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (48, 50)]

def optimizedBody814_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (48, 50)]

def optimizedBody814_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_182 optimizedBody814_3

def optimizedBody814_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_181, 814, 30)) (some 765) ([2, 4]) (some (2, optimizedBody814_183, 814, 31))

def optimizedBody814_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48)]

def optimizedBody814_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody814_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody814_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_187 optimizedBody814_3

def optimizedBody814_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_186, 814, 32)) (some 757) ([2]) (some (2, optimizedBody814_188, 814, 33))

def optimizedBody814_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody814_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody814_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 6), (50, 2)]

def optimizedBody814_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody814_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody814_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_194 optimizedBody814_3

def optimizedBody814_196 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_193, 814, 34)) (some 78) ([2, 4]) (some (2, optimizedBody814_195, 814, 35))

def optimizedBody814_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 31#64)))

def optimizedBody814_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody814_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 44)]

def optimizedBody814_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody814_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody814_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_201 optimizedBody814_3

def optimizedBody814_203 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody814_200, 814, 36)) (some 70) ([2]) (some (2, optimizedBody814_202, 814, 37))

def optimizedBody814_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody814_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_52 optimizedBody814_204

def optimizedBody814_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_45 optimizedBody814_205

def optimizedBody814_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_206

def optimizedBody814_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_203 optimizedBody814_207

def optimizedBody814_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_199 optimizedBody814_208

def optimizedBody814_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_198 optimizedBody814_209

def optimizedBody814_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_82 optimizedBody814_210

def optimizedBody814_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_197 optimizedBody814_211

def optimizedBody814_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_44 optimizedBody814_212

def optimizedBody814_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_213

def optimizedBody814_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_196 optimizedBody814_214

def optimizedBody814_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_192 optimizedBody814_215

def optimizedBody814_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_191 optimizedBody814_216

def optimizedBody814_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_190 optimizedBody814_217

def optimizedBody814_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_218

def optimizedBody814_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_189 optimizedBody814_219

def optimizedBody814_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_185 optimizedBody814_220

def optimizedBody814_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_221

def optimizedBody814_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_184 optimizedBody814_222

def optimizedBody814_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_180 optimizedBody814_223

def optimizedBody814_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_224

def optimizedBody814_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_179 optimizedBody814_225

def optimizedBody814_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_31 optimizedBody814_226

def optimizedBody814_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_227

def optimizedBody814_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_30 optimizedBody814_228

def optimizedBody814_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_229

def optimizedBody814_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_29 optimizedBody814_230

def optimizedBody814_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_25 optimizedBody814_231

def optimizedBody814_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_232

def optimizedBody814_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_24 optimizedBody814_233

def optimizedBody814_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_20 optimizedBody814_234

def optimizedBody814_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_19 optimizedBody814_235

def optimizedBody814_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_236

def optimizedBody814_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_18 optimizedBody814_237

def optimizedBody814_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_14 optimizedBody814_238

def optimizedBody814_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_13 optimizedBody814_239

def optimizedBody814_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_240

def optimizedBody814_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_12 optimizedBody814_241

def optimizedBody814_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_8 optimizedBody814_242

def optimizedBody814_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_7 optimizedBody814_243

def optimizedBody814_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_6 optimizedBody814_244

def optimizedBody814_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_5 optimizedBody814_245

def optimizedBody814_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody814_0 optimizedBody814_246

def oracle814 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) 29
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 30)))
                  24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 29
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 7)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 1 (Flapjack.Spt.ls 28))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 31 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 22)) 26 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0 (Flapjack.Spt.ls 29)))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 6 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 6
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 26 (Flapjack.Spt.ls 29)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                27
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 22)) 25 Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 2 Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4)) 1 Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 27
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 24 Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))) 23
                  Flapjack.Spt.ln)
                29
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 1)) 27
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.ls 29))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 6)) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                  0 (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 23 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 24 (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 27))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 30 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 1))))
                23
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 24 Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 5 Flapjack.Spt.ln) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 0 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
                23 (Flapjack.Spt.ls 22))
              22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 27)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 27))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 31 Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 27 Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 29 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 29 Flapjack.Spt.ln))))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 27
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                  (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 30 Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 25 Flapjack.Spt.ln) 29
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln) 29
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 24)) 22
                    (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 28 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) 29 Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 26)) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))))))))
def optimized814 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(814, 4, optimizedBody814_247)
theorem optimize814_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source814, oracle814) = optimized814 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize814_eq
end InitECandidate.Proofs.WordStages
