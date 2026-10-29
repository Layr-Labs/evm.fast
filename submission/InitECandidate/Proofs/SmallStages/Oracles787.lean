import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source787
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles787
def optimizedBody787_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody787_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (8, 44), (0, 46), (4, 48)]

def optimizedBody787_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (4, 48)]

def optimizedBody787_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody787_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_2 optimizedBody787_3

def optimizedBody787_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody787_1, 787, 2)) (some 737) ([2, 4]) (some (2, optimizedBody787_4, 787, 3))

def optimizedBody787_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody787_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody787_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody787_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody787_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody787_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_10

def optimizedBody787_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_8 optimizedBody787_11

def optimizedBody787_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_12

def optimizedBody787_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody787_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody787_13 optimizedBody787_14

def optimizedBody787_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody787_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody787_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody787_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody787_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 8), (46, 0)]

def optimizedBody787_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (14, 44), (0, 46)]

def optimizedBody787_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (0, 46)]

def optimizedBody787_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_22 optimizedBody787_3

def optimizedBody787_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody787_21, 787, 4)) (some 737) ([2, 4]) (some (2, optimizedBody787_23, 787, 5))

def optimizedBody787_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def optimizedBody787_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_25

def optimizedBody787_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_8 optimizedBody787_26

def optimizedBody787_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_27

def optimizedBody787_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody787_28 optimizedBody787_14

def optimizedBody787_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody787_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody787_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody787_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody787_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody787_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody787_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody787_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody787_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody787_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody787_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody787_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody787_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 14), (46, 16), (48, 8), (50, 2), (52, 6), (54, 0), (56, 10),
    (58, 18), (60, 20), (62, 22), (66, 4), (64, 24), (70, 12), (68, 26)]

def optimizedBody787_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 2), (44, 44), (4, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (0, 58), (6, 60), (10, 62), (66, 66),
    (12, 64), (70, 70), (8, 68)]

def optimizedBody787_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (0, 58), (6, 60), (10, 62), (66, 66),
    (12, 64), (70, 70), (8, 68)]

def optimizedBody787_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_44 optimizedBody787_3

def optimizedBody787_46 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody787_43, 787, 6)) (some 714) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody787_45, 787, 7))

def optimizedBody787_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 4), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56), (58, 0), (60, 6), (62, 10), (64, 14), (66, 66), (68, 12), (70, 70), (72, 8)]

def optimizedBody787_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(32, 2), (0, 44), (16, 46), (8, 48), (34, 50), (6, 52), (28, 54), (10, 56), (14, 58), (18, 60), (22, 62), (30, 64),
    (4, 66), (24, 68), (12, 70), (20, 72)]

def optimizedBody787_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (0, 44), (16, 46), (8, 48), (34, 50), (6, 52), (28, 54), (10, 56), (14, 58), (18, 60), (22, 62), (30, 64),
    (4, 66), (24, 68), (12, 70), (20, 72)]

def optimizedBody787_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_49 optimizedBody787_3

def optimizedBody787_51 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody787_48, 787, 8)) (some 714) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody787_50, 787, 9))

def optimizedBody787_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 30)]

def optimizedBody787_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody787_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 1#64)

def optimizedBody787_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(30, 30)]

def optimizedBody787_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_54 optimizedBody787_55

def optimizedBody787_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_56

def optimizedBody787_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 0#64)

def optimizedBody787_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_58 optimizedBody787_55

def optimizedBody787_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_59

def optimizedBody787_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 30 (Flapjack.WordRegImm.reg 2) optimizedBody787_57 optimizedBody787_60

def optimizedBody787_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 32)]

def optimizedBody787_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody787_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_53 optimizedBody787_63

def optimizedBody787_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_64

def optimizedBody787_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_8 optimizedBody787_63

def optimizedBody787_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_66

def optimizedBody787_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 32 (Flapjack.WordRegImm.reg 2) optimizedBody787_65 optimizedBody787_67

def optimizedBody787_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 30), (2, 2)]

def optimizedBody787_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 30)))

def optimizedBody787_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28)]

def optimizedBody787_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 28 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody787_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 0#64)

def optimizedBody787_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody787_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody787_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody787_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody787_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody787_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody787_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody787_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_80

def optimizedBody787_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_53 optimizedBody787_81

def optimizedBody787_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_79 optimizedBody787_82

def optimizedBody787_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_83

def optimizedBody787_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_73 optimizedBody787_84

def optimizedBody787_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_78 optimizedBody787_85

def optimizedBody787_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_86

def optimizedBody787_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_73 optimizedBody787_87

def optimizedBody787_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_77 optimizedBody787_88

def optimizedBody787_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_89

def optimizedBody787_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_73 optimizedBody787_90

def optimizedBody787_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_76 optimizedBody787_91

def optimizedBody787_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_92

def optimizedBody787_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_73 optimizedBody787_93

def optimizedBody787_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_75 optimizedBody787_94

def optimizedBody787_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_95

def optimizedBody787_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_73 optimizedBody787_96

def optimizedBody787_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_74 optimizedBody787_97

def optimizedBody787_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_98

def optimizedBody787_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_73 optimizedBody787_99

def optimizedBody787_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_72 optimizedBody787_100

