import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody638_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody638_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def optimizedBody638_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody638_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody638_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 1#64)

def optimizedBody638_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody638_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody638_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody638_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def optimizedBody638_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 8)]

def optimizedBody638_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(52, 0), (58, 16), (46, 46), (50, 22), (20, 20), (56, 4), (44, 12), (48, 2), (18, 18), (60, 10), (6, 6), (54, 14),
    (0, 46)]

def optimizedBody638_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody638_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody638_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody638_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 20)]

def optimizedBody638_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody638_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody638_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody638_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 18), (52, 52), (58, 58), (46, 46), (50, 50), (56, 56), (44, 44), (48, 48), (54, 18), (60, 60),
    (62, 6), (64, 54), (66, 0)]

def optimizedBody638_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(20, 4), (8, 2), (10, 52), (12, 58), (14, 46), (16, 50), (22, 56), (24, 44), (4, 48), (18, 54), (26, 60), (6, 62),
    (28, 64), (0, 66)]

def optimizedBody638_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (10, 52), (12, 58), (14, 46), (16, 50), (22, 56), (24, 44), (4, 48), (18, 54), (26, 60), (6, 62), (28, 64),
    (0, 66)]

def optimizedBody638_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody638_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_21 optimizedBody638_22

def optimizedBody638_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody638_20, 638, 2)) (some 123) ([2, 4, 6]) (some (2, optimizedBody638_23, 638, 3))

def optimizedBody638_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody638_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody638_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody638_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody638_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(52, 10), (58, 12), (46, 14), (50, 16), (20, 20), (56, 22), (44, 24), (48, 4), (18, 18), (60, 26), (6, 6), (54, 28),
    (0, 0)]

def optimizedBody638_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody638_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_30 optimizedBody638_31

def optimizedBody638_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_29 optimizedBody638_32

def optimizedBody638_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_28 optimizedBody638_33

def optimizedBody638_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_27 optimizedBody638_34

def optimizedBody638_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_26 optimizedBody638_35

def optimizedBody638_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_25 optimizedBody638_36

def optimizedBody638_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_12 optimizedBody638_37

def optimizedBody638_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_38

def optimizedBody638_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_24 optimizedBody638_39

def optimizedBody638_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_19 optimizedBody638_40

def optimizedBody638_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_18 optimizedBody638_41

def optimizedBody638_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_17 optimizedBody638_42

def optimizedBody638_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_16 optimizedBody638_43

def optimizedBody638_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_15 optimizedBody638_44

def optimizedBody638_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_14 optimizedBody638_45

def optimizedBody638_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_13 optimizedBody638_46

def optimizedBody638_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_12 optimizedBody638_47

def optimizedBody638_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_48

def optimizedBody638_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody638_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_50

def optimizedBody638_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody638_49 optimizedBody638_51

def optimizedBody638_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(52, 2), (58, 4), (46, 8), (50, 10), (20, 20), (56, 12), (44, 14), (48, 16), (18, 18), (60, 22), (6, 6), (54, 24),
    (0, 0)]

def optimizedBody638_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_53

def optimizedBody638_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_52 optimizedBody638_54

def optimizedBody638_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_12 optimizedBody638_55

def optimizedBody638_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_11 optimizedBody638_56

def optimizedBody638_58 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody638_57 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
  Flapjack.Spt.ln)

def optimizedBody638_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 56), (20, 20)]

def optimizedBody638_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody638_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody638_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 52 [2]

def optimizedBody638_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_61 optimizedBody638_62

def optimizedBody638_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_11 optimizedBody638_63

def optimizedBody638_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_60 optimizedBody638_64

def optimizedBody638_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_59 optimizedBody638_65

def optimizedBody638_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_66

def optimizedBody638_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_58 optimizedBody638_67

def optimizedBody638_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_10 optimizedBody638_68

def optimizedBody638_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_69

def optimizedBody638_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_9 optimizedBody638_70

def optimizedBody638_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_8 optimizedBody638_71

def optimizedBody638_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_7 optimizedBody638_72

def optimizedBody638_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_6 optimizedBody638_73

def optimizedBody638_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_74

def optimizedBody638_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 16), (48, 8), (12, 12), (54, 2), (10, 10), (58, 6), (60, 14), (62, 18), (44, 0), (50, 4)]

def optimizedBody638_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 20) optimizedBody638_75 optimizedBody638_76

def optimizedBody638_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody638_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody638_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody638_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 12), (54, 54), (56, 10), (58, 58), (60, 60), (62, 62)]

def optimizedBody638_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (6, 46), (12, 48), (50, 50), (18, 52), (52, 54), (20, 56), (4, 58), (16, 60), (14, 62)]

def optimizedBody638_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (12, 48), (50, 50), (18, 52), (52, 54), (20, 56), (4, 58), (16, 60), (14, 62)]

def optimizedBody638_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_84 optimizedBody638_22

def optimizedBody638_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody638_83, 638, 4)) (some 122) ([2]) (some (2, optimizedBody638_85, 638, 5))

def optimizedBody638_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody638_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 18 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody638_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (6, 6), (12, 12), (2, 2), (50, 50), (18, 18), (52, 52), (0, 0), (20, 20), (4, 4), (16, 16), (14, 14)]

def optimizedBody638_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody638_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 22 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 22 (Flapjack.WordRegImm.reg 6)))

def optimizedBody638_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody638_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody638_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 20)))

