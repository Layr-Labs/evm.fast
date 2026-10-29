import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source287
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles287
def optimizedBody287_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (6, 2)]

def optimizedBody287_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody287_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody287_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody287_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody287_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody287_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody287_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody287_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody287_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody287_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_8 optimizedBody287_9

def optimizedBody287_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_7 optimizedBody287_10

def optimizedBody287_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_6 optimizedBody287_11

def optimizedBody287_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_5 optimizedBody287_12

def optimizedBody287_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_4 optimizedBody287_13

def optimizedBody287_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_14

def optimizedBody287_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody287_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 8) optimizedBody287_15 optimizedBody287_16

def optimizedBody287_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 0), (46, 4), (48, 6)]

def optimizedBody287_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (16, 48)]

def optimizedBody287_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (16, 48)]

def optimizedBody287_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_20 optimizedBody287_9

def optimizedBody287_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_19, 287, 2)) (some 283) ([2]) (some (2, optimizedBody287_21, 287, 3))

def optimizedBody287_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody287_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 208#64))

def optimizedBody287_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody287_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 21#64)

def optimizedBody287_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody287_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_27 optimizedBody287_11

def optimizedBody287_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_28

def optimizedBody287_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_26 optimizedBody287_29

def optimizedBody287_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_30

def optimizedBody287_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 0) optimizedBody287_31 optimizedBody287_16

def optimizedBody287_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 104#64))

def optimizedBody287_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 112#64))

def optimizedBody287_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 22#64)

def optimizedBody287_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_35 optimizedBody287_13

def optimizedBody287_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_36

def optimizedBody287_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody287_37 optimizedBody287_16

def optimizedBody287_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (2, 0), (46, 4)]

def optimizedBody287_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 16 104#64))

def optimizedBody287_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody287_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 16 112#64))

def optimizedBody287_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 16 160#64))

def optimizedBody287_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 16 168#64))

def optimizedBody287_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 16 176#64))

def optimizedBody287_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 16 184#64))

def optimizedBody287_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (44, 44), (46, 46), (48, 16)]

def optimizedBody287_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (10, 2), (4, 4), (8, 8), (44, 44), (0, 46), (48, 48)]

def optimizedBody287_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48)]

def optimizedBody287_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_49 optimizedBody287_9

def optimizedBody287_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_48, 287, 4)) (some 285) ([2, 4, 6, 8, 10, 12, 14]) (some (2, optimizedBody287_50, 287, 5))

def optimizedBody287_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody287_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 160#64))

def optimizedBody287_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 168#64))

def optimizedBody287_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 176#64))

def optimizedBody287_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 184#64))

def optimizedBody287_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 0), (48, 48)]

def optimizedBody287_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (10, 48)]

def optimizedBody287_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (10, 48)]

def optimizedBody287_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_59 optimizedBody287_9

def optimizedBody287_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_58, 287, 6)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody287_60, 287, 7))

def optimizedBody287_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody287_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 23#64)

def optimizedBody287_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_63 optimizedBody287_13

def optimizedBody287_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_64

def optimizedBody287_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody287_65 optimizedBody287_16

def optimizedBody287_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody287_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 120#64))

def optimizedBody287_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 120#64))

def optimizedBody287_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody287_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_70 optimizedBody287_13

def optimizedBody287_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_71

def optimizedBody287_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody287_72 optimizedBody287_16

def optimizedBody287_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody287_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 96#64))

def optimizedBody287_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody287_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 25#64)

def optimizedBody287_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_77 optimizedBody287_13

def optimizedBody287_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_78

def optimizedBody287_80 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody287_79 optimizedBody287_16

def optimizedBody287_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody287_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 136#64))

def optimizedBody287_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 26#64)

def optimizedBody287_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_83 optimizedBody287_13

def optimizedBody287_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_84

def optimizedBody287_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody287_85 optimizedBody287_16

def optimizedBody287_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody287_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody287_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody287_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody287_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0), (50, 10)]

