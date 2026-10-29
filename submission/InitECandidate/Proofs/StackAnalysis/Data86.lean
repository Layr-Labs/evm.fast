import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody86_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (0, 0)]

def optimizedBody86_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody86_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody86_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody86_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody86_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody86_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody86_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody86_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody86_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody86_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody86_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody86_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody86_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody86_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_2 optimizedBody86_13

def optimizedBody86_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_12 optimizedBody86_14

def optimizedBody86_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_11 optimizedBody86_15

def optimizedBody86_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_10 optimizedBody86_16

def optimizedBody86_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_4 optimizedBody86_17

def optimizedBody86_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_9 optimizedBody86_18

def optimizedBody86_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_2 optimizedBody86_19

def optimizedBody86_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_6 optimizedBody86_20

def optimizedBody86_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_8 optimizedBody86_21

def optimizedBody86_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_4 optimizedBody86_22

def optimizedBody86_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_7 optimizedBody86_23

def optimizedBody86_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_2 optimizedBody86_24

def optimizedBody86_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_6 optimizedBody86_25

def optimizedBody86_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_5 optimizedBody86_26

def optimizedBody86_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_4 optimizedBody86_27

def optimizedBody86_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_3 optimizedBody86_28

def optimizedBody86_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_2 optimizedBody86_29

def optimizedBody86_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_1 optimizedBody86_30

def optimizedBody86_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody86_0 optimizedBody86_31

def optimized86 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(86, 3, optimizedBody86_32)
end InitECandidate.Proofs.StackAnalysis
