import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source237
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles237
def optimizedBody237_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 6), (6, 8), (8, 10), (44, 0), (46, 16), (48, 8), (50, 4), (52, 20), (54, 12), (56, 2), (58, 18),
    (60, 10), (62, 6), (96, 22), (64, 14)]

def optimizedBody237_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (18, 44), (46, 46), (6, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58), (8, 60), (4, 62), (96, 96),
    (64, 64)]

def optimizedBody237_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (18, 44), (46, 46), (6, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58), (8, 60), (4, 62), (96, 96),
    (64, 64)]

def optimizedBody237_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody237_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_2 optimizedBody237_3

def optimizedBody237_5 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_1, 237, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody237_4, 237, 3))

def optimizedBody237_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody237_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody237_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody237_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody237_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody237_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2]

def optimizedBody237_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_10 optimizedBody237_11

def optimizedBody237_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_9 optimizedBody237_12

def optimizedBody237_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_13

def optimizedBody237_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody237_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody237_14 optimizedBody237_15

def optimizedBody237_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody237_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 18446744073709551615#64)

def optimizedBody237_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 18446744073709551614#64)

def optimizedBody237_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 13451932020343611451#64)

def optimizedBody237_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 13822214165235122497#64)

def optimizedBody237_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 18), (46, 46), (48, 6), (50, 2),
    (52, 52), (54, 54), (56, 56), (58, 58), (60, 8), (62, 4), (96, 96), (64, 64)]

def optimizedBody237_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (12, 44), (6, 46), (48, 48), (50, 50), (52, 52), (10, 54), (56, 56), (8, 58), (60, 60), (62, 62), (96, 96),
    (4, 64)]

def optimizedBody237_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (12, 44), (6, 46), (48, 48), (50, 50), (52, 52), (10, 54), (56, 56), (8, 58), (60, 60), (62, 62), (96, 96),
    (4, 64)]

def optimizedBody237_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_24 optimizedBody237_3

def optimizedBody237_26 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_23, 237, 4)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody237_25, 237, 5))

def optimizedBody237_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody237_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody237_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_10 optimizedBody237_28

def optimizedBody237_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_9 optimizedBody237_29

def optimizedBody237_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_30

def optimizedBody237_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody237_31 optimizedBody237_15

def optimizedBody237_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 6), (8, 8), (44, 12), (46, 6), (48, 48), (50, 50), (52, 52), (54, 10), (56, 56), (58, 8),
    (60, 60), (62, 62), (96, 96), (64, 4)]

def optimizedBody237_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (18, 44), (6, 46), (48, 48), (50, 50), (52, 52), (0, 54), (54, 56), (8, 58), (56, 60), (58, 62), (96, 96),
    (4, 64)]

def optimizedBody237_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (18, 44), (6, 46), (48, 48), (50, 50), (52, 52), (0, 54), (54, 56), (8, 58), (56, 60), (58, 62), (96, 96),
    (4, 64)]

def optimizedBody237_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_35 optimizedBody237_3

def optimizedBody237_37 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_34, 237, 6)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody237_36, 237, 7))

def optimizedBody237_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 18), (46, 6), (48, 48), (50, 50),
    (52, 52), (64, 2), (54, 54), (80, 8), (56, 56), (58, 58), (96, 96), (98, 4)]

def optimizedBody237_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (4, 44), (44, 46), (46, 48), (48, 50), (50, 52), (64, 64), (54, 54), (80, 80), (56, 56), (58, 58), (96, 96),
    (98, 98)]

def optimizedBody237_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 44), (44, 46), (46, 48), (48, 50), (50, 52), (64, 64), (54, 54), (80, 80), (56, 56), (58, 58), (96, 96),
    (98, 98)]

def optimizedBody237_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_40 optimizedBody237_3

def optimizedBody237_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_39, 237, 8)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody237_41, 237, 9))

def optimizedBody237_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody237_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_10 optimizedBody237_43

def optimizedBody237_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_9 optimizedBody237_44

def optimizedBody237_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_45

def optimizedBody237_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody237_46 optimizedBody237_15

def optimizedBody237_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(52, 4), (44, 44), (46, 46), (48, 48), (50, 50), (64, 64), (54, 54), (80, 80), (56, 56), (58, 58), (96, 96),
    (98, 98)]

