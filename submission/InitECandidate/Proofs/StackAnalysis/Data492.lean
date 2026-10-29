import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody492_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody492_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody492_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody492_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody492_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody492_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody492_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 144#64))

def optimizedBody492_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody492_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody492_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody492_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody492_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody492_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody492_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody492_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_12 optimizedBody492_13

def optimizedBody492_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_9 optimizedBody492_14

def optimizedBody492_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_11 optimizedBody492_15

def optimizedBody492_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_10 optimizedBody492_16

def optimizedBody492_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_9 optimizedBody492_17

def optimizedBody492_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_8 optimizedBody492_18

def optimizedBody492_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody492_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody492_19 optimizedBody492_20

def optimizedBody492_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody492_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody492_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_10 optimizedBody492_23

def optimizedBody492_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_22 optimizedBody492_24

def optimizedBody492_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_8 optimizedBody492_25

def optimizedBody492_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_8 optimizedBody492_26

def optimizedBody492_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_21 optimizedBody492_27

def optimizedBody492_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_7 optimizedBody492_28

def optimizedBody492_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_6 optimizedBody492_29

def optimizedBody492_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_5 optimizedBody492_30

def optimizedBody492_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_4 optimizedBody492_31

def optimizedBody492_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_3 optimizedBody492_32

def optimizedBody492_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_2 optimizedBody492_33

def optimizedBody492_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_1 optimizedBody492_34

def optimizedBody492_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody492_0 optimizedBody492_35

def optimized492 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(492, 1, optimizedBody492_36)
end InitECandidate.Proofs.StackAnalysis
