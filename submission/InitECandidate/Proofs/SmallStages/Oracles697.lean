import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source697
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles697
def optimizedBody697_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody697_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody697_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody697_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (0, 4), (6, 6), (46, 2)]

def optimizedBody697_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody697_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody697_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 6 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody697_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody697_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody697_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody697_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6), (0, 0)]

def optimizedBody697_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody697_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody697_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody697_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody697_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody697_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody697_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody697_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody697_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (50, 6), (0, 0)]

def optimizedBody697_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody697_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody697_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (50, 50), (54, 0)]

def optimizedBody697_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody697_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (50, 50), (54, 54)]

def optimizedBody697_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody697_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 2)]

def optimizedBody697_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 9#64)

def optimizedBody697_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 6), (48, 16), (54, 54), (50, 50), (72, 46), (52, 4),
    (56, 14), (58, 12), (60, 8), (62, 2), (64, 18)]

def optimizedBody697_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (16, 8), (12, 4), (14, 6), (44, 44), (46, 46), (6, 48), (54, 54), (48, 50), (72, 72), (50, 52), (4, 56),
    (0, 58), (52, 60), (56, 62), (8, 64)]

def optimizedBody697_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (6, 48), (54, 54), (48, 50), (72, 72), (50, 52), (4, 56), (0, 58), (52, 60), (56, 62),
    (8, 64)]

def optimizedBody697_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody697_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_30 optimizedBody697_31

def optimizedBody697_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody697_29, 697, 2)) (some 672) ([2, 4, 6, 8, 10]) (some (2, optimizedBody697_32, 697, 3))

def optimizedBody697_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (54, 54), (48, 48),
    (72, 72), (50, 50), (52, 52), (56, 56)]

def optimizedBody697_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (8, 8), (16, 2), (4, 4), (44, 44), (10, 46), (54, 54), (48, 48), (72, 72), (0, 50), (12, 52), (14, 56)]

def optimizedBody697_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (54, 54), (48, 48), (72, 72), (0, 50), (12, 52), (14, 56)]

def optimizedBody697_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_36 optimizedBody697_31

def optimizedBody697_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody697_35, 697, 4)) (some 665) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody697_37, 697, 5))

def optimizedBody697_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (54, 54), (46, 6), (48, 48), (72, 72), (50, 8), (52, 16), (56, 4)]

def optimizedBody697_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (8, 8), (26, 2), (6, 6), (44, 44), (54, 54), (20, 46), (14, 48), (72, 72), (22, 50), (24, 52), (18, 56)]

def optimizedBody697_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (20, 46), (14, 48), (72, 72), (22, 50), (24, 52), (18, 56)]

def optimizedBody697_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_41 optimizedBody697_31

def optimizedBody697_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody697_40, 697, 6)) (some 667) ([2, 4, 6, 8]) (some (2, optimizedBody697_42, 697, 7))

def optimizedBody697_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody697_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 14 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody697_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody697_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody697_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody697_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551224#64))

def optimizedBody697_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.reg 0)))

def optimizedBody697_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody697_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (68, 14), (0, 0)]

def optimizedBody697_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody697_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody697_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (68, 68)]

def optimizedBody697_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody697_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody697_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (68, 68)]

def optimizedBody697_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody697_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody697_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody697_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody697_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 24), (4, 18), (6, 20), (8, 22), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 4), (48, 2), (54, 54),
    (50, 8), (52, 28), (60, 14), (56, 0), (66, 20), (68, 68), (58, 26), (72, 72), (74, 10), (76, 22), (78, 24),
    (82, 16), (62, 30), (86, 12), (88, 18), (64, 6)]

def optimizedBody697_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (24, 2), (4, 4), (6, 6), (44, 44), (0, 46), (12, 48), (54, 54), (20, 50), (10, 52), (60, 60), (16, 56),
    (66, 66), (68, 68), (22, 58), (72, 72), (74, 74), (76, 76), (78, 78), (82, 82), (14, 62), (86, 86), (88, 88),
    (18, 64)]

