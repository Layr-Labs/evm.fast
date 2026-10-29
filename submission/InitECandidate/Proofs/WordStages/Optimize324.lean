import InitECandidate.Proofs.WordStages.Optimize308
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source324
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody324_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (48, 2)]

def optimizedBody324_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48)]

def optimizedBody324_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48)]

def optimizedBody324_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody324_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_2 optimizedBody324_3

def optimizedBody324_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_1, 324, 2)) (some 75) ([]) (some (2, optimizedBody324_4, 324, 3))

def optimizedBody324_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody324_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 48#64)

def optimizedBody324_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 0), (48, 48)]

def optimizedBody324_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (44, 44), (4, 48)]

def optimizedBody324_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (4, 48)]

def optimizedBody324_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_10 optimizedBody324_3

def optimizedBody324_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_9, 324, 4)) (some 74) ([2]) (some (2, optimizedBody324_11, 324, 5))

def optimizedBody324_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody324_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody324_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody324_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody324_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody324_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody324_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody324_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody324_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody324_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody324_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody324_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 46), (50, 2), (44, 44), (48, 4)]

def optimizedBody324_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (50, 50), (44, 44), (48, 48)]

def optimizedBody324_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (50, 50), (44, 44), (48, 48)]

def optimizedBody324_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_26 optimizedBody324_3

def optimizedBody324_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_25, 324, 6)) (some 321) ([2, 4]) (some (2, optimizedBody324_27, 324, 7))

def optimizedBody324_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 50)]

def optimizedBody324_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (50, 50), (44, 44), (48, 48), (8, 50)]

def optimizedBody324_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody324_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody324_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody324_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody324_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody324_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody324_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody324_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody324_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody324_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody324_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody324_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody324_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 50), (48, 2), (50, 44), (52, 4), (54, 48), (56, 8)]

def optimizedBody324_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (46, 46), (44, 44), (48, 48), (50, 50), (4, 52), (52, 54), (54, 56)]

def optimizedBody324_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (4, 52), (52, 54), (54, 56)]

def optimizedBody324_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_45 optimizedBody324_3

def optimizedBody324_47 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody324_44, 324, 8)) (some 323) ([2]) (some (2, optimizedBody324_46, 324, 9))

def optimizedBody324_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (44, 44), (6, 6), (48, 48), (50, 50), (4, 4), (52, 52), (54, 54)]

def optimizedBody324_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_48

def optimizedBody324_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_47 optimizedBody324_49

def optimizedBody324_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_43 optimizedBody324_50

def optimizedBody324_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_42 optimizedBody324_51

def optimizedBody324_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_33 optimizedBody324_52

def optimizedBody324_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_41 optimizedBody324_53

def optimizedBody324_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_22 optimizedBody324_54

def optimizedBody324_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_40 optimizedBody324_55

def optimizedBody324_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_39 optimizedBody324_56

def optimizedBody324_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_31 optimizedBody324_57

def optimizedBody324_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_58

def optimizedBody324_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (44, 50), (6, 6), (48, 10), (50, 44), (4, 4), (52, 48), (54, 8)]

def optimizedBody324_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_60

def optimizedBody324_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody324_59 optimizedBody324_61

def optimizedBody324_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_62 optimizedBody324_49

def optimizedBody324_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_38 optimizedBody324_63

def optimizedBody324_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_37 optimizedBody324_64

def optimizedBody324_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_31 optimizedBody324_65

def optimizedBody324_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_66

def optimizedBody324_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 3#64)

def optimizedBody324_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 50), (6, 6), (48, 10), (50, 44), (4, 4), (52, 48), (56, 2), (0, 0), (54, 8)]

def optimizedBody324_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody324_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody324_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody324_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_71 optimizedBody324_72

def optimizedBody324_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_73

def optimizedBody324_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody324_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_75 optimizedBody324_72

def optimizedBody324_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_76

def optimizedBody324_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 2) optimizedBody324_74 optimizedBody324_77

def optimizedBody324_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody324_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody324_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_40 optimizedBody324_80

def optimizedBody324_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_81

def optimizedBody324_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_38 optimizedBody324_80

def optimizedBody324_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_83

def optimizedBody324_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody324_82 optimizedBody324_84

def optimizedBody324_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody324_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody324_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody324_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody324_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody324_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody324_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 2), (50, 50), (52, 4), (54, 52), (56, 56), (58, 0), (60, 54)]

def optimizedBody324_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (46, 46), (44, 44), (48, 48), (50, 50), (4, 52), (52, 54), (8, 56), (0, 58), (10, 60)]

def optimizedBody324_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (4, 52), (52, 54), (8, 56), (0, 58), (10, 60)]

def optimizedBody324_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_94 optimizedBody324_3

def optimizedBody324_96 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody324_93, 324, 10)) (some 323) ([2]) (some (2, optimizedBody324_95, 324, 11))

