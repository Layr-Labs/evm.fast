import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody422_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 2)]

def optimizedBody422_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody422_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody422_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody422_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody422_2 optimizedBody422_3

def optimizedBody422_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody422_1, 422, 2)) (some 421) ([2]) (some (2, optimizedBody422_4, 422, 3))

def optimizedBody422_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody422_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody422_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody422_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody422_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody422_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody422_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody422_11 optimizedBody422_3

def optimizedBody422_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody422_10, 422, 4)) (some 419) ([2, 4]) (some (2, optimizedBody422_12, 422, 5))

def optimizedBody422_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody422_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody422_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody422_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody422_15 optimizedBody422_16

def optimizedBody422_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody422_14 optimizedBody422_17

def optimizedBody422_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody422_6 optimizedBody422_18

def optimizedBody422_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody422_13 optimizedBody422_19

def optimizedBody422_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody422_9 optimizedBody422_20

def optimizedBody422_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody422_8 optimizedBody422_21

def optimizedBody422_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody422_7 optimizedBody422_22

def optimizedBody422_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody422_6 optimizedBody422_23

def optimizedBody422_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody422_5 optimizedBody422_24

def optimizedBody422_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody422_0 optimizedBody422_25

def optimized422 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(422, 2, optimizedBody422_26)
end InitECandidate.Proofs.StackAnalysis
