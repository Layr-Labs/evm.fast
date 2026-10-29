import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody375_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (2, 2), (0, 0)]

def optimizedBody375_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody375_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody375_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody375_4 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 370) ([0, 2, 4, 6, 8]) (none)

def optimizedBody375_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody375_3 optimizedBody375_4

def optimizedBody375_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody375_2 optimizedBody375_5

def optimizedBody375_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody375_1 optimizedBody375_6

def optimizedBody375_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody375_0 optimizedBody375_7

def optimized375 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(375, 3, optimizedBody375_8)
end InitECandidate.Proofs.StackAnalysis
