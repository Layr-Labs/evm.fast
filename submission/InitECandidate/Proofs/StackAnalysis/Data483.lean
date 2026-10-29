import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody483_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 6), (6, 8), (8, 10), (10, 12), (12, 14), (14, 16), (16, 18), (44, 0), (46, 2)]

def optimizedBody483_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (44, 44), (6, 46)]

def optimizedBody483_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46)]

def optimizedBody483_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody483_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_2 optimizedBody483_3

def optimizedBody483_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody483_1, 483, 2)) (some 480) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody483_4, 483, 3))

def optimizedBody483_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody483_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 0), (44, 44), (46, 4)]

def optimizedBody483_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody483_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody483_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_9 optimizedBody483_3

def optimizedBody483_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody483_8, 483, 4)) (some 463) ([2, 4]) (some (2, optimizedBody483_10, 483, 5))

def optimizedBody483_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody483_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody483_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody483_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_14 optimizedBody483_3

def optimizedBody483_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody483_13, 483, 6)) (some 470) ([2]) (some (2, optimizedBody483_15, 483, 7))

def optimizedBody483_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody483_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody483_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody483_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_19 optimizedBody483_3

def optimizedBody483_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody483_18, 483, 8)) (some 482) ([2]) (some (2, optimizedBody483_20, 483, 9))

def optimizedBody483_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody483_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody483_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody483_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_23 optimizedBody483_24

def optimizedBody483_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_22 optimizedBody483_25

def optimizedBody483_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_6 optimizedBody483_26

def optimizedBody483_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_21 optimizedBody483_27

def optimizedBody483_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_17 optimizedBody483_28

def optimizedBody483_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_6 optimizedBody483_29

def optimizedBody483_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_16 optimizedBody483_30

def optimizedBody483_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_12 optimizedBody483_31

def optimizedBody483_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_6 optimizedBody483_32

def optimizedBody483_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_11 optimizedBody483_33

def optimizedBody483_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_7 optimizedBody483_34

def optimizedBody483_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_6 optimizedBody483_35

def optimizedBody483_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_5 optimizedBody483_36

def optimizedBody483_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody483_0 optimizedBody483_37

def optimized483 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(483, 10, optimizedBody483_38)
end InitECandidate.Proofs.StackAnalysis
