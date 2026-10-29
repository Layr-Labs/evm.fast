import InitECandidate.Proofs.WordStages.Optimize670
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source686
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody686_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (6, 4)]

def optimizedBody686_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1152#64)

def optimizedBody686_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6), (48, 2)]

def optimizedBody686_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (14, 46), (46, 48)]

def optimizedBody686_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (46, 48)]

def optimizedBody686_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody686_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_4 optimizedBody686_5

def optimizedBody686_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody686_3, 686, 2)) (some 78) ([2, 4]) (some (2, optimizedBody686_6, 686, 3))

def optimizedBody686_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody686_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody686_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 0), (14, 14), (46, 46)]

def optimizedBody686_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody686_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody686_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody686_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody686_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 14)))

def optimizedBody686_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody686_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (48, 0), (14, 14)]

def optimizedBody686_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.reg 4)))

def optimizedBody686_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody686_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (48, 48), (54, 14)]

def optimizedBody686_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody686_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (48, 48), (54, 54)]

def optimizedBody686_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody686_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (54, 54), (48, 48)]

def optimizedBody686_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody686_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody686_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody686_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody686_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 2)]

def optimizedBody686_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 9#64)

def optimizedBody686_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 48), (48, 2), (50, 16), (52, 14), (54, 54), (56, 4),
    (58, 8), (60, 12), (62, 46), (64, 18), (66, 6)]

def optimizedBody686_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (12, 4), (16, 8), (14, 6), (44, 44), (46, 46), (48, 48), (4, 50), (8, 52), (50, 54), (52, 56), (54, 58),
    (0, 60), (56, 62), (6, 64), (58, 66)]

def optimizedBody686_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (8, 52), (50, 54), (52, 56), (54, 58), (0, 60), (56, 62), (6, 64),
    (58, 66)]

def optimizedBody686_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_33 optimizedBody686_5

def optimizedBody686_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody686_32, 686, 4)) (some 665) ([2, 4, 6, 8, 10]) (some (2, optimizedBody686_34, 686, 5))

def optimizedBody686_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody686_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 6), (16, 4), (8, 8), (20, 2), (30, 44), (10, 46), (28, 48), (14, 50), (22, 52), (24, 54), (26, 56), (18, 58)]

def optimizedBody686_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (30, 44), (10, 46), (28, 48), (14, 50), (22, 52), (24, 54), (26, 56), (18, 58)]

def optimizedBody686_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_38 optimizedBody686_5

def optimizedBody686_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody686_37, 686, 6)) (some 659) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody686_39, 686, 7))

def optimizedBody686_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody686_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody686_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody686_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody686_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_43 optimizedBody686_44

def optimizedBody686_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_8 optimizedBody686_45

def optimizedBody686_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_8 optimizedBody686_44

def optimizedBody686_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 0) optimizedBody686_46 optimizedBody686_47

def optimizedBody686_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody686_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_12 optimizedBody686_44

def optimizedBody686_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_8 optimizedBody686_50

def optimizedBody686_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 0) optimizedBody686_51 optimizedBody686_47

def optimizedBody686_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 384#64)

def optimizedBody686_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 10), (4, 4)]

def optimizedBody686_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody686_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(26, 26), (0, 0)]

def optimizedBody686_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 26)))

def optimizedBody686_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody686_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody686_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody686_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (20, 20), (8, 8), (12, 12), (16, 16)]

def optimizedBody686_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody686_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (16, 16)]

def optimizedBody686_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody686_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody686_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody686_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody686_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody686_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody686_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody686_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody686_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (28, 28), (24, 24), (18, 18), (22, 22)]

def optimizedBody686_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody686_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (22, 22)]

def optimizedBody686_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody686_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (18, 18)]

def optimizedBody686_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody686_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (24, 24)]

def optimizedBody686_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody686_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody686_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 30), (0, 0), (14, 14), (46, 26)]

def optimizedBody686_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody686_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_81 optimizedBody686_82

def optimizedBody686_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_80 optimizedBody686_83

def optimizedBody686_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_42 optimizedBody686_84

def optimizedBody686_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_79 optimizedBody686_85

def optimizedBody686_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_78 optimizedBody686_86

def optimizedBody686_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_77 optimizedBody686_87

def optimizedBody686_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_76 optimizedBody686_88

def optimizedBody686_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_75 optimizedBody686_89

def optimizedBody686_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_74 optimizedBody686_90

def optimizedBody686_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_73 optimizedBody686_91

def optimizedBody686_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_72 optimizedBody686_92

def optimizedBody686_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_71 optimizedBody686_93

def optimizedBody686_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_11 optimizedBody686_94

def optimizedBody686_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_70 optimizedBody686_95

def optimizedBody686_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_69 optimizedBody686_96

def optimizedBody686_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_58 optimizedBody686_97

def optimizedBody686_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_68 optimizedBody686_98

def optimizedBody686_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_67 optimizedBody686_99

def optimizedBody686_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_66 optimizedBody686_100

