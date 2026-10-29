import InitECandidate.Proofs.WordStages.Optimize269
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source285
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody285_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (6, 2)]

def optimizedBody285_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody285_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody285_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody285_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody285_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody285_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody285_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody285_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody285_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody285_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_8 optimizedBody285_9

def optimizedBody285_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_7 optimizedBody285_10

def optimizedBody285_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_6 optimizedBody285_11

def optimizedBody285_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_5 optimizedBody285_12

def optimizedBody285_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_4 optimizedBody285_13

def optimizedBody285_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_14

def optimizedBody285_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody285_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 8) optimizedBody285_15 optimizedBody285_16

def optimizedBody285_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 0), (46, 4), (48, 6)]

def optimizedBody285_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (16, 48)]

def optimizedBody285_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (16, 48)]

def optimizedBody285_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_20 optimizedBody285_9

def optimizedBody285_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_19, 285, 2)) (some 281) ([2]) (some (2, optimizedBody285_21, 285, 3))

def optimizedBody285_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody285_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 208#64))

def optimizedBody285_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody285_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 21#64)

def optimizedBody285_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody285_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_27 optimizedBody285_11

def optimizedBody285_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_28

def optimizedBody285_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_26 optimizedBody285_29

def optimizedBody285_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_30

def optimizedBody285_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 0) optimizedBody285_31 optimizedBody285_16

def optimizedBody285_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 104#64))

def optimizedBody285_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 112#64))

def optimizedBody285_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 22#64)

def optimizedBody285_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_35 optimizedBody285_13

def optimizedBody285_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_36

def optimizedBody285_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody285_37 optimizedBody285_16

def optimizedBody285_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (2, 0), (46, 4)]

def optimizedBody285_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 16 104#64))

def optimizedBody285_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody285_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 16 112#64))

def optimizedBody285_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 16 160#64))

def optimizedBody285_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 16 168#64))

def optimizedBody285_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 16 176#64))

def optimizedBody285_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 16 184#64))

def optimizedBody285_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (44, 44), (46, 46), (48, 16)]

def optimizedBody285_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (10, 2), (4, 4), (8, 8), (44, 44), (0, 46), (48, 48)]

def optimizedBody285_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48)]

def optimizedBody285_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_49 optimizedBody285_9

def optimizedBody285_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_48, 285, 4)) (some 283) ([2, 4, 6, 8, 10, 12, 14]) (some (2, optimizedBody285_50, 285, 5))

def optimizedBody285_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody285_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 160#64))

def optimizedBody285_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 168#64))

def optimizedBody285_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 176#64))

def optimizedBody285_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 184#64))

def optimizedBody285_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 0), (48, 48)]

def optimizedBody285_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (10, 48)]

def optimizedBody285_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (10, 48)]

def optimizedBody285_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_59 optimizedBody285_9

def optimizedBody285_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_58, 285, 6)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody285_60, 285, 7))

def optimizedBody285_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody285_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 23#64)

def optimizedBody285_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_63 optimizedBody285_13

def optimizedBody285_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_64

def optimizedBody285_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody285_65 optimizedBody285_16

def optimizedBody285_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody285_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 120#64))

def optimizedBody285_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 120#64))

def optimizedBody285_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody285_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_70 optimizedBody285_13

def optimizedBody285_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_71

def optimizedBody285_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody285_72 optimizedBody285_16

def optimizedBody285_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody285_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 96#64))

def optimizedBody285_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody285_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 25#64)

def optimizedBody285_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_77 optimizedBody285_13

def optimizedBody285_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_78

def optimizedBody285_80 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody285_79 optimizedBody285_16

def optimizedBody285_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody285_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 136#64))

def optimizedBody285_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 26#64)

def optimizedBody285_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_83 optimizedBody285_13

def optimizedBody285_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_84

def optimizedBody285_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody285_85 optimizedBody285_16

def optimizedBody285_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody285_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody285_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody285_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody285_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0), (50, 10)]

def optimizedBody285_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody285_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody285_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_93 optimizedBody285_9

def optimizedBody285_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_92, 285, 8)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody285_94, 285, 9))

