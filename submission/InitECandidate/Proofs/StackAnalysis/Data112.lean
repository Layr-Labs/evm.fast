import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody112_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 10), (0, 0), (4, 4), (6, 6), (8, 8), (12, 12), (14, 14), (16, 16)]

def optimizedBody112_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody112_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody112_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 12 (Flapjack.WordRegImm.reg 4)))

def optimizedBody112_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (14, 14)]

def optimizedBody112_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 6 14 (Flapjack.WordRegImm.reg 6)))

def optimizedBody112_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (16, 16)]

def optimizedBody112_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody112_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody112_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody112_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody112_8 optimizedBody112_9

def optimizedBody112_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody112_7 optimizedBody112_10

def optimizedBody112_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody112_6 optimizedBody112_11

def optimizedBody112_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody112_5 optimizedBody112_12

def optimizedBody112_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody112_4 optimizedBody112_13

def optimizedBody112_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody112_3 optimizedBody112_14

def optimizedBody112_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody112_2 optimizedBody112_15

def optimizedBody112_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody112_1 optimizedBody112_16

def optimizedBody112_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody112_0 optimizedBody112_17

def optimized112 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(112, 9, optimizedBody112_18)
end InitECandidate.Proofs.StackAnalysis
