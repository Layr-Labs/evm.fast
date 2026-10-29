import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody708_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 14), (2, 2), (26, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24)]

def optimizedBody708_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody708_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody708_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 2 2 14 0))

def optimizedBody708_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (16, 16), (4, 4), (2, 2)]

def optimizedBody708_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 4 4 16 0))

def optimizedBody708_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (18, 18), (6, 6), (4, 4)]

def optimizedBody708_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 6 6 18 0))

def optimizedBody708_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (20, 20), (8, 8), (6, 6)]

def optimizedBody708_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 8 8 20 0))

def optimizedBody708_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (22, 22), (10, 10), (8, 8)]

def optimizedBody708_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 10 10 22 0))

def optimizedBody708_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (24, 24), (12, 12), (10, 10)]

def optimizedBody708_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 12 12 24 0))

def optimizedBody708_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 0)]

def optimizedBody708_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 26 [2, 4, 6, 8, 10, 12, 14]

def optimizedBody708_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody708_14 optimizedBody708_15

def optimizedBody708_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody708_13 optimizedBody708_16

def optimizedBody708_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody708_12 optimizedBody708_17

def optimizedBody708_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody708_11 optimizedBody708_18

def optimizedBody708_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody708_10 optimizedBody708_19

def optimizedBody708_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody708_9 optimizedBody708_20

def optimizedBody708_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody708_8 optimizedBody708_21

def optimizedBody708_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody708_7 optimizedBody708_22

def optimizedBody708_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody708_6 optimizedBody708_23

def optimizedBody708_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody708_5 optimizedBody708_24

def optimizedBody708_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody708_4 optimizedBody708_25

def optimizedBody708_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody708_3 optimizedBody708_26

def optimizedBody708_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody708_2 optimizedBody708_27

def optimizedBody708_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody708_1 optimizedBody708_28

def optimizedBody708_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody708_0 optimizedBody708_29

def optimized708 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(708, 13, optimizedBody708_30)
end InitECandidate.Proofs.StackAnalysis