def optimizedBody237_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (64, 64), (54, 54), (80, 80), (56, 56), (58, 58), (96, 96),
    (98, 98)]

def optimizedBody237_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (64, 64), (54, 54), (80, 80), (56, 56), (58, 58), (96, 96),
    (98, 98)]

def optimizedBody237_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_50 optimizedBody237_3

def optimizedBody237_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_49, 237, 10)) (some 69) ([]) (some (2, optimizedBody237_51, 237, 11))

def optimizedBody237_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody237_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (64, 64), (74, 0), (54, 54), (80, 80), (56, 56), (58, 58),
    (96, 96), (98, 98)]

def optimizedBody237_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (64, 64), (74, 74), (54, 54), (80, 80), (56, 56), (58, 58),
    (96, 96), (98, 98)]

def optimizedBody237_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (64, 64), (74, 74), (54, 54), (80, 80), (56, 56), (58, 58),
    (96, 96), (98, 98)]

def optimizedBody237_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_56 optimizedBody237_3

def optimizedBody237_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_55, 237, 12)) (some 68) ([2]) (some (2, optimizedBody237_57, 237, 13))

def optimizedBody237_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (64, 64), (74, 74), (76, 0), (54, 54), (80, 80), (56, 56),
    (58, 58), (96, 96), (98, 98)]

def optimizedBody237_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (52, 52), (44, 44), (6, 46), (0, 48), (10, 50), (64, 64), (74, 74), (76, 76), (54, 54), (80, 80), (8, 56),
    (4, 58), (96, 96), (98, 98)]

def optimizedBody237_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (44, 44), (6, 46), (0, 48), (10, 50), (64, 64), (74, 74), (76, 76), (54, 54), (80, 80), (8, 56),
    (4, 58), (96, 96), (98, 98)]

def optimizedBody237_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_61 optimizedBody237_3

def optimizedBody237_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_60, 237, 14)) (some 68) ([2]) (some (2, optimizedBody237_62, 237, 15))

def optimizedBody237_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (52, 52), (44, 44), (46, 6), (48, 0), (64, 64), (74, 74),
    (76, 76), (50, 12), (54, 54), (80, 80), (60, 8), (62, 4), (96, 96), (98, 98)]

def optimizedBody237_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (52, 52), (44, 44), (46, 46), (48, 48), (64, 64), (74, 74), (76, 76), (4, 50), (0, 54), (80, 80), (60, 60),
    (62, 62), (96, 96), (98, 98)]

def optimizedBody237_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (44, 44), (46, 46), (48, 48), (64, 64), (74, 74), (76, 76), (4, 50), (0, 54), (80, 80), (60, 60),
    (62, 62), (96, 96), (98, 98)]

def optimizedBody237_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_66 optimizedBody237_3

def optimizedBody237_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_65, 237, 16)) (some 236) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody237_67, 237, 17))

def optimizedBody237_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody237_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 74), (50, 52)]

def optimizedBody237_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 50)]

def optimizedBody237_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 50)]

def optimizedBody237_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_72 optimizedBody237_3

def optimizedBody237_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_71, 237, 18)) (some 70) ([2]) (some (2, optimizedBody237_73, 237, 19))

def optimizedBody237_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody237_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_10 optimizedBody237_75

def optimizedBody237_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_9 optimizedBody237_76

def optimizedBody237_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_77

def optimizedBody237_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_74 optimizedBody237_78

def optimizedBody237_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_70 optimizedBody237_79

def optimizedBody237_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_80

def optimizedBody237_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(44, 44), (46, 46), (48, 48), (64, 64), (74, 74), (76, 76), (4, 4), (0, 0), (80, 80), (60, 60), (62, 62), (96, 96),
    (98, 98), (52, 52)]

def optimizedBody237_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody237_81 optimizedBody237_82

def optimizedBody237_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody237_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody237_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody237_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody237_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody237_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 4 32#64))

def optimizedBody237_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 4 40#64))

def optimizedBody237_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody237_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 56#64))

def optimizedBody237_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody237_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody237_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (52, 52), (44, 44), (46, 46), (48, 48), (50, 6), (54, 8), (56, 10), (58, 12), (64, 64), (66, 14),
    (68, 16), (70, 18), (72, 20), (74, 74), (76, 76), (80, 80), (60, 60), (62, 62), (96, 96), (98, 98)]