def optimizedBody638_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody638_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 32#64)

def optimizedBody638_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 8 (Flapjack.WordRegImm.reg 0)))

def optimizedBody638_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody638_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 24 24 (Flapjack.WordRegImm.reg 8)))

def optimizedBody638_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (22, 22)]

def optimizedBody638_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 22 (Flapjack.WordRegImm.reg 20)))

def optimizedBody638_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody638_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 0), (0, 0)]

def optimizedBody638_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 22 (Flapjack.WordRegImm.reg 8)))

def optimizedBody638_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 24 (Flapjack.WordRegImm.reg 8)))

def optimizedBody638_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 4294967295#64)

def optimizedBody638_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.reg 22)))

def optimizedBody638_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody638_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody638_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (2, 2), (0, 0), (20, 20)]

def optimizedBody638_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_112 optimizedBody638_31

def optimizedBody638_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_111 optimizedBody638_113

def optimizedBody638_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_110 optimizedBody638_114

def optimizedBody638_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_109 optimizedBody638_115

def optimizedBody638_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_108 optimizedBody638_116

def optimizedBody638_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_107 optimizedBody638_117

def optimizedBody638_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_106 optimizedBody638_118

def optimizedBody638_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_105 optimizedBody638_119

def optimizedBody638_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_104 optimizedBody638_120

def optimizedBody638_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_103 optimizedBody638_121

def optimizedBody638_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_102 optimizedBody638_122

def optimizedBody638_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_101 optimizedBody638_123

def optimizedBody638_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_100 optimizedBody638_124

def optimizedBody638_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_99 optimizedBody638_125

def optimizedBody638_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_12 optimizedBody638_126

def optimizedBody638_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_98 optimizedBody638_127

def optimizedBody638_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_97 optimizedBody638_128

def optimizedBody638_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_96 optimizedBody638_129

def optimizedBody638_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_95 optimizedBody638_130

def optimizedBody638_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_94 optimizedBody638_131

def optimizedBody638_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_93 optimizedBody638_132

def optimizedBody638_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_61 optimizedBody638_133

def optimizedBody638_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_92 optimizedBody638_134

def optimizedBody638_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_16 optimizedBody638_135

def optimizedBody638_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_91 optimizedBody638_136

def optimizedBody638_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_61 optimizedBody638_137

def optimizedBody638_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_138

def optimizedBody638_140 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 2) optimizedBody638_139 optimizedBody638_51

def optimizedBody638_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_112

def optimizedBody638_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_140 optimizedBody638_141

def optimizedBody638_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_61 optimizedBody638_142

def optimizedBody638_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_90 optimizedBody638_143

def optimizedBody638_145 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody638_144 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody638_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (6, 6)]

def optimizedBody638_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 20 0#64))

def optimizedBody638_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody638_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 4294967295#64)

def optimizedBody638_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody638_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody638_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody638_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 12 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody638_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.reg 16)))

def optimizedBody638_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody638_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody638_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 22 (Flapjack.WordRegImm.reg 8)))

def optimizedBody638_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody638_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (6, 6), (12, 12), (48, 2), (50, 50), (18, 18), (52, 52), (0, 0), (56, 20), (4, 4), (16, 16), (14, 14)]

def optimizedBody638_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 48)]

def optimizedBody638_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody638_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.reg 16)))

def optimizedBody638_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody638_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 20 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 22 22 (Flapjack.WordRegImm.reg 8)))

def optimizedBody638_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody638_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 10 (Flapjack.WordRegImm.reg 4)))

def optimizedBody638_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody638_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody638_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 22 (Flapjack.WordRegImm.reg 8)))

def optimizedBody638_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 4294967295#64)

def optimizedBody638_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody638_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 20), (0, 0), (4, 4), (16, 16)]

def optimizedBody638_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_175 optimizedBody638_31

def optimizedBody638_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_29 optimizedBody638_176

def optimizedBody638_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_28 optimizedBody638_177

def optimizedBody638_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_174 optimizedBody638_178

def optimizedBody638_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_173 optimizedBody638_179

def optimizedBody638_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_172 optimizedBody638_180

def optimizedBody638_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_171 optimizedBody638_181

def optimizedBody638_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_105 optimizedBody638_182

def optimizedBody638_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_170 optimizedBody638_183

def optimizedBody638_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_169 optimizedBody638_184

def optimizedBody638_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_168 optimizedBody638_185

def optimizedBody638_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_167 optimizedBody638_186

def optimizedBody638_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_100 optimizedBody638_187

def optimizedBody638_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_99 optimizedBody638_188

def optimizedBody638_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_12 optimizedBody638_189

def optimizedBody638_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_98 optimizedBody638_190

def optimizedBody638_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_104 optimizedBody638_191

def optimizedBody638_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_157 optimizedBody638_192

def optimizedBody638_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_26 optimizedBody638_193

def optimizedBody638_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_166 optimizedBody638_194

def optimizedBody638_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_165 optimizedBody638_195

def optimizedBody638_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_162 optimizedBody638_196

def optimizedBody638_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_164 optimizedBody638_197

def optimizedBody638_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_154 optimizedBody638_198

def optimizedBody638_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_163 optimizedBody638_199

def optimizedBody638_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_162 optimizedBody638_200

def optimizedBody638_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_201

def optimizedBody638_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 8)]

def optimizedBody638_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_203 optimizedBody638_50

def optimizedBody638_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_204

