import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody115_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (2, 2), (18, 0), (4, 4), (6, 6), (8, 8), (12, 12), (14, 14), (16, 16)]

def optimizedBody115_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody115_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody115_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 2 2 10 0))

def optimizedBody115_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (12, 12), (4, 4), (2, 2)]

def optimizedBody115_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 4 4 12 0))

def optimizedBody115_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (14, 14), (6, 6), (4, 4)]

def optimizedBody115_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 6 6 14 0))

def optimizedBody115_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (16, 16), (8, 8), (6, 6)]

def optimizedBody115_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 8 8 16 0))

def optimizedBody115_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 0)]

def optimizedBody115_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2, 4, 6, 8, 10]

def optimizedBody115_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody115_10 optimizedBody115_11

def optimizedBody115_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody115_9 optimizedBody115_12

def optimizedBody115_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody115_8 optimizedBody115_13

def optimizedBody115_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody115_7 optimizedBody115_14

def optimizedBody115_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody115_6 optimizedBody115_15

def optimizedBody115_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody115_5 optimizedBody115_16

def optimizedBody115_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody115_4 optimizedBody115_17

def optimizedBody115_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody115_3 optimizedBody115_18

def optimizedBody115_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody115_2 optimizedBody115_19

def optimizedBody115_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody115_1 optimizedBody115_20

def optimizedBody115_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody115_0 optimizedBody115_21

def optimized115 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(115, 9, optimizedBody115_22)
end InitECandidate.Proofs.StackAnalysis