def optimizedBody237_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (0, 2), (4, 4), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (58, 58),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (80, 80), (60, 60), (62, 62), (96, 96),
    (98, 98)]

def optimizedBody237_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (58, 58), (64, 64), (66, 66), (68, 68),
    (70, 70), (72, 72), (74, 74), (76, 76), (80, 80), (60, 60), (62, 62), (96, 96), (98, 98)]

def optimizedBody237_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_97 optimizedBody237_3

def optimizedBody237_99 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_96, 237, 20)) (some 146) ([2, 4]) (some (2, optimizedBody237_98, 237, 21))

def optimizedBody237_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (52, 52), (44, 44), (46, 46), (48, 48),
    (50, 50), (54, 54), (56, 56), (58, 58), (78, 8), (82, 6), (86, 2), (84, 4), (64, 64), (66, 66), (68, 68), (70, 70),
    (72, 72), (74, 74), (76, 76), (80, 80), (60, 60), (62, 62), (96, 96), (98, 98)]

def optimizedBody237_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (58, 58), (78, 78), (82, 82), (86, 86),
    (84, 84), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (80, 80), (60, 60), (62, 62),
    (96, 96), (98, 98)]

def optimizedBody237_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (58, 58), (78, 78), (82, 82), (86, 86),
    (84, 84), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (80, 80), (60, 60), (62, 62),
    (96, 96), (98, 98)]

def optimizedBody237_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_102 optimizedBody237_3

def optimizedBody237_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_101, 237, 22)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody237_103, 237, 23))

def optimizedBody237_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 78), (6, 82), (4, 84), (2, 86)]

def optimizedBody237_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (52, 52), (44, 44), (46, 46), (48, 48),
    (50, 50), (54, 54), (56, 56), (58, 58), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76),
    (80, 80), (60, 60), (62, 62), (96, 96), (98, 98)]

def optimizedBody237_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 8), (12, 6), (16, 2), (14, 4), (52, 52), (44, 44), (6, 46), (0, 48), (46, 50), (48, 54), (50, 56), (54, 58),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (80, 80), (8, 60), (4, 62), (96, 96),
    (98, 98)]

def optimizedBody237_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (44, 44), (6, 46), (0, 48), (46, 50), (48, 54), (50, 56), (54, 58), (64, 64), (66, 66), (68, 68),
    (70, 70), (72, 72), (74, 74), (76, 76), (80, 80), (8, 60), (4, 62), (96, 96), (98, 98)]

def optimizedBody237_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_108 optimizedBody237_3

def optimizedBody237_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_107, 237, 24)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody237_109, 237, 25))

def optimizedBody237_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(52, 52), (44, 44), (6, 6), (0, 0), (46, 46), (48, 48), (50, 50), (54, 54), (56, 10), (58, 12), (60, 16), (62, 14),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (80, 80), (8, 8), (4, 4), (96, 96), (98, 98)]

def optimizedBody237_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_111

def optimizedBody237_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_110 optimizedBody237_112

def optimizedBody237_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_106 optimizedBody237_113

def optimizedBody237_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_21 optimizedBody237_114

def optimizedBody237_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_20 optimizedBody237_115

def optimizedBody237_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_19 optimizedBody237_116

def optimizedBody237_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_18 optimizedBody237_117

def optimizedBody237_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_105 optimizedBody237_118

def optimizedBody237_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_119

def optimizedBody237_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(52, 52), (44, 44), (6, 46), (0, 48), (46, 50), (48, 54), (50, 56), (54, 58), (56, 78), (58, 82), (60, 86), (62, 84),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (80, 80), (8, 60), (4, 62), (96, 96),
    (98, 98)]

def optimizedBody237_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_121

def optimizedBody237_123 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody237_120 optimizedBody237_122

def optimizedBody237_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (80, 80), (96, 96),
    (98, 98)]

def optimizedBody237_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (22, 2), (4, 4), (6, 6), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (12, 56), (10, 58),
    (14, 60), (0, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (80, 80), (96, 96),
    (98, 98)]

def optimizedBody237_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (12, 56), (10, 58), (14, 60), (0, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (80, 80), (96, 96), (98, 98)]

def optimizedBody237_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_126 optimizedBody237_3

