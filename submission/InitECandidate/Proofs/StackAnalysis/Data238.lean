import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody238_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 8), (44, 0), (46, 8), (48, 6)]

def optimizedBody238_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 48)]

def optimizedBody238_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody238_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody238_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody238_2 optimizedBody238_3

def optimizedBody238_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody238_1, 238, 2)) (some 237) ([2, 4, 6]) (some (2, optimizedBody238_4, 238, 3))

def optimizedBody238_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody238_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (6, 6), (44, 44)]

def optimizedBody238_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody238_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody238_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody238_9 optimizedBody238_3

def optimizedBody238_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody238_8, 238, 4)) (some 236) ([2, 4, 6]) (some (2, optimizedBody238_10, 238, 5))

def optimizedBody238_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody238_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody238_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody238_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody238_13 optimizedBody238_14

def optimizedBody238_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody238_12 optimizedBody238_15

def optimizedBody238_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody238_6 optimizedBody238_16

def optimizedBody238_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody238_11 optimizedBody238_17

def optimizedBody238_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody238_7 optimizedBody238_18

def optimizedBody238_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody238_6 optimizedBody238_19

def optimizedBody238_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody238_5 optimizedBody238_20

def optimizedBody238_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody238_0 optimizedBody238_21

def optimized238 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(238, 5, optimizedBody238_22)
end InitECandidate.Proofs.StackAnalysis
