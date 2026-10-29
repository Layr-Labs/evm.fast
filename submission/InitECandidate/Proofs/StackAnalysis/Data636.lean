import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody636_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody636_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody636_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody636_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 8), (4, 4), (2, 2), (10, 10), (6, 6)]

def optimizedBody636_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody636_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody636_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 12 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody636_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody636_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 14 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody636_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody636_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody636_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 16 14 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody636_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody636_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody636_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 16 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody636_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody636_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody636_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody636_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 14 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody636_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody636_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody636_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody636_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 255#64)))

def optimizedBody636_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 8)]

def optimizedBody636_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_22 optimizedBody636_23

def optimizedBody636_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_21 optimizedBody636_24

def optimizedBody636_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_20 optimizedBody636_25

def optimizedBody636_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_19 optimizedBody636_26

def optimizedBody636_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_18 optimizedBody636_27

def optimizedBody636_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_10 optimizedBody636_28

def optimizedBody636_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_17 optimizedBody636_29

def optimizedBody636_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_16 optimizedBody636_30

def optimizedBody636_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_15 optimizedBody636_31

def optimizedBody636_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_14 optimizedBody636_32

def optimizedBody636_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_13 optimizedBody636_33

def optimizedBody636_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_2 optimizedBody636_34

def optimizedBody636_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_2 optimizedBody636_23

def optimizedBody636_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 4) optimizedBody636_35 optimizedBody636_36

def optimizedBody636_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (10, 10)]

def optimizedBody636_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody636_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody636_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody636_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody636_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (4, 4), (2, 2), (10, 10), (6, 6)]

def optimizedBody636_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody636_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_43 optimizedBody636_44

def optimizedBody636_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_42 optimizedBody636_45

def optimizedBody636_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_7 optimizedBody636_46

def optimizedBody636_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_41 optimizedBody636_47

def optimizedBody636_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_40 optimizedBody636_48

def optimizedBody636_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_39 optimizedBody636_49

def optimizedBody636_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_38 optimizedBody636_50

def optimizedBody636_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_2 optimizedBody636_51

def optimizedBody636_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_37 optimizedBody636_52

def optimizedBody636_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_12 optimizedBody636_53

def optimizedBody636_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_11 optimizedBody636_54

def optimizedBody636_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_10 optimizedBody636_55

def optimizedBody636_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_9 optimizedBody636_56

def optimizedBody636_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_8 optimizedBody636_57

def optimizedBody636_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_7 optimizedBody636_58

def optimizedBody636_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_6 optimizedBody636_59

def optimizedBody636_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_5 optimizedBody636_60

def optimizedBody636_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_2 optimizedBody636_61

def optimizedBody636_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody636_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_2 optimizedBody636_63

def optimizedBody636_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 12) optimizedBody636_62 optimizedBody636_64

def optimizedBody636_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_2 optimizedBody636_43

def optimizedBody636_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_65 optimizedBody636_66

def optimizedBody636_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_4 optimizedBody636_67

def optimizedBody636_69 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody636_68 (Flapjack.Spt.ls PUnit.unit)

def optimizedBody636_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody636_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody636_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_15 optimizedBody636_71

def optimizedBody636_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_70 optimizedBody636_72

def optimizedBody636_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_2 optimizedBody636_73

def optimizedBody636_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_69 optimizedBody636_74

def optimizedBody636_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_3 optimizedBody636_75

def optimizedBody636_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_2 optimizedBody636_76

def optimizedBody636_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_1 optimizedBody636_77

def optimizedBody636_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_0 optimizedBody636_78

def optimized636 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(636, 5, optimizedBody636_79)
end InitECandidate.Proofs.StackAnalysis
