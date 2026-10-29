import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody718_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody718_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 4 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody718_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody718_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody718_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 14 (Flapjack.WordRegImm.reg 2)))

def optimizedBody718_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody718_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 6 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody718_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody718_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody718_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 14 (Flapjack.WordRegImm.reg 4)))

def optimizedBody718_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody718_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 8 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody718_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody718_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 14 (Flapjack.WordRegImm.reg 6)))

def optimizedBody718_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody718_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 10 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody718_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody718_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 14 (Flapjack.WordRegImm.reg 8)))

def optimizedBody718_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody718_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 12 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody718_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 10 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody718_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 14 (Flapjack.WordRegImm.reg 10)))

def optimizedBody718_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 12 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody718_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody718_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8, 10, 12]

def optimizedBody718_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_23 optimizedBody718_24

def optimizedBody718_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_22 optimizedBody718_25

def optimizedBody718_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_18 optimizedBody718_26

def optimizedBody718_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_21 optimizedBody718_27

def optimizedBody718_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_20 optimizedBody718_28

def optimizedBody718_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_14 optimizedBody718_29

def optimizedBody718_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_19 optimizedBody718_30

def optimizedBody718_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_18 optimizedBody718_31

def optimizedBody718_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_17 optimizedBody718_32

def optimizedBody718_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_16 optimizedBody718_33

def optimizedBody718_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_10 optimizedBody718_34

def optimizedBody718_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_15 optimizedBody718_35

def optimizedBody718_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_14 optimizedBody718_36

def optimizedBody718_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_13 optimizedBody718_37

def optimizedBody718_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_12 optimizedBody718_38

def optimizedBody718_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_5 optimizedBody718_39

def optimizedBody718_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_11 optimizedBody718_40

def optimizedBody718_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_10 optimizedBody718_41

def optimizedBody718_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_9 optimizedBody718_42

def optimizedBody718_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_8 optimizedBody718_43

def optimizedBody718_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_7 optimizedBody718_44

def optimizedBody718_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_6 optimizedBody718_45

def optimizedBody718_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_5 optimizedBody718_46

def optimizedBody718_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_4 optimizedBody718_47

def optimizedBody718_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_3 optimizedBody718_48

def optimizedBody718_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_2 optimizedBody718_49

def optimizedBody718_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_1 optimizedBody718_50

def optimizedBody718_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_0 optimizedBody718_51

def optimized718 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(718, 7, optimizedBody718_52)
end InitECandidate.Proofs.StackAnalysis
