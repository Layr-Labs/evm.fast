import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody462_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (0, 0), (10, 2), (4, 4)]

def optimizedBody462_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody462_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody462_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody462_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody462_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody462_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody462_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody462_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody462_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_7 optimizedBody462_8

def optimizedBody462_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_6 optimizedBody462_9

def optimizedBody462_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_5 optimizedBody462_10

def optimizedBody462_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody462_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody462_11 optimizedBody462_12

def optimizedBody462_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10)]

def optimizedBody462_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_14 optimizedBody462_8

def optimizedBody462_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_5 optimizedBody462_15

def optimizedBody462_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_5 optimizedBody462_16

def optimizedBody462_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_13 optimizedBody462_17

def optimizedBody462_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_4 optimizedBody462_18

def optimizedBody462_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_3 optimizedBody462_19

def optimizedBody462_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_2 optimizedBody462_20

def optimizedBody462_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_1 optimizedBody462_21

def optimizedBody462_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_0 optimizedBody462_22

def optimized462 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(462, 5, optimizedBody462_23)
end InitECandidate.Proofs.StackAnalysis