def optimizedBody787_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_71 optimizedBody787_101

def optimizedBody787_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(26, 28)]

def optimizedBody787_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody787_102 optimizedBody787_103

def optimizedBody787_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26)]

def optimizedBody787_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 26 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody787_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 1#64)

def optimizedBody787_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody787_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 0#64)

def optimizedBody787_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody787_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody787_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody787_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody787_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody787_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 0), (2, 34), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24)]

def optimizedBody787_116 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 786) ([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (none)

def optimizedBody787_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_115 optimizedBody787_116

def optimizedBody787_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_114 optimizedBody787_117

def optimizedBody787_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_118

def optimizedBody787_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_109 optimizedBody787_119

def optimizedBody787_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_113 optimizedBody787_120

def optimizedBody787_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_121

def optimizedBody787_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_109 optimizedBody787_122

def optimizedBody787_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_112 optimizedBody787_123

def optimizedBody787_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_124

def optimizedBody787_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_109 optimizedBody787_125

def optimizedBody787_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_111 optimizedBody787_126

def optimizedBody787_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_127

def optimizedBody787_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_109 optimizedBody787_128

def optimizedBody787_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_110 optimizedBody787_129

def optimizedBody787_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_130

def optimizedBody787_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_109 optimizedBody787_131

def optimizedBody787_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_108 optimizedBody787_132

def optimizedBody787_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_133

def optimizedBody787_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_107 optimizedBody787_134

def optimizedBody787_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_106 optimizedBody787_135

def optimizedBody787_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_105 optimizedBody787_136

def optimizedBody787_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_137

def optimizedBody787_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_104 optimizedBody787_138

def optimizedBody787_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_70 optimizedBody787_139

def optimizedBody787_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_69 optimizedBody787_140

def optimizedBody787_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_141

def optimizedBody787_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_68 optimizedBody787_142

def optimizedBody787_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_53 optimizedBody787_143

def optimizedBody787_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_62 optimizedBody787_144

def optimizedBody787_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_145

def optimizedBody787_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_61 optimizedBody787_146

def optimizedBody787_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_53 optimizedBody787_147

def optimizedBody787_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_52 optimizedBody787_148

def optimizedBody787_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_149

def optimizedBody787_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_51 optimizedBody787_150

def optimizedBody787_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_47 optimizedBody787_151

def optimizedBody787_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_152

def optimizedBody787_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_46 optimizedBody787_153

def optimizedBody787_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_42 optimizedBody787_154

def optimizedBody787_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_41 optimizedBody787_155

def optimizedBody787_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_156

def optimizedBody787_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_40 optimizedBody787_157

def optimizedBody787_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_158

def optimizedBody787_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_39 optimizedBody787_159

def optimizedBody787_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_160

def optimizedBody787_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_38 optimizedBody787_161

def optimizedBody787_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_162

def optimizedBody787_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_37 optimizedBody787_163

def optimizedBody787_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_164

def optimizedBody787_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_36 optimizedBody787_165

def optimizedBody787_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_166

def optimizedBody787_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_35 optimizedBody787_167

def optimizedBody787_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_168

def optimizedBody787_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_34 optimizedBody787_169

def optimizedBody787_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_170

def optimizedBody787_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_33 optimizedBody787_171

def optimizedBody787_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_172

def optimizedBody787_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_32 optimizedBody787_173

def optimizedBody787_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_174

def optimizedBody787_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_31 optimizedBody787_175

def optimizedBody787_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_176

def optimizedBody787_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_30 optimizedBody787_177

def optimizedBody787_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_178

def optimizedBody787_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_179

def optimizedBody787_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_180

def optimizedBody787_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_29 optimizedBody787_181

def optimizedBody787_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_8 optimizedBody787_182

def optimizedBody787_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_16 optimizedBody787_183

def optimizedBody787_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_184

def optimizedBody787_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_24 optimizedBody787_185

def optimizedBody787_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_20 optimizedBody787_186

def optimizedBody787_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_19 optimizedBody787_187

def optimizedBody787_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_188

def optimizedBody787_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_17 optimizedBody787_189

def optimizedBody787_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_16 optimizedBody787_190

def optimizedBody787_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_191

def optimizedBody787_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_192

def optimizedBody787_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_15 optimizedBody787_193

def optimizedBody787_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_8 optimizedBody787_194

def optimizedBody787_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_7 optimizedBody787_195

def optimizedBody787_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_196

def optimizedBody787_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_5 optimizedBody787_197

def optimizedBody787_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_0 optimizedBody787_198

def oracle787 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.ls 15))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 9 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 16))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 11 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 3 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3))) 0
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2 (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 (Flapjack.Spt.ls 15)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 10 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 (Flapjack.Spt.ls 15))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 13 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 2 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 33 Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 12 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 16)) (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 24 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 8 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.ls 15)) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 13) Flapjack.Spt.ln) 2 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 0 Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 13) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 17))) 4
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15)) (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 25 Flapjack.Spt.ln) 7
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1 (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)))
                2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 27 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 5 (Flapjack.Spt.ls 1)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 8)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 2 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 24
                (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 23
                (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                Flapjack.Spt.ln)))))))
def optimized787 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(787, 3, optimizedBody787_199)
end InitECandidate.Proofs.SmallStages.Oracles787
