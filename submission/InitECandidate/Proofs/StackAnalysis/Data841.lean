import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody841_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody841_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody841_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody841_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody841_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 16#64)

def optimizedBody841_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody841_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody841_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 0), (8, 8), (18, 18), (2, 2), (16, 16), (12, 12)]

def optimizedBody841_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (8, 8)]

def optimizedBody841_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody841_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody841_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody841_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 16)))

def optimizedBody841_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody841_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody841_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody841_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 33#64)

def optimizedBody841_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody841_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody841_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0)]

def optimizedBody841_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody841_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody841_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody841_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody841_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody841_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody841_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (12, 12)]

def optimizedBody841_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody841_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (18, 18), (16, 16), (12, 12)]

def optimizedBody841_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody841_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_28 optimizedBody841_29

def optimizedBody841_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_27 optimizedBody841_30

def optimizedBody841_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_26 optimizedBody841_31

def optimizedBody841_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_25 optimizedBody841_32

def optimizedBody841_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_24 optimizedBody841_33

def optimizedBody841_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_23 optimizedBody841_34

def optimizedBody841_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_22 optimizedBody841_35

def optimizedBody841_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_21 optimizedBody841_36

def optimizedBody841_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_20 optimizedBody841_37

def optimizedBody841_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_19 optimizedBody841_38

def optimizedBody841_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_18 optimizedBody841_39

def optimizedBody841_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_17 optimizedBody841_40

def optimizedBody841_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_16 optimizedBody841_41

def optimizedBody841_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_15 optimizedBody841_42

def optimizedBody841_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_14 optimizedBody841_43

def optimizedBody841_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_13 optimizedBody841_44

def optimizedBody841_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_12 optimizedBody841_45

def optimizedBody841_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_11 optimizedBody841_46

def optimizedBody841_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_10 optimizedBody841_47

def optimizedBody841_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_9 optimizedBody841_48

def optimizedBody841_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_6 optimizedBody841_49

def optimizedBody841_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody841_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_6 optimizedBody841_51

def optimizedBody841_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 18) optimizedBody841_50 optimizedBody841_52

def optimizedBody841_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_6 optimizedBody841_28

def optimizedBody841_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_53 optimizedBody841_54

def optimizedBody841_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_8 optimizedBody841_55

def optimizedBody841_57 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln) optimizedBody841_56 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody841_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12)]

def optimizedBody841_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def optimizedBody841_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_58 optimizedBody841_59

def optimizedBody841_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_6 optimizedBody841_60

def optimizedBody841_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_57 optimizedBody841_61

def optimizedBody841_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_7 optimizedBody841_62

def optimizedBody841_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_6 optimizedBody841_63

def optimizedBody841_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_5 optimizedBody841_64

def optimizedBody841_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_4 optimizedBody841_65

def optimizedBody841_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_3 optimizedBody841_66

def optimizedBody841_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_2 optimizedBody841_67

def optimizedBody841_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_1 optimizedBody841_68

def optimizedBody841_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody841_0 optimizedBody841_69

def optimized841 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(841, 2, optimizedBody841_70)
end InitECandidate.Proofs.StackAnalysis
