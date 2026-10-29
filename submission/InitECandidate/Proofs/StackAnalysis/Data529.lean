import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody529_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody529_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody529_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody529_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody529_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody529_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody529_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_4 optimizedBody529_5

def optimizedBody529_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody529_3, 529, 2)) (some 470) ([2]) (some (2, optimizedBody529_6, 529, 3))

def optimizedBody529_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody529_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody529_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody529_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_10 optimizedBody529_5

def optimizedBody529_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody529_9, 529, 4)) (some 490) ([2]) (some (2, optimizedBody529_11, 529, 5))

def optimizedBody529_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody529_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody529_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody529_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_14 optimizedBody529_15

def optimizedBody529_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_13 optimizedBody529_16

def optimizedBody529_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_8 optimizedBody529_17

def optimizedBody529_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_12 optimizedBody529_18

def optimizedBody529_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_4 optimizedBody529_19

def optimizedBody529_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_1 optimizedBody529_20

def optimizedBody529_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_8 optimizedBody529_21

def optimizedBody529_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_7 optimizedBody529_22

def optimizedBody529_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_2 optimizedBody529_23

def optimizedBody529_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_1 optimizedBody529_24

def optimizedBody529_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody529_0 optimizedBody529_25

def optimized529 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(529, 1, optimizedBody529_26)
end InitECandidate.Proofs.StackAnalysis