def optimizedBody638_206 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 8) optimizedBody638_202 optimizedBody638_205

def optimizedBody638_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 2), (0, 0), (4, 4), (16, 16)]

def optimizedBody638_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_207

def optimizedBody638_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_206 optimizedBody638_208

def optimizedBody638_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_161 optimizedBody638_209

def optimizedBody638_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_11 optimizedBody638_210

def optimizedBody638_212 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody638_211 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody638_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (16, 16)]

def optimizedBody638_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody638_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 0), (54, 0)]

def optimizedBody638_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody638_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4294967295#64)

def optimizedBody638_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody638_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (0, 0)]

def optimizedBody638_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody638_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 18)]

def optimizedBody638_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody638_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody638_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody638_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody638_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def optimizedBody638_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (12, 12)]

def optimizedBody638_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 12 (Flapjack.WordRegImm.reg 14)))

def optimizedBody638_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody638_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 6), (62, 12), (48, 48), (8, 8), (50, 50), (14, 14), (52, 52), (54, 54), (56, 56), (58, 4), (16, 16),
    (60, 2), (0, 0)]

def optimizedBody638_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody638_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody638_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.reg 2)))

def optimizedBody638_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 16)]

def optimizedBody638_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 10)))

def optimizedBody638_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody638_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (66, 2), (64, 14)]

def optimizedBody638_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody638_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody638_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (66, 66), (64, 64)]

def optimizedBody638_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def optimizedBody638_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody638_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (18, 18)]

def optimizedBody638_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4294967295#64)

def optimizedBody638_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 8), (8, 8)]

def optimizedBody638_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody638_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18), (34, 34), (0, 0)]

def optimizedBody638_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 18 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody638_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 34 (Flapjack.WordRegImm.reg 4)))

def optimizedBody638_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 16 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody638_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(40, 44), (28, 46), (38, 62), (24, 48), (8, 8), (34, 34), (32, 50), (18, 18), (26, 64), (16, 16), (14, 52), (30, 30),
    (12, 54), (0, 56), (6, 58), (36, 2), (10, 10), (22, 60), (20, 66)]

def optimizedBody638_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_251 optimizedBody638_252

def optimizedBody638_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_12 optimizedBody638_253

def optimizedBody638_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_250 optimizedBody638_254

def optimizedBody638_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_249 optimizedBody638_255

def optimizedBody638_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_248 optimizedBody638_256

def optimizedBody638_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_247 optimizedBody638_257

def optimizedBody638_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_246 optimizedBody638_258

def optimizedBody638_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_245 optimizedBody638_259

def optimizedBody638_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_217 optimizedBody638_260

def optimizedBody638_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_261

def optimizedBody638_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 18), (4, 34), (6, 8), (44, 44), (46, 46), (62, 62), (48, 48), (50, 8), (52, 34), (54, 50), (56, 18), (64, 64),
    (58, 52), (60, 30), (66, 54), (68, 56), (70, 58), (72, 10), (74, 60), (76, 66)]

def optimizedBody638_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(36, 2), (16, 4), (40, 44), (28, 46), (38, 62), (24, 48), (8, 50), (34, 52), (32, 54), (18, 56), (26, 64), (14, 58),
    (30, 60), (12, 66), (0, 68), (6, 70), (10, 72), (22, 74), (20, 76)]

def optimizedBody638_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (40, 44), (28, 46), (38, 62), (24, 48), (8, 50), (34, 52), (32, 54), (18, 56), (26, 64), (14, 58), (30, 60),
    (12, 66), (0, 68), (6, 70), (10, 72), (22, 74), (20, 76)]

def optimizedBody638_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_265 optimizedBody638_22

def optimizedBody638_267 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody638_264, 638, 6)) (some 123) ([2, 4, 6]) (some (2, optimizedBody638_266, 638, 7))

def optimizedBody638_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(40, 40), (28, 28), (38, 38), (24, 24), (8, 8), (34, 34), (32, 32), (18, 18), (26, 26), (16, 16), (14, 14), (30, 30),
    (12, 12), (0, 0), (6, 6), (36, 36), (10, 10), (22, 22), (20, 20)]

def optimizedBody638_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_268

def optimizedBody638_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_267 optimizedBody638_269

def optimizedBody638_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_263 optimizedBody638_270

def optimizedBody638_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_271

def optimizedBody638_273 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 18 (Flapjack.WordRegImm.reg 8) optimizedBody638_262 optimizedBody638_272

def optimizedBody638_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody638_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(40, 40), (28, 28), (4, 4), (38, 38), (24, 24), (36, 8), (34, 34), (32, 32), (18, 18), (26, 26), (16, 16), (14, 14),
    (30, 30), (12, 12), (8, 0), (2, 6), (0, 36), (10, 10), (22, 22), (20, 20)]

def optimizedBody638_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody638_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 0#64)

def optimizedBody638_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 16)]

def optimizedBody638_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4294967296#64)

def optimizedBody638_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 22), (22, 22), (16, 0)]

def optimizedBody638_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 44), (30, 30), (0, 0)]

def optimizedBody638_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody638_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 30 (Flapjack.WordRegImm.reg 6)))

def optimizedBody638_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 16 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody638_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (36, 36), (0, 0)]

def optimizedBody638_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 36 (Flapjack.WordRegImm.reg 4)))

def optimizedBody638_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (36, 36), (16, 16), (0, 0)]

def optimizedBody638_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_274 optimizedBody638_287

