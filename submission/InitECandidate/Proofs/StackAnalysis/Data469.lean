import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody469_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody469_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody469_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody469_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody469_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody469_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 64#64))

def optimizedBody469_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody469_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody469_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody469_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody469_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody469_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody469_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody469_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_11 optimizedBody469_12

def optimizedBody469_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_10 optimizedBody469_13

def optimizedBody469_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_9 optimizedBody469_14

def optimizedBody469_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_6 optimizedBody469_15

def optimizedBody469_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_8 optimizedBody469_16

def optimizedBody469_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_7 optimizedBody469_17

def optimizedBody469_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody469_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody469_18 optimizedBody469_19

def optimizedBody469_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody469_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody469_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_6 optimizedBody469_22

def optimizedBody469_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_21 optimizedBody469_23

def optimizedBody469_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_7 optimizedBody469_24

def optimizedBody469_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_7 optimizedBody469_25

def optimizedBody469_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_20 optimizedBody469_26

def optimizedBody469_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_6 optimizedBody469_27

def optimizedBody469_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_5 optimizedBody469_28

def optimizedBody469_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_4 optimizedBody469_29

def optimizedBody469_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_3 optimizedBody469_30

def optimizedBody469_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_2 optimizedBody469_31

def optimizedBody469_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_1 optimizedBody469_32

def optimizedBody469_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody469_0 optimizedBody469_33

def optimized469 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(469, 2, optimizedBody469_34)
end InitECandidate.Proofs.StackAnalysis
