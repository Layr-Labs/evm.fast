import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody676_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 4), (0, 0)]

def optimizedBody676_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody676_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 6), (4, 4)]

def optimizedBody676_3 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 80) ([0, 2, 4]) (none)

def optimizedBody676_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_2 optimizedBody676_3

def optimizedBody676_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_1 optimizedBody676_4

def optimizedBody676_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_0 optimizedBody676_5

def optimized676 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(676, 3, optimizedBody676_6)
end InitECandidate.Proofs.StackAnalysis