def optimizedBody638_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_154 optimizedBody638_288

def optimizedBody638_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_286 optimizedBody638_289

def optimizedBody638_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_285 optimizedBody638_290

def optimizedBody638_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_284 optimizedBody638_291

def optimizedBody638_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_154 optimizedBody638_292

def optimizedBody638_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_293

def optimizedBody638_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 42), (36, 36), (16, 4), (0, 16)]

def optimizedBody638_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_295

def optimizedBody638_297 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 0) optimizedBody638_294 optimizedBody638_296

def optimizedBody638_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (36, 36), (16, 16), (30, 30), (0, 0), (22, 22)]

def optimizedBody638_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_298

def optimizedBody638_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_297 optimizedBody638_299

def optimizedBody638_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_12 optimizedBody638_300

def optimizedBody638_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_283 optimizedBody638_301

def optimizedBody638_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_282 optimizedBody638_302

def optimizedBody638_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_281 optimizedBody638_303

def optimizedBody638_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_247 optimizedBody638_304

def optimizedBody638_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_280 optimizedBody638_305

def optimizedBody638_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_306

def optimizedBody638_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 42), (36, 36), (16, 44), (30, 30), (0, 0), (22, 22)]

def optimizedBody638_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_308

def optimizedBody638_310 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 44 (Flapjack.WordRegImm.reg 4) optimizedBody638_307 optimizedBody638_309

def optimizedBody638_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_298 optimizedBody638_31

def optimizedBody638_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_311

def optimizedBody638_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_310 optimizedBody638_312

def optimizedBody638_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_279 optimizedBody638_313

def optimizedBody638_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_278 optimizedBody638_314

def optimizedBody638_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_277 optimizedBody638_315

def optimizedBody638_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_316

def optimizedBody638_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody638_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_318 optimizedBody638_50

def optimizedBody638_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_319

def optimizedBody638_321 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) optimizedBody638_317 optimizedBody638_320

def optimizedBody638_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_321 optimizedBody638_299

def optimizedBody638_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_276 optimizedBody638_322

def optimizedBody638_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_26 optimizedBody638_323

def optimizedBody638_325 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody638_324 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody638_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 0#64)

def optimizedBody638_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody638_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 40), (24, 28), (46, 4), (38, 38), (4, 6), (36, 36), (34, 34), (32, 32), (18, 18), (26, 26), (16, 16), (14, 14),
    (30, 30), (12, 12), (8, 8), (2, 2), (40, 0), (22, 24), (10, 10), (28, 22), (20, 20)]

def optimizedBody638_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26), (4, 4)]

def optimizedBody638_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 4), (40, 40)]

def optimizedBody638_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 42 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody638_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 24)))

def optimizedBody638_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody638_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 40), (4, 4)]

def optimizedBody638_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 42), (20, 20), (0, 0)]

def optimizedBody638_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 20 (Flapjack.WordRegImm.reg 6)))

def optimizedBody638_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 42 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody638_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody638_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 22 42 (Flapjack.WordRegImm.reg 22)))

def optimizedBody638_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 4294967295#64)

def optimizedBody638_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 42 0 (Flapjack.WordRegImm.reg 42)))

def optimizedBody638_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 42 22 (Flapjack.WordRegImm.reg 42)))

def optimizedBody638_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 42), (4, 4), (10, 10), (6, 6), (20, 20)]

def optimizedBody638_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 22 42 (Flapjack.WordRegImm.reg 22)))

def optimizedBody638_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (22, 22)]

def optimizedBody638_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody638_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody638_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 42)]

def optimizedBody638_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.asr 4 42 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody638_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 22 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody638_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody638_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(24, 24), (4, 4), (26, 26), (40, 40), (22, 22), (10, 10), (20, 20)]

def optimizedBody638_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_354 optimizedBody638_31

def optimizedBody638_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_353 optimizedBody638_355

def optimizedBody638_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_16 optimizedBody638_356

def optimizedBody638_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_352 optimizedBody638_357

def optimizedBody638_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_351 optimizedBody638_358

def optimizedBody638_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_350 optimizedBody638_359

def optimizedBody638_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_349 optimizedBody638_360

def optimizedBody638_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_12 optimizedBody638_361

def optimizedBody638_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_348 optimizedBody638_362

def optimizedBody638_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_347 optimizedBody638_363

def optimizedBody638_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_346 optimizedBody638_364

def optimizedBody638_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_108 optimizedBody638_365

def optimizedBody638_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_345 optimizedBody638_366

def optimizedBody638_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_344 optimizedBody638_367

def optimizedBody638_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_343 optimizedBody638_368

def optimizedBody638_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_342 optimizedBody638_369

def optimizedBody638_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_12 optimizedBody638_370

def optimizedBody638_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_341 optimizedBody638_371

def optimizedBody638_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_340 optimizedBody638_372

def optimizedBody638_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_339 optimizedBody638_373

def optimizedBody638_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_235 optimizedBody638_374

def optimizedBody638_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_6 optimizedBody638_375

def optimizedBody638_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_338 optimizedBody638_376

def optimizedBody638_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_337 optimizedBody638_377

def optimizedBody638_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_336 optimizedBody638_378

def optimizedBody638_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_247 optimizedBody638_379

def optimizedBody638_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_335 optimizedBody638_380

def optimizedBody638_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_334 optimizedBody638_381

def optimizedBody638_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_333 optimizedBody638_382

def optimizedBody638_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_332 optimizedBody638_383

