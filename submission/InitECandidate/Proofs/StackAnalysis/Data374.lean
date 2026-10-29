import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody374_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (2, 2), (0, 0)]

def optimizedBody374_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody374_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody374_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody374_4 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 370) ([0, 2, 4, 6, 8]) (none)

def optimizedBody374_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody374_3 optimizedBody374_4

def optimizedBody374_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody374_2 optimizedBody374_5

def optimizedBody374_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody374_1 optimizedBody374_6

def optimizedBody374_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody374_0 optimizedBody374_7

def optimized374 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(374, 3, optimizedBody374_8)
end InitECandidate.Proofs.StackAnalysis