def optimizedBody697_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (12, 48), (54, 54), (20, 50), (10, 52), (60, 60), (16, 56), (66, 66), (68, 68), (22, 58),
    (72, 72), (74, 74), (76, 76), (78, 78), (82, 82), (14, 62), (86, 86), (88, 88), (18, 64)]

def optimizedBody697_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_65 optimizedBody697_31

def optimizedBody697_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody697_64, 697, 8)) (some 668) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody697_66, 697, 9))

def optimizedBody697_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 0), (48, 8), (50, 24),
    (52, 12), (54, 54), (56, 20), (58, 10), (60, 60), (62, 16), (64, 4), (66, 66), (68, 68), (70, 22), (72, 72),
    (74, 74), (76, 76), (78, 78), (80, 6), (82, 82), (84, 14), (86, 86), (88, 88), (90, 18)]

def optimizedBody697_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (8, 8), (24, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (12, 52), (54, 54), (52, 56), (10, 58),
    (56, 60), (16, 62), (58, 64), (18, 66), (60, 68), (62, 70), (66, 72), (70, 74), (20, 76), (22, 78), (72, 80),
    (76, 82), (14, 84), (78, 86), (0, 88), (82, 90)]

def optimizedBody697_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (12, 52), (54, 54), (52, 56), (10, 58), (56, 60), (16, 62), (58, 64),
    (18, 66), (60, 68), (62, 70), (66, 72), (70, 74), (20, 76), (22, 78), (72, 80), (76, 82), (14, 84), (78, 86),
    (0, 88), (82, 90)]

def optimizedBody697_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_70 optimizedBody697_31

def optimizedBody697_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody697_69, 697, 10)) (some 668) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody697_71, 697, 11))

def optimizedBody697_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (54, 54), (52, 52), (56, 56), (58, 58), (60, 60), (62, 62), (64, 6), (66, 66), (68, 8), (70, 70), (72, 72),
    (74, 24), (76, 76), (78, 78), (80, 4), (82, 82)]

def optimizedBody697_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 2), (8, 8), (4, 4), (6, 6), (44, 44), (0, 46), (48, 48), (50, 50), (54, 54), (20, 52), (14, 56), (58, 58),
    (60, 60), (22, 62), (62, 64), (64, 66), (66, 68), (10, 70), (70, 72), (72, 74), (16, 76), (12, 78), (74, 80),
    (18, 82)]

def optimizedBody697_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (54, 54), (20, 52), (14, 56), (58, 58), (60, 60), (22, 62), (62, 64),
    (64, 66), (66, 68), (10, 70), (70, 72), (72, 74), (16, 76), (12, 78), (74, 80), (18, 82)]

def optimizedBody697_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_75 optimizedBody697_31

def optimizedBody697_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody697_74, 697, 12)) (some 668) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody697_76, 697, 13))

def optimizedBody697_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 24), (48, 48), (50, 50),
    (52, 8), (54, 54), (56, 4), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 6), (70, 70), (72, 72), (74, 74)]

def optimizedBody697_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (24, 2), (8, 8), (4, 4), (44, 44), (46, 46), (20, 48), (22, 50), (48, 52), (50, 54), (54, 56), (0, 58),
    (56, 60), (14, 62), (58, 64), (16, 66), (62, 68), (18, 70), (10, 72), (12, 74)]

def optimizedBody697_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (20, 48), (22, 50), (48, 52), (50, 54), (54, 56), (0, 58), (56, 60), (14, 62), (58, 64),
    (16, 66), (62, 68), (18, 70), (10, 72), (12, 74)]

def optimizedBody697_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_80 optimizedBody697_31

def optimizedBody697_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
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
  Flapjack.Spt.ln)), optimizedBody697_79, 697, 14)) (some 668) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody697_81, 697, 15))

def optimizedBody697_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 6), (54, 54), (56, 56), (58, 58), (60, 24), (62, 62), (64, 8), (66, 4)]