def optimizedBody638_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_331 optimizedBody638_384

def optimizedBody638_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_330 optimizedBody638_385

def optimizedBody638_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_386

def optimizedBody638_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (26, 26)]

def optimizedBody638_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_388 optimizedBody638_50

def optimizedBody638_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_389

def optimizedBody638_391 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 26) optimizedBody638_387 optimizedBody638_390

def optimizedBody638_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_354

def optimizedBody638_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_391 optimizedBody638_392

def optimizedBody638_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_329 optimizedBody638_393

def optimizedBody638_395 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  Flapjack.Spt.ln) optimizedBody638_394 (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  Flapjack.Spt.ln)

def optimizedBody638_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (6, 18)]

def optimizedBody638_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 18 6 (Flapjack.WordRegImm.reg 22)))

def optimizedBody638_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody638_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 20 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 14)))

def optimizedBody638_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 40)]

def optimizedBody638_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 40 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody638_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody638_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody638_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody638_406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (20, 24), (2, 46), (46, 38), (0, 0), (36, 36), (34, 34), (32, 32), (26, 6), (14, 26), (38, 18), (16, 16),
    (40, 14), (30, 30), (12, 12), (8, 8), (4, 2), (24, 40), (6, 4), (10, 10), (28, 28), (18, 20)]

def optimizedBody638_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 14), (0, 0)]

def optimizedBody638_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody638_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.reg 20)))

def optimizedBody638_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody638_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 14)))

def optimizedBody638_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (18, 18)]

def optimizedBody638_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 18 (Flapjack.WordRegImm.reg 0)))

def optimizedBody638_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.reg 10)))

def optimizedBody638_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 42 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody638_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 42 6 (Flapjack.WordRegImm.reg 42)))

def optimizedBody638_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 42), (14, 14), (10, 10), (0, 0), (18, 18)]

def optimizedBody638_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4294967295#64)

def optimizedBody638_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 6 42 (Flapjack.WordRegImm.reg 6)))

def optimizedBody638_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (6, 6)]

def optimizedBody638_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody638_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 42 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody638_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20), (0, 0), (14, 22), (6, 6), (10, 10), (18, 18)]

def optimizedBody638_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_425 optimizedBody638_31

def optimizedBody638_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_229 optimizedBody638_426

def optimizedBody638_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_12 optimizedBody638_427

def optimizedBody638_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_424 optimizedBody638_428

def optimizedBody638_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_350 optimizedBody638_429

def optimizedBody638_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_423 optimizedBody638_430

def optimizedBody638_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_422 optimizedBody638_431

def optimizedBody638_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_421 optimizedBody638_432

def optimizedBody638_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_420 optimizedBody638_433

def optimizedBody638_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_419 optimizedBody638_434

def optimizedBody638_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_418 optimizedBody638_435

def optimizedBody638_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_417 optimizedBody638_436

def optimizedBody638_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_416 optimizedBody638_437

def optimizedBody638_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_6 optimizedBody638_438

def optimizedBody638_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_415 optimizedBody638_439

def optimizedBody638_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_414 optimizedBody638_440

def optimizedBody638_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_413 optimizedBody638_441

def optimizedBody638_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_412 optimizedBody638_442

def optimizedBody638_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_411 optimizedBody638_443

def optimizedBody638_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_410 optimizedBody638_444

def optimizedBody638_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_95 optimizedBody638_445

def optimizedBody638_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_409 optimizedBody638_446

def optimizedBody638_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_408 optimizedBody638_447

def optimizedBody638_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_448

def optimizedBody638_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (14, 22)]

def optimizedBody638_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_450 optimizedBody638_50

def optimizedBody638_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_451

def optimizedBody638_453 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 22) optimizedBody638_449 optimizedBody638_452

def optimizedBody638_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_425

def optimizedBody638_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_453 optimizedBody638_454

def optimizedBody638_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_407 optimizedBody638_455

def optimizedBody638_457 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody638_456 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody638_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (14, 14)]

def optimizedBody638_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.reg 18)))

def optimizedBody638_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody638_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 38), (6, 6)]

def optimizedBody638_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 38)))

def optimizedBody638_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody638_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (2, 2)]

def optimizedBody638_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody638_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 44), (20, 20), (38, 46), (4, 0), (8, 36), (32, 32), (14, 14), (6, 40), (12, 12), (10, 8), (18, 4), (16, 10),
    (28, 28), (0, 18)]

def optimizedBody638_467 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_465 optimizedBody638_466

def optimizedBody638_468 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_464 optimizedBody638_467

def optimizedBody638_469 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_463 optimizedBody638_468

def optimizedBody638_470 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_420 optimizedBody638_469

def optimizedBody638_471 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_462 optimizedBody638_470

def optimizedBody638_472 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_461 optimizedBody638_471

def optimizedBody638_473 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_460 optimizedBody638_472

def optimizedBody638_474 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_6 optimizedBody638_473

def optimizedBody638_475 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_238 optimizedBody638_474

def optimizedBody638_476 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_459 optimizedBody638_475

def optimizedBody638_477 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_458 optimizedBody638_476

def optimizedBody638_478 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_477

def optimizedBody638_479 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_457 optimizedBody638_478

def optimizedBody638_480 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_406 optimizedBody638_479

def optimizedBody638_481 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_480

def optimizedBody638_482 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_398 optimizedBody638_481

def optimizedBody638_483 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_405 optimizedBody638_482

