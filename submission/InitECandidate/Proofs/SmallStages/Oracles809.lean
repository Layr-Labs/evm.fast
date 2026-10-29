import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source809
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles809
def optimizedBody809_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(26, 4), (36, 0), (22, 2), (34, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18)]

def optimizedBody809_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 26 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody809_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 48#64)

def optimizedBody809_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4)]

def optimizedBody809_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody809_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(22, 22), (0, 0)]

def optimizedBody809_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 22)))

def optimizedBody809_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody809_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (26, 26)]

def optimizedBody809_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (22, 22)]

def optimizedBody809_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 22 (Flapjack.WordRegImm.reg 0)))

def optimizedBody809_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody809_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody809_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody809_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody809_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 2), (26, 26)]

def optimizedBody809_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody809_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody809_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody809_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody809_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 36), (0, 0), (24, 16), (16, 8), (2, 20), (8, 28), (26, 26), (20, 12), (12, 2), (48, 22), (6, 30), (46, 18),
    (18, 10), (14, 34), (22, 14), (10, 24), (4, 32)]

def optimizedBody809_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26), (0, 0)]

def optimizedBody809_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 26 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody809_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (46, 44), (44, 0), (50, 24), (52, 16), (48, 26), (58, 20), (54, 48), (56, 46), (68, 18), (70, 14), (72, 22)]

def optimizedBody809_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(38, 2), (8, 8), (12, 12), (36, 6), (30, 10), (34, 4), (46, 46), (18, 44), (50, 50), (52, 52), (20, 48), (58, 58),
    (16, 54), (10, 56), (68, 68), (70, 70), (72, 72)]

def optimizedBody809_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (18, 44), (50, 50), (52, 52), (20, 48), (58, 58), (16, 54), (10, 56), (68, 68), (70, 70), (72, 72)]

def optimizedBody809_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody809_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_25 optimizedBody809_26

def optimizedBody809_28 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody809_24, 809, 2)) (some 724) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody809_27, 809, 3))

def optimizedBody809_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody809_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 18), (4, 4)]

def optimizedBody809_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(32, 10), (0, 0)]

def optimizedBody809_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 32)))

def optimizedBody809_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 44 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody809_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (32, 32)]

def optimizedBody809_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 32 (Flapjack.WordRegImm.reg 0)))

def optimizedBody809_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 40 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody809_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 42 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody809_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody809_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody809_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody809_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody809_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 20 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def optimizedBody809_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 0 (Flapjack.WordRegImm.reg 18)))

def optimizedBody809_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (0, 0)]

def optimizedBody809_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 16)))

def optimizedBody809_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody809_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (48, 18), (56, 20)]

def optimizedBody809_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (24, 16)]

def optimizedBody809_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 24 (Flapjack.WordRegImm.reg 0)))

def optimizedBody809_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody809_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (48, 48), (56, 56)]

def optimizedBody809_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (24, 24)]

def optimizedBody809_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody809_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody809_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody809_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 2), (48, 48), (56, 56)]

def optimizedBody809_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 24)]

def optimizedBody809_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody809_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody809_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 44), (4, 40), (6, 42), (8, 26), (10, 10), (12, 28), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 46), (46, 48), (48, 50), (50, 52), (52, 38), (54, 8), (56, 56), (58, 58), (60, 12), (62, 2), (64, 36),
    (66, 32), (68, 68), (70, 70), (72, 72), (74, 30), (76, 34)]

def optimizedBody809_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 4), (22, 10), (18, 6), (24, 12), (20, 8), (14, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (8, 54),
    (52, 56), (54, 58), (12, 60), (56, 62), (6, 64), (58, 66), (60, 68), (62, 70), (64, 72), (10, 74), (4, 76)]

def optimizedBody809_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (8, 54), (52, 56), (54, 58), (12, 60), (56, 62), (6, 64),
    (58, 66), (60, 68), (62, 70), (64, 72), (10, 74), (4, 76)]

def optimizedBody809_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_62 optimizedBody809_26

def optimizedBody809_64 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody809_61, 809, 4)) (some 724) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody809_63, 809, 5))

def optimizedBody809_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def optimizedBody809_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(28, 2), (8, 8), (12, 12), (6, 6), (10, 10), (4, 4), (30, 44), (0, 46), (24, 48), (16, 50), (26, 52), (20, 54),
    (32, 56), (34, 58), (18, 60), (14, 62), (22, 64)]

def optimizedBody809_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (30, 44), (0, 46), (24, 48), (16, 50), (26, 52), (20, 54), (32, 56), (34, 58), (18, 60), (14, 62), (22, 64)]

