import InitECandidate.Proofs.WordStages.Optimize176
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source192
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody192_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4), (6, 6)]

def optimizedBody192_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody192_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody192_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody192_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 8), (50, 10), (52, 2), (62, 6)]

def optimizedBody192_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (12, 46), (10, 48), (4, 50), (6, 52), (62, 62)]

def optimizedBody192_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (10, 48), (4, 50), (6, 52), (62, 62)]

def optimizedBody192_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody192_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_6 optimizedBody192_7

def optimizedBody192_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody192_5, 192, 2)) (some 185) ([2, 4]) (some (2, optimizedBody192_8, 192, 3))

def optimizedBody192_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody192_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def optimizedBody192_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody192_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody192_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody192_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 12), (6, 62), (46, 44), (48, 2)]

def optimizedBody192_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (16, 46), (8, 48)]

def optimizedBody192_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 46), (8, 48)]

def optimizedBody192_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_17 optimizedBody192_7

def optimizedBody192_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody192_16, 192, 4)) (some 189) ([2, 4, 6]) (some (2, optimizedBody192_18, 192, 5))

def optimizedBody192_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody192_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody192_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody192_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody192_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody192_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2]

def optimizedBody192_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_2 optimizedBody192_25

def optimizedBody192_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_24 optimizedBody192_26

def optimizedBody192_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_23 optimizedBody192_27

def optimizedBody192_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_22 optimizedBody192_28

def optimizedBody192_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_21 optimizedBody192_29

def optimizedBody192_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_20 optimizedBody192_30

def optimizedBody192_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_31

def optimizedBody192_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_19 optimizedBody192_32

def optimizedBody192_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_15 optimizedBody192_33

def optimizedBody192_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_34

def optimizedBody192_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(12, 12), (14, 14), (0, 0), (10, 10), (4, 4), (62, 62), (44, 44), (58, 2)]

def optimizedBody192_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 6) optimizedBody192_35 optimizedBody192_36

def optimizedBody192_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (54, 4), (50, 0)]

def optimizedBody192_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody192_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (0, 0)]

def optimizedBody192_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 14)))

def optimizedBody192_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 12), (6, 10), (44, 44), (46, 12), (48, 14), (50, 50), (52, 10), (54, 54), (58, 58), (62, 62)]

def optimizedBody192_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (14, 44), (12, 46), (10, 48), (6, 50), (16, 52), (4, 54), (46, 58), (44, 62)]

def optimizedBody192_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (12, 46), (10, 48), (6, 50), (16, 52), (4, 54), (46, 58), (44, 62)]

def optimizedBody192_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_44 optimizedBody192_7

def optimizedBody192_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody192_43, 192, 6)) (some 79) ([2, 4, 6]) (some (2, optimizedBody192_45, 192, 7))

def optimizedBody192_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody192_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 6 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody192_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 46)]

def optimizedBody192_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 40#64))

def optimizedBody192_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody192_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody192_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 44)]

def optimizedBody192_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def optimizedBody192_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_2 optimizedBody192_54

def optimizedBody192_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_24 optimizedBody192_55

def optimizedBody192_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_23 optimizedBody192_56

def optimizedBody192_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_53 optimizedBody192_57

def optimizedBody192_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_52 optimizedBody192_58

def optimizedBody192_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_51 optimizedBody192_59

def optimizedBody192_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_50 optimizedBody192_60

def optimizedBody192_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_49 optimizedBody192_61

def optimizedBody192_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_48 optimizedBody192_62

def optimizedBody192_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_47 optimizedBody192_63

def optimizedBody192_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_64

def optimizedBody192_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 6), (56, 46), (60, 44)]

def optimizedBody192_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 2) optimizedBody192_65 optimizedBody192_66

def optimizedBody192_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0), (12, 12)]

def optimizedBody192_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody192_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 12), (4, 4), (6, 16), (44, 14), (46, 12), (48, 10), (50, 50), (52, 16), (54, 54), (56, 56), (58, 8), (60, 60)]

def optimizedBody192_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 2), (44, 44), (4, 46), (14, 48), (10, 50), (12, 52), (22, 54), (0, 56), (20, 58), (6, 60)]

def optimizedBody192_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (14, 48), (10, 50), (12, 52), (22, 54), (0, 56), (20, 58), (6, 60)]

def optimizedBody192_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_72 optimizedBody192_7

def optimizedBody192_74 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody192_71, 192, 8)) (some 184) ([2, 4, 6]) (some (2, optimizedBody192_73, 192, 9))

def optimizedBody192_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody192_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody192_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody192_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 2 56#64))

def optimizedBody192_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (4, 4), (14, 14), (10, 10), (12, 12), (22, 22), (2, 2), (50, 8), (0, 0), (20, 20), (52, 16), (6, 6),
    (54, 18)]

