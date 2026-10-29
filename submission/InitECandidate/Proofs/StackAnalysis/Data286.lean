import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody286_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody286_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody286_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody286_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody286_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody286_0 optimizedBody286_3

def optimizedBody286_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody286_2 optimizedBody286_4

def optimizedBody286_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody286_1 optimizedBody286_5

def optimizedBody286_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody286_0 optimizedBody286_6

def optimized286 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(286, 2, optimizedBody286_7)
end InitECandidate.Proofs.StackAnalysis
