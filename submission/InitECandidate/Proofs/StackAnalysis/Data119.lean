import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody119_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 0), (4, 4)]

def optimizedBody119_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4294967295#64)

def optimizedBody119_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody119_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody119_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 10 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody119_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody119_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 12 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody119_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 14 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody119_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 12), (12, 12), (8, 8)]

def optimizedBody119_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody119_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 10), (4, 14), (14, 14), (10, 10), (2, 0)]

def optimizedBody119_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 14), (8, 0)]

def optimizedBody119_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 10), (4, 12), (10, 0)]

def optimizedBody119_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 0)]

def optimizedBody119_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody119_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody119_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 4 10 6 0))

def optimizedBody119_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (6, 0)]

def optimizedBody119_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody119_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 2 2 10 0))

def optimizedBody119_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 0), (2, 2)]

def optimizedBody119_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody119_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody119_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody119_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody119_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody119_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody119_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody119_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2, 4]

def optimizedBody119_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_27 optimizedBody119_28

def optimizedBody119_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_26 optimizedBody119_29

def optimizedBody119_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_25 optimizedBody119_30

def optimizedBody119_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_24 optimizedBody119_31

def optimizedBody119_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_23 optimizedBody119_32

def optimizedBody119_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_5 optimizedBody119_33

def optimizedBody119_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_22 optimizedBody119_34

def optimizedBody119_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_21 optimizedBody119_35

def optimizedBody119_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_20 optimizedBody119_36

def optimizedBody119_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_19 optimizedBody119_37

def optimizedBody119_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_15 optimizedBody119_38

def optimizedBody119_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_14 optimizedBody119_39

def optimizedBody119_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_18 optimizedBody119_40

def optimizedBody119_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_17 optimizedBody119_41

def optimizedBody119_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_16 optimizedBody119_42

def optimizedBody119_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_15 optimizedBody119_43

def optimizedBody119_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_14 optimizedBody119_44

def optimizedBody119_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_13 optimizedBody119_45

def optimizedBody119_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_9 optimizedBody119_46

def optimizedBody119_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_12 optimizedBody119_47

def optimizedBody119_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_9 optimizedBody119_48

def optimizedBody119_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_11 optimizedBody119_49

def optimizedBody119_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_9 optimizedBody119_50

def optimizedBody119_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_10 optimizedBody119_51

def optimizedBody119_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_9 optimizedBody119_52

def optimizedBody119_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_8 optimizedBody119_53

def optimizedBody119_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_7 optimizedBody119_54

def optimizedBody119_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_5 optimizedBody119_55

def optimizedBody119_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_6 optimizedBody119_56

def optimizedBody119_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_1 optimizedBody119_57

def optimizedBody119_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_5 optimizedBody119_58

def optimizedBody119_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_4 optimizedBody119_59

def optimizedBody119_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_3 optimizedBody119_60

def optimizedBody119_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_2 optimizedBody119_61

def optimizedBody119_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_1 optimizedBody119_62

def optimizedBody119_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody119_0 optimizedBody119_63

def optimized119 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(119, 3, optimizedBody119_64)
end InitECandidate.Proofs.StackAnalysis