def optimizedBody324_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (44, 44), (6, 6), (48, 48), (50, 50), (4, 4), (52, 52), (56, 8), (0, 0), (54, 10)]

def optimizedBody324_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody324_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_97 optimizedBody324_98

def optimizedBody324_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_99

def optimizedBody324_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_96 optimizedBody324_100

def optimizedBody324_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_92 optimizedBody324_101

def optimizedBody324_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_91 optimizedBody324_102

def optimizedBody324_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_22 optimizedBody324_103

def optimizedBody324_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_90 optimizedBody324_104

def optimizedBody324_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_89 optimizedBody324_105

def optimizedBody324_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_33 optimizedBody324_106

def optimizedBody324_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_88 optimizedBody324_107

def optimizedBody324_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_22 optimizedBody324_108

def optimizedBody324_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 0)]

def optimizedBody324_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody324_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_110 optimizedBody324_111

def optimizedBody324_113 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody324_109 optimizedBody324_112

def optimizedBody324_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 2), (44, 8), (6, 6), (48, 10), (50, 12), (4, 4), (52, 14), (56, 16), (0, 0), (54, 18)]

def optimizedBody324_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_114

def optimizedBody324_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_113 optimizedBody324_115

def optimizedBody324_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_87 optimizedBody324_116

def optimizedBody324_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_86 optimizedBody324_117

def optimizedBody324_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_118

def optimizedBody324_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_85 optimizedBody324_119

def optimizedBody324_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_38 optimizedBody324_120

def optimizedBody324_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_79 optimizedBody324_121

def optimizedBody324_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_122

def optimizedBody324_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_78 optimizedBody324_123

def optimizedBody324_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_70 optimizedBody324_124

def optimizedBody324_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_22 optimizedBody324_125

def optimizedBody324_127 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody324_126 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody324_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 54)]

def optimizedBody324_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody324_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody324_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (44, 44), (6, 6), (48, 48), (50, 50), (4, 4), (52, 52), (54, 8)]

def optimizedBody324_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_16 optimizedBody324_131

def optimizedBody324_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_130 optimizedBody324_132

def optimizedBody324_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_129 optimizedBody324_133

def optimizedBody324_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_128 optimizedBody324_134

def optimizedBody324_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_135

def optimizedBody324_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_127 optimizedBody324_136

def optimizedBody324_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_69 optimizedBody324_137

def optimizedBody324_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_138

def optimizedBody324_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_37 optimizedBody324_139

def optimizedBody324_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_31 optimizedBody324_140

def optimizedBody324_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_141

def optimizedBody324_143 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 0) optimizedBody324_142 optimizedBody324_61

def optimizedBody324_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_143 optimizedBody324_49

def optimizedBody324_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_68 optimizedBody324_144

def optimizedBody324_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_15 optimizedBody324_145

def optimizedBody324_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_146

def optimizedBody324_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 0) optimizedBody324_67 optimizedBody324_147

def optimizedBody324_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody324_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (46, 46), (44, 44), (4, 48), (48, 50), (50, 52), (0, 54)]

def optimizedBody324_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (4, 48), (48, 50), (50, 52), (0, 54)]

def optimizedBody324_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_151 optimizedBody324_3

def optimizedBody324_153 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody324_150, 324, 12)) (some 74) ([2]) (some (2, optimizedBody324_152, 324, 13))

def optimizedBody324_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6), (0, 0)]

def optimizedBody324_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 46), (44, 44), (48, 48), (50, 50), (52, 2)]

def optimizedBody324_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 44), (4, 48), (6, 50), (8, 52)]

def optimizedBody324_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (4, 48), (6, 50), (8, 52)]

def optimizedBody324_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_157 optimizedBody324_3

def optimizedBody324_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_156, 324, 14)) (some 321) ([2, 4]) (some (2, optimizedBody324_158, 324, 15))

def optimizedBody324_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (0, 0), (4, 4), (6, 6), (8, 8)]

def optimizedBody324_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_160

def optimizedBody324_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_159 optimizedBody324_161

def optimizedBody324_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_155 optimizedBody324_162

def optimizedBody324_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_23 optimizedBody324_163

def optimizedBody324_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_22 optimizedBody324_164

def optimizedBody324_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_21 optimizedBody324_165

def optimizedBody324_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_20 optimizedBody324_166

def optimizedBody324_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_15 optimizedBody324_167

def optimizedBody324_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_19 optimizedBody324_168

def optimizedBody324_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_18 optimizedBody324_169

def optimizedBody324_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_17 optimizedBody324_170

def optimizedBody324_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_15 optimizedBody324_171

def optimizedBody324_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_16 optimizedBody324_172

def optimizedBody324_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_154 optimizedBody324_173

def optimizedBody324_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_174

def optimizedBody324_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_153 optimizedBody324_175

def optimizedBody324_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_149 optimizedBody324_176

def optimizedBody324_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_7 optimizedBody324_177

def optimizedBody324_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_178

def optimizedBody324_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 54), (4, 4), (46, 46), (44, 44), (50, 50), (52, 52), (54, 54)]