def optimizedBody237_128 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_125, 237, 26)) (some 224) ([2, 4, 6, 8]) (some (2, optimizedBody237_127, 237, 27))

def optimizedBody237_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def optimizedBody237_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody237_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody237_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 12), (58, 10),
    (60, 14), (62, 0), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 2), (80, 80),
    (82, 16), (84, 18), (86, 8), (88, 20), (90, 22), (92, 4), (94, 6), (96, 96), (98, 98)]

def optimizedBody237_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (16, 56), (14, 58), (10, 60), (12, 62),
    (56, 64), (58, 66), (60, 68), (62, 70), (64, 72), (66, 74), (68, 76), (8, 78), (70, 80), (6, 82), (4, 84), (72, 86),
    (0, 88), (74, 90), (76, 92), (78, 94), (80, 96), (82, 98)]

def optimizedBody237_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (16, 56), (14, 58), (10, 60), (12, 62), (56, 64),
    (58, 66), (60, 68), (62, 70), (64, 72), (66, 74), (68, 76), (8, 78), (70, 80), (6, 82), (4, 84), (72, 86), (0, 88),
    (74, 90), (76, 92), (78, 94), (80, 96), (82, 98)]

def optimizedBody237_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_134 optimizedBody237_3

def optimizedBody237_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_133, 237, 28)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody237_135, 237, 29))

def optimizedBody237_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody237_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14), (12, 12), (10, 10)]

def optimizedBody237_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 18446744073709551615#64)

def optimizedBody237_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18446744073709551614#64)

def optimizedBody237_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 13451932020343611451#64)

def optimizedBody237_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 13822214165235122497#64)

def optimizedBody237_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (52, 52), (44, 44), (46, 46), (48, 48),
    (50, 50), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72),
    (74, 74), (76, 76), (78, 78), (80, 80), (82, 82)]

def optimizedBody237_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (4, 4), (0, 2), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (16, 72), (10, 74), (12, 76), (14, 78), (80, 80),
    (82, 82)]

def optimizedBody237_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (16, 72), (10, 74), (12, 76), (14, 78), (80, 80), (82, 82)]

def optimizedBody237_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_145 optimizedBody237_3

def optimizedBody237_147 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_144, 237, 30)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody237_146, 237, 31))

def optimizedBody237_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (8, 8), (70, 70), (6, 6), (4, 4), (16, 16), (0, 0), (10, 10), (12, 12), (14, 14), (80, 80),
    (82, 82)]

def optimizedBody237_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_148

def optimizedBody237_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_147 optimizedBody237_149

def optimizedBody237_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_143 optimizedBody237_150

def optimizedBody237_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_142 optimizedBody237_151

def optimizedBody237_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_141 optimizedBody237_152

def optimizedBody237_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_140 optimizedBody237_153

def optimizedBody237_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_139 optimizedBody237_154

def optimizedBody237_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_138 optimizedBody237_155

def optimizedBody237_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_156

def optimizedBody237_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(52, 52), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (8, 8), (70, 70), (6, 6), (4, 4), (16, 72), (0, 0), (10, 74), (12, 76), (14, 78), (80, 80),
    (82, 82)]

def optimizedBody237_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_158

def optimizedBody237_160 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 2) optimizedBody237_157 optimizedBody237_159

def optimizedBody237_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (52, 52), (44, 44), (46, 46), (48, 48),
    (50, 50), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 16),
    (74, 10), (76, 12), (78, 14), (80, 80), (82, 82)]

def optimizedBody237_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (24, 2), (6, 6), (8, 8), (52, 52), (18, 44), (44, 46), (46, 48), (48, 50), (50, 54), (22, 56), (54, 58),
    (56, 60), (58, 62), (60, 64), (62, 66), (64, 68), (20, 70), (16, 72), (10, 74), (12, 76), (14, 78), (74, 80),
    (0, 82)]

def optimizedBody237_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (18, 44), (44, 46), (46, 48), (48, 50), (50, 54), (22, 56), (54, 58), (56, 60), (58, 62), (60, 64),
    (62, 66), (64, 68), (20, 70), (16, 72), (10, 74), (12, 76), (14, 78), (74, 80), (0, 82)]

def optimizedBody237_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_163 optimizedBody237_3

def optimizedBody237_165 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_162, 237, 32)) (some 219) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody237_164, 237, 33))

