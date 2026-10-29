import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody501_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody501_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 8), (6, 6), (44, 44)]

def optimizedBody501_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody501_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody501_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_2 optimizedBody501_3

def optimizedBody501_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody501_1, 501, 2)) (some 475) ([]) (some (2, optimizedBody501_4, 501, 3))

def optimizedBody501_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody501_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 4), (52, 0), (56, 8), (58, 6)]

def optimizedBody501_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (0, 2), (4, 4), (44, 44), (46, 46), (52, 52), (56, 56), (58, 58)]

def optimizedBody501_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (52, 52), (56, 56), (58, 58)]

def optimizedBody501_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_9 optimizedBody501_3

def optimizedBody501_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody501_8, 501, 4)) (some 475) ([]) (some (2, optimizedBody501_10, 501, 5))

def optimizedBody501_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody501_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 8), (50, 6), (52, 52), (54, 0), (56, 56), (58, 58), (60, 4)]

def optimizedBody501_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (16, 48), (14, 50), (0, 52), (10, 54), (8, 56), (6, 58), (12, 60)]

def optimizedBody501_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (16, 48), (14, 50), (0, 52), (10, 54), (8, 56), (6, 58), (12, 60)]

def optimizedBody501_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_15 optimizedBody501_3

def optimizedBody501_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody501_14, 501, 6)) (some 470) ([2]) (some (2, optimizedBody501_16, 501, 7))

def optimizedBody501_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody501_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody501_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody501_19, 501, 8)) (some 133) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody501_4, 501, 9))

def optimizedBody501_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody501_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody501_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody501_22, 501, 10)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody501_4, 501, 11))

def optimizedBody501_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody501_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody501_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody501_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_26 optimizedBody501_3

def optimizedBody501_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody501_25, 501, 12)) (some 490) ([2]) (some (2, optimizedBody501_27, 501, 13))

def optimizedBody501_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody501_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody501_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody501_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_30 optimizedBody501_31

def optimizedBody501_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_29 optimizedBody501_32

def optimizedBody501_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_6 optimizedBody501_33

def optimizedBody501_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_28 optimizedBody501_34

def optimizedBody501_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_2 optimizedBody501_35

def optimizedBody501_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_24 optimizedBody501_36

def optimizedBody501_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_6 optimizedBody501_37

def optimizedBody501_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_23 optimizedBody501_38

def optimizedBody501_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_21 optimizedBody501_39

def optimizedBody501_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_6 optimizedBody501_40

def optimizedBody501_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_20 optimizedBody501_41

def optimizedBody501_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_18 optimizedBody501_42

def optimizedBody501_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_6 optimizedBody501_43

def optimizedBody501_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_17 optimizedBody501_44

def optimizedBody501_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_13 optimizedBody501_45

def optimizedBody501_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_12 optimizedBody501_46

def optimizedBody501_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_6 optimizedBody501_47

def optimizedBody501_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_11 optimizedBody501_48

def optimizedBody501_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_7 optimizedBody501_49

def optimizedBody501_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_6 optimizedBody501_50

def optimizedBody501_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_5 optimizedBody501_51

def optimizedBody501_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody501_0 optimizedBody501_52

def optimized501 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(501, 1, optimizedBody501_53)
end InitECandidate.Proofs.StackAnalysis
