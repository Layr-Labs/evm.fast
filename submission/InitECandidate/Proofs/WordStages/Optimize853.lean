import InitECandidate.Proofs.WordStages.Optimize837
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source853
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody853_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (48, 2)]

def optimizedBody853_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody853_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody853_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody853_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_2 optimizedBody853_3

def optimizedBody853_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody853_1, 853, 2)) (some 69) ([]) (some (2, optimizedBody853_4, 853, 3))

def optimizedBody853_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody853_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (64, 0), (48, 4)]

def optimizedBody853_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 2), (44, 44), (46, 46), (64, 64), (0, 48)]

def optimizedBody853_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (64, 64), (0, 48)]

def optimizedBody853_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_9 optimizedBody853_3

def optimizedBody853_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody853_8, 853, 4)) (some 276) ([2]) (some (2, optimizedBody853_10, 853, 5))

def optimizedBody853_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 4), (64, 64), (58, 0), (52, 6)]

def optimizedBody853_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (64, 64), (58, 58), (52, 52)]

def optimizedBody853_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (64, 64), (58, 58), (52, 52)]

def optimizedBody853_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_14 optimizedBody853_3

def optimizedBody853_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody853_13, 853, 6)) (some 70) ([2]) (some (2, optimizedBody853_15, 853, 7))

def optimizedBody853_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (48, 48)]

def optimizedBody853_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 32#64))

def optimizedBody853_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody853_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 40#64))

def optimizedBody853_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody853_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody853_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (0, 0), (50, 2), (60, 6), (46, 4), (54, 48), (64, 64), (58, 58), (48, 48), (52, 52), (56, 8)]

def optimizedBody853_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 50), (0, 0)]

def optimizedBody853_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody853_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody853_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 60)]

def optimizedBody853_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody853_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody853_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody853_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody853_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (60, 10), (50, 0)]

def optimizedBody853_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody853_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody853_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 50), (60, 60), (2, 2)]

def optimizedBody853_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_34 optimizedBody853_35

def optimizedBody853_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_33 optimizedBody853_36

def optimizedBody853_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_32 optimizedBody853_37

def optimizedBody853_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_38

def optimizedBody853_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 0), (60, 10), (2, 2)]

def optimizedBody853_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_40

def optimizedBody853_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 12) optimizedBody853_39 optimizedBody853_41

def optimizedBody853_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody853_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody853_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_43 optimizedBody853_44

def optimizedBody853_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody853_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_46 optimizedBody853_44

def optimizedBody853_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody853_45 optimizedBody853_47

def optimizedBody853_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody853_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 192#64)

def optimizedBody853_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody853_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody853_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_51 optimizedBody853_52

def optimizedBody853_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_22 optimizedBody853_52

def optimizedBody853_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody853_53 optimizedBody853_54

def optimizedBody853_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody853_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody853_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody853_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 50), (50, 8), (60, 60), (48, 46), (54, 54), (64, 64), (58, 58), (52, 48), (56, 52),
    (62, 56)]

def optimizedBody853_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (0, 46), (50, 50), (60, 60), (46, 48), (54, 54), (64, 64), (58, 58), (48, 52), (52, 56), (6, 62)]

def optimizedBody853_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (50, 50), (60, 60), (46, 48), (54, 54), (64, 64), (58, 58), (48, 52), (52, 56), (6, 62)]

def optimizedBody853_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_61 optimizedBody853_3

def optimizedBody853_63 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody853_60, 853, 8)) (some 179) ([2, 4]) (some (2, optimizedBody853_62, 853, 9))

def optimizedBody853_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (4, 4), (0, 0), (50, 50), (60, 60), (46, 46), (54, 54), (64, 64), (58, 58), (48, 48), (52, 52), (6, 6)]

def optimizedBody853_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_64

def optimizedBody853_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_63 optimizedBody853_65

def optimizedBody853_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_59 optimizedBody853_66

def optimizedBody853_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_67

def optimizedBody853_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (4, 4), (0, 50), (50, 8), (60, 60), (46, 46), (54, 54), (64, 64), (58, 58), (48, 48), (52, 52), (6, 56)]

def optimizedBody853_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_69

def optimizedBody853_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 0) optimizedBody853_68 optimizedBody853_70

def optimizedBody853_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody853_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody853_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody853_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody853_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (0, 0), (50, 50), (60, 60), (46, 46), (54, 54), (64, 64), (58, 58), (48, 48), (52, 52), (56, 2)]

def optimizedBody853_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody853_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_76 optimizedBody853_77

def optimizedBody853_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_75 optimizedBody853_78

def optimizedBody853_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_74 optimizedBody853_79

def optimizedBody853_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_73 optimizedBody853_80

def optimizedBody853_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_72 optimizedBody853_81

def optimizedBody853_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_82

def optimizedBody853_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_71 optimizedBody853_83

