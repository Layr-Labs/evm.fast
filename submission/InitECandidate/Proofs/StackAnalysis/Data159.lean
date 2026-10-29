import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody159_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody159_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody159_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody159_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody159_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody159_0 optimizedBody159_3

def optimizedBody159_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody159_2 optimizedBody159_4

def optimizedBody159_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody159_1 optimizedBody159_5

def optimizedBody159_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody159_0 optimizedBody159_6

def optimized159 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(159, 2, optimizedBody159_7)
end InitECandidate.Proofs.StackAnalysis
