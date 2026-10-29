import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody123_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody123_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody123_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody123_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 32#64)

def optimizedBody123_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody123_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (14, 2), (2, 2), (12, 12), (6, 6), (10, 10)]

def optimizedBody123_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody123_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody123_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody123_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 10), (10, 10), (4, 4)]

def optimizedBody123_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 4 (Flapjack.WordRegImm.reg 8)))

def optimizedBody123_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody123_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody123_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody123_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody123_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody123_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 1#64)

def optimizedBody123_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 10), (10, 10)]

def optimizedBody123_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody123_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody123_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 12 8 (Flapjack.WordRegImm.reg 12)))

def optimizedBody123_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 12), (6, 6), (10, 10)]

def optimizedBody123_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_20 optimizedBody123_21

def optimizedBody123_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_19 optimizedBody123_22

def optimizedBody123_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_18 optimizedBody123_23

def optimizedBody123_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_17 optimizedBody123_24

def optimizedBody123_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_16 optimizedBody123_25

def optimizedBody123_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_2 optimizedBody123_26

def optimizedBody123_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_15 optimizedBody123_27

def optimizedBody123_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_14 optimizedBody123_28

def optimizedBody123_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_4 optimizedBody123_29

def optimizedBody123_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_4 optimizedBody123_21

def optimizedBody123_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody123_30 optimizedBody123_31

def optimizedBody123_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (12, 12), (6, 6), (10, 10)]

def optimizedBody123_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody123_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_33 optimizedBody123_34

def optimizedBody123_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_4 optimizedBody123_35

def optimizedBody123_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_32 optimizedBody123_36

def optimizedBody123_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_14 optimizedBody123_37

def optimizedBody123_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_13 optimizedBody123_38

def optimizedBody123_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_12 optimizedBody123_39

def optimizedBody123_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_2 optimizedBody123_40

def optimizedBody123_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_11 optimizedBody123_41

def optimizedBody123_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_10 optimizedBody123_42

def optimizedBody123_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_9 optimizedBody123_43

def optimizedBody123_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_8 optimizedBody123_44

def optimizedBody123_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_7 optimizedBody123_45

def optimizedBody123_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_4 optimizedBody123_46

def optimizedBody123_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody123_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_4 optimizedBody123_48

def optimizedBody123_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 10) optimizedBody123_47 optimizedBody123_49

def optimizedBody123_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_4 optimizedBody123_33

def optimizedBody123_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_50 optimizedBody123_51

def optimizedBody123_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_7 optimizedBody123_52

def optimizedBody123_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_6 optimizedBody123_53

def optimizedBody123_55 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody123_54 (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) PUnit.unit
  Flapjack.Spt.ln)

def optimizedBody123_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12), (4, 2)]

def optimizedBody123_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4]

def optimizedBody123_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_56 optimizedBody123_57

def optimizedBody123_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_4 optimizedBody123_58

def optimizedBody123_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_55 optimizedBody123_59

def optimizedBody123_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_5 optimizedBody123_60

def optimizedBody123_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_4 optimizedBody123_61

def optimizedBody123_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_3 optimizedBody123_62

def optimizedBody123_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_2 optimizedBody123_63

def optimizedBody123_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_1 optimizedBody123_64

def optimizedBody123_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody123_0 optimizedBody123_65

def optimized123 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(123, 4, optimizedBody123_66)
end InitECandidate.Proofs.StackAnalysis
