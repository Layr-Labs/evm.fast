import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody296_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (10, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody296_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody296_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 8), (48, 4), (50, 10), (52, 6)]

def optimizedBody296_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (12, 44), (0, 46), (4, 48), (8, 50), (6, 52)]

def optimizedBody296_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (0, 46), (4, 48), (8, 50), (6, 52)]

def optimizedBody296_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody296_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_4 optimizedBody296_5

def optimizedBody296_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody296_3, 296, 2)) (some 68) ([2]) (some (2, optimizedBody296_6, 296, 3))

def optimizedBody296_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody296_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody296_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody296_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody296_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody296_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody296_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody296_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody296_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody296_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody296_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody296_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody296_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody296_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody296_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody296_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody296_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody296_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody296_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody296_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody296_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody296_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody296_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10)]

def optimizedBody296_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody296_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_30 optimizedBody296_31

def optimizedBody296_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_29 optimizedBody296_32

def optimizedBody296_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_28 optimizedBody296_33

def optimizedBody296_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_27 optimizedBody296_34

def optimizedBody296_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_9 optimizedBody296_35

def optimizedBody296_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_26 optimizedBody296_36

def optimizedBody296_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_25 optimizedBody296_37

def optimizedBody296_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_24 optimizedBody296_38

def optimizedBody296_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_9 optimizedBody296_39

def optimizedBody296_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_23 optimizedBody296_40

def optimizedBody296_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_22 optimizedBody296_41

def optimizedBody296_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_21 optimizedBody296_42

def optimizedBody296_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_9 optimizedBody296_43

def optimizedBody296_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_20 optimizedBody296_44

def optimizedBody296_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_19 optimizedBody296_45

def optimizedBody296_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_18 optimizedBody296_46

def optimizedBody296_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_9 optimizedBody296_47

def optimizedBody296_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_15 optimizedBody296_48

def optimizedBody296_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_14 optimizedBody296_49

def optimizedBody296_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_13 optimizedBody296_50

def optimizedBody296_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_17 optimizedBody296_51

def optimizedBody296_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_9 optimizedBody296_52

def optimizedBody296_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_15 optimizedBody296_53

def optimizedBody296_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_14 optimizedBody296_54

def optimizedBody296_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_13 optimizedBody296_55

def optimizedBody296_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_16 optimizedBody296_56

def optimizedBody296_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_9 optimizedBody296_57

def optimizedBody296_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_15 optimizedBody296_58

def optimizedBody296_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_14 optimizedBody296_59

def optimizedBody296_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_13 optimizedBody296_60

def optimizedBody296_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_12 optimizedBody296_61

def optimizedBody296_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_9 optimizedBody296_62

def optimizedBody296_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_11 optimizedBody296_63

def optimizedBody296_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_9 optimizedBody296_64

def optimizedBody296_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_10 optimizedBody296_65

def optimizedBody296_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_9 optimizedBody296_66

def optimizedBody296_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_8 optimizedBody296_67

def optimizedBody296_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_7 optimizedBody296_68

def optimizedBody296_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_2 optimizedBody296_69

def optimizedBody296_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_1 optimizedBody296_70

def optimizedBody296_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody296_0 optimizedBody296_71

def optimized296 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(296, 5, optimizedBody296_72)
end InitECandidate.Proofs.StackAnalysis
