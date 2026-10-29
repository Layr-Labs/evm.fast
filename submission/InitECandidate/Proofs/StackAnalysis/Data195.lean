import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody195_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody195_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody195_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody195_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody195_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody195_2 optimizedBody195_3

def optimizedBody195_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody195_1 optimizedBody195_4

def optimizedBody195_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody195_0 optimizedBody195_5

def optimized195 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(195, 2, optimizedBody195_6)
end InitECandidate.Proofs.StackAnalysis
