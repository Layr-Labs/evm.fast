import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source548
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles548
def optimizedBody548_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (44, 2)]

def optimizedBody548_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 8), (6, 6), (4, 4), (46, 46), (44, 44)]

def optimizedBody548_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44)]

def optimizedBody548_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody548_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_2 optimizedBody548_3

def optimizedBody548_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_1, 548, 2)) (some 477) ([]) (some (2, optimizedBody548_4, 548, 3))

def optimizedBody548_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody548_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (48, 0), (52, 8), (44, 44), (58, 6), (60, 4)]

def optimizedBody548_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (10, 2), (4, 4), (6, 6), (46, 46), (48, 48), (52, 52), (0, 44), (58, 58), (60, 60)]

def optimizedBody548_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (52, 52), (0, 44), (58, 58), (60, 60)]

def optimizedBody548_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_9 optimizedBody548_3

def optimizedBody548_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_8, 548, 4)) (some 477) ([]) (some (2, optimizedBody548_10, 548, 5))

def optimizedBody548_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody548_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody548_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody548_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody548_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody548_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody548_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody548_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody548_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody548_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody548_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody548_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_22 optimizedBody548_3

def optimizedBody548_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_21 optimizedBody548_23

def optimizedBody548_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_20 optimizedBody548_24

def optimizedBody548_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_19 optimizedBody548_25

def optimizedBody548_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_18 optimizedBody548_26

def optimizedBody548_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_27

def optimizedBody548_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody548_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody548_28 optimizedBody548_29

def optimizedBody548_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 6), (8, 8), (46, 46), (44, 8), (48, 48), (50, 10), (52, 52), (54, 0), (56, 4), (58, 58),
    (60, 60), (62, 6)]

def optimizedBody548_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (46, 46), (16, 44), (0, 48), (10, 50), (8, 52), (50, 54), (12, 56), (6, 58), (4, 60), (14, 62)]

def optimizedBody548_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (16, 44), (0, 48), (10, 50), (8, 52), (50, 54), (12, 56), (6, 58), (4, 60), (14, 62)]

def optimizedBody548_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_33 optimizedBody548_3

def optimizedBody548_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_32, 548, 6)) (some 464) ([2, 4, 6, 8]) (some (2, optimizedBody548_34, 548, 7))

def optimizedBody548_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (46, 46), (58, 16), (48, 0), (72, 10),
    (52, 8), (44, 18), (50, 50), (68, 12), (60, 6), (62, 4), (64, 14)]

def optimizedBody548_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 4), (6, 2), (46, 46), (58, 58), (48, 48), (72, 72), (52, 52), (4, 44), (44, 50), (68, 68), (60, 60), (62, 62),
    (64, 64)]

def optimizedBody548_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (58, 58), (48, 48), (72, 72), (52, 52), (4, 44), (44, 50), (68, 68), (60, 60), (62, 62), (64, 64)]

def optimizedBody548_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_38 optimizedBody548_3

def optimizedBody548_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_37, 548, 8)) (some 482) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody548_39, 548, 9))

def optimizedBody548_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody548_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (46, 46), (58, 58), (48, 48), (72, 72), (52, 52), (54, 4), (44, 44), (68, 68), (60, 60), (62, 62),
    (64, 64), (56, 0), (50, 6)]

def optimizedBody548_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (14, 4), (46, 46), (58, 58), (48, 48), (72, 72), (52, 52), (54, 54), (8, 44), (68, 68), (60, 60), (62, 62),
    (64, 64), (56, 56), (10, 50)]

def optimizedBody548_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (58, 58), (48, 48), (72, 72), (52, 52), (54, 54), (8, 44), (68, 68), (60, 60), (62, 62), (64, 64),
    (56, 56), (10, 50)]

def optimizedBody548_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_44 optimizedBody548_3

def optimizedBody548_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_43, 548, 10)) (some 119) ([2, 4]) (some (2, optimizedBody548_45, 548, 11))

def optimizedBody548_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody548_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 375#64)

def optimizedBody548_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody548_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody548_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody548_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 375#64)))

def optimizedBody548_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 10), (46, 46), (58, 58), (48, 48), (66, 12), (72, 72), (52, 52), (54, 54), (44, 14), (50, 8), (68, 68),
    (60, 60), (62, 62), (64, 64), (56, 56), (74, 10)]

def optimizedBody548_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (4, 44), (44, 50), (68, 68), (60, 60),
    (62, 62), (64, 64), (50, 56), (74, 74)]

def optimizedBody548_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (4, 44), (44, 50), (68, 68), (60, 60),
    (62, 62), (64, 64), (50, 56), (74, 74)]