def optimizedBody237_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (52, 52), (44, 44), (46, 46), (48, 48),
    (50, 50), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 4), (68, 24), (70, 6), (72, 8), (74, 74)]

def optimizedBody237_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (28, 2), (6, 6), (8, 8), (52, 52), (0, 44), (10, 46), (14, 48), (12, 50), (42, 54), (40, 56), (36, 58),
    (38, 60), (54, 62), (24, 64), (20, 66), (22, 68), (18, 70), (16, 72), (58, 74)]

def optimizedBody237_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (0, 44), (10, 46), (14, 48), (12, 50), (42, 54), (40, 56), (36, 58), (38, 60), (54, 62), (24, 64),
    (20, 66), (22, 68), (18, 70), (16, 72), (58, 74)]

def optimizedBody237_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_168 optimizedBody237_3

def optimizedBody237_170 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_167, 237, 34)) (some 219) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody237_169, 237, 35))

def optimizedBody237_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(50, 0), (4, 10), (2, 12), (0, 14), (42, 42), (40, 40), (38, 38), (36, 36), (34, 8), (32, 6), (30, 4), (28, 28),
    (10, 16), (8, 18), (6, 20), (44, 22), (56, 24)]

def optimizedBody237_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 5204712524664259685#64)

def optimizedBody237_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 6747795201694173352#64)

def optimizedBody237_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 18237243440184513561#64)

def optimizedBody237_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 11261198710074299576#64)

def optimizedBody237_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 8772561819708210092#64)

def optimizedBody237_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 6170039885052185351#64)

def optimizedBody237_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 188021827762530521#64)

def optimizedBody237_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 6481385041966929816#64)

def optimizedBody237_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 56), (4, 44), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (26, 26), (28, 28), (30, 30), (32, 32), (34, 34), (36, 36), (38, 38), (40, 40), (42, 42), (44, 0), (46, 2), (48, 4),
    (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody237_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 52), (46, 54), (0, 56), (50, 58)]

def optimizedBody237_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 52), (46, 54), (0, 56), (50, 58)]

def optimizedBody237_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_182 optimizedBody237_3

def optimizedBody237_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_181, 237, 36)) (some 233) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50]) (some (2, optimizedBody237_183, 237, 37))

def optimizedBody237_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody237_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (12, 48), (10, 50)]

def optimizedBody237_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (12, 48), (10, 50)]

def optimizedBody237_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_187 optimizedBody237_3

def optimizedBody237_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_186, 237, 38)) (some 234) ([2]) (some (2, optimizedBody237_188, 237, 39))

def optimizedBody237_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody237_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody237_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 8#64))

def optimizedBody237_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 16#64))

def optimizedBody237_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 24#64))

def optimizedBody237_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 12 32#64))

def optimizedBody237_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 12 40#64))

def optimizedBody237_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 12 48#64))

def optimizedBody237_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 12 56#64))

def optimizedBody237_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 12), (50, 14), (52, 16), (54, 10), (56, 18),
    (58, 0)]

def optimizedBody237_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (8, 48), (4, 50), (6, 52), (0, 54), (10, 56), (48, 58)]

def optimizedBody237_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (8, 48), (4, 50), (6, 52), (0, 54), (10, 56), (48, 58)]

def optimizedBody237_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_201 optimizedBody237_3

def optimizedBody237_203 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody237_200, 237, 40)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody237_202, 237, 41))

def optimizedBody237_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody237_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody237_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 48)]

def optimizedBody237_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48)]

def optimizedBody237_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48)]

def optimizedBody237_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_208 optimizedBody237_3

def optimizedBody237_210 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_207, 237, 42)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody237_209, 237, 43))

def optimizedBody237_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (46, 46)]

def optimizedBody237_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_211

def optimizedBody237_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_210 optimizedBody237_212

def optimizedBody237_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_206 optimizedBody237_213

def optimizedBody237_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_205 optimizedBody237_214

def optimizedBody237_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_204 optimizedBody237_215

def optimizedBody237_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_216

def optimizedBody237_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_203 optimizedBody237_217

def optimizedBody237_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_199 optimizedBody237_218

def optimizedBody237_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_198 optimizedBody237_219

def optimizedBody237_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_190 optimizedBody237_220

def optimizedBody237_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_197 optimizedBody237_221

def optimizedBody237_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_190 optimizedBody237_222

