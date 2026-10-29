import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody500_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody500_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 8), (6, 6), (44, 44)]

def optimizedBody500_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody500_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody500_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_2 optimizedBody500_3

def optimizedBody500_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody500_1, 500, 2)) (some 475) ([]) (some (2, optimizedBody500_4, 500, 3))

def optimizedBody500_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody500_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 4), (52, 0), (56, 8), (58, 6)]

def optimizedBody500_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (0, 2), (4, 4), (44, 44), (46, 46), (52, 52), (56, 56), (58, 58)]

def optimizedBody500_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (52, 52), (56, 56), (58, 58)]

def optimizedBody500_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_9 optimizedBody500_3

def optimizedBody500_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody500_8, 500, 4)) (some 475) ([]) (some (2, optimizedBody500_10, 500, 5))

def optimizedBody500_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody500_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 8), (50, 6), (52, 52), (54, 0), (56, 56), (58, 58), (60, 4)]

def optimizedBody500_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (16, 48), (14, 50), (0, 52), (10, 54), (8, 56), (6, 58), (12, 60)]

def optimizedBody500_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (16, 48), (14, 50), (0, 52), (10, 54), (8, 56), (6, 58), (12, 60)]

def optimizedBody500_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_15 optimizedBody500_3

def optimizedBody500_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody500_14, 500, 6)) (some 470) ([2]) (some (2, optimizedBody500_16, 500, 7))

def optimizedBody500_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody500_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody500_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody500_19, 500, 8)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody500_4, 500, 9))

def optimizedBody500_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody500_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody500_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody500_22, 500, 10)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody500_4, 500, 11))

def optimizedBody500_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody500_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody500_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody500_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_26 optimizedBody500_3

def optimizedBody500_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody500_25, 500, 12)) (some 490) ([2]) (some (2, optimizedBody500_27, 500, 13))

def optimizedBody500_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody500_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody500_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody500_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_30 optimizedBody500_31

def optimizedBody500_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_29 optimizedBody500_32

def optimizedBody500_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_6 optimizedBody500_33

def optimizedBody500_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_28 optimizedBody500_34

def optimizedBody500_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_2 optimizedBody500_35

def optimizedBody500_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_24 optimizedBody500_36

def optimizedBody500_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_6 optimizedBody500_37

def optimizedBody500_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_23 optimizedBody500_38

def optimizedBody500_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_21 optimizedBody500_39

def optimizedBody500_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_6 optimizedBody500_40

def optimizedBody500_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_20 optimizedBody500_41

def optimizedBody500_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_18 optimizedBody500_42

def optimizedBody500_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_6 optimizedBody500_43

def optimizedBody500_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_17 optimizedBody500_44

def optimizedBody500_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_13 optimizedBody500_45

def optimizedBody500_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_12 optimizedBody500_46

def optimizedBody500_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_6 optimizedBody500_47

def optimizedBody500_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_11 optimizedBody500_48

def optimizedBody500_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_7 optimizedBody500_49

def optimizedBody500_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_6 optimizedBody500_50

def optimizedBody500_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_5 optimizedBody500_51

def optimizedBody500_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody500_0 optimizedBody500_52

def optimized500 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(500, 1, optimizedBody500_53)
end InitECandidate.Proofs.StackAnalysis