def optimizedBody548_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_55 optimizedBody548_3

def optimizedBody548_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
  Flapjack.Spt.ln)), optimizedBody548_54, 548, 12)) (some 465) ([2, 4]) (some (2, optimizedBody548_56, 548, 13))

def optimizedBody548_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody548_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 18446744073709551615#64)

def optimizedBody548_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 4), (44, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (0, 0), (50, 50), (74, 74)]

def optimizedBody548_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_59 optimizedBody548_60

def optimizedBody548_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_61

def optimizedBody548_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 66), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 4), (44, 44), (68, 68),
    (60, 60), (62, 62), (64, 64), (50, 50), (74, 74)]

def optimizedBody548_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (44, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (50, 50), (74, 74)]

def optimizedBody548_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (44, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (50, 50), (74, 74)]

def optimizedBody548_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_65 optimizedBody548_3

def optimizedBody548_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_64, 548, 14)) (some 465) ([2, 4]) (some (2, optimizedBody548_66, 548, 15))

def optimizedBody548_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (44, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (0, 0), (50, 50), (74, 74)]

def optimizedBody548_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_68

def optimizedBody548_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_67 optimizedBody548_69

def optimizedBody548_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_63 optimizedBody548_70

def optimizedBody548_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_71

def optimizedBody548_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody548_62 optimizedBody548_72

def optimizedBody548_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (44, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (70, 0), (50, 50), (74, 74)]

def optimizedBody548_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (0, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (70, 70), (50, 50), (74, 74)]

def optimizedBody548_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (0, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (70, 70), (50, 50), (74, 74)]

def optimizedBody548_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_76 optimizedBody548_3

def optimizedBody548_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_75, 548, 16)) (some 472) ([2]) (some (2, optimizedBody548_77, 548, 17))

def optimizedBody548_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody548_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody548_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (44, 0), (68, 68), (60, 60),
    (62, 62), (64, 64), (70, 70), (50, 50), (74, 74)]

def optimizedBody548_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (6, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (70, 70), (44, 50), (74, 74)]

def optimizedBody548_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (6, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (70, 70), (44, 50), (74, 74)]

def optimizedBody548_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_83 optimizedBody548_3

def optimizedBody548_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_82, 548, 18)) (some 68) ([2]) (some (2, optimizedBody548_84, 548, 19))

def optimizedBody548_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody548_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (50, 4), (52, 52), (54, 54), (76, 76), (56, 6), (68, 68), (60, 60),
    (62, 62), (64, 64), (70, 70), (44, 44), (74, 74), (0, 0)]

def optimizedBody548_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 56), (0, 0)]

def optimizedBody548_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 58), (48, 48), (50, 66), (52, 72), (54, 50), (56, 52), (58, 54), (60, 76), (62, 2), (64, 68),
    (66, 60), (68, 62), (70, 64), (72, 70), (74, 44), (76, 74), (78, 0)]

def optimizedBody548_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (10, 2), (8, 8), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (12, 78)]

def optimizedBody548_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (12, 78)]

def optimizedBody548_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_91 optimizedBody548_3

def optimizedBody548_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
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
  Flapjack.Spt.ln)), optimizedBody548_90, 548, 20)) (some 477) ([]) (some (2, optimizedBody548_92, 548, 21))

def optimizedBody548_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody548_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 12 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody548_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.reg 0)))

def optimizedBody548_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 0), (56, 56),
    (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 12)]

def optimizedBody548_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (4, 44), (48, 48), (6, 50), (8, 52), (50, 54), (52, 56), (54, 58), (10, 60), (56, 62), (12, 64), (60, 66),
    (62, 68), (14, 70), (16, 72), (18, 74), (20, 76), (0, 78)]

def optimizedBody548_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (4, 44), (48, 48), (6, 50), (8, 52), (50, 54), (52, 56), (54, 58), (10, 60), (56, 62), (12, 64),
    (60, 66), (62, 68), (14, 70), (16, 72), (18, 74), (20, 76), (0, 78)]

def optimizedBody548_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_99 optimizedBody548_3

def optimizedBody548_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
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
  Flapjack.Spt.ln)), optimizedBody548_98, 548, 22)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody548_100, 548, 23))

def optimizedBody548_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody548_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (58, 4), (48, 48), (66, 6), (72, 8), (50, 50), (52, 52), (54, 54), (76, 10), (56, 56), (68, 12), (60, 60),
    (62, 62), (64, 14), (70, 16), (44, 18), (74, 20), (0, 0)]

def optimizedBody548_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody548_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_103 optimizedBody548_104

