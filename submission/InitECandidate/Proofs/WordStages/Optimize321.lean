import InitECandidate.Proofs.WordStages.Optimize305
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source321
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody321_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (6, 2)]

def optimizedBody321_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody321_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody321_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody321_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody321_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody321_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 3#64)

def optimizedBody321_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody321_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody321_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 40#64))

def optimizedBody321_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody321_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody321_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody321_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 6), (50, 8), (52, 12)]

def optimizedBody321_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (0, 46), (48, 48), (4, 50), (10, 52)]

def optimizedBody321_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (4, 50), (10, 52)]

def optimizedBody321_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody321_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_15 optimizedBody321_16

def optimizedBody321_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody321_14, 321, 2)) (some 68) ([2]) (some (2, optimizedBody321_17, 321, 3))

def optimizedBody321_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody321_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody321_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody321_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody321_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody321_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_22 optimizedBody321_23

def optimizedBody321_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_7 optimizedBody321_24

def optimizedBody321_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_7 optimizedBody321_23

def optimizedBody321_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody321_25 optimizedBody321_26

def optimizedBody321_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody321_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody321_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0), (48, 48), (50, 8), (52, 10)]

def optimizedBody321_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52)]

def optimizedBody321_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52)]

def optimizedBody321_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_32 optimizedBody321_16

def optimizedBody321_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody321_31, 321, 4)) (some 290) ([2, 4, 6, 8]) (some (2, optimizedBody321_33, 321, 5))

def optimizedBody321_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody321_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 4)]

def optimizedBody321_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (48, 48), (50, 50), (4, 52), (52, 54)]

def optimizedBody321_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (4, 52), (52, 54)]

def optimizedBody321_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_38 optimizedBody321_16

def optimizedBody321_40 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody321_37, 321, 6)) (some 179) ([2, 4]) (some (2, optimizedBody321_39, 321, 7))

def optimizedBody321_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (46, 6)]

def optimizedBody321_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody321_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody321_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody321_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44), (12, 46), (6, 48), (10, 50), (8, 52)]

def optimizedBody321_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (12, 46), (6, 48), (10, 50), (8, 52)]

def optimizedBody321_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_46 optimizedBody321_16

def optimizedBody321_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody321_45, 321, 8)) (some 326) ([2, 4]) (some (2, optimizedBody321_47, 321, 9))

def optimizedBody321_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (4, 4)]

def optimizedBody321_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 12)))

def optimizedBody321_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (6, 6), (10, 10), (8, 8)]

def optimizedBody321_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_50 optimizedBody321_51

def optimizedBody321_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_49 optimizedBody321_52

def optimizedBody321_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_7 optimizedBody321_53

def optimizedBody321_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_48 optimizedBody321_54

def optimizedBody321_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_44 optimizedBody321_55

def optimizedBody321_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_43 optimizedBody321_56

def optimizedBody321_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_28 optimizedBody321_57

def optimizedBody321_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_42 optimizedBody321_58

def optimizedBody321_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_28 optimizedBody321_59

def optimizedBody321_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_7 optimizedBody321_60

def optimizedBody321_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (2, 46), (6, 48), (10, 50), (8, 52)]

def optimizedBody321_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_7 optimizedBody321_62

def optimizedBody321_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody321_61 optimizedBody321_63

def optimizedBody321_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_7 optimizedBody321_51

def optimizedBody321_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_64 optimizedBody321_65

def optimizedBody321_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_21 optimizedBody321_66

def optimizedBody321_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_41 optimizedBody321_67

def optimizedBody321_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_7 optimizedBody321_68

def optimizedBody321_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_40 optimizedBody321_69

def optimizedBody321_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_36 optimizedBody321_70

def optimizedBody321_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_35 optimizedBody321_71

def optimizedBody321_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_28 optimizedBody321_72

def optimizedBody321_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_7 optimizedBody321_73

def optimizedBody321_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_34 optimizedBody321_74

def optimizedBody321_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_30 optimizedBody321_75

def optimizedBody321_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_29 optimizedBody321_76

def optimizedBody321_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_28 optimizedBody321_77

def optimizedBody321_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_7 optimizedBody321_78

def optimizedBody321_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_27 optimizedBody321_79

def optimizedBody321_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_21 optimizedBody321_80

def optimizedBody321_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_20 optimizedBody321_81

def optimizedBody321_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_19 optimizedBody321_82

def optimizedBody321_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_7 optimizedBody321_83

def optimizedBody321_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_18 optimizedBody321_84

def optimizedBody321_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_13 optimizedBody321_85

def optimizedBody321_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_12 optimizedBody321_86

def optimizedBody321_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_11 optimizedBody321_87

def optimizedBody321_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_10 optimizedBody321_88

def optimizedBody321_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_9 optimizedBody321_89

def optimizedBody321_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_8 optimizedBody321_90

def optimizedBody321_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_7 optimizedBody321_91

def optimizedBody321_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 14) optimizedBody321_92 optimizedBody321_65

def optimizedBody321_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody321_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody321_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody321_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody321_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody321_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody321_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody321_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody321_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody321_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody321_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody321_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody321_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_104 optimizedBody321_105

def optimizedBody321_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_2 optimizedBody321_106

def optimizedBody321_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_103 optimizedBody321_107

def optimizedBody321_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_102 optimizedBody321_108

def optimizedBody321_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_101 optimizedBody321_109

def optimizedBody321_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_94 optimizedBody321_110

def optimizedBody321_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_100 optimizedBody321_111

def optimizedBody321_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_99 optimizedBody321_112

def optimizedBody321_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_98 optimizedBody321_113

def optimizedBody321_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_94 optimizedBody321_114

def optimizedBody321_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_97 optimizedBody321_115

def optimizedBody321_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_96 optimizedBody321_116

def optimizedBody321_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_95 optimizedBody321_117

def optimizedBody321_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_94 optimizedBody321_118

def optimizedBody321_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_7 optimizedBody321_119

def optimizedBody321_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_93 optimizedBody321_120

def optimizedBody321_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_6 optimizedBody321_121

def optimizedBody321_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_5 optimizedBody321_122

def optimizedBody321_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_4 optimizedBody321_123

def optimizedBody321_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_3 optimizedBody321_124

def optimizedBody321_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_2 optimizedBody321_125

def optimizedBody321_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_1 optimizedBody321_126

def optimizedBody321_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody321_0 optimizedBody321_127

def oracle321 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 22
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))
              4
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 1
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 4 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
              2
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 5 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 25)) 4
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.ls 5))
              3
              (Flapjack.Spt.bs Flapjack.Spt.ln 7
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)) 24 (Flapjack.Spt.ls 0))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))
              5
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2)) 4
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 2 (Flapjack.Spt.ls 26)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
              6
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 24)) 2
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs Flapjack.Spt.ln 1
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3 (Flapjack.Spt.ls 1)))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                6 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))))))
def optimized321 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(321, 3, optimizedBody321_128)
theorem optimize321_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source321, oracle321) = optimized321 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize321_eq
end InitECandidate.Proofs.WordStages