def optimizedBody285_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 27#64)

def optimizedBody285_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_96 optimizedBody285_13

def optimizedBody285_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_97

def optimizedBody285_99 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody285_98 optimizedBody285_16

def optimizedBody285_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 152#64))

def optimizedBody285_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody285_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody285_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody285_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551496#64))

def optimizedBody285_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8#64)

def optimizedBody285_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (50, 50)]

def optimizedBody285_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody285_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody285_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_108 optimizedBody285_9

def optimizedBody285_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_107, 285, 10)) (some 79) ([2, 4, 6]) (some (2, optimizedBody285_109, 285, 11))

def optimizedBody285_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 28#64)

def optimizedBody285_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_111 optimizedBody285_29

def optimizedBody285_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_112

def optimizedBody285_114 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody285_113 optimizedBody285_16

def optimizedBody285_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (50, 50)]

def optimizedBody285_116 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_107, 285, 12)) (some 69) ([]) (some (2, optimizedBody285_109, 285, 13))

def optimizedBody285_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody285_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 0)]

def optimizedBody285_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (52, 52)]

def optimizedBody285_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52)]

def optimizedBody285_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_120 optimizedBody285_9

def optimizedBody285_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_119, 285, 14)) (some 68) ([2]) (some (2, optimizedBody285_121, 285, 15))

def optimizedBody285_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody285_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 192#64)

def optimizedBody285_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody285_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody285_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody285_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 2), (50, 50), (52, 52)]

def optimizedBody285_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (8, 48), (50, 50), (52, 52)]

def optimizedBody285_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (50, 50), (52, 52)]

def optimizedBody285_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_130 optimizedBody285_9

def optimizedBody285_132 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_129, 285, 16)) (some 158) ([2, 4, 6]) (some (2, optimizedBody285_131, 285, 17))

def optimizedBody285_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody285_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody285_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody285_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody285_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 50), (52, 52)]

def optimizedBody285_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (4, 48), (0, 50), (50, 52)]

def optimizedBody285_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50), (50, 52)]

def optimizedBody285_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_139 optimizedBody285_9

def optimizedBody285_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_138, 285, 18)) (some 79) ([2, 4, 6]) (some (2, optimizedBody285_140, 285, 19))

def optimizedBody285_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody285_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 50), (44, 44)]

def optimizedBody285_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_16, 285, 20)) (some 70) ([2]) (some (2, optimizedBody285_10, 285, 21))

def optimizedBody285_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 29#64)

def optimizedBody285_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_145 optimizedBody285_13

def optimizedBody285_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_146

def optimizedBody285_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_144 optimizedBody285_147

def optimizedBody285_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_143 optimizedBody285_148

def optimizedBody285_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_149

def optimizedBody285_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (4, 4), (0, 0), (50, 50), (44, 44)]

def optimizedBody285_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody285_150 optimizedBody285_151

def optimizedBody285_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 4), (50, 50)]

def optimizedBody285_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody285_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody285_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_155 optimizedBody285_9

def optimizedBody285_157 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_154, 285, 22)) (some 277) ([2, 4]) (some (2, optimizedBody285_156, 285, 23))

def optimizedBody285_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody285_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody285_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody285_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody285_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_161 optimizedBody285_9

def optimizedBody285_163 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_160, 285, 24)) (some 79) ([2, 4, 6]) (some (2, optimizedBody285_162, 285, 25))

def optimizedBody285_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4)]

def optimizedBody285_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody285_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody285_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_166 optimizedBody285_9

def optimizedBody285_168 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody285_165, 285, 26)) (some 70) ([2]) (some (2, optimizedBody285_167, 285, 27))

def optimizedBody285_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 30#64)

def optimizedBody285_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_169 optimizedBody285_29

def optimizedBody285_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_170

def optimizedBody285_172 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody285_171 optimizedBody285_16

def optimizedBody285_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody285_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_5 optimizedBody285_173

def optimizedBody285_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_62 optimizedBody285_174

def optimizedBody285_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_175

def optimizedBody285_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_176

