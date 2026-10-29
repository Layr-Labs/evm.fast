import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody131_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0)]

def optimizedBody131_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (14, 14), (10, 10), (16, 16), (0, 44)]

def optimizedBody131_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody131_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody131_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody131_2 optimizedBody131_3

def optimizedBody131_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12, 14, 16]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody131_1, 131, 2)) (some 129) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody131_4, 131, 3))

def optimizedBody131_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody131_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 12), (6, 14), (8, 16)]

def optimizedBody131_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody131_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody131_7 optimizedBody131_8

def optimizedBody131_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody131_6 optimizedBody131_9

def optimizedBody131_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody131_5 optimizedBody131_10

def optimizedBody131_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody131_0 optimizedBody131_11

def optimized131 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(131, 9, optimizedBody131_12)
end InitECandidate.Proofs.StackAnalysis
