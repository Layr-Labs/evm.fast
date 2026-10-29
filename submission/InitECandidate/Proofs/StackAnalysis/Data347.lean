import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody347_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody347_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 144#64))

def optimizedBody347_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody347_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody347_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody347_2 optimizedBody347_3

def optimizedBody347_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody347_1 optimizedBody347_4

def optimizedBody347_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody347_0 optimizedBody347_5

def optimized347 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(347, 2, optimizedBody347_6)
end InitECandidate.Proofs.StackAnalysis
