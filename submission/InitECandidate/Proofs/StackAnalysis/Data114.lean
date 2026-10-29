import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody114_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 10), (0, 0), (4, 4), (6, 6), (8, 8), (12, 12), (14, 14), (16, 16)]

def optimizedBody114_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody114_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody114_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 12 (Flapjack.WordRegImm.reg 4)))

def optimizedBody114_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (14, 14)]

def optimizedBody114_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 14 (Flapjack.WordRegImm.reg 6)))

def optimizedBody114_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (16, 16)]

def optimizedBody114_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 8 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody114_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody114_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody114_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_8 optimizedBody114_9

def optimizedBody114_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_7 optimizedBody114_10

def optimizedBody114_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_6 optimizedBody114_11

def optimizedBody114_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_5 optimizedBody114_12

def optimizedBody114_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_4 optimizedBody114_13

def optimizedBody114_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_3 optimizedBody114_14

def optimizedBody114_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_2 optimizedBody114_15

def optimizedBody114_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_1 optimizedBody114_16

def optimizedBody114_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_0 optimizedBody114_17

def optimized114 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(114, 9, optimizedBody114_18)
end InitECandidate.Proofs.StackAnalysis
