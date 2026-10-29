import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody356_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody356_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 264#64))

def optimizedBody356_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 17#64)))

def optimizedBody356_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody356_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody356_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody356_3 optimizedBody356_4

def optimizedBody356_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody356_2 optimizedBody356_5

def optimizedBody356_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody356_1 optimizedBody356_6

def optimizedBody356_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody356_0 optimizedBody356_7

def optimized356 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(356, 2, optimizedBody356_8)
end InitECandidate.Proofs.StackAnalysis