def optimizedBody548_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_102 optimizedBody548_105

def optimizedBody548_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_17 optimizedBody548_106

def optimizedBody548_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_107

def optimizedBody548_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_101 optimizedBody548_108

def optimizedBody548_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_97 optimizedBody548_109

def optimizedBody548_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_96 optimizedBody548_110

def optimizedBody548_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_17 optimizedBody548_111

def optimizedBody548_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_95 optimizedBody548_112

def optimizedBody548_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_94 optimizedBody548_113

def optimizedBody548_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_114

def optimizedBody548_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_93 optimizedBody548_115

def optimizedBody548_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_89 optimizedBody548_116

def optimizedBody548_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_117

def optimizedBody548_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(56, 2)]

def optimizedBody548_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody548_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_119 optimizedBody548_120

def optimizedBody548_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_121

def optimizedBody548_123 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 2) optimizedBody548_118 optimizedBody548_122

def optimizedBody548_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 2), (58, 4), (48, 6), (66, 8), (72, 10), (50, 12), (52, 14), (54, 16), (76, 18), (56, 20), (68, 22), (60, 24),
    (62, 26), (64, 28), (70, 30), (44, 32), (74, 34), (0, 0)]

def optimizedBody548_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_124

def optimizedBody548_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_123 optimizedBody548_125

def optimizedBody548_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_88 optimizedBody548_126

def optimizedBody548_128 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody548_127 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody548_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 44), (44, 46), (46, 48), (48, 50), (50, 52), (52, 54), (56, 56), (60, 60), (62, 62)]

def optimizedBody548_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (60, 60), (62, 62)]

def optimizedBody548_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (60, 60), (62, 62)]

def optimizedBody548_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_131 optimizedBody548_3

def optimizedBody548_133 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_130, 548, 24)) (some 484) ([2]) (some (2, optimizedBody548_132, 548, 25))

def optimizedBody548_134 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_130, 548, 26)) (some 494) ([]) (some (2, optimizedBody548_132, 548, 27))

def optimizedBody548_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 40#64)

def optimizedBody548_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (60, 60), (62, 62)]

def optimizedBody548_137 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_136, 548, 28)) (some 68) ([2]) (some (2, optimizedBody548_132, 548, 29))

def optimizedBody548_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody548_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (58, 0), (60, 60), (62, 62)]

def optimizedBody548_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody548_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody548_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_141 optimizedBody548_3

def optimizedBody548_143 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_140, 548, 30)) (some 68) ([2]) (some (2, optimizedBody548_142, 548, 31))

def optimizedBody548_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody548_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody548_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody548_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody548_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody548_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody548_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody548_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody548_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 2), (56, 56), (58, 58), (60, 60),
    (62, 62)]

def optimizedBody548_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (8, 48), (48, 50), (0, 52), (10, 54), (6, 56), (4, 58), (54, 60), (56, 62)]

def optimizedBody548_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (8, 48), (48, 50), (0, 52), (10, 54), (6, 56), (4, 58), (54, 60), (56, 62)]

def optimizedBody548_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_154 optimizedBody548_3

def optimizedBody548_156 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_153, 548, 32)) (some 77) ([2, 4, 6]) (some (2, optimizedBody548_155, 548, 33))

def optimizedBody548_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody548_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody548_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody548_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody548_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody548_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody548_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody548_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody548_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody548_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 0), (52, 4), (54, 54), (56, 56)]

def optimizedBody548_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (0, 46), (8, 48), (46, 50), (50, 52), (6, 54), (4, 56)]

def optimizedBody548_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (46, 50), (50, 52), (6, 54), (4, 56)]

def optimizedBody548_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_168 optimizedBody548_3

def optimizedBody548_170 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody548_167, 548, 34)) (some 68) ([2]) (some (2, optimizedBody548_169, 548, 35))

def optimizedBody548_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 10), (50, 50)]

def optimizedBody548_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48), (50, 50)]

def optimizedBody548_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (50, 50)]

def optimizedBody548_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_173 optimizedBody548_3

def optimizedBody548_175 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_172, 548, 36)) (some 464) ([2, 4, 6, 8]) (some (2, optimizedBody548_174, 548, 37))

def optimizedBody548_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody548_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody548_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody548_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody548_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody548_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody548_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody548_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6), (48, 2), (50, 50)]

def optimizedBody548_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (6, 48), (4, 50)]

def optimizedBody548_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (4, 50)]

def optimizedBody548_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_185 optimizedBody548_3

