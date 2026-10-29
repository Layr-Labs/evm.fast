import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody779_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody779_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody779_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody779_3 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 732) ([0, 2]) (none)

def optimizedBody779_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody779_2 optimizedBody779_3

def optimizedBody779_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody779_1 optimizedBody779_4

def optimizedBody779_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody779_0 optimizedBody779_5

def optimized779 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(779, 2, optimizedBody779_6)
end InitECandidate.Proofs.StackAnalysis
