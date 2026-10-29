import InitECandidate.Proofs.WordStages.Optimize676
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source692
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody692_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0), (10, 4), (6, 6), (8, 8)]

def optimizedBody692_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 12#64)

def optimizedBody692_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 8), (50, 10), (48, 4), (52, 6)]

def optimizedBody692_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (50, 50), (4, 48), (48, 52)]

def optimizedBody692_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (50, 50), (4, 48), (48, 52)]

def optimizedBody692_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody692_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_4 optimizedBody692_5

def optimizedBody692_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody692_3, 692, 2)) (some 679) ([2, 4]) (some (2, optimizedBody692_6, 692, 3))

def optimizedBody692_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody692_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody692_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody692_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 6 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody692_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 6), (50, 50), (4, 4), (10, 10), (48, 48), (0, 0)]

def optimizedBody692_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody692_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody692_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody692_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (56, 0)]

def optimizedBody692_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody692_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (44, 44), (46, 46), (50, 50), (48, 4), (52, 10), (54, 48), (56, 56)]

def optimizedBody692_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (6, 50), (4, 48), (10, 52), (12, 54), (0, 56)]

def optimizedBody692_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (6, 50), (4, 48), (10, 52), (12, 54), (0, 56)]

def optimizedBody692_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_20 optimizedBody692_5

def optimizedBody692_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody692_19, 692, 4)) (some 669) ([2, 4]) (some (2, optimizedBody692_21, 692, 5))

def optimizedBody692_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (6, 6), (4, 4), (10, 10), (12, 12), (0, 0)]

def optimizedBody692_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_8 optimizedBody692_23

def optimizedBody692_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_22 optimizedBody692_24

def optimizedBody692_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_18 optimizedBody692_25

def optimizedBody692_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_8 optimizedBody692_26

def optimizedBody692_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (6, 50), (4, 4), (10, 10), (12, 48), (0, 56)]

def optimizedBody692_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_8 optimizedBody692_28

def optimizedBody692_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 0) optimizedBody692_27 optimizedBody692_29

def optimizedBody692_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 0 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody692_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody692_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody692_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody692_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody692_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 0 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody692_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody692_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody692_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody692_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody692_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody692_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 4), (52, 12), (54, 0)]

def optimizedBody692_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (14, 46), (6, 48), (4, 50), (12, 52), (0, 54)]

def optimizedBody692_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (14, 46), (6, 48), (4, 50), (12, 52), (0, 54)]

def optimizedBody692_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_44 optimizedBody692_5

def optimizedBody692_46 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody692_43, 692, 6)) (some 668) ([2, 4, 6]) (some (2, optimizedBody692_45, 692, 7))

def optimizedBody692_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody692_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (14, 14), (6, 6), (4, 4), (10, 10), (12, 12), (0, 0)]

def optimizedBody692_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_47 optimizedBody692_48

def optimizedBody692_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_8 optimizedBody692_49

def optimizedBody692_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_46 optimizedBody692_50

def optimizedBody692_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_42 optimizedBody692_51

def optimizedBody692_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_8 optimizedBody692_52

def optimizedBody692_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 44), (14, 46), (6, 6), (4, 4), (10, 10), (12, 12), (0, 0)]

def optimizedBody692_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_8 optimizedBody692_54

def optimizedBody692_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody692_53 optimizedBody692_55

def optimizedBody692_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 8), (46, 14), (50, 6), (4, 4), (10, 10), (48, 12), (0, 0)]

def optimizedBody692_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody692_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_57 optimizedBody692_58

def optimizedBody692_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_8 optimizedBody692_59

def optimizedBody692_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_56 optimizedBody692_60

def optimizedBody692_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_41 optimizedBody692_61

def optimizedBody692_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_40 optimizedBody692_62

def optimizedBody692_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_39 optimizedBody692_63

def optimizedBody692_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_38 optimizedBody692_64

def optimizedBody692_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_37 optimizedBody692_65

def optimizedBody692_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_36 optimizedBody692_66

def optimizedBody692_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_14 optimizedBody692_67

def optimizedBody692_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_35 optimizedBody692_68

def optimizedBody692_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_34 optimizedBody692_69

def optimizedBody692_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_33 optimizedBody692_70

def optimizedBody692_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_32 optimizedBody692_71

def optimizedBody692_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_31 optimizedBody692_72

def optimizedBody692_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_14 optimizedBody692_73

def optimizedBody692_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_8 optimizedBody692_74

def optimizedBody692_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_30 optimizedBody692_75

def optimizedBody692_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_17 optimizedBody692_76

def optimizedBody692_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_16 optimizedBody692_77

def optimizedBody692_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_15 optimizedBody692_78

def optimizedBody692_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_14 optimizedBody692_79

def optimizedBody692_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_8 optimizedBody692_80

def optimizedBody692_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody692_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_8 optimizedBody692_82

def optimizedBody692_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody692_81 optimizedBody692_83

def optimizedBody692_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (46, 6), (50, 8), (4, 4), (10, 10), (48, 12), (0, 0)]

def optimizedBody692_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_8 optimizedBody692_85

def optimizedBody692_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_84 optimizedBody692_86

def optimizedBody692_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_14 optimizedBody692_87

def optimizedBody692_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_13 optimizedBody692_88

def optimizedBody692_90 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody692_89 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody692_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody692_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_40 optimizedBody692_91

def optimizedBody692_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_13 optimizedBody692_92

def optimizedBody692_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_8 optimizedBody692_93

def optimizedBody692_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_90 optimizedBody692_94

def optimizedBody692_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_12 optimizedBody692_95

def optimizedBody692_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_8 optimizedBody692_96

def optimizedBody692_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_11 optimizedBody692_97

def optimizedBody692_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_10 optimizedBody692_98

def optimizedBody692_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_9 optimizedBody692_99

def optimizedBody692_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_8 optimizedBody692_100

def optimizedBody692_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_7 optimizedBody692_101

def optimizedBody692_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_2 optimizedBody692_102

def optimizedBody692_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_1 optimizedBody692_103

def optimizedBody692_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody692_0 optimizedBody692_104

def oracle692 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 1)) 3
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 25 (Flapjack.Spt.ls 0)))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              4
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 0)) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 5)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)))
                24 (Flapjack.Spt.ls 0))
              5
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 23 (Flapjack.Spt.ls 1)) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 5))))
              1 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3 (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              3
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 6)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 1)) 2 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
              (Flapjack.Spt.ls 24)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              (Flapjack.Spt.ls 23))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              (Flapjack.Spt.ls 25)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
              (Flapjack.Spt.ls 26))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.ls 22)))))))
def optimized692 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(692, 5, optimizedBody692_105)
theorem optimize692_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source692, oracle692) = optimized692 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize692_eq
end InitECandidate.Proofs.WordStages