def optimizedBody548_187 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_184, 548, 38)) (some 77) ([2, 4, 6]) (some (2, optimizedBody548_186, 548, 39))

def optimizedBody548_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody548_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody548_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody548_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody548_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody548_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody548_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody548_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody548_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_195 optimizedBody548_3

def optimizedBody548_197 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_194, 548, 40)) (some 547) ([2, 4]) (some (2, optimizedBody548_196, 548, 41))

def optimizedBody548_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody548_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody548_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody548_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_200 optimizedBody548_3

def optimizedBody548_202 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody548_199, 548, 42)) (some 492) ([2]) (some (2, optimizedBody548_201, 548, 43))

def optimizedBody548_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody548_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_19 optimizedBody548_203

def optimizedBody548_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_58 optimizedBody548_204

def optimizedBody548_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_205

def optimizedBody548_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_202 optimizedBody548_206

def optimizedBody548_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_195 optimizedBody548_207

def optimizedBody548_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_198 optimizedBody548_208

def optimizedBody548_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_209

def optimizedBody548_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_197 optimizedBody548_210

def optimizedBody548_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_193 optimizedBody548_211

def optimizedBody548_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_192 optimizedBody548_212

def optimizedBody548_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_147 optimizedBody548_213

def optimizedBody548_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_146 optimizedBody548_214

def optimizedBody548_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_145 optimizedBody548_215

def optimizedBody548_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_191 optimizedBody548_216

def optimizedBody548_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_190 optimizedBody548_217

def optimizedBody548_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_189 optimizedBody548_218

def optimizedBody548_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_41 optimizedBody548_219

def optimizedBody548_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_164 optimizedBody548_220

def optimizedBody548_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_163 optimizedBody548_221

def optimizedBody548_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_188 optimizedBody548_222

def optimizedBody548_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_41 optimizedBody548_223

def optimizedBody548_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_224

def optimizedBody548_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_187 optimizedBody548_225

def optimizedBody548_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_183 optimizedBody548_226

def optimizedBody548_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_182 optimizedBody548_227

def optimizedBody548_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_181 optimizedBody548_228

def optimizedBody548_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_180 optimizedBody548_229

def optimizedBody548_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_179 optimizedBody548_230

def optimizedBody548_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_178 optimizedBody548_231

def optimizedBody548_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_177 optimizedBody548_232

def optimizedBody548_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_176 optimizedBody548_233

def optimizedBody548_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_234

def optimizedBody548_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_175 optimizedBody548_235

def optimizedBody548_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_171 optimizedBody548_236

def optimizedBody548_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_237

def optimizedBody548_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_170 optimizedBody548_238

def optimizedBody548_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_166 optimizedBody548_239

def optimizedBody548_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_165 optimizedBody548_240

def optimizedBody548_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_17 optimizedBody548_241

def optimizedBody548_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_164 optimizedBody548_242

def optimizedBody548_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_163 optimizedBody548_243

def optimizedBody548_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_162 optimizedBody548_244

def optimizedBody548_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_41 optimizedBody548_245

def optimizedBody548_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_161 optimizedBody548_246

def optimizedBody548_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_160 optimizedBody548_247

def optimizedBody548_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_159 optimizedBody548_248

def optimizedBody548_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_41 optimizedBody548_249

def optimizedBody548_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_158 optimizedBody548_250

def optimizedBody548_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_157 optimizedBody548_251

def optimizedBody548_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_252

def optimizedBody548_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_156 optimizedBody548_253

def optimizedBody548_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_152 optimizedBody548_254

def optimizedBody548_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_151 optimizedBody548_255

def optimizedBody548_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_150 optimizedBody548_256

def optimizedBody548_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_149 optimizedBody548_257

def optimizedBody548_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_148 optimizedBody548_258

def optimizedBody548_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_147 optimizedBody548_259

def optimizedBody548_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_146 optimizedBody548_260

def optimizedBody548_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_145 optimizedBody548_261

def optimizedBody548_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_144 optimizedBody548_262

def optimizedBody548_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_263

def optimizedBody548_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_143 optimizedBody548_264

def optimizedBody548_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_139 optimizedBody548_265

def optimizedBody548_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_138 optimizedBody548_266

def optimizedBody548_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_267

def optimizedBody548_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_137 optimizedBody548_268

def optimizedBody548_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_131 optimizedBody548_269

def optimizedBody548_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_135 optimizedBody548_270

def optimizedBody548_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_271

def optimizedBody548_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_134 optimizedBody548_272

def optimizedBody548_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_130 optimizedBody548_273

def optimizedBody548_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_274

def optimizedBody548_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_133 optimizedBody548_275