def optimizedBody809_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_67 optimizedBody809_26

def optimizedBody809_69 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody809_66, 809, 6)) (some 719) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody809_68, 809, 7))

def optimizedBody809_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody809_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody809_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 30), (0, 0), (24, 24), (16, 16), (2, 28), (8, 8), (26, 26), (20, 20), (12, 12), (48, 32), (6, 6), (46, 34),
    (18, 18), (14, 14), (22, 22), (10, 10), (4, 4)]

def optimizedBody809_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody809_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_72 optimizedBody809_73

def optimizedBody809_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_71 optimizedBody809_74

def optimizedBody809_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_70 optimizedBody809_75

def optimizedBody809_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_19 optimizedBody809_76

def optimizedBody809_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_69 optimizedBody809_77

def optimizedBody809_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_65 optimizedBody809_78

def optimizedBody809_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_19 optimizedBody809_79

def optimizedBody809_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_64 optimizedBody809_80

def optimizedBody809_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_60 optimizedBody809_81

def optimizedBody809_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_59 optimizedBody809_82

def optimizedBody809_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_58 optimizedBody809_83

def optimizedBody809_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_57 optimizedBody809_84

def optimizedBody809_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_85

def optimizedBody809_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_16 optimizedBody809_86

def optimizedBody809_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_87

def optimizedBody809_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_56 optimizedBody809_88

def optimizedBody809_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_55 optimizedBody809_89

def optimizedBody809_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_49 optimizedBody809_90

def optimizedBody809_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_52 optimizedBody809_91

def optimizedBody809_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_92

def optimizedBody809_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_3 optimizedBody809_93

def optimizedBody809_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_94

def optimizedBody809_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_51 optimizedBody809_95

def optimizedBody809_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_54 optimizedBody809_96

def optimizedBody809_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_49 optimizedBody809_97

def optimizedBody809_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_52 optimizedBody809_98

def optimizedBody809_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_99

def optimizedBody809_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_3 optimizedBody809_100

def optimizedBody809_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_101

def optimizedBody809_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_51 optimizedBody809_102

def optimizedBody809_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_53 optimizedBody809_103

def optimizedBody809_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_49 optimizedBody809_104

def optimizedBody809_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_52 optimizedBody809_105

def optimizedBody809_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_106

def optimizedBody809_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_3 optimizedBody809_107

def optimizedBody809_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_108

def optimizedBody809_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_51 optimizedBody809_109

def optimizedBody809_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_50 optimizedBody809_110

def optimizedBody809_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_49 optimizedBody809_111

def optimizedBody809_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_48 optimizedBody809_112

def optimizedBody809_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_113

def optimizedBody809_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_3 optimizedBody809_114

def optimizedBody809_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_115

def optimizedBody809_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_47 optimizedBody809_116

def optimizedBody809_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_46 optimizedBody809_117

def optimizedBody809_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_45 optimizedBody809_118

def optimizedBody809_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_44 optimizedBody809_119

def optimizedBody809_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_120

def optimizedBody809_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_3 optimizedBody809_121

def optimizedBody809_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_122

def optimizedBody809_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_43 optimizedBody809_123

def optimizedBody809_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_29 optimizedBody809_124

def optimizedBody809_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_42 optimizedBody809_125

def optimizedBody809_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_41 optimizedBody809_126

def optimizedBody809_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_40 optimizedBody809_127

def optimizedBody809_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_35 optimizedBody809_128

def optimizedBody809_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_34 optimizedBody809_129

def optimizedBody809_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_130

def optimizedBody809_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_30 optimizedBody809_131

def optimizedBody809_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_132

def optimizedBody809_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_29 optimizedBody809_133

def optimizedBody809_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_39 optimizedBody809_134

def optimizedBody809_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_35 optimizedBody809_135

def optimizedBody809_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_34 optimizedBody809_136

def optimizedBody809_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_137

def optimizedBody809_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_30 optimizedBody809_138

def optimizedBody809_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_139

def optimizedBody809_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_29 optimizedBody809_140

def optimizedBody809_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_38 optimizedBody809_141

def optimizedBody809_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_35 optimizedBody809_142

def optimizedBody809_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_34 optimizedBody809_143

def optimizedBody809_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_144

def optimizedBody809_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_30 optimizedBody809_145

def optimizedBody809_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_146

def optimizedBody809_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_29 optimizedBody809_147

def optimizedBody809_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_37 optimizedBody809_148

def optimizedBody809_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_35 optimizedBody809_149

def optimizedBody809_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_34 optimizedBody809_150

def optimizedBody809_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_151

