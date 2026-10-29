import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody677_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 6), (8, 4), (0, 0)]

def optimizedBody677_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody677_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 8), (4, 4), (6, 6)]

def optimizedBody677_3 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 79) ([0, 2, 4, 6]) (none)

def optimizedBody677_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody677_2 optimizedBody677_3

def optimizedBody677_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody677_1 optimizedBody677_4

def optimizedBody677_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody677_0 optimizedBody677_5

def optimized677 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(677, 4, optimizedBody677_6)
end InitECandidate.Proofs.StackAnalysis
