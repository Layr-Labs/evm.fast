import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody458_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody458_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (44, 44), (10, 46)]

def optimizedBody458_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46)]

def optimizedBody458_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody458_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody458_2 optimizedBody458_3

def optimizedBody458_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody458_1, 458, 2)) (some 198) ([2]) (some (2, optimizedBody458_4, 458, 3))

def optimizedBody458_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody458_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4), (2, 0)]

def optimizedBody458_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 2#64)

def optimizedBody458_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody458_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 4), (48, 2)]

def optimizedBody458_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46), (6, 48)]

def optimizedBody458_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46), (6, 48)]

def optimizedBody458_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody458_12 optimizedBody458_3

def optimizedBody458_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody458_11, 458, 4)) (some 457) ([2, 4, 6, 8, 10]) (some (2, optimizedBody458_13, 458, 5))

def optimizedBody458_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6), (4, 4)]

def optimizedBody458_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4]

def optimizedBody458_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody458_15 optimizedBody458_16

def optimizedBody458_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody458_6 optimizedBody458_17

def optimizedBody458_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody458_14 optimizedBody458_18

def optimizedBody458_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody458_10 optimizedBody458_19

def optimizedBody458_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody458_9 optimizedBody458_20

def optimizedBody458_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody458_8 optimizedBody458_21

def optimizedBody458_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody458_7 optimizedBody458_22

def optimizedBody458_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody458_6 optimizedBody458_23

def optimizedBody458_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody458_5 optimizedBody458_24

def optimizedBody458_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody458_0 optimizedBody458_25

def optimized458 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(458, 3, optimizedBody458_26)
end InitECandidate.Proofs.StackAnalysis
