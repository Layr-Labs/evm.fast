import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody349_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody349_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 152#64))

def optimizedBody349_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody349_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody349_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody349_2 optimizedBody349_3

def optimizedBody349_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody349_1 optimizedBody349_4

def optimizedBody349_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody349_0 optimizedBody349_5

def optimized349 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(349, 2, optimizedBody349_6)
end InitECandidate.Proofs.StackAnalysis
