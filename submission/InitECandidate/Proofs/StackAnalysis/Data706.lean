import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody706_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 12), (24, 24), (0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (14, 14), (16, 16), (18, 18), (20, 20),
    (22, 22)]

def optimizedBody706_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 12 24 (Flapjack.WordRegImm.reg 12)))

def optimizedBody706_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (22, 22)]

def optimizedBody706_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 10 22 (Flapjack.WordRegImm.reg 10)))

def optimizedBody706_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody706_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (20, 20)]

def optimizedBody706_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 8 20 (Flapjack.WordRegImm.reg 8)))

def optimizedBody706_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody706_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (18, 18)]

def optimizedBody706_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 18 (Flapjack.WordRegImm.reg 6)))

def optimizedBody706_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody706_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (16, 16)]

def optimizedBody706_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 16 (Flapjack.WordRegImm.reg 4)))

def optimizedBody706_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody706_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody706_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 14 (Flapjack.WordRegImm.reg 2)))

def optimizedBody706_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody706_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody706_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody706_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody706_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody706_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody706_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_20 optimizedBody706_21

def optimizedBody706_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_19 optimizedBody706_22

def optimizedBody706_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_18 optimizedBody706_23

def optimizedBody706_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody706_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody706_24 optimizedBody706_25

def optimizedBody706_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody706_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_27 optimizedBody706_22

def optimizedBody706_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_18 optimizedBody706_28

def optimizedBody706_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_18 optimizedBody706_29

def optimizedBody706_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_26 optimizedBody706_30

def optimizedBody706_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_17 optimizedBody706_31

def optimizedBody706_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_16 optimizedBody706_32

def optimizedBody706_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_15 optimizedBody706_33

def optimizedBody706_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_14 optimizedBody706_34

def optimizedBody706_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_13 optimizedBody706_35

def optimizedBody706_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_12 optimizedBody706_36

def optimizedBody706_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_11 optimizedBody706_37

def optimizedBody706_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_10 optimizedBody706_38

def optimizedBody706_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_9 optimizedBody706_39

def optimizedBody706_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_8 optimizedBody706_40

def optimizedBody706_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_7 optimizedBody706_41

def optimizedBody706_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_6 optimizedBody706_42

def optimizedBody706_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_5 optimizedBody706_43

def optimizedBody706_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_4 optimizedBody706_44

def optimizedBody706_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_3 optimizedBody706_45

def optimizedBody706_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_2 optimizedBody706_46

def optimizedBody706_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_1 optimizedBody706_47

def optimizedBody706_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody706_0 optimizedBody706_48

def optimized706 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(706, 13, optimizedBody706_49)
end InitECandidate.Proofs.StackAnalysis