def optimizedBody237_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_196 optimizedBody237_223

def optimizedBody237_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_190 optimizedBody237_224

def optimizedBody237_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_195 optimizedBody237_225

def optimizedBody237_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_190 optimizedBody237_226

def optimizedBody237_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_194 optimizedBody237_227

def optimizedBody237_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_190 optimizedBody237_228

def optimizedBody237_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_193 optimizedBody237_229

def optimizedBody237_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_190 optimizedBody237_230

def optimizedBody237_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_192 optimizedBody237_231

def optimizedBody237_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_190 optimizedBody237_232

def optimizedBody237_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_191 optimizedBody237_233

def optimizedBody237_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_190 optimizedBody237_234

def optimizedBody237_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_235

def optimizedBody237_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46), (46, 0)]

def optimizedBody237_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_237

def optimizedBody237_239 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody237_236 optimizedBody237_238

def optimizedBody237_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody237_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody237_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody237_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_242 optimizedBody237_3

def optimizedBody237_244 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_241, 237, 44)) (some 70) ([2]) (some (2, optimizedBody237_243, 237, 45))

def optimizedBody237_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody237_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody237_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_245 optimizedBody237_246

def optimizedBody237_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_247

def optimizedBody237_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_244 optimizedBody237_248

def optimizedBody237_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_240 optimizedBody237_249

def optimizedBody237_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_250

def optimizedBody237_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_239 optimizedBody237_251

def optimizedBody237_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_8 optimizedBody237_252

def optimizedBody237_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_27 optimizedBody237_253

def optimizedBody237_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_254

def optimizedBody237_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_189 optimizedBody237_255

def optimizedBody237_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_185 optimizedBody237_256

def optimizedBody237_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_257

def optimizedBody237_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_184 optimizedBody237_258

def optimizedBody237_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_180 optimizedBody237_259

def optimizedBody237_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_179 optimizedBody237_260

def optimizedBody237_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_178 optimizedBody237_261

def optimizedBody237_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_177 optimizedBody237_262

def optimizedBody237_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_176 optimizedBody237_263

def optimizedBody237_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_175 optimizedBody237_264

def optimizedBody237_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_174 optimizedBody237_265

def optimizedBody237_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_173 optimizedBody237_266

def optimizedBody237_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_172 optimizedBody237_267

def optimizedBody237_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_171 optimizedBody237_268

def optimizedBody237_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_269

def optimizedBody237_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_170 optimizedBody237_270

def optimizedBody237_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_166 optimizedBody237_271

def optimizedBody237_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_272

def optimizedBody237_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_165 optimizedBody237_273

def optimizedBody237_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_161 optimizedBody237_274

def optimizedBody237_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_275

def optimizedBody237_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_160 optimizedBody237_276

def optimizedBody237_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_9 optimizedBody237_277

def optimizedBody237_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_137 optimizedBody237_278

def optimizedBody237_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_279

def optimizedBody237_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_136 optimizedBody237_280

def optimizedBody237_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_132 optimizedBody237_281

def optimizedBody237_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_9 optimizedBody237_282

def optimizedBody237_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_131 optimizedBody237_283

def optimizedBody237_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_130 optimizedBody237_284

def optimizedBody237_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_129 optimizedBody237_285

def optimizedBody237_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_286

def optimizedBody237_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_128 optimizedBody237_287

def optimizedBody237_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_124 optimizedBody237_288

def optimizedBody237_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_289

def optimizedBody237_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_123 optimizedBody237_290

def optimizedBody237_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_9 optimizedBody237_291

def optimizedBody237_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_27 optimizedBody237_292

def optimizedBody237_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_293

def optimizedBody237_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_104 optimizedBody237_294

def optimizedBody237_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_100 optimizedBody237_295

def optimizedBody237_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_21 optimizedBody237_296

def optimizedBody237_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_20 optimizedBody237_297

def optimizedBody237_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_19 optimizedBody237_298

def optimizedBody237_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_18 optimizedBody237_299

def optimizedBody237_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_17 optimizedBody237_300

def optimizedBody237_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_301

def optimizedBody237_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_99 optimizedBody237_302

def optimizedBody237_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_95 optimizedBody237_303

def optimizedBody237_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_94 optimizedBody237_304

def optimizedBody237_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_93 optimizedBody237_305

def optimizedBody237_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_92 optimizedBody237_306

