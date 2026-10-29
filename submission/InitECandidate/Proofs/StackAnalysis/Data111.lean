import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody111_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4), (6, 6), (8, 8)]

def optimizedBody111_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 2 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody111_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody111_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody111_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody111_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 6 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody111_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody111_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 8 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody111_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody111_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody111_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_8 optimizedBody111_9

def optimizedBody111_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_7 optimizedBody111_10

def optimizedBody111_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_6 optimizedBody111_11

def optimizedBody111_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_5 optimizedBody111_12

def optimizedBody111_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_4 optimizedBody111_13

def optimizedBody111_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_3 optimizedBody111_14

def optimizedBody111_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_2 optimizedBody111_15

def optimizedBody111_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_1 optimizedBody111_16

def optimizedBody111_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_0 optimizedBody111_17

def optimized111 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(111, 5, optimizedBody111_18)
end InitECandidate.Proofs.StackAnalysis
