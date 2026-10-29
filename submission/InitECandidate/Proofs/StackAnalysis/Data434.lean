import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody434_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody434_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody434_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody434_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody434_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 18446744073709551440#64))

def optimizedBody434_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 56#64))

def optimizedBody434_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody434_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody434_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4)]

def optimizedBody434_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody434_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody434_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody434_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody434_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody434_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551440#64))

def optimizedBody434_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody434_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody434_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody434_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_16 optimizedBody434_17

def optimizedBody434_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_15 optimizedBody434_18

def optimizedBody434_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_14 optimizedBody434_19

def optimizedBody434_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_13 optimizedBody434_20

def optimizedBody434_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_12 optimizedBody434_21

def optimizedBody434_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_11 optimizedBody434_22

def optimizedBody434_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_10 optimizedBody434_23

def optimizedBody434_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_9 optimizedBody434_24

def optimizedBody434_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_8 optimizedBody434_25

def optimizedBody434_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_7 optimizedBody434_26

def optimizedBody434_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody434_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody434_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody434_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody434_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_31 optimizedBody434_18

def optimizedBody434_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_28 optimizedBody434_32

def optimizedBody434_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_7 optimizedBody434_33

def optimizedBody434_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody434_34 optimizedBody434_7

def optimizedBody434_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_35 optimizedBody434_7

def optimizedBody434_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_30 optimizedBody434_36

def optimizedBody434_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_29 optimizedBody434_37

def optimizedBody434_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_28 optimizedBody434_38

def optimizedBody434_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_7 optimizedBody434_39

def optimizedBody434_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 10) optimizedBody434_27 optimizedBody434_40

def optimizedBody434_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody434_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody434_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_30 optimizedBody434_43

def optimizedBody434_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_42 optimizedBody434_44

def optimizedBody434_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_7 optimizedBody434_45

def optimizedBody434_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_41 optimizedBody434_46

def optimizedBody434_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_6 optimizedBody434_47

def optimizedBody434_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_5 optimizedBody434_48

def optimizedBody434_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_4 optimizedBody434_49

def optimizedBody434_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_3 optimizedBody434_50

def optimizedBody434_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_2 optimizedBody434_51

def optimizedBody434_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_1 optimizedBody434_52

def optimizedBody434_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_0 optimizedBody434_53

def optimized434 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(434, 2, optimizedBody434_54)
end InitECandidate.Proofs.StackAnalysis
