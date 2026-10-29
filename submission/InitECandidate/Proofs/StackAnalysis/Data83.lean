import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody83_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody83_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody83_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody83_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody83_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody83_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody83_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody83_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody83_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody83_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody83_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody83_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody83_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody83_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody83_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody83_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody83_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody83_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody83_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody83_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_2 optimizedBody83_18

def optimizedBody83_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_17 optimizedBody83_19

def optimizedBody83_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_16 optimizedBody83_20

def optimizedBody83_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_15 optimizedBody83_21

def optimizedBody83_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_14 optimizedBody83_22

def optimizedBody83_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_13 optimizedBody83_23

def optimizedBody83_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_12 optimizedBody83_24

def optimizedBody83_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_11 optimizedBody83_25

def optimizedBody83_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_10 optimizedBody83_26

def optimizedBody83_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_9 optimizedBody83_27

def optimizedBody83_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_8 optimizedBody83_28

def optimizedBody83_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_7 optimizedBody83_29

def optimizedBody83_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_2 optimizedBody83_30

def optimizedBody83_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_6 optimizedBody83_31

def optimizedBody83_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_5 optimizedBody83_32

def optimizedBody83_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_2 optimizedBody83_33

def optimizedBody83_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_4 optimizedBody83_34

def optimizedBody83_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_3 optimizedBody83_35

def optimizedBody83_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_2 optimizedBody83_36

def optimizedBody83_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_1 optimizedBody83_37

def optimizedBody83_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody83_0 optimizedBody83_38

def optimized83 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(83, 2, optimizedBody83_39)
end InitECandidate.Proofs.StackAnalysis