def optimizedBody287_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody287_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody287_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_93 optimizedBody287_9

def optimizedBody287_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_92, 287, 8)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody287_94, 287, 9))

def optimizedBody287_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 27#64)

def optimizedBody287_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_96 optimizedBody287_13

def optimizedBody287_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_97

def optimizedBody287_99 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody287_98 optimizedBody287_16

def optimizedBody287_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 152#64))

def optimizedBody287_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody287_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody287_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody287_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551496#64))

def optimizedBody287_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8#64)

def optimizedBody287_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (50, 50)]

def optimizedBody287_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody287_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody287_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_108 optimizedBody287_9

def optimizedBody287_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_107, 287, 10)) (some 79) ([2, 4, 6]) (some (2, optimizedBody287_109, 287, 11))

def optimizedBody287_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 28#64)

def optimizedBody287_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_111 optimizedBody287_29

def optimizedBody287_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_112

def optimizedBody287_114 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody287_113 optimizedBody287_16

def optimizedBody287_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (50, 50)]

def optimizedBody287_116 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_107, 287, 12)) (some 69) ([]) (some (2, optimizedBody287_109, 287, 13))

def optimizedBody287_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody287_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 0)]

def optimizedBody287_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (52, 52)]

def optimizedBody287_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52)]

def optimizedBody287_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_120 optimizedBody287_9

def optimizedBody287_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_119, 287, 14)) (some 68) ([2]) (some (2, optimizedBody287_121, 287, 15))

def optimizedBody287_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody287_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 192#64)

def optimizedBody287_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody287_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody287_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody287_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 2), (50, 50), (52, 52)]

def optimizedBody287_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (8, 48), (50, 50), (52, 52)]

def optimizedBody287_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (50, 50), (52, 52)]

def optimizedBody287_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_130 optimizedBody287_9

def optimizedBody287_132 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_129, 287, 16)) (some 158) ([2, 4, 6]) (some (2, optimizedBody287_131, 287, 17))

def optimizedBody287_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody287_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody287_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody287_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody287_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 50), (52, 52)]

def optimizedBody287_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (4, 48), (0, 50), (50, 52)]

def optimizedBody287_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50), (50, 52)]

def optimizedBody287_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_139 optimizedBody287_9

def optimizedBody287_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_138, 287, 18)) (some 79) ([2, 4, 6]) (some (2, optimizedBody287_140, 287, 19))

def optimizedBody287_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody287_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 50), (44, 44)]

def optimizedBody287_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_16, 287, 20)) (some 70) ([2]) (some (2, optimizedBody287_10, 287, 21))

def optimizedBody287_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 29#64)

def optimizedBody287_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_145 optimizedBody287_13

def optimizedBody287_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_146

def optimizedBody287_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_144 optimizedBody287_147

def optimizedBody287_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_143 optimizedBody287_148

def optimizedBody287_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_149

def optimizedBody287_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (4, 4), (0, 0), (50, 50), (44, 44)]

def optimizedBody287_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody287_150 optimizedBody287_151

def optimizedBody287_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 4), (50, 50)]

def optimizedBody287_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody287_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody287_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_155 optimizedBody287_9

def optimizedBody287_157 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_154, 287, 22)) (some 279) ([2, 4]) (some (2, optimizedBody287_156, 287, 23))

def optimizedBody287_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody287_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody287_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody287_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody287_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_161 optimizedBody287_9

def optimizedBody287_163 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_160, 287, 24)) (some 79) ([2, 4, 6]) (some (2, optimizedBody287_162, 287, 25))

def optimizedBody287_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4)]

def optimizedBody287_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody287_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody287_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_166 optimizedBody287_9

def optimizedBody287_168 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody287_165, 287, 26)) (some 70) ([2]) (some (2, optimizedBody287_167, 287, 27))

def optimizedBody287_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 30#64)

def optimizedBody287_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_169 optimizedBody287_29

