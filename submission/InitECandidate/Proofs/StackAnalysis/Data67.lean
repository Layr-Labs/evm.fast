import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody67_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody67_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody67_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody67_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody67_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 18446744073709551608#64)))

def optimizedBody67_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.currHeap

def optimizedBody67_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody67_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody67_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody67_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 18446744073709551592#64)))

def optimizedBody67_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2965299200#64)

def optimizedBody67_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody67_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody67_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551584#64)))

def optimizedBody67_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2952790016#64)

def optimizedBody67_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody67_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody67_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody67_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody67_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_15 optimizedBody67_18

def optimizedBody67_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_17 optimizedBody67_19

def optimizedBody67_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_16 optimizedBody67_20

def optimizedBody67_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_15 optimizedBody67_21

def optimizedBody67_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_14 optimizedBody67_22

def optimizedBody67_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_13 optimizedBody67_23

def optimizedBody67_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_8 optimizedBody67_24

def optimizedBody67_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_12 optimizedBody67_25

def optimizedBody67_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_11 optimizedBody67_26

def optimizedBody67_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_10 optimizedBody67_27

def optimizedBody67_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_9 optimizedBody67_28

def optimizedBody67_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_8 optimizedBody67_29

def optimizedBody67_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_7 optimizedBody67_30

def optimizedBody67_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_6 optimizedBody67_31

def optimizedBody67_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_5 optimizedBody67_32

def optimizedBody67_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_4 optimizedBody67_33

def optimizedBody67_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_3 optimizedBody67_34

def optimizedBody67_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_2 optimizedBody67_35

def optimizedBody67_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_1 optimizedBody67_36

def optimizedBody67_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody67_0 optimizedBody67_37

def optimized67 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(67, 1, optimizedBody67_38)
end InitECandidate.Proofs.StackAnalysis