def optimizedBody237_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_84 optimizedBody237_307

def optimizedBody237_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_91 optimizedBody237_308

def optimizedBody237_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_84 optimizedBody237_309

def optimizedBody237_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_90 optimizedBody237_310

def optimizedBody237_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_84 optimizedBody237_311

def optimizedBody237_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_89 optimizedBody237_312

def optimizedBody237_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_84 optimizedBody237_313

def optimizedBody237_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_88 optimizedBody237_314

def optimizedBody237_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_84 optimizedBody237_315

def optimizedBody237_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_87 optimizedBody237_316

def optimizedBody237_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_84 optimizedBody237_317

def optimizedBody237_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_86 optimizedBody237_318

def optimizedBody237_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_84 optimizedBody237_319

def optimizedBody237_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_85 optimizedBody237_320

def optimizedBody237_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_84 optimizedBody237_321

def optimizedBody237_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_322

def optimizedBody237_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_323

def optimizedBody237_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_83 optimizedBody237_324

def optimizedBody237_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_9 optimizedBody237_325

def optimizedBody237_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_69 optimizedBody237_326

def optimizedBody237_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_327

def optimizedBody237_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_68 optimizedBody237_328

def optimizedBody237_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_64 optimizedBody237_329

def optimizedBody237_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_330

def optimizedBody237_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_63 optimizedBody237_331

def optimizedBody237_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_59 optimizedBody237_332

def optimizedBody237_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_53 optimizedBody237_333

def optimizedBody237_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_334

def optimizedBody237_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_58 optimizedBody237_335

def optimizedBody237_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_54 optimizedBody237_336

def optimizedBody237_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_53 optimizedBody237_337

def optimizedBody237_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_338

def optimizedBody237_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_52 optimizedBody237_339

def optimizedBody237_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_48 optimizedBody237_340

def optimizedBody237_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_341

def optimizedBody237_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_342

def optimizedBody237_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_47 optimizedBody237_343

def optimizedBody237_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_9 optimizedBody237_344

def optimizedBody237_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_27 optimizedBody237_345

def optimizedBody237_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_346

def optimizedBody237_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_42 optimizedBody237_347

def optimizedBody237_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_38 optimizedBody237_348

def optimizedBody237_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_21 optimizedBody237_349

def optimizedBody237_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_20 optimizedBody237_350

def optimizedBody237_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_19 optimizedBody237_351

def optimizedBody237_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_18 optimizedBody237_352

def optimizedBody237_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_17 optimizedBody237_353

def optimizedBody237_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_354

def optimizedBody237_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_355

def optimizedBody237_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_16 optimizedBody237_356

def optimizedBody237_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_8 optimizedBody237_357

def optimizedBody237_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_7 optimizedBody237_358

def optimizedBody237_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_359

def optimizedBody237_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_37 optimizedBody237_360

def optimizedBody237_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_33 optimizedBody237_361

def optimizedBody237_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_362

def optimizedBody237_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_363

def optimizedBody237_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_32 optimizedBody237_364

def optimizedBody237_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_9 optimizedBody237_365

def optimizedBody237_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_27 optimizedBody237_366

def optimizedBody237_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_367

def optimizedBody237_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_26 optimizedBody237_368

def optimizedBody237_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_22 optimizedBody237_369

def optimizedBody237_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_21 optimizedBody237_370

def optimizedBody237_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_20 optimizedBody237_371

def optimizedBody237_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_19 optimizedBody237_372

def optimizedBody237_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_18 optimizedBody237_373

def optimizedBody237_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_17 optimizedBody237_374

def optimizedBody237_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_375

def optimizedBody237_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_376

def optimizedBody237_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_16 optimizedBody237_377

def optimizedBody237_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_8 optimizedBody237_378

def optimizedBody237_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_7 optimizedBody237_379

def optimizedBody237_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_380

def optimizedBody237_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_5 optimizedBody237_381

def optimizedBody237_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_0 optimizedBody237_382