def optimizedBody548_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_129 optimizedBody548_276

def optimizedBody548_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_277

def optimizedBody548_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_128 optimizedBody548_278

def optimizedBody548_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_87 optimizedBody548_279

def optimizedBody548_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_280

def optimizedBody548_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_86 optimizedBody548_281

def optimizedBody548_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_282

def optimizedBody548_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_85 optimizedBody548_283

def optimizedBody548_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_81 optimizedBody548_284

def optimizedBody548_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_80 optimizedBody548_285

def optimizedBody548_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_79 optimizedBody548_286

def optimizedBody548_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_17 optimizedBody548_287

def optimizedBody548_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_288

def optimizedBody548_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_78 optimizedBody548_289

def optimizedBody548_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_74 optimizedBody548_290

def optimizedBody548_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_291

def optimizedBody548_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_73 optimizedBody548_292

def optimizedBody548_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_58 optimizedBody548_293

def optimizedBody548_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_41 optimizedBody548_294

def optimizedBody548_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_295

def optimizedBody548_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_57 optimizedBody548_296

def optimizedBody548_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_53 optimizedBody548_297

def optimizedBody548_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_52 optimizedBody548_298

def optimizedBody548_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_51 optimizedBody548_299

def optimizedBody548_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_50 optimizedBody548_300

def optimizedBody548_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_49 optimizedBody548_301

def optimizedBody548_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_48 optimizedBody548_302

def optimizedBody548_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_47 optimizedBody548_303

def optimizedBody548_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_304

def optimizedBody548_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_46 optimizedBody548_305

def optimizedBody548_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_42 optimizedBody548_306

def optimizedBody548_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_21 optimizedBody548_307

def optimizedBody548_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_41 optimizedBody548_308

def optimizedBody548_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_309

def optimizedBody548_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_40 optimizedBody548_310

def optimizedBody548_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_36 optimizedBody548_311

def optimizedBody548_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_312

def optimizedBody548_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_35 optimizedBody548_313

def optimizedBody548_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_31 optimizedBody548_314

def optimizedBody548_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_315

def optimizedBody548_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_316

def optimizedBody548_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_30 optimizedBody548_317

def optimizedBody548_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_17 optimizedBody548_318

def optimizedBody548_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_16 optimizedBody548_319

def optimizedBody548_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_15 optimizedBody548_320

def optimizedBody548_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_14 optimizedBody548_321

def optimizedBody548_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_13 optimizedBody548_322

def optimizedBody548_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_12 optimizedBody548_323

def optimizedBody548_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_324

def optimizedBody548_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_11 optimizedBody548_325

def optimizedBody548_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_7 optimizedBody548_326

def optimizedBody548_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_6 optimizedBody548_327

def optimizedBody548_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_5 optimizedBody548_328

def optimizedBody548_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody548_0 optimizedBody548_329

def oracle548 : Option (Spt Nat) :=
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
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)) 2 (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 37))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 31))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0))) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 5 Flapjack.Spt.ln))
                  23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)) 24 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 25)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 2)))
                    4 (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 29)))
                  29
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)) 27
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 31))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 24 (Flapjack.Spt.ls 31))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 25))))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 37 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 29))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 17) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 30 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 32 Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 3))) 6
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                4
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 6 (Flapjack.Spt.ls 33)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 35))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 28))))
                  5
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 15) (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 32 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 23 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 37)))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 0))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                  26
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)) 36
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 28))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 32 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 33))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 4 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 30 Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 32)) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 36 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 4 (Flapjack.Spt.ls 36)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1)) 34
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 30))))
                  4
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 14) (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 28
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 29 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 24)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))) 29
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 23)))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 26
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 30))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 29 (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 24))))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 22)) 25 (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) (Flapjack.Spt.ls 34))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 0)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 36
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 30)) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 7 (Flapjack.Spt.ls 24)))
                  30
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0)) 2
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 38)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 32))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 23))))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 16) Flapjack.Spt.ln) 9
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 31 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 22)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 2
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0)))
                    8 (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 29)) Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 26))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 36))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 22)) 7
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 34 Flapjack.Spt.ln))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 34 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 29
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 29 Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 31
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24)) 29 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 26 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 34)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                  26
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 22 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 31)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 34
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30
                    (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                  29
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 33 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 38)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 36)
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 37)) 26
                    (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 38)))
                  23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 25 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 28)) 23 Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)) 23 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 31
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                  30
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 36 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 27
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 22)))
                  24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 32 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 27 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 37 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 32
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)) 24 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 24 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 25 (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))))))))
def optimized548 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(548, 2, optimizedBody548_330)
end InitECandidate.Proofs.SmallStages.Oracles548
