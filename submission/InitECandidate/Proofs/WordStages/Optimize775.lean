import InitECandidate.Proofs.WordStages.Optimize759
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source775
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody775_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody775_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (8, 44), (0, 46), (4, 48)]

def optimizedBody775_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (4, 48)]

def optimizedBody775_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody775_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_2 optimizedBody775_3

def optimizedBody775_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody775_1, 775, 2)) (some 727) ([2, 4]) (some (2, optimizedBody775_4, 775, 3))

def optimizedBody775_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody775_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody775_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody775_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody775_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody775_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_9 optimizedBody775_10

def optimizedBody775_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_8 optimizedBody775_11

def optimizedBody775_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_12

def optimizedBody775_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody775_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody775_13 optimizedBody775_14

def optimizedBody775_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody775_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody775_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody775_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody775_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 8), (46, 0)]

def optimizedBody775_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (14, 44), (0, 46)]

def optimizedBody775_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (0, 46)]

def optimizedBody775_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_22 optimizedBody775_3

def optimizedBody775_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody775_21, 775, 4)) (some 727) ([2, 4]) (some (2, optimizedBody775_23, 775, 5))

def optimizedBody775_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def optimizedBody775_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_9 optimizedBody775_25

def optimizedBody775_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_8 optimizedBody775_26

def optimizedBody775_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_27

def optimizedBody775_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody775_28 optimizedBody775_14

def optimizedBody775_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody775_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody775_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody775_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody775_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody775_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody775_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody775_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody775_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody775_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody775_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody775_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody775_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 14), (46, 16), (48, 8), (50, 2), (52, 6), (54, 0), (56, 10),
    (58, 18), (60, 20), (62, 22), (66, 4), (64, 24), (70, 12), (68, 26)]

def optimizedBody775_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 2), (44, 44), (4, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (0, 58), (6, 60), (10, 62), (66, 66),
    (12, 64), (70, 70), (8, 68)]

def optimizedBody775_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (0, 58), (6, 60), (10, 62), (66, 66),
    (12, 64), (70, 70), (8, 68)]

def optimizedBody775_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_44 optimizedBody775_3

def optimizedBody775_46 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody775_43, 775, 6)) (some 705) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody775_45, 775, 7))

def optimizedBody775_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 4), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56), (58, 0), (60, 6), (62, 10), (64, 14), (66, 66), (68, 12), (70, 70), (72, 8)]

def optimizedBody775_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(32, 2), (0, 44), (16, 46), (8, 48), (34, 50), (6, 52), (28, 54), (10, 56), (14, 58), (18, 60), (22, 62), (30, 64),
    (4, 66), (24, 68), (12, 70), (20, 72)]

def optimizedBody775_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (0, 44), (16, 46), (8, 48), (34, 50), (6, 52), (28, 54), (10, 56), (14, 58), (18, 60), (22, 62), (30, 64),
    (4, 66), (24, 68), (12, 70), (20, 72)]

def optimizedBody775_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_49 optimizedBody775_3

def optimizedBody775_51 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody775_48, 775, 8)) (some 705) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody775_50, 775, 9))

def optimizedBody775_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 30)]

def optimizedBody775_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody775_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 1#64)

def optimizedBody775_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(30, 30)]

def optimizedBody775_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_54 optimizedBody775_55

def optimizedBody775_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_56

def optimizedBody775_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 0#64)

def optimizedBody775_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_58 optimizedBody775_55

def optimizedBody775_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_59

def optimizedBody775_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 30 (Flapjack.WordRegImm.reg 2) optimizedBody775_57 optimizedBody775_60

def optimizedBody775_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 32)]

def optimizedBody775_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody775_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_53 optimizedBody775_63

def optimizedBody775_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_64

def optimizedBody775_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_8 optimizedBody775_63

def optimizedBody775_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_66

def optimizedBody775_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 32 (Flapjack.WordRegImm.reg 2) optimizedBody775_65 optimizedBody775_67

def optimizedBody775_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 30), (2, 2)]

def optimizedBody775_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 30)))

def optimizedBody775_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28)]

def optimizedBody775_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 28 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody775_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 0#64)

def optimizedBody775_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody775_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody775_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody775_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody775_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody775_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody775_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody775_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_9 optimizedBody775_80

def optimizedBody775_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_53 optimizedBody775_81

def optimizedBody775_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_79 optimizedBody775_82

def optimizedBody775_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_9 optimizedBody775_83

def optimizedBody775_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_73 optimizedBody775_84

def optimizedBody775_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_78 optimizedBody775_85

def optimizedBody775_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_9 optimizedBody775_86

def optimizedBody775_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_73 optimizedBody775_87

def optimizedBody775_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_77 optimizedBody775_88

def optimizedBody775_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_9 optimizedBody775_89

def optimizedBody775_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_73 optimizedBody775_90

def optimizedBody775_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_76 optimizedBody775_91

def optimizedBody775_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_9 optimizedBody775_92

def optimizedBody775_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_73 optimizedBody775_93

def optimizedBody775_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_75 optimizedBody775_94

def optimizedBody775_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_9 optimizedBody775_95

def optimizedBody775_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_73 optimizedBody775_96

def optimizedBody775_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_74 optimizedBody775_97

def optimizedBody775_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_9 optimizedBody775_98

def optimizedBody775_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_73 optimizedBody775_99

def optimizedBody775_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_72 optimizedBody775_100

