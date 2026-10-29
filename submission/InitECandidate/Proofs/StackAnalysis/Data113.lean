import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody113_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 10), (0, 0), (4, 4), (6, 6), (8, 8), (12, 12), (14, 14), (16, 16)]

def optimizedBody113_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody113_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody113_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 12 (Flapjack.WordRegImm.reg 4)))

def optimizedBody113_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (14, 14)]

def optimizedBody113_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 14 (Flapjack.WordRegImm.reg 6)))

def optimizedBody113_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (16, 16)]

def optimizedBody113_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody113_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody113_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody113_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody113_8 optimizedBody113_9

def optimizedBody113_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody113_7 optimizedBody113_10

def optimizedBody113_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody113_6 optimizedBody113_11

def optimizedBody113_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody113_5 optimizedBody113_12

def optimizedBody113_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody113_4 optimizedBody113_13

def optimizedBody113_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody113_3 optimizedBody113_14

def optimizedBody113_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody113_2 optimizedBody113_15

def optimizedBody113_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody113_1 optimizedBody113_16

def optimizedBody113_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody113_0 optimizedBody113_17

def optimized113 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(113, 9, optimizedBody113_18)
end InitECandidate.Proofs.StackAnalysis