def optimizedBody853_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_58 optimizedBody853_84

def optimizedBody853_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_57 optimizedBody853_85

def optimizedBody853_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_56 optimizedBody853_86

def optimizedBody853_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_87

def optimizedBody853_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_55 optimizedBody853_88

def optimizedBody853_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_50 optimizedBody853_89

def optimizedBody853_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_49 optimizedBody853_90

def optimizedBody853_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_91

def optimizedBody853_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_48 optimizedBody853_92

def optimizedBody853_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_22 optimizedBody853_93

def optimizedBody853_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_19 optimizedBody853_94

def optimizedBody853_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_95

def optimizedBody853_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_42 optimizedBody853_96

def optimizedBody853_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_31 optimizedBody853_97

def optimizedBody853_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_19 optimizedBody853_98

def optimizedBody853_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_30 optimizedBody853_99

def optimizedBody853_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_29 optimizedBody853_100

def optimizedBody853_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_28 optimizedBody853_101

def optimizedBody853_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_27 optimizedBody853_102

def optimizedBody853_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_26 optimizedBody853_103

def optimizedBody853_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_25 optimizedBody853_104

def optimizedBody853_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_105

def optimizedBody853_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 8)]

def optimizedBody853_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody853_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_107 optimizedBody853_108

def optimizedBody853_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_109

def optimizedBody853_111 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 8) optimizedBody853_106 optimizedBody853_110

def optimizedBody853_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (0, 0), (50, 4), (60, 6), (46, 8), (54, 10), (64, 12), (58, 14), (48, 16), (52, 18), (56, 20)]

def optimizedBody853_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_112

def optimizedBody853_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_111 optimizedBody853_113

def optimizedBody853_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_24 optimizedBody853_114

def optimizedBody853_116 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
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
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody853_115 (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln)

def optimizedBody853_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 56), (44, 44), (50, 50), (60, 60), (46, 46), (54, 54), (64, 64), (58, 58), (48, 48), (52, 52), (56, 56)]

def optimizedBody853_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (50, 50), (60, 60), (10, 46), (54, 54), (64, 64), (58, 58), (6, 48), (52, 52), (0, 56)]

def optimizedBody853_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (50, 50), (60, 60), (10, 46), (54, 54), (64, 64), (58, 58), (6, 48), (52, 52), (0, 56)]

def optimizedBody853_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_119 optimizedBody853_3

def optimizedBody853_121 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody853_118, 853, 10)) (some 180) ([2]) (some (2, optimizedBody853_120, 853, 11))

def optimizedBody853_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody853_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody853_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody853_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody853_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody853_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (48, 2)]

def optimizedBody853_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 56#64))

def optimizedBody853_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 2), (12, 12), (50, 50), (60, 60), (10, 10), (8, 8), (54, 54), (64, 64), (58, 58), (48, 48), (52, 52),
    (62, 0), (56, 4)]

def optimizedBody853_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (12, 12)]

def optimizedBody853_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody853_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 44#64)

def optimizedBody853_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 12), (4, 4)]

def optimizedBody853_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody853_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0)]

def optimizedBody853_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 48#64))

def optimizedBody853_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody853_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 12), (50, 50), (60, 60), (52, 10), (54, 8), (56, 54), (64, 64), (58, 58), (62, 48),
    (66, 52), (68, 62), (70, 56)]

def optimizedBody853_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (6, 46), (4, 48), (14, 50), (16, 60), (10, 52), (8, 54), (18, 56), (20, 64), (22, 58), (48, 62),
    (24, 66), (26, 68), (28, 70)]

def optimizedBody853_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (4, 48), (14, 50), (16, 60), (10, 52), (8, 54), (18, 56), (20, 64), (22, 58), (48, 62),
    (24, 66), (26, 68), (28, 70)]

def optimizedBody853_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_140 optimizedBody853_3

def optimizedBody853_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody853_139, 853, 12)) (some 844) ([2]) (some (2, optimizedBody853_141, 853, 13))

def optimizedBody853_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody853_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody853_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 0), (12, 12), (50, 14), (60, 16), (10, 10), (8, 8), (54, 18), (64, 20), (58, 22), (48, 48), (52, 24),
    (62, 26), (56, 28)]

def optimizedBody853_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_145 optimizedBody853_77

def optimizedBody853_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_144 optimizedBody853_146

def optimizedBody853_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_122 optimizedBody853_147

def optimizedBody853_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_143 optimizedBody853_148

def optimizedBody853_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_57 optimizedBody853_149

def optimizedBody853_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_150

def optimizedBody853_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_142 optimizedBody853_151

def optimizedBody853_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_138 optimizedBody853_152

def optimizedBody853_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_137 optimizedBody853_153

def optimizedBody853_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_136 optimizedBody853_154

def optimizedBody853_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_135 optimizedBody853_155

def optimizedBody853_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_134 optimizedBody853_156