def optimizedBody809_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_30 optimizedBody809_152

def optimizedBody809_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_153

def optimizedBody809_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_29 optimizedBody809_154

def optimizedBody809_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_36 optimizedBody809_155

def optimizedBody809_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_35 optimizedBody809_156

def optimizedBody809_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_34 optimizedBody809_157

def optimizedBody809_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_158

def optimizedBody809_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_30 optimizedBody809_159

def optimizedBody809_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_160

def optimizedBody809_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_29 optimizedBody809_161

def optimizedBody809_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_33 optimizedBody809_162

def optimizedBody809_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_32 optimizedBody809_163

def optimizedBody809_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_31 optimizedBody809_164

def optimizedBody809_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_165

def optimizedBody809_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_30 optimizedBody809_166

def optimizedBody809_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_167

def optimizedBody809_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_29 optimizedBody809_168

def optimizedBody809_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_19 optimizedBody809_169

def optimizedBody809_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_28 optimizedBody809_170

def optimizedBody809_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_23 optimizedBody809_171

def optimizedBody809_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_19 optimizedBody809_172

def optimizedBody809_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody809_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_19 optimizedBody809_174

def optimizedBody809_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 28) optimizedBody809_173 optimizedBody809_175

def optimizedBody809_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 28), (0, 0), (24, 24), (16, 16), (2, 2), (8, 8), (26, 26), (20, 20), (12, 12), (48, 30), (6, 6), (46, 32),
    (18, 18), (14, 14), (22, 22), (10, 10), (4, 4)]

def optimizedBody809_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_19 optimizedBody809_177

def optimizedBody809_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_176 optimizedBody809_178

def optimizedBody809_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_22 optimizedBody809_179

def optimizedBody809_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_21 optimizedBody809_180

def optimizedBody809_182 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) optimizedBody809_181 (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def optimizedBody809_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody809_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4, 6, 8, 10, 12]

def optimizedBody809_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_183 optimizedBody809_184

def optimizedBody809_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_19 optimizedBody809_185

def optimizedBody809_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_182 optimizedBody809_186

def optimizedBody809_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_20 optimizedBody809_187

def optimizedBody809_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_19 optimizedBody809_188

def optimizedBody809_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_18 optimizedBody809_189

def optimizedBody809_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_17 optimizedBody809_190

def optimizedBody809_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_10 optimizedBody809_191

def optimizedBody809_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_9 optimizedBody809_192

def optimizedBody809_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_193

def optimizedBody809_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_16 optimizedBody809_194

def optimizedBody809_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_195

def optimizedBody809_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_15 optimizedBody809_196

def optimizedBody809_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_14 optimizedBody809_197

def optimizedBody809_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_10 optimizedBody809_198

def optimizedBody809_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_9 optimizedBody809_199

def optimizedBody809_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_200

def optimizedBody809_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_3 optimizedBody809_201

def optimizedBody809_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_202

def optimizedBody809_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_8 optimizedBody809_203

def optimizedBody809_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_13 optimizedBody809_204

def optimizedBody809_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_10 optimizedBody809_205

def optimizedBody809_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_9 optimizedBody809_206

def optimizedBody809_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_207

def optimizedBody809_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_3 optimizedBody809_208

def optimizedBody809_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_209

def optimizedBody809_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_8 optimizedBody809_210

def optimizedBody809_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_12 optimizedBody809_211

def optimizedBody809_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_10 optimizedBody809_212

def optimizedBody809_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_9 optimizedBody809_213

def optimizedBody809_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_214

def optimizedBody809_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_3 optimizedBody809_215

def optimizedBody809_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_216

def optimizedBody809_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_8 optimizedBody809_217

def optimizedBody809_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_11 optimizedBody809_218

def optimizedBody809_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_10 optimizedBody809_219

def optimizedBody809_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_9 optimizedBody809_220

def optimizedBody809_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_221

def optimizedBody809_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_3 optimizedBody809_222

def optimizedBody809_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_223

def optimizedBody809_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_8 optimizedBody809_224

def optimizedBody809_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_7 optimizedBody809_225

def optimizedBody809_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_6 optimizedBody809_226

def optimizedBody809_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_5 optimizedBody809_227

def optimizedBody809_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_4 optimizedBody809_228

def optimizedBody809_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_3 optimizedBody809_229

def optimizedBody809_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_230

def optimizedBody809_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_1 optimizedBody809_231

def optimizedBody809_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_0 optimizedBody809_232

def oracle809 : Option (Spt Nat) :=
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
def optimized809 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(809, 10, optimizedBody809_233)
end InitECandidate.Proofs.SmallStages.Oracles809
