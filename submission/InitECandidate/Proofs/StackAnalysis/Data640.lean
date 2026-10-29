import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody640_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody640_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody640_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody640_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (6, 6), (4, 4), (12, 2)]

def optimizedBody640_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody640_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (6, 6)]

def optimizedBody640_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.reg 12)))

def optimizedBody640_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody640_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody640_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody640_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 6), (48, 4)]

def optimizedBody640_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (16, 44), (8, 46), (10, 48)]

def optimizedBody640_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (8, 46), (10, 48)]

def optimizedBody640_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody640_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_12 optimizedBody640_13

def optimizedBody640_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody640_11, 640, 2)) (some 137) ([2]) (some (2, optimizedBody640_14, 640, 3))

def optimizedBody640_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody640_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody640_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody640_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody640_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody640_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody640_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody640_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2]

def optimizedBody640_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_8 optimizedBody640_23

def optimizedBody640_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_22 optimizedBody640_24

def optimizedBody640_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_21 optimizedBody640_25

def optimizedBody640_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_20 optimizedBody640_26

def optimizedBody640_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_19 optimizedBody640_27

def optimizedBody640_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_18 optimizedBody640_28

def optimizedBody640_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_17 optimizedBody640_29

def optimizedBody640_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_16 optimizedBody640_30

def optimizedBody640_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_2 optimizedBody640_31

def optimizedBody640_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_15 optimizedBody640_32

def optimizedBody640_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_10 optimizedBody640_33

def optimizedBody640_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_2 optimizedBody640_34

def optimizedBody640_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(12, 12), (14, 44), (6, 6), (4, 4)]

def optimizedBody640_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 0) optimizedBody640_35 optimizedBody640_36

def optimizedBody640_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody640_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody640_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 14), (6, 6), (4, 4), (12, 12)]

def optimizedBody640_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody640_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_40 optimizedBody640_41

def optimizedBody640_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_39 optimizedBody640_42

def optimizedBody640_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_38 optimizedBody640_43

def optimizedBody640_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_2 optimizedBody640_44

def optimizedBody640_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_2 optimizedBody640_45

def optimizedBody640_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_37 optimizedBody640_46

def optimizedBody640_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_9 optimizedBody640_47

def optimizedBody640_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_8 optimizedBody640_48

def optimizedBody640_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_7 optimizedBody640_49

def optimizedBody640_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_6 optimizedBody640_50

def optimizedBody640_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_5 optimizedBody640_51

def optimizedBody640_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_2 optimizedBody640_52

def optimizedBody640_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody640_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_2 optimizedBody640_54

def optimizedBody640_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody640_53 optimizedBody640_55

def optimizedBody640_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (6, 6), (4, 4), (12, 12)]

def optimizedBody640_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_2 optimizedBody640_57

def optimizedBody640_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_56 optimizedBody640_58

def optimizedBody640_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_4 optimizedBody640_59

def optimizedBody640_61 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln) optimizedBody640_60 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody640_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody640_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody640_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_8 optimizedBody640_63

def optimizedBody640_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_62 optimizedBody640_64

def optimizedBody640_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_2 optimizedBody640_65

def optimizedBody640_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_61 optimizedBody640_66

def optimizedBody640_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_3 optimizedBody640_67

def optimizedBody640_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_2 optimizedBody640_68

def optimizedBody640_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_1 optimizedBody640_69

def optimizedBody640_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_0 optimizedBody640_70

def optimized640 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(640, 3, optimizedBody640_71)
end InitECandidate.Proofs.StackAnalysis
