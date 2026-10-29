import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody245_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody245_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody245_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody245_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody245_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody245_0 optimizedBody245_3

def optimizedBody245_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody245_2 optimizedBody245_4

def optimizedBody245_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody245_1 optimizedBody245_5

def optimizedBody245_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody245_0 optimizedBody245_6

def optimized245 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(245, 2, optimizedBody245_7)
end InitECandidate.Proofs.StackAnalysis
