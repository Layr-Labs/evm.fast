import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody81_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody81_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody81_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody81_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody81_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody81_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody81_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody81_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody81_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody81_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody81_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody81_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody81_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody81_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody81_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody81_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody81_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody81_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody81_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody81_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_2 optimizedBody81_18

def optimizedBody81_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_17 optimizedBody81_19

def optimizedBody81_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_16 optimizedBody81_20

def optimizedBody81_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_15 optimizedBody81_21

def optimizedBody81_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_14 optimizedBody81_22

def optimizedBody81_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_13 optimizedBody81_23

def optimizedBody81_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_12 optimizedBody81_24

def optimizedBody81_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_11 optimizedBody81_25

def optimizedBody81_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_10 optimizedBody81_26

def optimizedBody81_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_9 optimizedBody81_27

def optimizedBody81_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_2 optimizedBody81_28

def optimizedBody81_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_8 optimizedBody81_29

def optimizedBody81_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_7 optimizedBody81_30

def optimizedBody81_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_2 optimizedBody81_31

def optimizedBody81_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_6 optimizedBody81_32

def optimizedBody81_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_5 optimizedBody81_33

def optimizedBody81_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_2 optimizedBody81_34

def optimizedBody81_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_4 optimizedBody81_35

def optimizedBody81_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_3 optimizedBody81_36

def optimizedBody81_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_2 optimizedBody81_37

def optimizedBody81_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_1 optimizedBody81_38

def optimizedBody81_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody81_0 optimizedBody81_39

def optimized81 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(81, 2, optimizedBody81_40)
end InitECandidate.Proofs.StackAnalysis
