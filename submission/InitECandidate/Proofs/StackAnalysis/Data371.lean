import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody371_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (2, 2), (0, 0)]

def optimizedBody371_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody371_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody371_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody371_4 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 370) ([0, 2, 4, 6, 8]) (none)

def optimizedBody371_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody371_3 optimizedBody371_4

def optimizedBody371_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody371_2 optimizedBody371_5

def optimizedBody371_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody371_1 optimizedBody371_6

def optimizedBody371_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody371_0 optimizedBody371_7

def optimized371 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(371, 3, optimizedBody371_8)
end InitECandidate.Proofs.StackAnalysis
