import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody105_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (16, 16), (0, 0), (2, 2), (4, 4), (6, 6), (10, 10), (12, 12), (14, 14)]

def optimizedBody105_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 8 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody105_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (14, 14)]

def optimizedBody105_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 14 (Flapjack.WordRegImm.reg 6)))

def optimizedBody105_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody105_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody105_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 12 (Flapjack.WordRegImm.reg 4)))

def optimizedBody105_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody105_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody105_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody105_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody105_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody105_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody105_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody105_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody105_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody105_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_14 optimizedBody105_15

def optimizedBody105_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_13 optimizedBody105_16

def optimizedBody105_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_12 optimizedBody105_17

def optimizedBody105_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody105_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody105_18 optimizedBody105_19

def optimizedBody105_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody105_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_21 optimizedBody105_16

def optimizedBody105_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_12 optimizedBody105_22

def optimizedBody105_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_12 optimizedBody105_23

def optimizedBody105_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_20 optimizedBody105_24

def optimizedBody105_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_11 optimizedBody105_25

def optimizedBody105_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_10 optimizedBody105_26

def optimizedBody105_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_9 optimizedBody105_27

def optimizedBody105_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_8 optimizedBody105_28

def optimizedBody105_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_7 optimizedBody105_29

def optimizedBody105_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_6 optimizedBody105_30

def optimizedBody105_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_5 optimizedBody105_31

def optimizedBody105_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_4 optimizedBody105_32

def optimizedBody105_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_3 optimizedBody105_33

def optimizedBody105_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_2 optimizedBody105_34

def optimizedBody105_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_1 optimizedBody105_35

def optimizedBody105_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody105_0 optimizedBody105_36

def optimized105 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(105, 9, optimizedBody105_37)
end InitECandidate.Proofs.StackAnalysis