def optimizedBody285_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_172 optimizedBody285_177

def optimizedBody285_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_62 optimizedBody285_178

def optimizedBody285_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_179

def optimizedBody285_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_180

def optimizedBody285_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_168 optimizedBody285_181

def optimizedBody285_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_164 optimizedBody285_182

def optimizedBody285_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_183

def optimizedBody285_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_163 optimizedBody285_184

def optimizedBody285_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_159 optimizedBody285_185

def optimizedBody285_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_136 optimizedBody285_186

def optimizedBody285_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_23 optimizedBody285_187

def optimizedBody285_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_158 optimizedBody285_188

def optimizedBody285_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_189

def optimizedBody285_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_190

def optimizedBody285_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_157 optimizedBody285_191

def optimizedBody285_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_153 optimizedBody285_192

def optimizedBody285_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_193

def optimizedBody285_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_194

def optimizedBody285_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_152 optimizedBody285_195

def optimizedBody285_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_62 optimizedBody285_196

def optimizedBody285_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_142 optimizedBody285_197

def optimizedBody285_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_198

def optimizedBody285_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_141 optimizedBody285_199

def optimizedBody285_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_137 optimizedBody285_200

def optimizedBody285_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_136 optimizedBody285_201

def optimizedBody285_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_135 optimizedBody285_202

def optimizedBody285_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_134 optimizedBody285_203

def optimizedBody285_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_133 optimizedBody285_204

def optimizedBody285_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_205

def optimizedBody285_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_206

def optimizedBody285_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_132 optimizedBody285_207

def optimizedBody285_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_128 optimizedBody285_208

def optimizedBody285_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_127 optimizedBody285_209

def optimizedBody285_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_126 optimizedBody285_210

def optimizedBody285_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_5 optimizedBody285_211

def optimizedBody285_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_125 optimizedBody285_212

def optimizedBody285_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_124 optimizedBody285_213

def optimizedBody285_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_123 optimizedBody285_214

def optimizedBody285_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_215

def optimizedBody285_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_122 optimizedBody285_216

def optimizedBody285_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_118 optimizedBody285_217

def optimizedBody285_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_117 optimizedBody285_218

def optimizedBody285_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_219

def optimizedBody285_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_116 optimizedBody285_220

def optimizedBody285_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_115 optimizedBody285_221

def optimizedBody285_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_222

def optimizedBody285_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_223

def optimizedBody285_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_114 optimizedBody285_224

def optimizedBody285_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_62 optimizedBody285_225

def optimizedBody285_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_226

def optimizedBody285_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_227

def optimizedBody285_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_110 optimizedBody285_228

def optimizedBody285_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_106 optimizedBody285_229

def optimizedBody285_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_105 optimizedBody285_230

def optimizedBody285_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_104 optimizedBody285_231

def optimizedBody285_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_103 optimizedBody285_232

def optimizedBody285_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_102 optimizedBody285_233

def optimizedBody285_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_101 optimizedBody285_234

def optimizedBody285_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_100 optimizedBody285_235

def optimizedBody285_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_236

def optimizedBody285_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_237

def optimizedBody285_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_238

def optimizedBody285_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_99 optimizedBody285_239

def optimizedBody285_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_62 optimizedBody285_240

def optimizedBody285_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_23 optimizedBody285_241

def optimizedBody285_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_242

def optimizedBody285_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_95 optimizedBody285_243

def optimizedBody285_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_91 optimizedBody285_244

def optimizedBody285_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_90 optimizedBody285_245

def optimizedBody285_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_246

def optimizedBody285_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_89 optimizedBody285_247

def optimizedBody285_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_248

def optimizedBody285_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_88 optimizedBody285_249

def optimizedBody285_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_250

def optimizedBody285_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_87 optimizedBody285_251

def optimizedBody285_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_252

def optimizedBody285_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_253

def optimizedBody285_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_254

def optimizedBody285_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_86 optimizedBody285_255

def optimizedBody285_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_82 optimizedBody285_256

def optimizedBody285_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_257

def optimizedBody285_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_81 optimizedBody285_258

def optimizedBody285_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_259

def optimizedBody285_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_260

def optimizedBody285_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_80 optimizedBody285_261

