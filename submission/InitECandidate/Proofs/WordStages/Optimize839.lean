import InitECandidate.Proofs.WordStages.Optimize823
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source839
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody839_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (0, 0), (6, 2)]

def optimizedBody839_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 256#64)

def optimizedBody839_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 2), (48, 6)]

def optimizedBody839_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48)]

def optimizedBody839_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody839_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody839_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_4 optimizedBody839_5

def optimizedBody839_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody839_3, 839, 2)) (some 78) ([2, 4]) (some (2, optimizedBody839_6, 839, 3))

def optimizedBody839_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody839_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody839_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody839_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody839_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody839_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (10, 10), (0, 0), (14, 14), (46, 4), (8, 8)]

def optimizedBody839_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (8, 8)]

def optimizedBody839_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody839_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody839_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody839_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody839_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody839_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (2, 0)]

def optimizedBody839_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody839_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody839_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 10), (48, 2), (50, 14), (52, 46), (54, 8), (56, 12)]

def optimizedBody839_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (52, 54), (12, 56)]

def optimizedBody839_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (52, 54), (12, 56)]

def optimizedBody839_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_25 optimizedBody839_5

def optimizedBody839_27 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody839_24, 839, 4)) (some 838) ([2, 4, 6]) (some (2, optimizedBody839_26, 839, 5))

def optimizedBody839_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody839_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 16#64))

def optimizedBody839_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody839_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (8, 8), (0, 0), (48, 48), (50, 50), (52, 52), (10, 10), (12, 12)]

def optimizedBody839_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (10, 10)]

def optimizedBody839_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 0)]

def optimizedBody839_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 10 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody839_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 8#64))

def optimizedBody839_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody839_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody839_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 8), (50, 2), (52, 48), (54, 50), (56, 52), (58, 10), (60, 12)]

def optimizedBody839_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (14, 46), (8, 48), (0, 50), (16, 52), (18, 54), (20, 56), (4, 58), (12, 60)]

def optimizedBody839_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (6, 44), (14, 46), (8, 48), (0, 50), (16, 52), (18, 54), (20, 56), (4, 58), (12, 60)]

def optimizedBody839_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_40 optimizedBody839_5

def optimizedBody839_42 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody839_39, 839, 6)) (some 838) ([2, 4, 6]) (some (2, optimizedBody839_41, 839, 7))

def optimizedBody839_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody839_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 6), (46, 14), (8, 8), (0, 0), (48, 16), (50, 18), (52, 20), (10, 10), (12, 12)]

def optimizedBody839_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody839_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_44 optimizedBody839_45

def optimizedBody839_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_43 optimizedBody839_46

def optimizedBody839_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_9 optimizedBody839_47

def optimizedBody839_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_8 optimizedBody839_48

def optimizedBody839_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_42 optimizedBody839_49

def optimizedBody839_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_38 optimizedBody839_50

def optimizedBody839_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_37 optimizedBody839_51

def optimizedBody839_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_36 optimizedBody839_52

def optimizedBody839_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_35 optimizedBody839_53

def optimizedBody839_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_28 optimizedBody839_54

def optimizedBody839_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_34 optimizedBody839_55

def optimizedBody839_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_33 optimizedBody839_56

def optimizedBody839_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_8 optimizedBody839_57

def optimizedBody839_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody839_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_8 optimizedBody839_59

def optimizedBody839_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 10 (Flapjack.WordRegImm.reg 8) optimizedBody839_58 optimizedBody839_60

def optimizedBody839_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (46, 4), (8, 8), (0, 0), (48, 6), (50, 14), (52, 16), (10, 10), (12, 12)]

def optimizedBody839_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_8 optimizedBody839_62

def optimizedBody839_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_61 optimizedBody839_63

def optimizedBody839_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_32 optimizedBody839_64

def optimizedBody839_66 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody839_65 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody839_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 52)]

def optimizedBody839_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody839_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (10, 46), (0, 0), (14, 48), (46, 50), (8, 8)]

def optimizedBody839_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_69 optimizedBody839_45

def optimizedBody839_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_68 optimizedBody839_70

def optimizedBody839_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_67 optimizedBody839_71

def optimizedBody839_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_8 optimizedBody839_72

def optimizedBody839_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_66 optimizedBody839_73

def optimizedBody839_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_31 optimizedBody839_74

def optimizedBody839_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_8 optimizedBody839_75

def optimizedBody839_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_30 optimizedBody839_76

def optimizedBody839_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_29 optimizedBody839_77

def optimizedBody839_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_28 optimizedBody839_78

def optimizedBody839_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_8 optimizedBody839_79

def optimizedBody839_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_27 optimizedBody839_80

def optimizedBody839_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_23 optimizedBody839_81

def optimizedBody839_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_22 optimizedBody839_82

def optimizedBody839_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_21 optimizedBody839_83

def optimizedBody839_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_20 optimizedBody839_84

def optimizedBody839_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_19 optimizedBody839_85

def optimizedBody839_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_18 optimizedBody839_86

def optimizedBody839_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_17 optimizedBody839_87

def optimizedBody839_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_16 optimizedBody839_88

def optimizedBody839_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_15 optimizedBody839_89

def optimizedBody839_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_8 optimizedBody839_90

def optimizedBody839_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 14) optimizedBody839_91 optimizedBody839_60

def optimizedBody839_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (10, 10), (0, 0), (14, 14), (46, 4), (8, 8)]

def optimizedBody839_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_8 optimizedBody839_93

def optimizedBody839_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_92 optimizedBody839_94

def optimizedBody839_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_14 optimizedBody839_95

def optimizedBody839_97 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody839_96 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody839_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody839_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody839_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody839_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_99 optimizedBody839_100

def optimizedBody839_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_98 optimizedBody839_101

def optimizedBody839_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_8 optimizedBody839_102

def optimizedBody839_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_97 optimizedBody839_103

def optimizedBody839_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_13 optimizedBody839_104

def optimizedBody839_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_8 optimizedBody839_105

def optimizedBody839_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_12 optimizedBody839_106

def optimizedBody839_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_11 optimizedBody839_107

def optimizedBody839_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_9 optimizedBody839_108

def optimizedBody839_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_10 optimizedBody839_109

def optimizedBody839_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_9 optimizedBody839_110

def optimizedBody839_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_8 optimizedBody839_111

def optimizedBody839_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_7 optimizedBody839_112

def optimizedBody839_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_2 optimizedBody839_113

def optimizedBody839_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_1 optimizedBody839_114

def optimizedBody839_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody839_0 optimizedBody839_115

def oracle839 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5))))
            0
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 23 Flapjack.Spt.ln) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 6 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 24 Flapjack.Spt.ln) 22
                (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 6 (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 7
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0))) 22
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 25 (Flapjack.Spt.ls 3)) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5)))
                0 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 Flapjack.Spt.ln) 4
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 24)))
              2
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)))
                2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)))
              3
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 7)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 3))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 23
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 22
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
              (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))))
def optimized839 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(839, 3, optimizedBody839_116)
theorem optimize839_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source839, oracle839) = optimized839 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize839_eq
end InitECandidate.Proofs.WordStages