def optimizedBody775_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_71 optimizedBody775_101

def optimizedBody775_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(26, 28)]

def optimizedBody775_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody775_102 optimizedBody775_103

def optimizedBody775_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26)]

def optimizedBody775_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 26 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody775_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 8505329371266088957#64)

def optimizedBody775_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody775_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 17002214543764226050#64)

def optimizedBody775_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody775_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 6865905132761471162#64)

def optimizedBody775_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody775_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 8632934651105793861#64)

def optimizedBody775_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody775_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 6631298214892334189#64)

def optimizedBody775_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody775_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 1582556514881692819#64)

def optimizedBody775_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody775_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 0), (2, 34), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24)]

def optimizedBody775_120 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 774) ([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (none)

def optimizedBody775_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_119 optimizedBody775_120

def optimizedBody775_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_118 optimizedBody775_121

def optimizedBody775_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_9 optimizedBody775_122

def optimizedBody775_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_117 optimizedBody775_123

def optimizedBody775_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_116 optimizedBody775_124

def optimizedBody775_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_9 optimizedBody775_125

def optimizedBody775_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_115 optimizedBody775_126

def optimizedBody775_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_114 optimizedBody775_127

def optimizedBody775_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_9 optimizedBody775_128

def optimizedBody775_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_113 optimizedBody775_129

def optimizedBody775_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_112 optimizedBody775_130

def optimizedBody775_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_9 optimizedBody775_131

def optimizedBody775_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_111 optimizedBody775_132

def optimizedBody775_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_110 optimizedBody775_133

def optimizedBody775_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_9 optimizedBody775_134

def optimizedBody775_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_109 optimizedBody775_135

def optimizedBody775_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_108 optimizedBody775_136

def optimizedBody775_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_9 optimizedBody775_137

def optimizedBody775_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_107 optimizedBody775_138

def optimizedBody775_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_106 optimizedBody775_139

def optimizedBody775_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_105 optimizedBody775_140

def optimizedBody775_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_141

def optimizedBody775_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_104 optimizedBody775_142

def optimizedBody775_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_70 optimizedBody775_143

def optimizedBody775_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_69 optimizedBody775_144

def optimizedBody775_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_145

def optimizedBody775_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_68 optimizedBody775_146

def optimizedBody775_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_53 optimizedBody775_147

def optimizedBody775_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_62 optimizedBody775_148

def optimizedBody775_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_149

def optimizedBody775_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_61 optimizedBody775_150

def optimizedBody775_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_53 optimizedBody775_151

def optimizedBody775_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_52 optimizedBody775_152

def optimizedBody775_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_153

def optimizedBody775_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_51 optimizedBody775_154

def optimizedBody775_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_47 optimizedBody775_155

def optimizedBody775_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_156

def optimizedBody775_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_46 optimizedBody775_157

def optimizedBody775_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_42 optimizedBody775_158

def optimizedBody775_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_41 optimizedBody775_159

def optimizedBody775_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_18 optimizedBody775_160

def optimizedBody775_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_40 optimizedBody775_161

def optimizedBody775_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_18 optimizedBody775_162

def optimizedBody775_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_39 optimizedBody775_163

def optimizedBody775_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_18 optimizedBody775_164

def optimizedBody775_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_38 optimizedBody775_165

def optimizedBody775_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_18 optimizedBody775_166

def optimizedBody775_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_37 optimizedBody775_167

def optimizedBody775_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_18 optimizedBody775_168

def optimizedBody775_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_36 optimizedBody775_169

def optimizedBody775_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_18 optimizedBody775_170

def optimizedBody775_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_35 optimizedBody775_171

def optimizedBody775_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_18 optimizedBody775_172

def optimizedBody775_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_34 optimizedBody775_173

def optimizedBody775_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_18 optimizedBody775_174

def optimizedBody775_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_33 optimizedBody775_175

def optimizedBody775_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_18 optimizedBody775_176

def optimizedBody775_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_32 optimizedBody775_177

def optimizedBody775_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_18 optimizedBody775_178

def optimizedBody775_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_31 optimizedBody775_179

def optimizedBody775_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_18 optimizedBody775_180

def optimizedBody775_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_30 optimizedBody775_181

def optimizedBody775_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_18 optimizedBody775_182

def optimizedBody775_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_183

def optimizedBody775_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_184

def optimizedBody775_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_29 optimizedBody775_185

def optimizedBody775_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_8 optimizedBody775_186

def optimizedBody775_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_16 optimizedBody775_187

def optimizedBody775_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_188

def optimizedBody775_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_24 optimizedBody775_189

def optimizedBody775_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_20 optimizedBody775_190

def optimizedBody775_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_19 optimizedBody775_191

def optimizedBody775_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_18 optimizedBody775_192

def optimizedBody775_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_17 optimizedBody775_193

def optimizedBody775_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_16 optimizedBody775_194

def optimizedBody775_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_195

def optimizedBody775_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_196

def optimizedBody775_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_15 optimizedBody775_197

def optimizedBody775_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_8 optimizedBody775_198

def optimizedBody775_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_7 optimizedBody775_199

def optimizedBody775_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_6 optimizedBody775_200

def optimizedBody775_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_5 optimizedBody775_201

def optimizedBody775_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody775_0 optimizedBody775_202

def oracle775 : Option (Spt Nat) :=
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
def optimized775 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(775, 3, optimizedBody775_203)
theorem optimize775_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source775, oracle775) = optimized775 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize775_eq
end InitECandidate.Proofs.WordStages
