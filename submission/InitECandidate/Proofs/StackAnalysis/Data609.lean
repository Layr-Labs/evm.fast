import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody609_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody609_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody609_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody609_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody609_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody609_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody609_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody609_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 64#64))

def optimizedBody609_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4)]

def optimizedBody609_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody609_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody609_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody609_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody609_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody609_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody609_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody609_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 72#64))

def optimizedBody609_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.imm 184#64)))

def optimizedBody609_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 184#64))

def optimizedBody609_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody609_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 184#64))

def optimizedBody609_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody609_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody609_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody609_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody609_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody609_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_6 optimizedBody609_25

def optimizedBody609_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_24 optimizedBody609_26

def optimizedBody609_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_23 optimizedBody609_27

def optimizedBody609_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_22 optimizedBody609_28

def optimizedBody609_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_21 optimizedBody609_29

def optimizedBody609_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_20 optimizedBody609_30

def optimizedBody609_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_19 optimizedBody609_31

def optimizedBody609_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_18 optimizedBody609_32

def optimizedBody609_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_6 optimizedBody609_33

def optimizedBody609_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_17 optimizedBody609_34

def optimizedBody609_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_4 optimizedBody609_35

def optimizedBody609_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_13 optimizedBody609_36

def optimizedBody609_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_12 optimizedBody609_37

def optimizedBody609_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_11 optimizedBody609_38

def optimizedBody609_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_10 optimizedBody609_39

def optimizedBody609_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_16 optimizedBody609_40

def optimizedBody609_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_8 optimizedBody609_41

def optimizedBody609_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_15 optimizedBody609_42

def optimizedBody609_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_6 optimizedBody609_43

def optimizedBody609_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_14 optimizedBody609_44

def optimizedBody609_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_4 optimizedBody609_45

def optimizedBody609_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_13 optimizedBody609_46

def optimizedBody609_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_12 optimizedBody609_47

def optimizedBody609_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_11 optimizedBody609_48

def optimizedBody609_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_10 optimizedBody609_49

def optimizedBody609_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_9 optimizedBody609_50

def optimizedBody609_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_8 optimizedBody609_51

def optimizedBody609_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_7 optimizedBody609_52

def optimizedBody609_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_6 optimizedBody609_53

def optimizedBody609_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_5 optimizedBody609_54

def optimizedBody609_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_4 optimizedBody609_55

def optimizedBody609_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_3 optimizedBody609_56

def optimizedBody609_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_2 optimizedBody609_57

def optimizedBody609_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_1 optimizedBody609_58

def optimizedBody609_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody609_0 optimizedBody609_59

def optimized609 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(609, 2, optimizedBody609_60)
end InitECandidate.Proofs.StackAnalysis
