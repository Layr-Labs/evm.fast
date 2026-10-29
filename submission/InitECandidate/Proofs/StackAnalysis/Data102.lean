import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody102_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (0, 0), (2, 2), (4, 4)]

def optimizedBody102_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody102_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody102_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody102_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody102_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody102_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody102_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody102_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody102_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody102_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody102_4 optimizedBody102_9

def optimizedBody102_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody102_8 optimizedBody102_10

def optimizedBody102_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody102_7 optimizedBody102_11

def optimizedBody102_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody102_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody102_12 optimizedBody102_13

def optimizedBody102_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody102_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody102_15 optimizedBody102_10

def optimizedBody102_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody102_7 optimizedBody102_16

def optimizedBody102_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody102_7 optimizedBody102_17

def optimizedBody102_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody102_14 optimizedBody102_18

def optimizedBody102_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody102_6 optimizedBody102_19

def optimizedBody102_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody102_5 optimizedBody102_20

def optimizedBody102_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody102_4 optimizedBody102_21

def optimizedBody102_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody102_3 optimizedBody102_22

def optimizedBody102_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody102_2 optimizedBody102_23

def optimizedBody102_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody102_1 optimizedBody102_24

def optimizedBody102_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody102_0 optimizedBody102_25

def optimized102 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(102, 5, optimizedBody102_26)
end InitECandidate.Proofs.StackAnalysis
