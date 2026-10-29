import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody196_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody196_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody196_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody196_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody196_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody196_2 optimizedBody196_3

def optimizedBody196_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody196_1 optimizedBody196_4

def optimizedBody196_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody196_0 optimizedBody196_5

def optimized196 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(196, 2, optimizedBody196_6)
end InitECandidate.Proofs.StackAnalysis
