import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody240_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (48, 2), (54, 6)]

def optimizedBody240_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (54, 54)]

def optimizedBody240_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (54, 54)]

def optimizedBody240_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody240_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_2 optimizedBody240_3

def optimizedBody240_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody240_1, 240, 2)) (some 69) ([]) (some (2, optimizedBody240_4, 240, 3))

def optimizedBody240_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody240_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody240_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 0), (54, 54)]

def optimizedBody240_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48), (52, 52), (54, 54)]

def optimizedBody240_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (52, 52), (54, 54)]

def optimizedBody240_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_10 optimizedBody240_3

def optimizedBody240_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody240_9, 240, 4)) (some 68) ([2]) (some (2, optimizedBody240_11, 240, 5))

def optimizedBody240_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 4), (48, 0), (50, 6), (52, 52), (54, 54)]

def optimizedBody240_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54)]

def optimizedBody240_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54)]

def optimizedBody240_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_15 optimizedBody240_3

def optimizedBody240_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody240_14, 240, 6)) (some 237) ([2, 4, 6]) (some (2, optimizedBody240_16, 240, 7))

def optimizedBody240_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody240_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody240_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody240_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody240_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (56, 2)]

def optimizedBody240_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (14, 46), (12, 48), (0, 50), (46, 52), (6, 54), (4, 56)]

def optimizedBody240_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (12, 48), (0, 50), (46, 52), (6, 54), (4, 56)]

def optimizedBody240_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_24 optimizedBody240_3

def optimizedBody240_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody240_23, 240, 8)) (some 78) ([2, 4]) (some (2, optimizedBody240_25, 240, 9))

def optimizedBody240_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody240_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (14, 14), (12, 12), (2, 0), (46, 46), (6, 6), (16, 16), (4, 4)]

def optimizedBody240_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (16, 16)]

def optimizedBody240_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody240_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 16 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody240_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody240_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody240_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody240_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (16, 16)]

def optimizedBody240_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1#64)

def optimizedBody240_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 16 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody240_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody240_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 18 (Flapjack.WordRegImm.reg 8)))

def optimizedBody240_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody240_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody240_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody240_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody240_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (16, 16), (4, 4)]

def optimizedBody240_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody240_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_44 optimizedBody240_45

def optimizedBody240_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_43 optimizedBody240_46

def optimizedBody240_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_30 optimizedBody240_47

def optimizedBody240_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_42 optimizedBody240_48

def optimizedBody240_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_41 optimizedBody240_49

def optimizedBody240_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_40 optimizedBody240_50

def optimizedBody240_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_39 optimizedBody240_51

def optimizedBody240_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_38 optimizedBody240_52

def optimizedBody240_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_37 optimizedBody240_53

def optimizedBody240_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_30 optimizedBody240_54

def optimizedBody240_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_36 optimizedBody240_55

def optimizedBody240_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_35 optimizedBody240_56

def optimizedBody240_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_34 optimizedBody240_57

def optimizedBody240_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_33 optimizedBody240_58

def optimizedBody240_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_32 optimizedBody240_59

def optimizedBody240_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_31 optimizedBody240_60

def optimizedBody240_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_30 optimizedBody240_61

def optimizedBody240_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_6 optimizedBody240_62

def optimizedBody240_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody240_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_6 optimizedBody240_64

def optimizedBody240_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 16 (Flapjack.WordRegImm.reg 14) optimizedBody240_63 optimizedBody240_65

def optimizedBody240_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_6 optimizedBody240_44

def optimizedBody240_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_66 optimizedBody240_67

def optimizedBody240_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_29 optimizedBody240_68

def optimizedBody240_70 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln) optimizedBody240_69 (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody240_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody240_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody240_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody240_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_73 optimizedBody240_3

def optimizedBody240_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody240_72, 240, 10)) (some 154) ([2, 4, 6]) (some (2, optimizedBody240_74, 240, 11))

def optimizedBody240_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody240_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody240_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody240_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_78 optimizedBody240_3

def optimizedBody240_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody240_77, 240, 12)) (some 70) ([2]) (some (2, optimizedBody240_79, 240, 13))

def optimizedBody240_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody240_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody240_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_20 optimizedBody240_82

def optimizedBody240_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_81 optimizedBody240_83

def optimizedBody240_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_6 optimizedBody240_84

def optimizedBody240_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_80 optimizedBody240_85

def optimizedBody240_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_76 optimizedBody240_86

def optimizedBody240_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_6 optimizedBody240_87

def optimizedBody240_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_75 optimizedBody240_88

def optimizedBody240_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_71 optimizedBody240_89

def optimizedBody240_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_6 optimizedBody240_90

def optimizedBody240_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_70 optimizedBody240_91

def optimizedBody240_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_28 optimizedBody240_92

def optimizedBody240_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_6 optimizedBody240_93

def optimizedBody240_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_27 optimizedBody240_94

def optimizedBody240_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_6 optimizedBody240_95

def optimizedBody240_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_26 optimizedBody240_96

def optimizedBody240_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_22 optimizedBody240_97

def optimizedBody240_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_21 optimizedBody240_98

def optimizedBody240_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_20 optimizedBody240_99

def optimizedBody240_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_19 optimizedBody240_100

def optimizedBody240_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_18 optimizedBody240_101

def optimizedBody240_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_6 optimizedBody240_102

def optimizedBody240_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_17 optimizedBody240_103

def optimizedBody240_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_13 optimizedBody240_104

def optimizedBody240_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_6 optimizedBody240_105

def optimizedBody240_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_12 optimizedBody240_106

def optimizedBody240_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_8 optimizedBody240_107

def optimizedBody240_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_7 optimizedBody240_108

def optimizedBody240_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_6 optimizedBody240_109

def optimizedBody240_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_5 optimizedBody240_110

def optimizedBody240_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody240_0 optimizedBody240_111

def optimized240 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(240, 4, optimizedBody240_112)
end InitECandidate.Proofs.StackAnalysis
