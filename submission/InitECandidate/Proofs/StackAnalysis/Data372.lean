import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody372_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 6), (6, 4), (2, 2), (0, 0)]

def optimizedBody372_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2#64)

def optimizedBody372_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody372_3 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 370) ([0, 2, 4, 6, 8]) (none)

def optimizedBody372_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody372_2 optimizedBody372_3

def optimizedBody372_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody372_1 optimizedBody372_4

def optimizedBody372_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody372_0 optimizedBody372_5

def optimized372 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(372, 4, optimizedBody372_6)
end InitECandidate.Proofs.StackAnalysis
