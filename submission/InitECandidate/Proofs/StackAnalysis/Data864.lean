import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody864_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody864_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 5#64)

def optimizedBody864_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody864_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody864_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody864_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody864_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_4 optimizedBody864_5

def optimizedBody864_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody864_3, 864, 2)) (some 95) ([2, 4]) (some (2, optimizedBody864_6, 864, 3))

def optimizedBody864_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody864_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody864_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody864_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_9 optimizedBody864_10

def optimizedBody864_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_8 optimizedBody864_11

def optimizedBody864_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_7 optimizedBody864_12

def optimizedBody864_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_2 optimizedBody864_13

def optimizedBody864_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_1 optimizedBody864_14

def optimizedBody864_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody864_0 optimizedBody864_15

def optimized864 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(864, 2, optimizedBody864_16)
end InitECandidate.Proofs.StackAnalysis
