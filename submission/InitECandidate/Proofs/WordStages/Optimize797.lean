import InitECandidate.Proofs.WordStages.Optimize781
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source797
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody797_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(26, 4), (36, 0), (22, 2), (34, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18)]

def optimizedBody797_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 26 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody797_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 48#64)

def optimizedBody797_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4)]

def optimizedBody797_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody797_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(22, 22), (0, 0)]

def optimizedBody797_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 22)))

def optimizedBody797_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody797_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (26, 26)]

def optimizedBody797_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (22, 22)]

def optimizedBody797_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 22 (Flapjack.WordRegImm.reg 0)))

def optimizedBody797_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody797_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody797_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody797_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody797_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 2), (26, 26)]

def optimizedBody797_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody797_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody797_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody797_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody797_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 36), (0, 0), (24, 16), (16, 8), (2, 20), (8, 28), (26, 26), (20, 12), (12, 2), (48, 22), (6, 30), (46, 18),
    (18, 10), (14, 34), (22, 14), (10, 24), (4, 32)]

def optimizedBody797_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26), (0, 0)]

def optimizedBody797_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 26 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody797_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (46, 44), (44, 0), (50, 24), (52, 16), (48, 26), (58, 20), (54, 48), (56, 46), (68, 18), (70, 14), (72, 22)]

def optimizedBody797_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(38, 2), (8, 8), (12, 12), (36, 6), (30, 10), (34, 4), (46, 46), (18, 44), (50, 50), (52, 52), (20, 48), (58, 58),
    (16, 54), (10, 56), (68, 68), (70, 70), (72, 72)]

def optimizedBody797_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (18, 44), (50, 50), (52, 52), (20, 48), (58, 58), (16, 54), (10, 56), (68, 68), (70, 70), (72, 72)]

def optimizedBody797_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody797_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_25 optimizedBody797_26

def optimizedBody797_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody797_24, 797, 2)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody797_27, 797, 3))

def optimizedBody797_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody797_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 18), (4, 4)]

def optimizedBody797_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(32, 10), (0, 0)]

def optimizedBody797_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 32)))

def optimizedBody797_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 44 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody797_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (32, 32)]

def optimizedBody797_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 32 (Flapjack.WordRegImm.reg 0)))

def optimizedBody797_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 40 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody797_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 42 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody797_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody797_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody797_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody797_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody797_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 20 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def optimizedBody797_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 0 (Flapjack.WordRegImm.reg 18)))

def optimizedBody797_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (0, 0)]

def optimizedBody797_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 16)))

def optimizedBody797_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody797_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (48, 18), (56, 20)]

def optimizedBody797_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (24, 16)]

def optimizedBody797_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 24 (Flapjack.WordRegImm.reg 0)))

def optimizedBody797_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody797_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (48, 48), (56, 56)]

def optimizedBody797_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (24, 24)]

def optimizedBody797_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody797_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody797_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody797_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 2), (48, 48), (56, 56)]

def optimizedBody797_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 24)]

def optimizedBody797_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody797_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody797_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 44), (4, 40), (6, 42), (8, 26), (10, 10), (12, 28), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 46), (46, 48), (48, 50), (50, 52), (52, 38), (54, 8), (56, 56), (58, 58), (60, 12), (62, 2), (64, 36),
    (66, 32), (68, 68), (70, 70), (72, 72), (74, 30), (76, 34)]

def optimizedBody797_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 4), (22, 10), (18, 6), (24, 12), (20, 8), (14, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (8, 54),
    (52, 56), (54, 58), (12, 60), (56, 62), (6, 64), (58, 66), (60, 68), (62, 70), (64, 72), (10, 74), (4, 76)]

def optimizedBody797_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (8, 54), (52, 56), (54, 58), (12, 60), (56, 62), (6, 64),
    (58, 66), (60, 68), (62, 70), (64, 72), (10, 74), (4, 76)]

def optimizedBody797_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_62 optimizedBody797_26

def optimizedBody797_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody797_61, 797, 4)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody797_63, 797, 5))

def optimizedBody797_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def optimizedBody797_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(28, 2), (8, 8), (12, 12), (6, 6), (10, 10), (4, 4), (30, 44), (0, 46), (24, 48), (16, 50), (26, 52), (20, 54),
    (32, 56), (34, 58), (18, 60), (14, 62), (22, 64)]

def optimizedBody797_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (30, 44), (0, 46), (24, 48), (16, 50), (26, 52), (20, 54), (32, 56), (34, 58), (18, 60), (14, 62), (22, 64)]

def optimizedBody797_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_67 optimizedBody797_26

def optimizedBody797_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody797_66, 797, 6)) (some 710) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody797_68, 797, 7))

def optimizedBody797_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody797_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody797_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 30), (0, 0), (24, 24), (16, 16), (2, 28), (8, 8), (26, 26), (20, 20), (12, 12), (48, 32), (6, 6), (46, 34),
    (18, 18), (14, 14), (22, 22), (10, 10), (4, 4)]