def oracle237 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 15 (Flapjack.Spt.ls 23)) 7
          (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 19)))
        3
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 21)) 5
          (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 9 (Flapjack.Spt.ls 17))))
      1
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 22)) 6
          (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 18)))
        2
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 20)) 4
          (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 8 (Flapjack.Spt.ls 16)))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 25
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    31 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 Flapjack.Spt.ln) (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 49 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 33))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 36)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)) 5
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 7))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 37 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 5)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 37))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 28)))
                    3
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 24
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 22))))
                    1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 6 (Flapjack.Spt.ls 7))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 49)))
                    6
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 32)) 27
                      (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 32 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 5))))
                    26
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 48 Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) 26
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    5
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 Flapjack.Spt.ln) 40
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 20) (Flapjack.Spt.ls 29))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 48
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 36 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 23)))
                    4
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 0 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 41))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 36))) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 23 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 0))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 2 (Flapjack.Spt.ls 6)) 24
                      (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 21) 25 Flapjack.Spt.ln) 8
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 37 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                    9 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 22))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 29 (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 31))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 38)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 1 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 38 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0))))
                    48
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 2 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 23)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 36))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 22
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 23))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 1))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 8 (Flapjack.Spt.ls 27)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                    8
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)) 26
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 28 Flapjack.Spt.ln) 6
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                    3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 24)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    25
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 Flapjack.Spt.ln) 32
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 48)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 2 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 1))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 18) (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 34)) 28
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 34 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 48 (Flapjack.Spt.ls 3)))
                    28
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 30 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 29))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 5))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 48) (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 32 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 35)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 7)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.ls 25)) 9
                      (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 23 Flapjack.Spt.ln) (Flapjack.Spt.ls 5))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 9)) 24
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    30
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 1)) 4 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 48 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 32))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 37)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 8))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 40)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 23))))
                    32
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 38 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 6)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 29)))
                    6
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 14) Flapjack.Spt.ln) 23
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 0))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 7 (Flapjack.Spt.ls 8)) (Flapjack.Spt.ls 23))
                    7
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 19) 29 Flapjack.Spt.ln) 5
                      (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                    0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 25)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    26
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln) 27
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 49)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 10 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 19) (Flapjack.Spt.ls 28)) (Flapjack.Spt.ls 38))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 29
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 35 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 49 (Flapjack.Spt.ls 0)))
                    29
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 40 Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.ls 39))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 35))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 49) (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.ls 35))) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 24 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 36)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 27)) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 6)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 24 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 26))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 28
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 4 Flapjack.Spt.ln) 28
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 21) (Flapjack.Spt.ls 30))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 40)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 37 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))))
                    2
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 22)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) 2
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)))
                    1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 22 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 0))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 5)) 25
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 27 Flapjack.Spt.ln) 7
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 38 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                    23 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 23)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 38))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    24
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 25
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 9 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 6))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 5 (Flapjack.Spt.ls 5)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 48)))
                    5 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 4 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 33 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22)))
                    27
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 31 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 28))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 34))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 35)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 6))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 34)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                    4
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 5 (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 22 Flapjack.Spt.ln) (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 48
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 32
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                  30
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)) (Flapjack.Spt.ls 40))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 26 Flapjack.Spt.ln) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 40 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 28 (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 36 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 25))))
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 24
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 28 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 37 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 30 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 32))))
                  26
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)) (Flapjack.Spt.ls 37))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)) 28
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 25
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)) 31
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 32 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 27)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 49 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) (Flapjack.Spt.ls 32))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 40 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 48 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                  28
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)) (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 32 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 27 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)) 32
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 34 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 29)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) 22
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 27 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 48 (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 38 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 28))))
                  24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)) (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) 26
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 48 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 23
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 23 Flapjack.Spt.ln) 29
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 28 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 29 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))) 48
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 49) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
                  29
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)) (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 24 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 27 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 26)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 40 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 35 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 23
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 40 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 36 Flapjack.Spt.ln) 49
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 40 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 29))))
                  25
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)) (Flapjack.Spt.ls 32))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) 27
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 49 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) 22 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 24
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 24 Flapjack.Spt.ln) 30
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 29 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 48 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))) 32
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 38 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 25 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 31 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 33))))
                  27
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46)) (Flapjack.Spt.ls 38))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)) 29
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 26 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 32 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 48
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 33 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 28)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) (Flapjack.Spt.ls 37))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 29 (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 37 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 27))))
                  23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)) (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 25
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 29 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 22 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 22 Flapjack.Spt.ln) 28
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 27 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) 28 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))) 31
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48))))))))))))
def optimized237 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(237, 12, optimizedBody237_383)
end InitECandidate.Proofs.SmallStages.Oracles237
