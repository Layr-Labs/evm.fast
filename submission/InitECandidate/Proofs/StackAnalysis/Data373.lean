import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody373_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (2, 2), (0, 0)]

def optimizedBody373_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody373_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody373_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody373_4 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 370) ([0, 2, 4, 6, 8]) (none)

def optimizedBody373_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody373_3 optimizedBody373_4

def optimizedBody373_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody373_2 optimizedBody373_5

def optimizedBody373_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody373_1 optimizedBody373_6

def optimizedBody373_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody373_0 optimizedBody373_7

def optimized373 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(373, 3, optimizedBody373_8)
end InitECandidate.Proofs.StackAnalysis
