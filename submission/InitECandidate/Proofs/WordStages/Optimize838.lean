import InitECandidate.Proofs.WordStages.Optimize822
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source838
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody838_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (48, 2), (52, 6)]

def optimizedBody838_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (52, 52)]

def optimizedBody838_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52)]

def optimizedBody838_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody838_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_2 optimizedBody838_3

def optimizedBody838_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody838_1, 838, 2)) (some 69) ([]) (some (2, optimizedBody838_4, 838, 3))

def optimizedBody838_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody838_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody838_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52)]

def optimizedBody838_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (48, 48), (50, 50), (4, 52)]

def optimizedBody838_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (4, 52)]

def optimizedBody838_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_10 optimizedBody838_3

def optimizedBody838_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody838_9, 838, 4)) (some 68) ([2]) (some (2, optimizedBody838_11, 838, 5))

def optimizedBody838_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 50), (52, 4), (54, 6)]

def optimizedBody838_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (14, 46), (4, 48), (8, 50), (16, 52), (6, 54)]

def optimizedBody838_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (4, 48), (8, 50), (16, 52), (6, 54)]

def optimizedBody838_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_15 optimizedBody838_3

def optimizedBody838_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody838_14, 838, 6)) (some 158) ([2, 4, 6]) (some (2, optimizedBody838_16, 838, 7))

def optimizedBody838_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody838_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 0), (14, 14), (4, 4), (2, 8), (16, 16), (6, 6)]

def optimizedBody838_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody838_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 6#64)

def optimizedBody838_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody838_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody838_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody838_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (0, 0)]

def optimizedBody838_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody838_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody838_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody838_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody838_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody838_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 2047#64)))

def optimizedBody838_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 2047#64)

def optimizedBody838_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody838_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody838_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 12 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody838_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody838_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 7#64)

def optimizedBody838_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody838_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 18 (Flapjack.WordRegImm.reg 8)))

def optimizedBody838_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody838_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody838_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody838_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 12 (Flapjack.WordRegImm.reg 4)))

def optimizedBody838_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody838_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10), (8, 8), (4, 4)]

def optimizedBody838_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 10 (Flapjack.WordRegImm.reg 12)))

def optimizedBody838_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody838_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody838_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (6, 6)]

def optimizedBody838_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody838_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_49 optimizedBody838_50

def optimizedBody838_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_48 optimizedBody838_51

def optimizedBody838_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_20 optimizedBody838_52

def optimizedBody838_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_47 optimizedBody838_53

def optimizedBody838_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_46 optimizedBody838_54

def optimizedBody838_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_45 optimizedBody838_55

def optimizedBody838_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_44 optimizedBody838_56

def optimizedBody838_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_43 optimizedBody838_57

def optimizedBody838_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_42 optimizedBody838_58

def optimizedBody838_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_41 optimizedBody838_59

def optimizedBody838_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_40 optimizedBody838_60

def optimizedBody838_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_39 optimizedBody838_61

def optimizedBody838_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_38 optimizedBody838_62

def optimizedBody838_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_33 optimizedBody838_63

def optimizedBody838_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_37 optimizedBody838_64

def optimizedBody838_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_36 optimizedBody838_65

def optimizedBody838_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_35 optimizedBody838_66

def optimizedBody838_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_33 optimizedBody838_67

def optimizedBody838_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_34 optimizedBody838_68

def optimizedBody838_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_33 optimizedBody838_69

def optimizedBody838_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_32 optimizedBody838_70

def optimizedBody838_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_31 optimizedBody838_71

def optimizedBody838_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_30 optimizedBody838_72

def optimizedBody838_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_29 optimizedBody838_73

def optimizedBody838_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_28 optimizedBody838_74

def optimizedBody838_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_27 optimizedBody838_75

def optimizedBody838_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_26 optimizedBody838_76

def optimizedBody838_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_25 optimizedBody838_77

def optimizedBody838_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_24 optimizedBody838_78

def optimizedBody838_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_23 optimizedBody838_79

def optimizedBody838_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_22 optimizedBody838_80

def optimizedBody838_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_6 optimizedBody838_81

def optimizedBody838_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody838_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_6 optimizedBody838_83

def optimizedBody838_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 8) optimizedBody838_82 optimizedBody838_84

def optimizedBody838_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_6 optimizedBody838_49

def optimizedBody838_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_85 optimizedBody838_86

def optimizedBody838_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_21 optimizedBody838_87

def optimizedBody838_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_20 optimizedBody838_88

def optimizedBody838_90 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody838_89 (Flapjack.Spt.bn
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody838_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody838_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody838_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody838_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_93 optimizedBody838_3

def optimizedBody838_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody838_92, 838, 8)) (some 70) ([2]) (some (2, optimizedBody838_94, 838, 9))

def optimizedBody838_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody838_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody838_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody838_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_97 optimizedBody838_98

def optimizedBody838_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_96 optimizedBody838_99

def optimizedBody838_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_6 optimizedBody838_100

def optimizedBody838_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_95 optimizedBody838_101

def optimizedBody838_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_91 optimizedBody838_102

def optimizedBody838_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_6 optimizedBody838_103

def optimizedBody838_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_90 optimizedBody838_104

def optimizedBody838_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_19 optimizedBody838_105

def optimizedBody838_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_6 optimizedBody838_106

def optimizedBody838_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_18 optimizedBody838_107

def optimizedBody838_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_6 optimizedBody838_108

def optimizedBody838_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_17 optimizedBody838_109

def optimizedBody838_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_13 optimizedBody838_110

def optimizedBody838_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_6 optimizedBody838_111

def optimizedBody838_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_12 optimizedBody838_112

def optimizedBody838_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_8 optimizedBody838_113

def optimizedBody838_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_7 optimizedBody838_114

def optimizedBody838_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_6 optimizedBody838_115

def optimizedBody838_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_5 optimizedBody838_116

def optimizedBody838_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody838_0 optimizedBody838_117

def oracle838 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 9))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 23
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.ls 5)) 26
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 5)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 0))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 22
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 (Flapjack.Spt.ls 7)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4)) 24
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 24 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 22)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)) 23 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 26 (Flapjack.Spt.ls 26)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 24 (Flapjack.Spt.ls 25))))))))
def optimized838 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(838, 4, optimizedBody838_118)
theorem optimize838_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source838, oracle838) = optimized838 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize838_eq
end InitECandidate.Proofs.WordStages