def optimizedBody697_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (8, 8), (24, 2), (6, 6), (44, 44), (22, 46), (20, 48), (50, 50), (14, 52), (0, 54), (56, 56), (58, 58),
    (10, 60), (18, 62), (16, 64), (12, 66)]

def optimizedBody697_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (22, 46), (20, 48), (50, 50), (14, 52), (0, 54), (56, 56), (58, 58), (10, 60), (18, 62), (16, 64),
    (12, 66)]

def optimizedBody697_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_85 optimizedBody697_31

def optimizedBody697_87 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody697_84, 697, 16)) (some 666) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody697_86, 697, 17))

def optimizedBody697_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (48, 4), (50, 50), (52, 8),
    (54, 24), (56, 56), (58, 58), (64, 6)]

def optimizedBody697_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (8, 8), (0, 2), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (64, 64)]

def optimizedBody697_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (64, 64)]

def optimizedBody697_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_90 optimizedBody697_31

def optimizedBody697_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody697_89, 697, 18)) (some 665) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody697_91, 697, 19))

def optimizedBody697_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody697_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 6), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56),
    (58, 58), (60, 4), (62, 8), (64, 64), (66, 2)]

def optimizedBody697_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 4), (10, 2), (16, 8), (14, 6), (44, 44), (46, 46), (4, 48), (48, 50), (8, 52), (0, 54), (50, 56), (52, 58),
    (54, 60), (56, 62), (6, 64), (58, 66)]

def optimizedBody697_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (48, 50), (8, 52), (0, 54), (50, 56), (52, 58), (54, 60), (56, 62), (6, 64),
    (58, 66)]

def optimizedBody697_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_96 optimizedBody697_31

def optimizedBody697_98 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody697_95, 697, 20)) (some 672) ([2, 4, 6, 8, 10]) (some (2, optimizedBody697_97, 697, 21))

def optimizedBody697_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody697_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (22, 2), (8, 8), (24, 44), (14, 46), (0, 48), (10, 50), (18, 52), (20, 54), (12, 56), (16, 58)]

def optimizedBody697_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (24, 44), (14, 46), (0, 48), (10, 50), (18, 52), (20, 54), (12, 56), (16, 58)]

def optimizedBody697_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_101 optimizedBody697_31

def optimizedBody697_103 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody697_100, 697, 22)) (some 666) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody697_102, 697, 23))

def optimizedBody697_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody697_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 10 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody697_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody697_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 18)))

def optimizedBody697_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (22, 22), (8, 8), (6, 6), (4, 4)]

def optimizedBody697_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody697_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody697_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody697_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody697_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody697_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody697_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody697_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody697_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody697_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (16, 16), (12, 12), (14, 14), (20, 20)]

def optimizedBody697_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody697_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (20, 20)]

def optimizedBody697_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody697_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody697_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody697_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody697_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody697_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody697_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 24), (0, 0), (6, 6), (46, 18)]

def optimizedBody697_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody697_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_127 optimizedBody697_128

def optimizedBody697_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_126 optimizedBody697_129

def optimizedBody697_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_104 optimizedBody697_130

def optimizedBody697_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_125 optimizedBody697_131

def optimizedBody697_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_124 optimizedBody697_132

def optimizedBody697_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_123 optimizedBody697_133

def optimizedBody697_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_122 optimizedBody697_134

def optimizedBody697_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_121 optimizedBody697_135

def optimizedBody697_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_120 optimizedBody697_136

def optimizedBody697_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_119 optimizedBody697_137

def optimizedBody697_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_118 optimizedBody697_138

def optimizedBody697_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_107 optimizedBody697_139

def optimizedBody697_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_106 optimizedBody697_140

def optimizedBody697_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_117 optimizedBody697_141

def optimizedBody697_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_116 optimizedBody697_142

def optimizedBody697_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_104 optimizedBody697_143

def optimizedBody697_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_115 optimizedBody697_144

def optimizedBody697_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_114 optimizedBody697_145

def optimizedBody697_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_113 optimizedBody697_146