def optimizedBody192_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 54)]

def optimizedBody192_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody192_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 18 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody192_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 0)))

def optimizedBody192_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody192_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 52), (8, 8)]

def optimizedBody192_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(52, 24), (54, 18)]

def optimizedBody192_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody192_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_86 optimizedBody192_87

def optimizedBody192_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_88

def optimizedBody192_90 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 8 (Flapjack.WordRegImm.reg 24) optimizedBody192_89 optimizedBody192_10

def optimizedBody192_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (18, 18)]

def optimizedBody192_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 16 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody192_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody192_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 16 (Flapjack.WordRegImm.reg 4)))

def optimizedBody192_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody192_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody192_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 7#64)

def optimizedBody192_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody192_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 26 (Flapjack.WordRegImm.reg 8)))

def optimizedBody192_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody192_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody192_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody192_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody192_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 18)]

def optimizedBody192_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody192_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody192_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (54, 8)]

def optimizedBody192_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_106 optimizedBody192_107

def optimizedBody192_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_83 optimizedBody192_108

def optimizedBody192_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_13 optimizedBody192_109

def optimizedBody192_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_105 optimizedBody192_110

def optimizedBody192_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_104 optimizedBody192_111

def optimizedBody192_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_112

def optimizedBody192_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody192_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_114 optimizedBody192_107

def optimizedBody192_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_83 optimizedBody192_115

def optimizedBody192_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_13 optimizedBody192_116

def optimizedBody192_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_105 optimizedBody192_117

def optimizedBody192_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_104 optimizedBody192_118

def optimizedBody192_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_119

def optimizedBody192_121 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 16) optimizedBody192_113 optimizedBody192_120

def optimizedBody192_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (50, 18), (0, 0), (52, 24), (54, 54)]

def optimizedBody192_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody192_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_122 optimizedBody192_123

def optimizedBody192_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_124

def optimizedBody192_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_121 optimizedBody192_125

def optimizedBody192_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_103 optimizedBody192_126

def optimizedBody192_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_102 optimizedBody192_127

def optimizedBody192_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_101 optimizedBody192_128

def optimizedBody192_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_100 optimizedBody192_129

def optimizedBody192_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_99 optimizedBody192_130

def optimizedBody192_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_98 optimizedBody192_131

def optimizedBody192_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_20 optimizedBody192_132

def optimizedBody192_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_97 optimizedBody192_133

def optimizedBody192_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_96 optimizedBody192_134

def optimizedBody192_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_95 optimizedBody192_135

def optimizedBody192_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_94 optimizedBody192_136

def optimizedBody192_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_93 optimizedBody192_137

def optimizedBody192_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_92 optimizedBody192_138

def optimizedBody192_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_91 optimizedBody192_139

def optimizedBody192_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_140

def optimizedBody192_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_90 optimizedBody192_141

def optimizedBody192_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_85 optimizedBody192_142

def optimizedBody192_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_84 optimizedBody192_143

def optimizedBody192_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_83 optimizedBody192_144

def optimizedBody192_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_13 optimizedBody192_145

def optimizedBody192_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_82 optimizedBody192_146

def optimizedBody192_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_81 optimizedBody192_147

def optimizedBody192_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_148

def optimizedBody192_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(54, 18)]

def optimizedBody192_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_150 optimizedBody192_87

def optimizedBody192_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_151

def optimizedBody192_153 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 8) optimizedBody192_149 optimizedBody192_152

def optimizedBody192_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (50, 8), (0, 0), (52, 16), (54, 18)]

def optimizedBody192_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_154

def optimizedBody192_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_153 optimizedBody192_155

def optimizedBody192_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_77 optimizedBody192_156

def optimizedBody192_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_80 optimizedBody192_157

def optimizedBody192_159 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody192_158 (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody192_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 4), (48, 2), (50, 50), (52, 52), (54, 54)]

def optimizedBody192_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (0, 48), (50, 50), (4, 52), (54, 54)]

def optimizedBody192_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (4, 52), (54, 54)]

def optimizedBody192_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_162 optimizedBody192_7

def optimizedBody192_164 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody192_161, 192, 10)) (some 189) ([2, 4, 6]) (some (2, optimizedBody192_163, 192, 11))

def optimizedBody192_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50), (52, 4), (54, 54), (56, 6)]

def optimizedBody192_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (18, 44), (14, 46), (16, 48), (12, 50), (8, 52), (4, 54), (10, 56)]

def optimizedBody192_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (18, 44), (14, 46), (16, 48), (12, 50), (8, 52), (4, 54), (10, 56)]

def optimizedBody192_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_167 optimizedBody192_7

