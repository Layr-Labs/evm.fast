import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody368_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody368_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody368_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody368_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody368_4 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 367) ([0, 2, 4, 6]) (none)

def optimizedBody368_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_3 optimizedBody368_4

def optimizedBody368_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_2 optimizedBody368_5

def optimizedBody368_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_1 optimizedBody368_6

def optimizedBody368_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody368_0 optimizedBody368_7

def optimized368 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(368, 2, optimizedBody368_8)
end InitECandidate.Proofs.StackAnalysis
