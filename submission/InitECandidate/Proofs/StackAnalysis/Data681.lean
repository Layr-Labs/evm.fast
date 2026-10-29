import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody681_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4)]

def optimizedBody681_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody681_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody681_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody681_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody681_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody681_6 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 676) ([0, 2, 4]) (none)

def optimizedBody681_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_5 optimizedBody681_6

def optimizedBody681_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_4 optimizedBody681_7

def optimizedBody681_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_3 optimizedBody681_8

def optimizedBody681_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_2 optimizedBody681_9

def optimizedBody681_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_1 optimizedBody681_10

def optimizedBody681_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_0 optimizedBody681_11

def optimized681 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(681, 3, optimizedBody681_12)
end InitECandidate.Proofs.StackAnalysis
