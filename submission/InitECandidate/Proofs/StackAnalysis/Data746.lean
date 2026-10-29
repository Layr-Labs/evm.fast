import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody746_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (0, 0)]

def optimizedBody746_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 288#64)

def optimizedBody746_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0)]

def optimizedBody746_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody746_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody746_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody746_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_4 optimizedBody746_5

def optimizedBody746_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody746_3, 746, 2)) (some 77) ([2, 4, 6]) (some (2, optimizedBody746_6, 746, 3))

def optimizedBody746_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody746_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody746_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody746_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody746_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_10 optimizedBody746_11

def optimizedBody746_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_9 optimizedBody746_12

def optimizedBody746_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_8 optimizedBody746_13

def optimizedBody746_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_7 optimizedBody746_14

def optimizedBody746_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_2 optimizedBody746_15

def optimizedBody746_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_1 optimizedBody746_16

def optimizedBody746_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_0 optimizedBody746_17

def optimized746 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(746, 3, optimizedBody746_18)
end InitECandidate.Proofs.StackAnalysis