def optimizedBody853_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_133 optimizedBody853_157

def optimizedBody853_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_132 optimizedBody853_158

def optimizedBody853_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_131 optimizedBody853_159

def optimizedBody853_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_160

def optimizedBody853_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_108

def optimizedBody853_163 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 12 (Flapjack.WordRegImm.reg 8) optimizedBody853_161 optimizedBody853_162

def optimizedBody853_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (46, 2), (12, 12), (50, 4), (60, 6), (10, 10), (8, 8), (54, 14), (64, 16), (58, 18), (48, 20), (52, 22),
    (62, 24), (56, 26)]

def optimizedBody853_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_164

def optimizedBody853_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_163 optimizedBody853_165

def optimizedBody853_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_130 optimizedBody853_166

def optimizedBody853_168 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln) optimizedBody853_167 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody853_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 46), (44, 44), (46, 46), (48, 48)]

def optimizedBody853_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody853_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody853_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_171 optimizedBody853_3

def optimizedBody853_173 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody853_170, 853, 14)) (some 180) ([2]) (some (2, optimizedBody853_172, 853, 15))

def optimizedBody853_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody853_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 2)]

def optimizedBody853_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody853_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody853_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_177 optimizedBody853_3

def optimizedBody853_179 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody853_176, 853, 16)) (some 180) ([2]) (some (2, optimizedBody853_178, 853, 17))

def optimizedBody853_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody853_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_49 optimizedBody853_180

def optimizedBody853_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_123 optimizedBody853_181

def optimizedBody853_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_122 optimizedBody853_182

def optimizedBody853_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_183

def optimizedBody853_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_179 optimizedBody853_184

def optimizedBody853_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_175 optimizedBody853_185

def optimizedBody853_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_174 optimizedBody853_186

def optimizedBody853_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_25 optimizedBody853_187

def optimizedBody853_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_73 optimizedBody853_188

def optimizedBody853_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_72 optimizedBody853_189

def optimizedBody853_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_190

def optimizedBody853_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_173 optimizedBody853_191

def optimizedBody853_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_169 optimizedBody853_192

def optimizedBody853_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_193

def optimizedBody853_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_168 optimizedBody853_194

def optimizedBody853_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_129 optimizedBody853_195

def optimizedBody853_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_196

def optimizedBody853_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_31 optimizedBody853_197

def optimizedBody853_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_30 optimizedBody853_198

def optimizedBody853_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_128 optimizedBody853_199

def optimizedBody853_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_127 optimizedBody853_200

def optimizedBody853_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_126 optimizedBody853_201

def optimizedBody853_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_49 optimizedBody853_202

def optimizedBody853_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_125 optimizedBody853_203

def optimizedBody853_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_124 optimizedBody853_204

def optimizedBody853_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_123 optimizedBody853_205

def optimizedBody853_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_122 optimizedBody853_206

def optimizedBody853_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_207

def optimizedBody853_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_121 optimizedBody853_208

def optimizedBody853_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_117 optimizedBody853_209

def optimizedBody853_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_210

def optimizedBody853_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_116 optimizedBody853_211

def optimizedBody853_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_23 optimizedBody853_212

def optimizedBody853_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_213

def optimizedBody853_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_22 optimizedBody853_214

def optimizedBody853_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_21 optimizedBody853_215

def optimizedBody853_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_20 optimizedBody853_216

def optimizedBody853_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_19 optimizedBody853_217

def optimizedBody853_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_18 optimizedBody853_218

def optimizedBody853_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_17 optimizedBody853_219

def optimizedBody853_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_220

def optimizedBody853_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_16 optimizedBody853_221

def optimizedBody853_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_12 optimizedBody853_222

def optimizedBody853_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_223

def optimizedBody853_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_11 optimizedBody853_224

def optimizedBody853_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_7 optimizedBody853_225

def optimizedBody853_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_226

def optimizedBody853_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_5 optimizedBody853_227

def optimizedBody853_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_0 optimizedBody853_228

def oracle853 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 10)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 6)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 1)) 26 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 7)) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 24
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)))
                  2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 0))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 27)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 11)) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))) 2
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 28 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 32
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 30))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.ls 6))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 30 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 7))) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)) 32
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 3
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1 (Flapjack.Spt.ls 29)) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 13)) 4
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 3
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 25))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))) 29
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8)) 30
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 29
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 3
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)))
                  22 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 32)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 32)) 32
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 12)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 24
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 25 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 26
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 5))))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 10)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 3
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0 (Flapjack.Spt.ls 24)) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                24 (Flapjack.Spt.ls 32))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                23 (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                32 (Flapjack.Spt.ls 24))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bs Flapjack.Spt.ln 24
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                22 (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                  Flapjack.Spt.ln))))))))
def optimized853 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(853, 3, optimizedBody853_229)
theorem optimize853_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source853, oracle853) = optimized853 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize853_eq
end InitECandidate.Proofs.WordStages