def optimizedBody638_484 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_404 optimizedBody638_483

def optimizedBody638_485 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_403 optimizedBody638_484

def optimizedBody638_486 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_402 optimizedBody638_485

def optimizedBody638_487 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_401 optimizedBody638_486

def optimizedBody638_488 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_400 optimizedBody638_487

def optimizedBody638_489 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_225 optimizedBody638_488

def optimizedBody638_490 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_399 optimizedBody638_489

def optimizedBody638_491 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_95 optimizedBody638_490

def optimizedBody638_492 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_491

def optimizedBody638_493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 20)]

def optimizedBody638_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 14)]

def optimizedBody638_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 16 (Flapjack.WordRegImm.reg 6)))

def optimizedBody638_497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (40, 40)]

def optimizedBody638_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 40 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody638_499 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (14, 26)]

def optimizedBody638_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 14 (Flapjack.WordRegImm.reg 0)))

def optimizedBody638_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20 16 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 10)]

def optimizedBody638_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 20 (Flapjack.WordRegImm.reg 16)))

def optimizedBody638_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (18, 18)]

def optimizedBody638_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody638_506 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 44), (20, 24), (38, 38), (4, 4), (8, 36), (32, 32), (14, 14), (6, 6), (12, 12), (10, 8), (18, 2), (16, 16),
    (28, 28), (0, 0)]

def optimizedBody638_507 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_505 optimizedBody638_506

def optimizedBody638_508 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_504 optimizedBody638_507

def optimizedBody638_509 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_503 optimizedBody638_508

def optimizedBody638_510 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_502 optimizedBody638_509

def optimizedBody638_511 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_501 optimizedBody638_510

def optimizedBody638_512 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_500 optimizedBody638_511

def optimizedBody638_513 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_499 optimizedBody638_512

def optimizedBody638_514 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_498 optimizedBody638_513

def optimizedBody638_515 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_497 optimizedBody638_514

def optimizedBody638_516 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_496 optimizedBody638_515

def optimizedBody638_517 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_495 optimizedBody638_516

def optimizedBody638_518 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_494 optimizedBody638_517

def optimizedBody638_519 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_493 optimizedBody638_518

def optimizedBody638_520 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_519

def optimizedBody638_521 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 18 (Flapjack.WordRegImm.reg 0) optimizedBody638_492 optimizedBody638_520

def optimizedBody638_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (46, 20), (62, 38), (48, 4), (8, 8), (50, 32), (14, 14), (52, 6), (54, 12), (56, 10), (58, 18), (16, 16),
    (60, 28), (0, 0)]

def optimizedBody638_523 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_522 optimizedBody638_31

def optimizedBody638_524 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_523

def optimizedBody638_525 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_521 optimizedBody638_524

def optimizedBody638_526 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_398 optimizedBody638_525

def optimizedBody638_527 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_87 optimizedBody638_526

def optimizedBody638_528 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_397 optimizedBody638_527

def optimizedBody638_529 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_396 optimizedBody638_528

def optimizedBody638_530 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_529

def optimizedBody638_531 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_395 optimizedBody638_530

def optimizedBody638_532 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_328 optimizedBody638_531

def optimizedBody638_533 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_532

def optimizedBody638_534 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_327 optimizedBody638_533

def optimizedBody638_535 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_326 optimizedBody638_534

def optimizedBody638_536 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_535

def optimizedBody638_537 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_325 optimizedBody638_536

def optimizedBody638_538 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_275 optimizedBody638_537

def optimizedBody638_539 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_538

def optimizedBody638_540 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_274 optimizedBody638_539

def optimizedBody638_541 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_540

def optimizedBody638_542 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_273 optimizedBody638_541

def optimizedBody638_543 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_244 optimizedBody638_542

def optimizedBody638_544 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_243 optimizedBody638_543

def optimizedBody638_545 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_80 optimizedBody638_544

def optimizedBody638_546 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_6 optimizedBody638_545

def optimizedBody638_547 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_79 optimizedBody638_546

def optimizedBody638_548 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_242 optimizedBody638_547

def optimizedBody638_549 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_241 optimizedBody638_548

def optimizedBody638_550 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_240 optimizedBody638_549

def optimizedBody638_551 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_239 optimizedBody638_550

def optimizedBody638_552 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_6 optimizedBody638_551

def optimizedBody638_553 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_238 optimizedBody638_552

def optimizedBody638_554 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_231 optimizedBody638_553

def optimizedBody638_555 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_237 optimizedBody638_554

def optimizedBody638_556 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_236 optimizedBody638_555

def optimizedBody638_557 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_235 optimizedBody638_556

def optimizedBody638_558 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_234 optimizedBody638_557

def optimizedBody638_559 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_15 optimizedBody638_558

def optimizedBody638_560 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_233 optimizedBody638_559

def optimizedBody638_561 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_232 optimizedBody638_560

def optimizedBody638_562 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_231 optimizedBody638_561

def optimizedBody638_563 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_12 optimizedBody638_562

def optimizedBody638_564 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_563

def optimizedBody638_565 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody638_564 optimizedBody638_51

def optimizedBody638_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (46, 4), (62, 6), (48, 10), (8, 8), (50, 12), (14, 14), (52, 18), (54, 20), (56, 22), (58, 24), (16, 16),
    (60, 26), (0, 0)]

def optimizedBody638_567 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_566

def optimizedBody638_568 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_565 optimizedBody638_567

def optimizedBody638_569 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_12 optimizedBody638_568

