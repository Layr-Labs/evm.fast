import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody148_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 8), (48, 4), (50, 2), (52, 10), (54, 6)]

def optimizedBody148_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (10, 46), (4, 48), (14, 50), (46, 52), (6, 54)]

def optimizedBody148_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (4, 48), (14, 50), (46, 52), (6, 54)]

def optimizedBody148_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody148_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_2 optimizedBody148_3

def optimizedBody148_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody148_1, 148, 2)) (some 139) ([2, 4, 6, 8]) (some (2, optimizedBody148_4, 148, 3))

def optimizedBody148_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody148_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody148_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (10, 10), (4, 4), (12, 12), (14, 14), (0, 0), (46, 46), (6, 6)]

def optimizedBody148_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12)]

def optimizedBody148_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody148_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody148_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody148_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 16 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody148_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (8, 10), (6, 6), (4, 4), (2, 14)]

def optimizedBody148_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 10 16 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody148_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 8), (48, 4), (50, 16), (52, 12), (54, 2), (56, 0), (58, 46),
    (60, 6)]

def optimizedBody148_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (20, 44), (10, 46), (4, 48), (8, 50), (12, 52), (14, 54), (0, 56), (16, 58), (6, 60)]

def optimizedBody148_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (20, 44), (10, 46), (4, 48), (8, 50), (12, 52), (14, 54), (0, 56), (16, 58), (6, 60)]

def optimizedBody148_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_18 optimizedBody148_3

def optimizedBody148_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody148_17, 148, 4)) (some 103) ([2, 4, 6, 8, 10]) (some (2, optimizedBody148_19, 148, 5))

def optimizedBody148_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (12, 12)]

def optimizedBody148_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 12 (Flapjack.WordRegImm.reg 16)))

def optimizedBody148_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (18, 18)]

def optimizedBody148_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 8 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody148_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody148_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody148_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 18 (Flapjack.WordRegImm.reg 8)))

def optimizedBody148_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 255#64)))

def optimizedBody148_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 22 0#64))

def optimizedBody148_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody148_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 20), (10, 10), (4, 4), (12, 12), (14, 14), (0, 0), (46, 16), (6, 6)]

def optimizedBody148_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody148_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_31 optimizedBody148_32

def optimizedBody148_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_30 optimizedBody148_33

def optimizedBody148_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_12 optimizedBody148_34

def optimizedBody148_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_29 optimizedBody148_35

def optimizedBody148_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_28 optimizedBody148_36

def optimizedBody148_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_27 optimizedBody148_37

def optimizedBody148_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_26 optimizedBody148_38

def optimizedBody148_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_25 optimizedBody148_39

def optimizedBody148_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_24 optimizedBody148_40

def optimizedBody148_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_23 optimizedBody148_41

def optimizedBody148_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_22 optimizedBody148_42

def optimizedBody148_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_21 optimizedBody148_43

def optimizedBody148_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_6 optimizedBody148_44

def optimizedBody148_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_20 optimizedBody148_45

def optimizedBody148_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_16 optimizedBody148_46

def optimizedBody148_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_15 optimizedBody148_47

def optimizedBody148_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_14 optimizedBody148_48

def optimizedBody148_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_13 optimizedBody148_49

def optimizedBody148_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_12 optimizedBody148_50

def optimizedBody148_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_11 optimizedBody148_51

def optimizedBody148_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_10 optimizedBody148_52

def optimizedBody148_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_6 optimizedBody148_53

def optimizedBody148_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody148_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody148_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_55 optimizedBody148_56

def optimizedBody148_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_6 optimizedBody148_57

def optimizedBody148_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 0) optimizedBody148_54 optimizedBody148_58

def optimizedBody148_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (10, 10), (4, 4), (12, 12), (14, 14), (0, 0), (46, 8), (6, 6)]

def optimizedBody148_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_6 optimizedBody148_60

def optimizedBody148_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_59 optimizedBody148_61

def optimizedBody148_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_9 optimizedBody148_62

def optimizedBody148_64 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody148_63 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody148_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody148_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody148_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_65 optimizedBody148_66

def optimizedBody148_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_6 optimizedBody148_67

def optimizedBody148_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_64 optimizedBody148_68

def optimizedBody148_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_8 optimizedBody148_69

def optimizedBody148_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_6 optimizedBody148_70

def optimizedBody148_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_7 optimizedBody148_71

def optimizedBody148_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_6 optimizedBody148_72

def optimizedBody148_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_5 optimizedBody148_73

def optimizedBody148_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody148_0 optimizedBody148_74

def optimized148 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(148, 6, optimizedBody148_75)
end InitECandidate.Proofs.StackAnalysis
