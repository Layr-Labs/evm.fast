import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody117_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (2, 2), (18, 0), (4, 4), (6, 6), (8, 8), (12, 12), (14, 14), (16, 16)]

def optimizedBody117_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 10 10 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody117_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody117_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody117_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 2 2 10 0))

def optimizedBody117_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (4, 4), (2, 2), (0, 0)]

def optimizedBody117_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 10 12 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody117_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 4 4 10 0))

def optimizedBody117_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (6, 6), (4, 4), (0, 0)]

def optimizedBody117_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 10 14 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody117_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 6 6 10 0))

def optimizedBody117_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (8, 8), (6, 6), (0, 0)]

def optimizedBody117_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 10 16 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody117_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 8 8 10 0))

def optimizedBody117_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody117_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2, 4, 6, 8]

def optimizedBody117_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_14 optimizedBody117_15

def optimizedBody117_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_13 optimizedBody117_16

def optimizedBody117_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_3 optimizedBody117_17

def optimizedBody117_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_12 optimizedBody117_18

def optimizedBody117_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_11 optimizedBody117_19

def optimizedBody117_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_10 optimizedBody117_20

def optimizedBody117_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_3 optimizedBody117_21

def optimizedBody117_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_9 optimizedBody117_22

def optimizedBody117_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_8 optimizedBody117_23

def optimizedBody117_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_7 optimizedBody117_24

def optimizedBody117_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_3 optimizedBody117_25

def optimizedBody117_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_6 optimizedBody117_26

def optimizedBody117_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_5 optimizedBody117_27

def optimizedBody117_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_4 optimizedBody117_28

def optimizedBody117_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_3 optimizedBody117_29

def optimizedBody117_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_2 optimizedBody117_30

def optimizedBody117_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_1 optimizedBody117_31

def optimizedBody117_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody117_0 optimizedBody117_32

def optimized117 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(117, 9, optimizedBody117_33)
end InitECandidate.Proofs.StackAnalysis