def optimizedBody697_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_112 optimizedBody697_147

def optimizedBody697_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_111 optimizedBody697_148

def optimizedBody697_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_110 optimizedBody697_149

def optimizedBody697_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_109 optimizedBody697_150

def optimizedBody697_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_108 optimizedBody697_151

def optimizedBody697_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_107 optimizedBody697_152

def optimizedBody697_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_106 optimizedBody697_153

def optimizedBody697_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_105 optimizedBody697_154

def optimizedBody697_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_104 optimizedBody697_155

def optimizedBody697_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_156

def optimizedBody697_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_103 optimizedBody697_157

def optimizedBody697_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_99 optimizedBody697_158

def optimizedBody697_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_159

def optimizedBody697_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_98 optimizedBody697_160

def optimizedBody697_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_94 optimizedBody697_161

def optimizedBody697_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_27 optimizedBody697_162

def optimizedBody697_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_93 optimizedBody697_163

def optimizedBody697_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_164

def optimizedBody697_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_92 optimizedBody697_165

def optimizedBody697_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_88 optimizedBody697_166

def optimizedBody697_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_167

def optimizedBody697_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_87 optimizedBody697_168

def optimizedBody697_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_83 optimizedBody697_169

def optimizedBody697_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_170

def optimizedBody697_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_82 optimizedBody697_171

def optimizedBody697_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_78 optimizedBody697_172

def optimizedBody697_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_173

def optimizedBody697_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_77 optimizedBody697_174

def optimizedBody697_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_73 optimizedBody697_175

def optimizedBody697_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_176

def optimizedBody697_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_72 optimizedBody697_177

def optimizedBody697_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_68 optimizedBody697_178

def optimizedBody697_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_179

def optimizedBody697_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_67 optimizedBody697_180

def optimizedBody697_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_63 optimizedBody697_181

def optimizedBody697_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_62 optimizedBody697_182

def optimizedBody697_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_55 optimizedBody697_183

def optimizedBody697_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_61 optimizedBody697_184

def optimizedBody697_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_55 optimizedBody697_185

def optimizedBody697_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_60 optimizedBody697_186

def optimizedBody697_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_55 optimizedBody697_187

def optimizedBody697_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_59 optimizedBody697_188

def optimizedBody697_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_58 optimizedBody697_189

def optimizedBody697_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_57 optimizedBody697_190

def optimizedBody697_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_55 optimizedBody697_191

def optimizedBody697_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_56 optimizedBody697_192

def optimizedBody697_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_55 optimizedBody697_193

def optimizedBody697_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_54 optimizedBody697_194

def optimizedBody697_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_53 optimizedBody697_195

def optimizedBody697_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_52 optimizedBody697_196

def optimizedBody697_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_51 optimizedBody697_197

def optimizedBody697_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_50 optimizedBody697_198

def optimizedBody697_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_49 optimizedBody697_199

def optimizedBody697_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_48 optimizedBody697_200

def optimizedBody697_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_47 optimizedBody697_201

def optimizedBody697_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_46 optimizedBody697_202

def optimizedBody697_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_45 optimizedBody697_203

def optimizedBody697_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_44 optimizedBody697_204

def optimizedBody697_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_205

def optimizedBody697_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_43 optimizedBody697_206

def optimizedBody697_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_39 optimizedBody697_207

def optimizedBody697_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_208

def optimizedBody697_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_38 optimizedBody697_209

def optimizedBody697_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_34 optimizedBody697_210

def optimizedBody697_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_211

def optimizedBody697_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_33 optimizedBody697_212

def optimizedBody697_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_28 optimizedBody697_213

def optimizedBody697_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_27 optimizedBody697_214

def optimizedBody697_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_26 optimizedBody697_215

def optimizedBody697_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_25 optimizedBody697_216

def optimizedBody697_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_24 optimizedBody697_217

def optimizedBody697_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_23 optimizedBody697_218

def optimizedBody697_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_22 optimizedBody697_219

def optimizedBody697_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_21 optimizedBody697_220

def optimizedBody697_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_20 optimizedBody697_221

