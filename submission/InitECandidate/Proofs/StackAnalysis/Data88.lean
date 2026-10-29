import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody88_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (0, 0)]

def optimizedBody88_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody88_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody88_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody88_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody88_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody88_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody88_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody88_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody88_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody88_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody88_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody88_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody88_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody88_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_3 optimizedBody88_13

def optimizedBody88_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_12 optimizedBody88_14

def optimizedBody88_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_11 optimizedBody88_15

def optimizedBody88_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_5 optimizedBody88_16

def optimizedBody88_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_10 optimizedBody88_17

def optimizedBody88_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_3 optimizedBody88_18

def optimizedBody88_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_7 optimizedBody88_19

def optimizedBody88_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_9 optimizedBody88_20

def optimizedBody88_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_5 optimizedBody88_21

def optimizedBody88_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_8 optimizedBody88_22

def optimizedBody88_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_3 optimizedBody88_23

def optimizedBody88_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_7 optimizedBody88_24

def optimizedBody88_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_6 optimizedBody88_25

def optimizedBody88_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_5 optimizedBody88_26

def optimizedBody88_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_4 optimizedBody88_27

def optimizedBody88_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_3 optimizedBody88_28

def optimizedBody88_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_2 optimizedBody88_29

def optimizedBody88_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_1 optimizedBody88_30

def optimizedBody88_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_0 optimizedBody88_31

def optimized88 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(88, 3, optimizedBody88_32)
end InitECandidate.Proofs.StackAnalysis
