import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody498_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody498_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 8), (6, 6), (44, 44)]

def optimizedBody498_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody498_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody498_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_2 optimizedBody498_3

def optimizedBody498_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody498_1, 498, 2)) (some 475) ([]) (some (2, optimizedBody498_4, 498, 3))

def optimizedBody498_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody498_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 4), (52, 0), (56, 8), (58, 6)]

def optimizedBody498_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (0, 2), (4, 4), (44, 44), (46, 46), (52, 52), (56, 56), (58, 58)]

def optimizedBody498_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (52, 52), (56, 56), (58, 58)]

def optimizedBody498_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_9 optimizedBody498_3

def optimizedBody498_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody498_8, 498, 4)) (some 475) ([]) (some (2, optimizedBody498_10, 498, 5))

def optimizedBody498_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody498_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 8), (50, 6), (52, 52), (54, 0), (56, 56), (58, 58), (60, 4)]

def optimizedBody498_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (16, 48), (14, 50), (0, 52), (10, 54), (8, 56), (6, 58), (12, 60)]

def optimizedBody498_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (16, 48), (14, 50), (0, 52), (10, 54), (8, 56), (6, 58), (12, 60)]

def optimizedBody498_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_15 optimizedBody498_3

def optimizedBody498_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody498_14, 498, 6)) (some 470) ([2]) (some (2, optimizedBody498_16, 498, 7))

def optimizedBody498_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody498_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody498_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody498_19, 498, 8)) (some 120) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody498_4, 498, 9))

def optimizedBody498_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody498_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody498_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody498_22, 498, 10)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody498_4, 498, 11))

def optimizedBody498_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody498_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody498_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody498_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_26 optimizedBody498_3

def optimizedBody498_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody498_25, 498, 12)) (some 490) ([2]) (some (2, optimizedBody498_27, 498, 13))

def optimizedBody498_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody498_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody498_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody498_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_30 optimizedBody498_31

def optimizedBody498_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_29 optimizedBody498_32

def optimizedBody498_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_6 optimizedBody498_33

def optimizedBody498_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_28 optimizedBody498_34

def optimizedBody498_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_2 optimizedBody498_35

def optimizedBody498_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_24 optimizedBody498_36

def optimizedBody498_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_6 optimizedBody498_37

def optimizedBody498_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_23 optimizedBody498_38

def optimizedBody498_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_21 optimizedBody498_39

def optimizedBody498_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_6 optimizedBody498_40

def optimizedBody498_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_20 optimizedBody498_41

def optimizedBody498_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_18 optimizedBody498_42

def optimizedBody498_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_6 optimizedBody498_43

def optimizedBody498_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_17 optimizedBody498_44

def optimizedBody498_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_13 optimizedBody498_45

def optimizedBody498_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_12 optimizedBody498_46

def optimizedBody498_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_6 optimizedBody498_47

def optimizedBody498_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_11 optimizedBody498_48

def optimizedBody498_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_7 optimizedBody498_49

def optimizedBody498_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_6 optimizedBody498_50

def optimizedBody498_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_5 optimizedBody498_51

def optimizedBody498_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_0 optimizedBody498_52

def optimized498 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(498, 1, optimizedBody498_53)
end InitECandidate.Proofs.StackAnalysis