def optimizedBody638_570 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_11 optimizedBody638_569

def optimizedBody638_571 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody638_570 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody638_572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 14), (28, 62)]

def optimizedBody638_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 28 (Flapjack.WordRegImm.reg 10)))

def optimizedBody638_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody638_575 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(4, 44), (32, 46), (28, 28), (14, 48), (30, 8), (2, 50), (10, 10), (24, 52), (12, 54), (6, 56), (20, 58), (0, 16),
    (18, 60), (22, 22)]

def optimizedBody638_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28), (22, 22)]

def optimizedBody638_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 22 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 24)))

def optimizedBody638_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody638_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody638_581 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 22 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody638_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(28, 28), (24, 24), (22, 22)]

def optimizedBody638_583 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_582 optimizedBody638_31

def optimizedBody638_584 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_581 optimizedBody638_583

def optimizedBody638_585 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_340 optimizedBody638_584

def optimizedBody638_586 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_580 optimizedBody638_585

def optimizedBody638_587 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_162 optimizedBody638_586

def optimizedBody638_588 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_579 optimizedBody638_587

def optimizedBody638_589 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_578 optimizedBody638_588

def optimizedBody638_590 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_332 optimizedBody638_589

def optimizedBody638_591 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_577 optimizedBody638_590

def optimizedBody638_592 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_340 optimizedBody638_591

def optimizedBody638_593 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_592

def optimizedBody638_594 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(28, 28), (22, 22)]

def optimizedBody638_595 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_594 optimizedBody638_50

def optimizedBody638_596 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_595

def optimizedBody638_597 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 22 (Flapjack.WordRegImm.reg 28) optimizedBody638_593 optimizedBody638_596

def optimizedBody638_598 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_582

def optimizedBody638_599 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_597 optimizedBody638_598

def optimizedBody638_600 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_576 optimizedBody638_599

def optimizedBody638_601 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody638_600 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody638_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody638_603 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(4, 4), (32, 32), (28, 28), (14, 14), (30, 30), (2, 2), (10, 10), (24, 24), (12, 12), (6, 6), (20, 20), (0, 0),
    (18, 18), (22, 22)]

def optimizedBody638_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (14, 14)]

def optimizedBody638_605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 26 14 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 26 (Flapjack.WordRegImm.reg 2)))

def optimizedBody638_607 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody638_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 14 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody638_609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 0)))

def optimizedBody638_610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody638_611 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 8 (Flapjack.WordRegImm.reg 12)))

def optimizedBody638_612 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 34 (Flapjack.WordRegImm.reg 8)))

def optimizedBody638_613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 4294967295#64)

def optimizedBody638_614 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 34 8 (Flapjack.WordRegImm.reg 34)))

def optimizedBody638_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (26, 26)]

def optimizedBody638_616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 26 (Flapjack.WordRegImm.reg 0)))

def optimizedBody638_617 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody638_618 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 12), (12, 12)]

def optimizedBody638_619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 26 (Flapjack.WordRegImm.reg 8)))

def optimizedBody638_620 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 34 (Flapjack.WordRegImm.reg 8)))

def optimizedBody638_621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (8, 8)]

def optimizedBody638_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody638_623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (2, 2), (10, 10), (12, 12), (0, 0)]

def optimizedBody638_624 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_623 optimizedBody638_31

def optimizedBody638_625 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_622 optimizedBody638_624

def optimizedBody638_626 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_621 optimizedBody638_625

def optimizedBody638_627 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_620 optimizedBody638_626

def optimizedBody638_628 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_619 optimizedBody638_627

def optimizedBody638_629 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_618 optimizedBody638_628

def optimizedBody638_630 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_617 optimizedBody638_629

def optimizedBody638_631 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_616 optimizedBody638_630

def optimizedBody638_632 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_615 optimizedBody638_631

def optimizedBody638_633 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_614 optimizedBody638_632

def optimizedBody638_634 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_613 optimizedBody638_633

def optimizedBody638_635 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_612 optimizedBody638_634

def optimizedBody638_636 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_100 optimizedBody638_635

def optimizedBody638_637 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_611 optimizedBody638_636

def optimizedBody638_638 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_3 optimizedBody638_637

def optimizedBody638_639 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_98 optimizedBody638_638

def optimizedBody638_640 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_610 optimizedBody638_639

def optimizedBody638_641 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_609 optimizedBody638_640

def optimizedBody638_642 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_12 optimizedBody638_641

def optimizedBody638_643 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_608 optimizedBody638_642

def optimizedBody638_644 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_607 optimizedBody638_643

def optimizedBody638_645 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_225 optimizedBody638_644

def optimizedBody638_646 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_606 optimizedBody638_645

def optimizedBody638_647 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_61 optimizedBody638_646

def optimizedBody638_648 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_605 optimizedBody638_647

def optimizedBody638_649 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_225 optimizedBody638_648

def optimizedBody638_650 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_649

def optimizedBody638_651 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 10) optimizedBody638_650 optimizedBody638_51

def optimizedBody638_652 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_623

def optimizedBody638_653 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_651 optimizedBody638_652

def optimizedBody638_654 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_604 optimizedBody638_653

def optimizedBody638_655 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody638_654 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def optimizedBody638_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody638_657 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_61 optimizedBody638_656

def optimizedBody638_658 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_11 optimizedBody638_657

def optimizedBody638_659 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_658

def optimizedBody638_660 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_655 optimizedBody638_659

