import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody486_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (0, 0), (10, 2), (4, 4)]

def optimizedBody486_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody486_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody486_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody486_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody486_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody486_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody486_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody486_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody486_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_7 optimizedBody486_8

def optimizedBody486_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_6 optimizedBody486_9

def optimizedBody486_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_5 optimizedBody486_10

def optimizedBody486_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody486_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody486_11 optimizedBody486_12

def optimizedBody486_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody486_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody486_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody486_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody486_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody486_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 56#64))

def optimizedBody486_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 2) optimizedBody486_11 optimizedBody486_12

def optimizedBody486_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody486_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 80#64))

def optimizedBody486_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 10 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody486_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody486_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody486_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody486_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 10 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody486_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody486_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody486_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody486_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_30 optimizedBody486_9

def optimizedBody486_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_29 optimizedBody486_31

def optimizedBody486_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_28 optimizedBody486_32

def optimizedBody486_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_27 optimizedBody486_33

def optimizedBody486_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_14 optimizedBody486_34

def optimizedBody486_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_26 optimizedBody486_35

def optimizedBody486_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_25 optimizedBody486_36

def optimizedBody486_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_7 optimizedBody486_37

def optimizedBody486_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_24 optimizedBody486_38

def optimizedBody486_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_23 optimizedBody486_39

def optimizedBody486_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_14 optimizedBody486_40

def optimizedBody486_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_22 optimizedBody486_41

def optimizedBody486_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_21 optimizedBody486_42

def optimizedBody486_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_5 optimizedBody486_43

def optimizedBody486_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_5 optimizedBody486_44

def optimizedBody486_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_20 optimizedBody486_45

def optimizedBody486_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_19 optimizedBody486_46

def optimizedBody486_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_18 optimizedBody486_47

def optimizedBody486_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_17 optimizedBody486_48

def optimizedBody486_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_16 optimizedBody486_49

def optimizedBody486_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_15 optimizedBody486_50

def optimizedBody486_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_14 optimizedBody486_51

def optimizedBody486_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_5 optimizedBody486_52

def optimizedBody486_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_5 optimizedBody486_53

def optimizedBody486_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_13 optimizedBody486_54

def optimizedBody486_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_4 optimizedBody486_55

def optimizedBody486_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_3 optimizedBody486_56

def optimizedBody486_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_2 optimizedBody486_57

def optimizedBody486_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_1 optimizedBody486_58

def optimizedBody486_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_0 optimizedBody486_59

def optimized486 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(486, 5, optimizedBody486_60)
end InitECandidate.Proofs.StackAnalysis