def optimizedBody287_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_170

def optimizedBody287_172 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody287_171 optimizedBody287_16

def optimizedBody287_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody287_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_5 optimizedBody287_173

def optimizedBody287_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_62 optimizedBody287_174

def optimizedBody287_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_175

def optimizedBody287_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_176

def optimizedBody287_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_172 optimizedBody287_177

def optimizedBody287_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_62 optimizedBody287_178

def optimizedBody287_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_179

def optimizedBody287_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_180

def optimizedBody287_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_168 optimizedBody287_181

def optimizedBody287_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_164 optimizedBody287_182

def optimizedBody287_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_183

def optimizedBody287_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_163 optimizedBody287_184

def optimizedBody287_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_159 optimizedBody287_185

def optimizedBody287_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_136 optimizedBody287_186

def optimizedBody287_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_23 optimizedBody287_187

def optimizedBody287_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_158 optimizedBody287_188

def optimizedBody287_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_189

def optimizedBody287_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_190

def optimizedBody287_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_157 optimizedBody287_191

def optimizedBody287_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_153 optimizedBody287_192

def optimizedBody287_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_193

def optimizedBody287_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_194

def optimizedBody287_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_152 optimizedBody287_195

def optimizedBody287_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_62 optimizedBody287_196

def optimizedBody287_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_142 optimizedBody287_197

def optimizedBody287_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_198

def optimizedBody287_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_141 optimizedBody287_199

def optimizedBody287_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_137 optimizedBody287_200

def optimizedBody287_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_136 optimizedBody287_201

def optimizedBody287_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_135 optimizedBody287_202

def optimizedBody287_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_134 optimizedBody287_203

def optimizedBody287_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_133 optimizedBody287_204

def optimizedBody287_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_205

def optimizedBody287_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_206

def optimizedBody287_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_132 optimizedBody287_207

def optimizedBody287_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_128 optimizedBody287_208

def optimizedBody287_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_127 optimizedBody287_209

def optimizedBody287_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_126 optimizedBody287_210

def optimizedBody287_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_5 optimizedBody287_211

def optimizedBody287_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_125 optimizedBody287_212

def optimizedBody287_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_124 optimizedBody287_213

def optimizedBody287_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_123 optimizedBody287_214

def optimizedBody287_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_215

def optimizedBody287_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_122 optimizedBody287_216

def optimizedBody287_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_118 optimizedBody287_217

def optimizedBody287_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_117 optimizedBody287_218

def optimizedBody287_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_219

def optimizedBody287_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_116 optimizedBody287_220

def optimizedBody287_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_115 optimizedBody287_221

def optimizedBody287_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_222

def optimizedBody287_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_223

def optimizedBody287_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_114 optimizedBody287_224

def optimizedBody287_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_62 optimizedBody287_225

def optimizedBody287_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_226

def optimizedBody287_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_227

def optimizedBody287_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_110 optimizedBody287_228

def optimizedBody287_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_106 optimizedBody287_229

def optimizedBody287_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_105 optimizedBody287_230

def optimizedBody287_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_104 optimizedBody287_231

def optimizedBody287_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_103 optimizedBody287_232

def optimizedBody287_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_102 optimizedBody287_233

def optimizedBody287_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_101 optimizedBody287_234

def optimizedBody287_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_100 optimizedBody287_235

def optimizedBody287_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_236

def optimizedBody287_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_237

def optimizedBody287_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_238

def optimizedBody287_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_99 optimizedBody287_239

def optimizedBody287_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_62 optimizedBody287_240

def optimizedBody287_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_23 optimizedBody287_241

def optimizedBody287_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_242

def optimizedBody287_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_95 optimizedBody287_243

def optimizedBody287_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_91 optimizedBody287_244

def optimizedBody287_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_90 optimizedBody287_245

def optimizedBody287_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_246

def optimizedBody287_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_89 optimizedBody287_247

def optimizedBody287_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_248

def optimizedBody287_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_88 optimizedBody287_249

def optimizedBody287_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_250