def optimizedBody797_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody797_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_72 optimizedBody797_73

def optimizedBody797_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_71 optimizedBody797_74

def optimizedBody797_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_70 optimizedBody797_75

def optimizedBody797_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_19 optimizedBody797_76

def optimizedBody797_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_69 optimizedBody797_77

def optimizedBody797_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_65 optimizedBody797_78

def optimizedBody797_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_19 optimizedBody797_79

def optimizedBody797_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_64 optimizedBody797_80

def optimizedBody797_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_60 optimizedBody797_81

def optimizedBody797_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_59 optimizedBody797_82

def optimizedBody797_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_58 optimizedBody797_83

def optimizedBody797_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_57 optimizedBody797_84

def optimizedBody797_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_85

def optimizedBody797_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_16 optimizedBody797_86

def optimizedBody797_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_87

def optimizedBody797_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_56 optimizedBody797_88

def optimizedBody797_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_55 optimizedBody797_89

def optimizedBody797_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_49 optimizedBody797_90

def optimizedBody797_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_52 optimizedBody797_91

def optimizedBody797_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_92

def optimizedBody797_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_3 optimizedBody797_93

def optimizedBody797_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_94

def optimizedBody797_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_51 optimizedBody797_95

def optimizedBody797_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_54 optimizedBody797_96

def optimizedBody797_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_49 optimizedBody797_97

def optimizedBody797_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_52 optimizedBody797_98

def optimizedBody797_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_99

def optimizedBody797_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_3 optimizedBody797_100

def optimizedBody797_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_101

def optimizedBody797_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_51 optimizedBody797_102

def optimizedBody797_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_53 optimizedBody797_103

def optimizedBody797_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_49 optimizedBody797_104

def optimizedBody797_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_52 optimizedBody797_105

def optimizedBody797_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_106

def optimizedBody797_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_3 optimizedBody797_107

def optimizedBody797_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_108

def optimizedBody797_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_51 optimizedBody797_109

def optimizedBody797_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_50 optimizedBody797_110

def optimizedBody797_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_49 optimizedBody797_111

def optimizedBody797_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_48 optimizedBody797_112

def optimizedBody797_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_113

def optimizedBody797_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_3 optimizedBody797_114

def optimizedBody797_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_115

def optimizedBody797_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_47 optimizedBody797_116

def optimizedBody797_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_46 optimizedBody797_117

def optimizedBody797_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_45 optimizedBody797_118

def optimizedBody797_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_44 optimizedBody797_119

def optimizedBody797_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_120

def optimizedBody797_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_3 optimizedBody797_121

def optimizedBody797_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_122

def optimizedBody797_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_43 optimizedBody797_123

def optimizedBody797_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_29 optimizedBody797_124

def optimizedBody797_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_42 optimizedBody797_125

def optimizedBody797_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_41 optimizedBody797_126

def optimizedBody797_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_40 optimizedBody797_127

def optimizedBody797_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_35 optimizedBody797_128

def optimizedBody797_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_34 optimizedBody797_129

def optimizedBody797_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_130

def optimizedBody797_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_30 optimizedBody797_131

def optimizedBody797_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_132

def optimizedBody797_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_29 optimizedBody797_133

def optimizedBody797_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_39 optimizedBody797_134

def optimizedBody797_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_35 optimizedBody797_135

def optimizedBody797_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_34 optimizedBody797_136

def optimizedBody797_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_137

def optimizedBody797_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_30 optimizedBody797_138

def optimizedBody797_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_139

def optimizedBody797_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_29 optimizedBody797_140

def optimizedBody797_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_38 optimizedBody797_141

def optimizedBody797_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_35 optimizedBody797_142

def optimizedBody797_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_34 optimizedBody797_143

def optimizedBody797_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_144

def optimizedBody797_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_30 optimizedBody797_145

def optimizedBody797_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_146

def optimizedBody797_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_29 optimizedBody797_147

def optimizedBody797_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_37 optimizedBody797_148

def optimizedBody797_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_35 optimizedBody797_149

def optimizedBody797_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_34 optimizedBody797_150

def optimizedBody797_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_151

def optimizedBody797_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_30 optimizedBody797_152

def optimizedBody797_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_153

def optimizedBody797_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_29 optimizedBody797_154

def optimizedBody797_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_36 optimizedBody797_155

def optimizedBody797_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_35 optimizedBody797_156

def optimizedBody797_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_34 optimizedBody797_157

def optimizedBody797_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_158

def optimizedBody797_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_30 optimizedBody797_159

def optimizedBody797_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_160

def optimizedBody797_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_29 optimizedBody797_161

def optimizedBody797_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_33 optimizedBody797_162

def optimizedBody797_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_32 optimizedBody797_163

def optimizedBody797_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_31 optimizedBody797_164

def optimizedBody797_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_165

def optimizedBody797_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_30 optimizedBody797_166

def optimizedBody797_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_167

def optimizedBody797_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_29 optimizedBody797_168

def optimizedBody797_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_19 optimizedBody797_169

def optimizedBody797_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_28 optimizedBody797_170

