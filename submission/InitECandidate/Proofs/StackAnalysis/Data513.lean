import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody513_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody513_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (0, 2), (8, 8), (44, 44)]

def optimizedBody513_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody513_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody513_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_2 optimizedBody513_3

def optimizedBody513_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody513_1, 513, 2)) (some 475) ([]) (some (2, optimizedBody513_4, 513, 3))

def optimizedBody513_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody513_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody513_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 6), (50, 0), (52, 8)]

def optimizedBody513_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48), (0, 50), (8, 52)]

def optimizedBody513_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (0, 50), (8, 52)]

def optimizedBody513_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_10 optimizedBody513_3

def optimizedBody513_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody513_9, 513, 4)) (some 470) ([2]) (some (2, optimizedBody513_11, 513, 5))

def optimizedBody513_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody513_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody513_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody513_14, 513, 6)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody513_4, 513, 7))

def optimizedBody513_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody513_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody513_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody513_17, 513, 8)) (some 478) ([2]) (some (2, optimizedBody513_4, 513, 9))

def optimizedBody513_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody513_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody513_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody513_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_21 optimizedBody513_3

def optimizedBody513_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody513_20, 513, 10)) (some 490) ([2]) (some (2, optimizedBody513_22, 513, 11))

def optimizedBody513_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody513_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody513_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody513_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_25 optimizedBody513_26

def optimizedBody513_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_24 optimizedBody513_27

def optimizedBody513_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_6 optimizedBody513_28

def optimizedBody513_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_23 optimizedBody513_29

def optimizedBody513_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_2 optimizedBody513_30

def optimizedBody513_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_19 optimizedBody513_31

def optimizedBody513_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_6 optimizedBody513_32

def optimizedBody513_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_18 optimizedBody513_33

def optimizedBody513_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_16 optimizedBody513_34

def optimizedBody513_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_6 optimizedBody513_35

def optimizedBody513_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_15 optimizedBody513_36

def optimizedBody513_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_13 optimizedBody513_37

def optimizedBody513_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_6 optimizedBody513_38

def optimizedBody513_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_12 optimizedBody513_39

def optimizedBody513_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_8 optimizedBody513_40

def optimizedBody513_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_7 optimizedBody513_41

def optimizedBody513_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_6 optimizedBody513_42

def optimizedBody513_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_5 optimizedBody513_43

def optimizedBody513_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody513_0 optimizedBody513_44

def optimized513 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(513, 1, optimizedBody513_45)
end InitECandidate.Proofs.StackAnalysis