def optimizedBody697_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_19 optimizedBody697_222

def optimizedBody697_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_18 optimizedBody697_223

def optimizedBody697_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_17 optimizedBody697_224

def optimizedBody697_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_7 optimizedBody697_225

def optimizedBody697_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_16 optimizedBody697_226

def optimizedBody697_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_15 optimizedBody697_227

def optimizedBody697_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_4 optimizedBody697_228

def optimizedBody697_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_14 optimizedBody697_229

def optimizedBody697_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_10 optimizedBody697_230

def optimizedBody697_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_13 optimizedBody697_231

def optimizedBody697_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_10 optimizedBody697_232

def optimizedBody697_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_12 optimizedBody697_233

def optimizedBody697_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_11 optimizedBody697_234

def optimizedBody697_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_10 optimizedBody697_235

def optimizedBody697_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_9 optimizedBody697_236

def optimizedBody697_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_8 optimizedBody697_237

def optimizedBody697_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_7 optimizedBody697_238

def optimizedBody697_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_6 optimizedBody697_239

def optimizedBody697_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_4 optimizedBody697_240

def optimizedBody697_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_241

def optimizedBody697_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody697_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_243

def optimizedBody697_245 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 2) optimizedBody697_242 optimizedBody697_244

def optimizedBody697_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (0, 0), (6, 6), (46, 4)]

def optimizedBody697_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_246

def optimizedBody697_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_245 optimizedBody697_247

def optimizedBody697_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_5 optimizedBody697_248

def optimizedBody697_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_4 optimizedBody697_249

def optimizedBody697_251 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody697_250 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody697_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody697_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody697_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody697_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_253 optimizedBody697_254

def optimizedBody697_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_252 optimizedBody697_255

def optimizedBody697_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_256

def optimizedBody697_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_251 optimizedBody697_257

def optimizedBody697_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_3 optimizedBody697_258

def optimizedBody697_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_2 optimizedBody697_259

def optimizedBody697_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_1 optimizedBody697_260

def optimizedBody697_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody697_0 optimizedBody697_261

def oracle697 : Option (Spt Nat) :=
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
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                  8
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 7
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 6)) (Flapjack.Spt.ls 34)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 36)) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 3)) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 29))))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 0 (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 7)) 4 (Flapjack.Spt.ls 0)))
                  2 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 28 (Flapjack.Spt.ls 36)) 0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 24 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 10)) (Flapjack.Spt.ls 5)))
                  3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 25))))
                  0
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 10)) 7 Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 12 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 34 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 7)) (Flapjack.Spt.ls 8)))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 10)) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 27))))
                  6
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 34 (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 8)) 8 (Flapjack.Spt.ls 34))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 10 (Flapjack.Spt.ls 9)))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 5 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 34 (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 8)) 3 (Flapjack.Spt.ls 27)))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 1
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 30)) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 22))))
                  3
                  (Flapjack.Spt.bs Flapjack.Spt.ln 27
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 2)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 6
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 33)))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 36
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 28))))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 10)) 8 (Flapjack.Spt.ls 22)))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 1
                    (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) 26 (Flapjack.Spt.ls 7)) 7
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 27 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 8)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 10)))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 31)) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 24))))
                  1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 9)) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) 4 (Flapjack.Spt.ls 11)) 3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 36
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 30)))
                  23
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 35)) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 26))))
                  2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 9
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 6)) 6 Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 38)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 27
                      (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 32))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 22 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 8 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 7)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 6)) (Flapjack.Spt.ls 6)))
                  3 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 14 (Flapjack.Spt.ls 9))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 11)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 15)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 38))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 31
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 26)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 32))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 28 (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 34))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 24 (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.ls 43)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.ls 36))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 25 (Flapjack.Spt.ls 27))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.ls 34))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 28))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.ls 41)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.ls 37))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 26 (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 35))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 33))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 36
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 27 (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 29))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 36 (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.ls 33))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 30))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 32
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.ls 39)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))))))))
def optimized697 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(697, 3, optimizedBody697_262)
end InitECandidate.Proofs.SmallStages.Oracles697
