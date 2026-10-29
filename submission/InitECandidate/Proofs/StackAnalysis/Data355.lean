import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody355_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody355_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 264#64))

def optimizedBody355_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody355_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody355_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody355_2 optimizedBody355_3

def optimizedBody355_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody355_1 optimizedBody355_4

def optimizedBody355_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody355_0 optimizedBody355_5

def optimized355 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(355, 2, optimizedBody355_6)
end InitECandidate.Proofs.StackAnalysis