def optimizedBody192_169 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody192_166, 192, 12)) (some 190) ([2, 4]) (some (2, optimizedBody192_168, 192, 13))

def optimizedBody192_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 16 40#64))

def optimizedBody192_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody192_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody192_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody192_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody192_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20 10 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody192_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 20 (Flapjack.WordRegImm.reg 0)))

def optimizedBody192_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (6, 6)]

def optimizedBody192_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 20 0#64))

def optimizedBody192_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20 4 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody192_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 20 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody192_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody192_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 20 (Flapjack.WordRegImm.reg 14)))

def optimizedBody192_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody192_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 7#64)

def optimizedBody192_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 20 (Flapjack.WordRegImm.reg 8)))

def optimizedBody192_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 14 (Flapjack.WordRegImm.reg 8)))

def optimizedBody192_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody192_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0), (6, 6)]

def optimizedBody192_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody192_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (10, 10)]

def optimizedBody192_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody192_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody192_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody192_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody192_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 6), (4, 4)]

def optimizedBody192_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_194 optimizedBody192_195

def optimizedBody192_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_193 optimizedBody192_196

def optimizedBody192_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_192 optimizedBody192_197

def optimizedBody192_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_188 optimizedBody192_198

def optimizedBody192_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_191 optimizedBody192_199

def optimizedBody192_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_190 optimizedBody192_200

def optimizedBody192_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_189 optimizedBody192_201

def optimizedBody192_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_188 optimizedBody192_202

def optimizedBody192_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_203

def optimizedBody192_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4)]

def optimizedBody192_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody192_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody192_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody192_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_208 optimizedBody192_195

def optimizedBody192_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_207 optimizedBody192_209

def optimizedBody192_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_192 optimizedBody192_210

def optimizedBody192_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_188 optimizedBody192_211

def optimizedBody192_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_206 optimizedBody192_212

def optimizedBody192_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_205 optimizedBody192_213

def optimizedBody192_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_189 optimizedBody192_214

def optimizedBody192_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_188 optimizedBody192_215

def optimizedBody192_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_216

def optimizedBody192_218 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 14) optimizedBody192_204 optimizedBody192_217

def optimizedBody192_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody192_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 16 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody192_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody192_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody192_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_221 optimizedBody192_222

def optimizedBody192_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_220 optimizedBody192_223

def optimizedBody192_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_96 optimizedBody192_224

def optimizedBody192_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_225

def optimizedBody192_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 12 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody192_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody192_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody192_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody192_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_230 optimizedBody192_223

def optimizedBody192_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_13 optimizedBody192_231

def optimizedBody192_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_232

def optimizedBody192_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody192_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_234 optimizedBody192_223

def optimizedBody192_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_13 optimizedBody192_235

def optimizedBody192_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_236

def optimizedBody192_238 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody192_233 optimizedBody192_237

def optimizedBody192_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_238 optimizedBody192_10

def optimizedBody192_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_93 optimizedBody192_239

def optimizedBody192_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_229 optimizedBody192_240

def optimizedBody192_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_228 optimizedBody192_241

def optimizedBody192_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_13 optimizedBody192_242

def optimizedBody192_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_227 optimizedBody192_243

def optimizedBody192_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_219 optimizedBody192_244

def optimizedBody192_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_245

def optimizedBody192_247 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 2) optimizedBody192_226 optimizedBody192_246

def optimizedBody192_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2]

def optimizedBody192_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_2 optimizedBody192_248

def optimizedBody192_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_24 optimizedBody192_249

def optimizedBody192_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_250

def optimizedBody192_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_247 optimizedBody192_251

def optimizedBody192_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_24 optimizedBody192_252

def optimizedBody192_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_219 optimizedBody192_253

def optimizedBody192_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_254

def optimizedBody192_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_218 optimizedBody192_255

def optimizedBody192_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_187 optimizedBody192_256

def optimizedBody192_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_102 optimizedBody192_257

def optimizedBody192_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_186 optimizedBody192_258

def optimizedBody192_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_100 optimizedBody192_259

def optimizedBody192_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_185 optimizedBody192_260

def optimizedBody192_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_98 optimizedBody192_261

def optimizedBody192_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_20 optimizedBody192_262

def optimizedBody192_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_184 optimizedBody192_263

def optimizedBody192_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_181 optimizedBody192_264

def optimizedBody192_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_183 optimizedBody192_265

def optimizedBody192_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_182 optimizedBody192_266

def optimizedBody192_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_181 optimizedBody192_267

def optimizedBody192_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_180 optimizedBody192_268

def optimizedBody192_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_20 optimizedBody192_269

def optimizedBody192_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_178 optimizedBody192_270