def optimizedBody324_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 44), (4, 50), (6, 52), (8, 54)]

def optimizedBody324_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (4, 50), (6, 52), (8, 54)]

def optimizedBody324_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_182 optimizedBody324_3

def optimizedBody324_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_181, 324, 16)) (some 322) ([2, 4]) (some (2, optimizedBody324_183, 324, 17))

def optimizedBody324_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody324_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_185 optimizedBody324_160

def optimizedBody324_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_31 optimizedBody324_186

def optimizedBody324_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_187

def optimizedBody324_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_184 optimizedBody324_188

def optimizedBody324_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_180 optimizedBody324_189

def optimizedBody324_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_190

def optimizedBody324_192 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 0) optimizedBody324_179 optimizedBody324_191

def optimizedBody324_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (50, 0), (44, 4), (48, 6), (8, 8)]

def optimizedBody324_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_193 optimizedBody324_98

def optimizedBody324_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_194

def optimizedBody324_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_192 optimizedBody324_195

def optimizedBody324_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_14 optimizedBody324_196

def optimizedBody324_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_79 optimizedBody324_197

def optimizedBody324_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_198

def optimizedBody324_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_148 optimizedBody324_199

def optimizedBody324_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_36 optimizedBody324_200

def optimizedBody324_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_15 optimizedBody324_201

def optimizedBody324_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_21 optimizedBody324_202

def optimizedBody324_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_35 optimizedBody324_203

def optimizedBody324_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_34 optimizedBody324_204

def optimizedBody324_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_33 optimizedBody324_205

def optimizedBody324_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_32 optimizedBody324_206

def optimizedBody324_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_31 optimizedBody324_207

def optimizedBody324_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_208

def optimizedBody324_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_111

def optimizedBody324_211 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 0) optimizedBody324_209 optimizedBody324_210

def optimizedBody324_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (50, 2), (44, 4), (48, 6), (8, 8)]

def optimizedBody324_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_212

def optimizedBody324_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_211 optimizedBody324_213

def optimizedBody324_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_14 optimizedBody324_214

def optimizedBody324_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_31 optimizedBody324_215

def optimizedBody324_217 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody324_216 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody324_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (44, 46)]

def optimizedBody324_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody324_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody324_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_220 optimizedBody324_3

def optimizedBody324_222 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_219, 324, 18)) (some 76) ([2]) (some (2, optimizedBody324_221, 324, 19))

def optimizedBody324_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody324_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_15 optimizedBody324_223

def optimizedBody324_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_38 optimizedBody324_224

def optimizedBody324_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_225

def optimizedBody324_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_222 optimizedBody324_226

def optimizedBody324_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_218 optimizedBody324_227

def optimizedBody324_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_228

def optimizedBody324_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_217 optimizedBody324_229

def optimizedBody324_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_30 optimizedBody324_230

def optimizedBody324_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_231

def optimizedBody324_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_29 optimizedBody324_232

def optimizedBody324_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_233

def optimizedBody324_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_28 optimizedBody324_234

def optimizedBody324_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_24 optimizedBody324_235

def optimizedBody324_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_23 optimizedBody324_236

def optimizedBody324_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_22 optimizedBody324_237

def optimizedBody324_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_21 optimizedBody324_238

def optimizedBody324_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_20 optimizedBody324_239

def optimizedBody324_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_15 optimizedBody324_240

def optimizedBody324_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_19 optimizedBody324_241

def optimizedBody324_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_18 optimizedBody324_242

def optimizedBody324_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_17 optimizedBody324_243

def optimizedBody324_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_15 optimizedBody324_244

def optimizedBody324_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_16 optimizedBody324_245

def optimizedBody324_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_15 optimizedBody324_246

def optimizedBody324_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_14 optimizedBody324_247

def optimizedBody324_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_13 optimizedBody324_248

def optimizedBody324_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_249

def optimizedBody324_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_12 optimizedBody324_250

def optimizedBody324_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_8 optimizedBody324_251

def optimizedBody324_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_7 optimizedBody324_252

def optimizedBody324_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_253

def optimizedBody324_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_5 optimizedBody324_254

def optimizedBody324_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_0 optimizedBody324_255

def oracle324 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 3 (Flapjack.Spt.ls 24))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 26 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  1 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 2 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 3 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 0 (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 (Flapjack.Spt.ls 0)) 25
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)) 4 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 0 (Flapjack.Spt.ls 2)))
                24
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.ls 23))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 5 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 27 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 1 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln)
                  1 (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 24))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)) 24 Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  2 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 25)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.ls 0)))
                0
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 4)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                  0 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 (Flapjack.Spt.ls 25)))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.ls 25)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              24
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 24
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 24
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 25
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                23 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)))
              23
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                22
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln) 23
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))))))))
def optimized324 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(324, 2, optimizedBody324_256)
theorem optimize324_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source324, oracle324) = optimized324 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize324_eq
end InitECandidate.Proofs.WordStages