def optimizedBody638_661 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_603 optimizedBody638_660

def optimizedBody638_662 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_661

def optimizedBody638_663 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_602 optimizedBody638_662

def optimizedBody638_664 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_663

def optimizedBody638_665 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_601 optimizedBody638_664

def optimizedBody638_666 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_575 optimizedBody638_665

def optimizedBody638_667 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_666

def optimizedBody638_668 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_574 optimizedBody638_667

def optimizedBody638_669 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_573 optimizedBody638_668

def optimizedBody638_670 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_572 optimizedBody638_669

def optimizedBody638_671 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_670

def optimizedBody638_672 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_571 optimizedBody638_671

def optimizedBody638_673 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_230 optimizedBody638_672

def optimizedBody638_674 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_673

def optimizedBody638_675 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_229 optimizedBody638_674

def optimizedBody638_676 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_228 optimizedBody638_675

def optimizedBody638_677 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_227 optimizedBody638_676

def optimizedBody638_678 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_81 optimizedBody638_677

def optimizedBody638_679 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_223 optimizedBody638_678

def optimizedBody638_680 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_16 optimizedBody638_679

def optimizedBody638_681 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_79 optimizedBody638_680

def optimizedBody638_682 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_226 optimizedBody638_681

def optimizedBody638_683 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_225 optimizedBody638_682

def optimizedBody638_684 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_224 optimizedBody638_683

def optimizedBody638_685 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_223 optimizedBody638_684

def optimizedBody638_686 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_16 optimizedBody638_685

def optimizedBody638_687 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_79 optimizedBody638_686

def optimizedBody638_688 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_222 optimizedBody638_687

def optimizedBody638_689 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_221 optimizedBody638_688

def optimizedBody638_690 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_220 optimizedBody638_689

def optimizedBody638_691 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_219 optimizedBody638_690

def optimizedBody638_692 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_218 optimizedBody638_691

def optimizedBody638_693 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_217 optimizedBody638_692

def optimizedBody638_694 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_216 optimizedBody638_693

def optimizedBody638_695 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_215 optimizedBody638_694

def optimizedBody638_696 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_214 optimizedBody638_695

def optimizedBody638_697 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_213 optimizedBody638_696

def optimizedBody638_698 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_697

def optimizedBody638_699 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_212 optimizedBody638_698

def optimizedBody638_700 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_160 optimizedBody638_699

def optimizedBody638_701 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_700

def optimizedBody638_702 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_159 optimizedBody638_701

def optimizedBody638_703 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_111 optimizedBody638_702

def optimizedBody638_704 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_110 optimizedBody638_703

def optimizedBody638_705 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_158 optimizedBody638_704

def optimizedBody638_706 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_100 optimizedBody638_705

def optimizedBody638_707 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_99 optimizedBody638_706

def optimizedBody638_708 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_12 optimizedBody638_707

def optimizedBody638_709 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_98 optimizedBody638_708

def optimizedBody638_710 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_104 optimizedBody638_709

def optimizedBody638_711 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_157 optimizedBody638_710

def optimizedBody638_712 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_26 optimizedBody638_711

def optimizedBody638_713 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_94 optimizedBody638_712

def optimizedBody638_714 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_156 optimizedBody638_713

def optimizedBody638_715 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_3 optimizedBody638_714

def optimizedBody638_716 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_155 optimizedBody638_715

def optimizedBody638_717 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_154 optimizedBody638_716

def optimizedBody638_718 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_153 optimizedBody638_717

def optimizedBody638_719 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_3 optimizedBody638_718

def optimizedBody638_720 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_152 optimizedBody638_719

def optimizedBody638_721 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_151 optimizedBody638_720

def optimizedBody638_722 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_150 optimizedBody638_721

def optimizedBody638_723 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_149 optimizedBody638_722

def optimizedBody638_724 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_148 optimizedBody638_723

def optimizedBody638_725 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_105 optimizedBody638_724

def optimizedBody638_726 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_147 optimizedBody638_725

def optimizedBody638_727 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_146 optimizedBody638_726

def optimizedBody638_728 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_727

def optimizedBody638_729 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_145 optimizedBody638_728

def optimizedBody638_730 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_89 optimizedBody638_729

def optimizedBody638_731 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_730

def optimizedBody638_732 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_88 optimizedBody638_731

def optimizedBody638_733 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_87 optimizedBody638_732

def optimizedBody638_734 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_733

def optimizedBody638_735 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_86 optimizedBody638_734

def optimizedBody638_736 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_82 optimizedBody638_735

def optimizedBody638_737 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_81 optimizedBody638_736

def optimizedBody638_738 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_80 optimizedBody638_737

def optimizedBody638_739 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_6 optimizedBody638_738

def optimizedBody638_740 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_79 optimizedBody638_739

def optimizedBody638_741 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_78 optimizedBody638_740

def optimizedBody638_742 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_3 optimizedBody638_741

def optimizedBody638_743 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_742

def optimizedBody638_744 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_5 optimizedBody638_743

def optimizedBody638_745 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_77 optimizedBody638_744

def optimizedBody638_746 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_4 optimizedBody638_745

def optimizedBody638_747 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_3 optimizedBody638_746

def optimizedBody638_748 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_2 optimizedBody638_747

def optimizedBody638_749 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_1 optimizedBody638_748

def optimizedBody638_750 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody638_0 optimizedBody638_749

def optimized638 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(638, 9, optimizedBody638_750)
end InitECandidate.Proofs.StackAnalysis
