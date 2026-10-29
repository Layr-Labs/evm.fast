import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody280_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody280_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11684671#64)

def optimizedBody280_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody280_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0)]

def optimizedBody280_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (10, 2), (6, 6), (8, 8), (0, 44)]

def optimizedBody280_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody280_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody280_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody280_5 optimizedBody280_6

def optimizedBody280_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody280_4, 280, 2)) (some 279) ([2, 4, 6]) (some (2, optimizedBody280_7, 280, 3))

def optimizedBody280_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody280_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody280_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody280_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody280_10 optimizedBody280_11

def optimizedBody280_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody280_9 optimizedBody280_12

def optimizedBody280_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody280_8 optimizedBody280_13

def optimizedBody280_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody280_3 optimizedBody280_14

def optimizedBody280_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody280_2 optimizedBody280_15

def optimizedBody280_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody280_1 optimizedBody280_16

def optimizedBody280_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody280_0 optimizedBody280_17

def optimized280 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(280, 2, optimizedBody280_18)
end InitECandidate.Proofs.StackAnalysis