def optimizedBody797_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_23 optimizedBody797_171

def optimizedBody797_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_19 optimizedBody797_172

def optimizedBody797_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody797_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_19 optimizedBody797_174

def optimizedBody797_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 28) optimizedBody797_173 optimizedBody797_175

def optimizedBody797_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 28), (0, 0), (24, 24), (16, 16), (2, 2), (8, 8), (26, 26), (20, 20), (12, 12), (48, 30), (6, 6), (46, 32),
    (18, 18), (14, 14), (22, 22), (10, 10), (4, 4)]

def optimizedBody797_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_19 optimizedBody797_177

def optimizedBody797_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_176 optimizedBody797_178

def optimizedBody797_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_22 optimizedBody797_179

def optimizedBody797_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_21 optimizedBody797_180

def optimizedBody797_182 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody797_181 (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def optimizedBody797_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody797_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4, 6, 8, 10, 12]

def optimizedBody797_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_183 optimizedBody797_184

def optimizedBody797_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_19 optimizedBody797_185

def optimizedBody797_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_182 optimizedBody797_186

def optimizedBody797_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_20 optimizedBody797_187

def optimizedBody797_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_19 optimizedBody797_188

def optimizedBody797_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_18 optimizedBody797_189

def optimizedBody797_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_17 optimizedBody797_190

def optimizedBody797_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_10 optimizedBody797_191

def optimizedBody797_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_9 optimizedBody797_192

def optimizedBody797_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_193

def optimizedBody797_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_16 optimizedBody797_194

def optimizedBody797_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_195

def optimizedBody797_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_15 optimizedBody797_196

def optimizedBody797_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_14 optimizedBody797_197

def optimizedBody797_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_10 optimizedBody797_198

def optimizedBody797_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_9 optimizedBody797_199

def optimizedBody797_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_200

def optimizedBody797_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_3 optimizedBody797_201

def optimizedBody797_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_202

def optimizedBody797_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_8 optimizedBody797_203

def optimizedBody797_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_13 optimizedBody797_204

def optimizedBody797_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_10 optimizedBody797_205

def optimizedBody797_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_9 optimizedBody797_206

def optimizedBody797_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_207

def optimizedBody797_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_3 optimizedBody797_208

def optimizedBody797_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_209

def optimizedBody797_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_8 optimizedBody797_210

def optimizedBody797_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_12 optimizedBody797_211

def optimizedBody797_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_10 optimizedBody797_212

def optimizedBody797_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_9 optimizedBody797_213

def optimizedBody797_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_214

def optimizedBody797_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_3 optimizedBody797_215

def optimizedBody797_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_216

def optimizedBody797_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_8 optimizedBody797_217

def optimizedBody797_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_11 optimizedBody797_218

def optimizedBody797_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_10 optimizedBody797_219

def optimizedBody797_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_9 optimizedBody797_220

def optimizedBody797_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_221

def optimizedBody797_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_3 optimizedBody797_222

def optimizedBody797_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_223

def optimizedBody797_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_8 optimizedBody797_224

def optimizedBody797_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_7 optimizedBody797_225

def optimizedBody797_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_6 optimizedBody797_226

def optimizedBody797_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_5 optimizedBody797_227

def optimizedBody797_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_4 optimizedBody797_228

def optimizedBody797_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_3 optimizedBody797_229

def optimizedBody797_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_2 optimizedBody797_230

def optimizedBody797_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_1 optimizedBody797_231

def optimizedBody797_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody797_0 optimizedBody797_232

def oracle797 : Option (Spt Nat) :=
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
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15)) 11 (Flapjack.Spt.ls 22)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 23 (Flapjack.Spt.ls 28))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 21 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 13 (Flapjack.Spt.ls 19)) 7
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 5)) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 14) (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 13
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 34 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 20) (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 0))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 16
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 12 Flapjack.Spt.ln) 17
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 11
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 10 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 13 Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 9 (Flapjack.Spt.ls 16))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 14 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 14) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 1 (Flapjack.Spt.ls 6)) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 31)) 13
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 11)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 8 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 16) (Flapjack.Spt.ls 12))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)) 9
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 36 (Flapjack.Spt.ls 12)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 28)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 17)) 11
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 28)) 11
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 10))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 25 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 2 (Flapjack.Spt.ls 1))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 7 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 13 (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 11))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 26)) 2 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 (Flapjack.Spt.ls 4)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 32)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8)) 12
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 5 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 17) (Flapjack.Spt.ls 0))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 24 Flapjack.Spt.ln) 13 (Flapjack.Spt.ls 11))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 0 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.ls 15))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 26 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 0 (Flapjack.Spt.ls 2)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 0)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 11 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 0)) 13
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 18)) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 30)) 15
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 28))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 9)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 29 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 14 Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 9)) 8
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 35 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 22)) 11
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 9)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 0 Flapjack.Spt.ln) 18
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 7)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 9 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 11
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.ls 24)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)))))))))
def optimized797 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(797, 10, optimizedBody797_233)
theorem optimize797_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source797, oracle797) = optimized797 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize797_eq
end InitECandidate.Proofs.WordStages