def optimizedBody287_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_87 optimizedBody287_251

def optimizedBody287_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_252

def optimizedBody287_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_253

def optimizedBody287_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_254

def optimizedBody287_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_86 optimizedBody287_255

def optimizedBody287_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_82 optimizedBody287_256

def optimizedBody287_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_257

def optimizedBody287_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_81 optimizedBody287_258

def optimizedBody287_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_259

def optimizedBody287_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_260

def optimizedBody287_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_80 optimizedBody287_261

def optimizedBody287_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_76 optimizedBody287_262

def optimizedBody287_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_75 optimizedBody287_263

def optimizedBody287_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_67 optimizedBody287_264

def optimizedBody287_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_74 optimizedBody287_265

def optimizedBody287_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_266

def optimizedBody287_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_267

def optimizedBody287_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_268

def optimizedBody287_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_73 optimizedBody287_269

def optimizedBody287_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_69 optimizedBody287_270

def optimizedBody287_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_271

def optimizedBody287_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_68 optimizedBody287_272

def optimizedBody287_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_67 optimizedBody287_273

def optimizedBody287_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_274

def optimizedBody287_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_275

def optimizedBody287_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_66 optimizedBody287_276

def optimizedBody287_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_62 optimizedBody287_277

def optimizedBody287_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_23 optimizedBody287_278

def optimizedBody287_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_279

def optimizedBody287_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_61 optimizedBody287_280

def optimizedBody287_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_57 optimizedBody287_281

def optimizedBody287_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_56 optimizedBody287_282

def optimizedBody287_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_283

def optimizedBody287_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_55 optimizedBody287_284

def optimizedBody287_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_285

def optimizedBody287_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_54 optimizedBody287_286

def optimizedBody287_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_287

def optimizedBody287_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_53 optimizedBody287_288

def optimizedBody287_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_52 optimizedBody287_289

def optimizedBody287_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_290

def optimizedBody287_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_51 optimizedBody287_291

def optimizedBody287_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_47 optimizedBody287_292

def optimizedBody287_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_46 optimizedBody287_293

def optimizedBody287_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_41 optimizedBody287_294

def optimizedBody287_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_45 optimizedBody287_295

def optimizedBody287_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_41 optimizedBody287_296

def optimizedBody287_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_44 optimizedBody287_297

def optimizedBody287_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_41 optimizedBody287_298

def optimizedBody287_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_43 optimizedBody287_299

def optimizedBody287_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_41 optimizedBody287_300

def optimizedBody287_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_42 optimizedBody287_301

def optimizedBody287_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_41 optimizedBody287_302

def optimizedBody287_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_40 optimizedBody287_303

def optimizedBody287_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_39 optimizedBody287_304

def optimizedBody287_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_305

def optimizedBody287_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_306

def optimizedBody287_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_38 optimizedBody287_307

def optimizedBody287_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_34 optimizedBody287_308

def optimizedBody287_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_23 optimizedBody287_309

def optimizedBody287_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_33 optimizedBody287_310

def optimizedBody287_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_23 optimizedBody287_311

def optimizedBody287_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_312

def optimizedBody287_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_313

def optimizedBody287_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_32 optimizedBody287_314

def optimizedBody287_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_25 optimizedBody287_315

def optimizedBody287_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_24 optimizedBody287_316

def optimizedBody287_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_23 optimizedBody287_317

def optimizedBody287_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_318

def optimizedBody287_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_22 optimizedBody287_319

def optimizedBody287_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_18 optimizedBody287_320

def optimizedBody287_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_321

def optimizedBody287_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_3 optimizedBody287_322

def optimizedBody287_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_17 optimizedBody287_323

def optimizedBody287_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_2 optimizedBody287_324

def optimizedBody287_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_1 optimizedBody287_325

def optimizedBody287_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody287_0 optimizedBody287_326

def oracle287 : Option (Spt Nat) :=
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
def optimized287 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(287, 3, optimizedBody287_327)
end InitECandidate.Proofs.SmallStages.Oracles287