def optimizedBody285_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_76 optimizedBody285_262

def optimizedBody285_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_75 optimizedBody285_263

def optimizedBody285_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_67 optimizedBody285_264

def optimizedBody285_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_74 optimizedBody285_265

def optimizedBody285_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_266

def optimizedBody285_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_267

def optimizedBody285_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_268

def optimizedBody285_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_73 optimizedBody285_269

def optimizedBody285_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_69 optimizedBody285_270

def optimizedBody285_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_271

def optimizedBody285_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_68 optimizedBody285_272

def optimizedBody285_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_67 optimizedBody285_273

def optimizedBody285_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_274

def optimizedBody285_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_275

def optimizedBody285_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_66 optimizedBody285_276

def optimizedBody285_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_62 optimizedBody285_277

def optimizedBody285_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_23 optimizedBody285_278

def optimizedBody285_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_279

def optimizedBody285_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_61 optimizedBody285_280

def optimizedBody285_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_57 optimizedBody285_281

def optimizedBody285_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_56 optimizedBody285_282

def optimizedBody285_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_283

def optimizedBody285_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_55 optimizedBody285_284

def optimizedBody285_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_285

def optimizedBody285_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_54 optimizedBody285_286

def optimizedBody285_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_287

def optimizedBody285_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_53 optimizedBody285_288

def optimizedBody285_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_52 optimizedBody285_289

def optimizedBody285_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_290

def optimizedBody285_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_51 optimizedBody285_291

def optimizedBody285_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_47 optimizedBody285_292

def optimizedBody285_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_46 optimizedBody285_293

def optimizedBody285_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_41 optimizedBody285_294

def optimizedBody285_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_45 optimizedBody285_295

def optimizedBody285_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_41 optimizedBody285_296

def optimizedBody285_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_44 optimizedBody285_297

def optimizedBody285_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_41 optimizedBody285_298

def optimizedBody285_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_43 optimizedBody285_299

def optimizedBody285_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_41 optimizedBody285_300

def optimizedBody285_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_42 optimizedBody285_301

def optimizedBody285_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_41 optimizedBody285_302

def optimizedBody285_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_40 optimizedBody285_303

def optimizedBody285_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_39 optimizedBody285_304

def optimizedBody285_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_305

def optimizedBody285_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_306

def optimizedBody285_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_38 optimizedBody285_307

def optimizedBody285_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_34 optimizedBody285_308

def optimizedBody285_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_23 optimizedBody285_309

def optimizedBody285_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_33 optimizedBody285_310

def optimizedBody285_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_23 optimizedBody285_311

def optimizedBody285_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_312

def optimizedBody285_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_313

def optimizedBody285_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_32 optimizedBody285_314

def optimizedBody285_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_25 optimizedBody285_315

def optimizedBody285_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_24 optimizedBody285_316

def optimizedBody285_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_23 optimizedBody285_317

def optimizedBody285_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_318

def optimizedBody285_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_22 optimizedBody285_319

def optimizedBody285_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_18 optimizedBody285_320

def optimizedBody285_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_321

def optimizedBody285_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_3 optimizedBody285_322

def optimizedBody285_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_17 optimizedBody285_323

def optimizedBody285_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_2 optimizedBody285_324

def optimizedBody285_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_1 optimizedBody285_325

def optimizedBody285_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody285_0 optimizedBody285_326

def oracle285 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 1 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 5 Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.ls 8)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.ls 2)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 8
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 25))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 7 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 8 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.ls 23)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 4
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 8
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 8
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 8 (Flapjack.Spt.ls 2))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 3 Flapjack.Spt.ln) 8
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 6
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))))
              4
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                  2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 23))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 (Flapjack.Spt.ls 4)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)) 0 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 25)) 4 Flapjack.Spt.ln)))
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 5 (Flapjack.Spt.ls 1))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 5 (Flapjack.Spt.ls 1)) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  0 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 26)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.ls 7))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                24
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                  (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)))))))
def optimized285 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(285, 3, optimizedBody285_327)
theorem optimize285_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source285, oracle285) = optimized285 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize285_eq
end InitECandidate.Proofs.WordStages
