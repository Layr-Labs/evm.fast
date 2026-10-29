import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody490_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody490_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody490_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody490_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody490_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody490_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2)]

def optimizedBody490_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody490_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody490_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody490_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody490_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody490_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody490_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody490_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody490_11 optimizedBody490_12

def optimizedBody490_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody490_10 optimizedBody490_13

def optimizedBody490_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody490_9 optimizedBody490_14

def optimizedBody490_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody490_8 optimizedBody490_15

def optimizedBody490_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody490_7 optimizedBody490_16

def optimizedBody490_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody490_6 optimizedBody490_17

def optimizedBody490_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody490_5 optimizedBody490_18

def optimizedBody490_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody490_4 optimizedBody490_19

def optimizedBody490_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody490_3 optimizedBody490_20

def optimizedBody490_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody490_2 optimizedBody490_21

def optimizedBody490_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody490_1 optimizedBody490_22

def optimizedBody490_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody490_0 optimizedBody490_23

def optimized490 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(490, 2, optimizedBody490_24)
end InitECandidate.Proofs.StackAnalysis