def optimizedBody686_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_65 optimizedBody686_101

def optimizedBody686_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_64 optimizedBody686_102

def optimizedBody686_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_63 optimizedBody686_103

def optimizedBody686_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_62 optimizedBody686_104

def optimizedBody686_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_61 optimizedBody686_105

def optimizedBody686_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_60 optimizedBody686_106

def optimizedBody686_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_11 optimizedBody686_107

def optimizedBody686_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_59 optimizedBody686_108

def optimizedBody686_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_58 optimizedBody686_109

def optimizedBody686_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_57 optimizedBody686_110

def optimizedBody686_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_56 optimizedBody686_111

def optimizedBody686_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_55 optimizedBody686_112

def optimizedBody686_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_54 optimizedBody686_113

def optimizedBody686_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_53 optimizedBody686_114

def optimizedBody686_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_42 optimizedBody686_115

def optimizedBody686_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_8 optimizedBody686_116

def optimizedBody686_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_52 optimizedBody686_117

def optimizedBody686_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_49 optimizedBody686_118

def optimizedBody686_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_42 optimizedBody686_119

def optimizedBody686_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_8 optimizedBody686_120

def optimizedBody686_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_48 optimizedBody686_121

def optimizedBody686_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_9 optimizedBody686_122

def optimizedBody686_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_42 optimizedBody686_123

def optimizedBody686_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_41 optimizedBody686_124

def optimizedBody686_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_8 optimizedBody686_125

def optimizedBody686_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_40 optimizedBody686_126

def optimizedBody686_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_36 optimizedBody686_127

def optimizedBody686_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_8 optimizedBody686_128

def optimizedBody686_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_35 optimizedBody686_129

def optimizedBody686_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_31 optimizedBody686_130

def optimizedBody686_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_30 optimizedBody686_131

def optimizedBody686_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_29 optimizedBody686_132

def optimizedBody686_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_28 optimizedBody686_133

def optimizedBody686_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_22 optimizedBody686_134

def optimizedBody686_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_27 optimizedBody686_135

def optimizedBody686_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_22 optimizedBody686_136

def optimizedBody686_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_26 optimizedBody686_137

def optimizedBody686_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_22 optimizedBody686_138

def optimizedBody686_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_25 optimizedBody686_139

def optimizedBody686_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_24 optimizedBody686_140

def optimizedBody686_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_23 optimizedBody686_141

def optimizedBody686_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_22 optimizedBody686_142

def optimizedBody686_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_21 optimizedBody686_143

def optimizedBody686_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_20 optimizedBody686_144

def optimizedBody686_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_19 optimizedBody686_145

def optimizedBody686_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_18 optimizedBody686_146

def optimizedBody686_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_17 optimizedBody686_147

def optimizedBody686_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_16 optimizedBody686_148

def optimizedBody686_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_15 optimizedBody686_149

def optimizedBody686_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_14 optimizedBody686_150

def optimizedBody686_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_13 optimizedBody686_151

def optimizedBody686_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_11 optimizedBody686_152

def optimizedBody686_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_8 optimizedBody686_153

def optimizedBody686_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody686_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_8 optimizedBody686_155

def optimizedBody686_157 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody686_154 optimizedBody686_156

def optimizedBody686_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (0, 0), (14, 14), (46, 4)]

def optimizedBody686_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_8 optimizedBody686_158

def optimizedBody686_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_157 optimizedBody686_159

def optimizedBody686_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_12 optimizedBody686_160

def optimizedBody686_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_11 optimizedBody686_161

def optimizedBody686_163 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody686_162 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody686_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody686_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_58 optimizedBody686_164

def optimizedBody686_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_41 optimizedBody686_165

def optimizedBody686_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_8 optimizedBody686_166

def optimizedBody686_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_163 optimizedBody686_167

def optimizedBody686_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_10 optimizedBody686_168

def optimizedBody686_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_8 optimizedBody686_169

def optimizedBody686_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_9 optimizedBody686_170

def optimizedBody686_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_8 optimizedBody686_171

def optimizedBody686_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_7 optimizedBody686_172

def optimizedBody686_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_2 optimizedBody686_173

def optimizedBody686_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_1 optimizedBody686_174

def optimizedBody686_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody686_0 optimizedBody686_175

def oracle686 : Option (Spt Nat) :=
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
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 7 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 14))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 10)))
                7
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 2 (Flapjack.Spt.ls 13))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 27 Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)) 7
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 8)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 (Flapjack.Spt.ls 15))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 24
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 Flapjack.Spt.ln))
                2 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 13)) 27
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 1)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 4 (Flapjack.Spt.ls 11)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 24
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.ls 5))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 11) Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0)) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 1 (Flapjack.Spt.ls 12))) 3
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 4)))
                23 (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 7 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 27
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 3 (Flapjack.Spt.ls 9)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)) 7
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 9
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 5 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 27 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 24 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 7))) 0
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 27 Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 24
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 23
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))))))))
def optimized686 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(686, 3, optimizedBody686_176)
theorem optimize686_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source686, oracle686) = optimized686 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize686_eq
end InitECandidate.Proofs.WordStages
