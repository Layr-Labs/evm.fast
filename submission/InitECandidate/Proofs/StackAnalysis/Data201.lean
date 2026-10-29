import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody201_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody201_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody201_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody201_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody201_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody201_2 optimizedBody201_3

def optimizedBody201_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody201_1 optimizedBody201_4

def optimizedBody201_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody201_0 optimizedBody201_5

def optimized201 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(201, 1, optimizedBody201_6)
end InitECandidate.Proofs.StackAnalysis