def optimizedBody192_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_177 optimizedBody192_271

def optimizedBody192_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_176 optimizedBody192_272

def optimizedBody192_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_13 optimizedBody192_273

def optimizedBody192_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_179 optimizedBody192_274

def optimizedBody192_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_93 optimizedBody192_275

def optimizedBody192_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_178 optimizedBody192_276

def optimizedBody192_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_177 optimizedBody192_277

def optimizedBody192_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_176 optimizedBody192_278

def optimizedBody192_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_13 optimizedBody192_279

def optimizedBody192_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_175 optimizedBody192_280

def optimizedBody192_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_174 optimizedBody192_281

def optimizedBody192_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_173 optimizedBody192_282

def optimizedBody192_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_172 optimizedBody192_283

def optimizedBody192_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_171 optimizedBody192_284

def optimizedBody192_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_13 optimizedBody192_285

def optimizedBody192_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_48 optimizedBody192_286

def optimizedBody192_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_47 optimizedBody192_287

def optimizedBody192_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_170 optimizedBody192_288

def optimizedBody192_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_96 optimizedBody192_289

def optimizedBody192_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_290

def optimizedBody192_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_169 optimizedBody192_291

def optimizedBody192_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_165 optimizedBody192_292

def optimizedBody192_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_293

def optimizedBody192_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_164 optimizedBody192_294

def optimizedBody192_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_160 optimizedBody192_295

def optimizedBody192_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_296

def optimizedBody192_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_159 optimizedBody192_297

def optimizedBody192_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_79 optimizedBody192_298

def optimizedBody192_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_299

def optimizedBody192_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_78 optimizedBody192_300

def optimizedBody192_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_2 optimizedBody192_301

def optimizedBody192_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_77 optimizedBody192_302

def optimizedBody192_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_76 optimizedBody192_303

def optimizedBody192_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_75 optimizedBody192_304

def optimizedBody192_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_305

def optimizedBody192_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_74 optimizedBody192_306

def optimizedBody192_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_70 optimizedBody192_307

def optimizedBody192_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_69 optimizedBody192_308

def optimizedBody192_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_68 optimizedBody192_309

def optimizedBody192_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_39 optimizedBody192_310

def optimizedBody192_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_38 optimizedBody192_311

def optimizedBody192_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_312

def optimizedBody192_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_313

def optimizedBody192_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_67 optimizedBody192_314

def optimizedBody192_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_24 optimizedBody192_315

def optimizedBody192_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_20 optimizedBody192_316

def optimizedBody192_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_317

def optimizedBody192_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_46 optimizedBody192_318

def optimizedBody192_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_42 optimizedBody192_319

def optimizedBody192_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_41 optimizedBody192_320

def optimizedBody192_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_40 optimizedBody192_321

def optimizedBody192_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_39 optimizedBody192_322

def optimizedBody192_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_38 optimizedBody192_323

def optimizedBody192_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_324

def optimizedBody192_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_325

def optimizedBody192_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_37 optimizedBody192_326

def optimizedBody192_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_14 optimizedBody192_327

def optimizedBody192_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_13 optimizedBody192_328

def optimizedBody192_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_12 optimizedBody192_329

def optimizedBody192_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_11 optimizedBody192_330

def optimizedBody192_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_10 optimizedBody192_331

def optimizedBody192_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_9 optimizedBody192_332

def optimizedBody192_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_4 optimizedBody192_333

def optimizedBody192_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_3 optimizedBody192_334

def optimizedBody192_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_2 optimizedBody192_335

def optimizedBody192_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_1 optimizedBody192_336

def optimizedBody192_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody192_0 optimizedBody192_337

def oracle192 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)) 7
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 3
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 10)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4)) Flapjack.Spt.ln)))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))
                  3
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                  7
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 4)) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 23))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 10)))
                  3 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.ls 7))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 4 (Flapjack.Spt.ls 7))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 27)))))
              0
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 3))) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)) 1 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)) 8
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 31
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 10))) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))))
                6
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 0)) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 3)) 23
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 7)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))
                  3 (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 25)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 0)) 3
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 10)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)) 5 Flapjack.Spt.ln) 31
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 22 Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 4))))
                5
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 1)) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3)))))
              3
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 10)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 22))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 (Flapjack.Spt.ls 9))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 10)) 8
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4)) 7 Flapjack.Spt.ln))
                5
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.ls 8))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)))
                  1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 8))))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 10)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 2 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                  4 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 1)))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
                4
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 6
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                  3 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 7)) 29 Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                23 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 31 Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                25 Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 25))))
                22 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 26 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                24 Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))))))
def optimized192 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(192, 4, optimizedBody192_338)
theorem optimize192_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source192, oracle192) = optimized192 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize192_eq
end InitECandidate.Proofs.WordStages
