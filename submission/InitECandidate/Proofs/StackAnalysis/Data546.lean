import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody546_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (44, 2)]

def optimizedBody546_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 8), (6, 6), (4, 4), (46, 46), (44, 44)]

def optimizedBody546_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44)]

def optimizedBody546_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody546_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_2 optimizedBody546_3

def optimizedBody546_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody546_1, 546, 2)) (some 475) ([]) (some (2, optimizedBody546_4, 546, 3))

def optimizedBody546_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody546_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (48, 0), (52, 8), (44, 44), (58, 6), (60, 4)]

def optimizedBody546_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (10, 2), (4, 4), (6, 6), (46, 46), (48, 48), (52, 52), (0, 44), (58, 58), (60, 60)]

def optimizedBody546_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (52, 52), (0, 44), (58, 58), (60, 60)]

def optimizedBody546_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_9 optimizedBody546_3

def optimizedBody546_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody546_8, 546, 4)) (some 475) ([]) (some (2, optimizedBody546_10, 546, 5))

def optimizedBody546_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody546_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody546_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody546_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody546_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody546_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody546_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody546_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody546_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody546_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody546_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody546_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_22 optimizedBody546_3

def optimizedBody546_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_21 optimizedBody546_23

def optimizedBody546_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_20 optimizedBody546_24

def optimizedBody546_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_19 optimizedBody546_25

def optimizedBody546_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_18 optimizedBody546_26

def optimizedBody546_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_27

def optimizedBody546_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody546_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody546_28 optimizedBody546_29

def optimizedBody546_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 6), (8, 8), (46, 46), (44, 8), (48, 48), (50, 10), (52, 52), (54, 0), (56, 4), (58, 58),
    (60, 60), (62, 6)]

def optimizedBody546_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (46, 46), (16, 44), (0, 48), (10, 50), (8, 52), (50, 54), (12, 56), (6, 58), (4, 60), (14, 62)]

def optimizedBody546_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (16, 44), (0, 48), (10, 50), (8, 52), (50, 54), (12, 56), (6, 58), (4, 60), (14, 62)]

def optimizedBody546_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_33 optimizedBody546_3

def optimizedBody546_35 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody546_32, 546, 6)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody546_34, 546, 7))

def optimizedBody546_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (46, 46), (58, 16), (48, 0), (72, 10),
    (52, 8), (44, 18), (50, 50), (68, 12), (60, 6), (62, 4), (64, 14)]

def optimizedBody546_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 4), (6, 2), (46, 46), (58, 58), (48, 48), (72, 72), (52, 52), (4, 44), (44, 50), (68, 68), (60, 60), (62, 62),
    (64, 64)]

def optimizedBody546_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (58, 58), (48, 48), (72, 72), (52, 52), (4, 44), (44, 50), (68, 68), (60, 60), (62, 62), (64, 64)]

def optimizedBody546_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_38 optimizedBody546_3

def optimizedBody546_40 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody546_37, 546, 8)) (some 480) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody546_39, 546, 9))

def optimizedBody546_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody546_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (46, 46), (58, 58), (48, 48), (72, 72), (52, 52), (54, 4), (44, 44), (68, 68), (60, 60), (62, 62),
    (64, 64), (56, 0), (50, 6)]

def optimizedBody546_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (14, 4), (46, 46), (58, 58), (48, 48), (72, 72), (52, 52), (54, 54), (8, 44), (68, 68), (60, 60), (62, 62),
    (64, 64), (56, 56), (10, 50)]

def optimizedBody546_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (58, 58), (48, 48), (72, 72), (52, 52), (54, 54), (8, 44), (68, 68), (60, 60), (62, 62), (64, 64),
    (56, 56), (10, 50)]

def optimizedBody546_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_44 optimizedBody546_3

def optimizedBody546_46 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody546_43, 546, 10)) (some 119) ([2, 4]) (some (2, optimizedBody546_45, 546, 11))

def optimizedBody546_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody546_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 375#64)

def optimizedBody546_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody546_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody546_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody546_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 375#64)))

def optimizedBody546_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 10), (46, 46), (58, 58), (48, 48), (66, 12), (72, 72), (52, 52), (54, 54), (44, 14), (50, 8), (68, 68),
    (60, 60), (62, 62), (64, 64), (56, 56), (74, 10)]

def optimizedBody546_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (4, 44), (44, 50), (68, 68), (60, 60),
    (62, 62), (64, 64), (50, 56), (74, 74)]

def optimizedBody546_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (4, 44), (44, 50), (68, 68), (60, 60),
    (62, 62), (64, 64), (50, 56), (74, 74)]

def optimizedBody546_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_55 optimizedBody546_3

def optimizedBody546_57 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody546_54, 546, 12)) (some 463) ([2, 4]) (some (2, optimizedBody546_56, 546, 13))

def optimizedBody546_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody546_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 18446744073709551615#64)

def optimizedBody546_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 4), (44, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (0, 0), (50, 50), (74, 74)]

def optimizedBody546_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_59 optimizedBody546_60

def optimizedBody546_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_61

def optimizedBody546_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 66), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 4), (44, 44), (68, 68),
    (60, 60), (62, 62), (64, 64), (50, 50), (74, 74)]

def optimizedBody546_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (44, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (50, 50), (74, 74)]

def optimizedBody546_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (44, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (50, 50), (74, 74)]

def optimizedBody546_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_65 optimizedBody546_3

def optimizedBody546_67 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody546_64, 546, 14)) (some 463) ([2, 4]) (some (2, optimizedBody546_66, 546, 15))

def optimizedBody546_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (44, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (0, 0), (50, 50), (74, 74)]

def optimizedBody546_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_68

def optimizedBody546_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_67 optimizedBody546_69

def optimizedBody546_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_63 optimizedBody546_70

def optimizedBody546_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_71

def optimizedBody546_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody546_62 optimizedBody546_72

def optimizedBody546_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (44, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (70, 0), (50, 50), (74, 74)]

def optimizedBody546_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (0, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (70, 70), (50, 50), (74, 74)]

def optimizedBody546_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (0, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (70, 70), (50, 50), (74, 74)]

def optimizedBody546_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_76 optimizedBody546_3

def optimizedBody546_78 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody546_75, 546, 16)) (some 470) ([2]) (some (2, optimizedBody546_77, 546, 17))

def optimizedBody546_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody546_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody546_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (44, 0), (68, 68), (60, 60),
    (62, 62), (64, 64), (70, 70), (50, 50), (74, 74)]

def optimizedBody546_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (6, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (70, 70), (44, 50), (74, 74)]

def optimizedBody546_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (52, 52), (54, 54), (76, 76), (6, 44), (68, 68), (60, 60),
    (62, 62), (64, 64), (70, 70), (44, 50), (74, 74)]

def optimizedBody546_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_83 optimizedBody546_3

def optimizedBody546_85 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody546_82, 546, 18)) (some 68) ([2]) (some (2, optimizedBody546_84, 546, 19))

def optimizedBody546_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody546_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (58, 58), (48, 48), (66, 66), (72, 72), (50, 4), (52, 52), (54, 54), (76, 76), (56, 6), (68, 68), (60, 60),
    (62, 62), (64, 64), (70, 70), (44, 44), (74, 74), (0, 0)]

def optimizedBody546_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 56), (0, 0)]

def optimizedBody546_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 58), (48, 48), (50, 66), (52, 72), (54, 50), (56, 52), (58, 54), (60, 76), (62, 2), (64, 68),
    (66, 60), (68, 62), (70, 64), (72, 70), (74, 44), (76, 74), (78, 0)]

def optimizedBody546_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (10, 2), (8, 8), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (12, 78)]

def optimizedBody546_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (12, 78)]

def optimizedBody546_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_91 optimizedBody546_3

def optimizedBody546_93 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody546_90, 546, 20)) (some 475) ([]) (some (2, optimizedBody546_92, 546, 21))

def optimizedBody546_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody546_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 12 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody546_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.reg 0)))

def optimizedBody546_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 0), (56, 56),
    (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 12)]

def optimizedBody546_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (4, 44), (48, 48), (6, 50), (8, 52), (50, 54), (52, 56), (54, 58), (10, 60), (56, 62), (12, 64), (60, 66),
    (62, 68), (14, 70), (16, 72), (18, 74), (20, 76), (0, 78)]

def optimizedBody546_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (4, 44), (48, 48), (6, 50), (8, 52), (50, 54), (52, 56), (54, 58), (10, 60), (56, 62), (12, 64),
    (60, 66), (62, 68), (14, 70), (16, 72), (18, 74), (20, 76), (0, 78)]

def optimizedBody546_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_99 optimizedBody546_3

def optimizedBody546_101 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody546_98, 546, 22)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody546_100, 546, 23))

def optimizedBody546_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody546_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (58, 4), (48, 48), (66, 6), (72, 8), (50, 50), (52, 52), (54, 54), (76, 10), (56, 56), (68, 12), (60, 60),
    (62, 62), (64, 14), (70, 16), (44, 18), (74, 20), (0, 0)]

def optimizedBody546_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody546_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_103 optimizedBody546_104

def optimizedBody546_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_102 optimizedBody546_105

def optimizedBody546_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_17 optimizedBody546_106

def optimizedBody546_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_107

def optimizedBody546_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_101 optimizedBody546_108

def optimizedBody546_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_97 optimizedBody546_109

def optimizedBody546_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_96 optimizedBody546_110

def optimizedBody546_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_17 optimizedBody546_111

def optimizedBody546_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_95 optimizedBody546_112

def optimizedBody546_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_94 optimizedBody546_113

def optimizedBody546_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_114

def optimizedBody546_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_93 optimizedBody546_115

def optimizedBody546_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_89 optimizedBody546_116

def optimizedBody546_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_117

def optimizedBody546_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(56, 2)]

def optimizedBody546_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody546_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_119 optimizedBody546_120

def optimizedBody546_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_121

def optimizedBody546_123 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 2) optimizedBody546_118 optimizedBody546_122

def optimizedBody546_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 2), (58, 4), (48, 6), (66, 8), (72, 10), (50, 12), (52, 14), (54, 16), (76, 18), (56, 20), (68, 22), (60, 24),
    (62, 26), (64, 28), (70, 30), (44, 32), (74, 34), (0, 0)]

def optimizedBody546_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_124

def optimizedBody546_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_123 optimizedBody546_125

def optimizedBody546_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_88 optimizedBody546_126

def optimizedBody546_128 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) optimizedBody546_127 (Flapjack.Spt.bn
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

def optimizedBody546_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 44), (44, 46), (46, 48), (48, 50), (50, 52), (52, 54), (56, 56), (60, 60), (62, 62)]

def optimizedBody546_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (60, 60), (62, 62)]

def optimizedBody546_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (60, 60), (62, 62)]

def optimizedBody546_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_131 optimizedBody546_3

def optimizedBody546_133 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody546_130, 546, 24)) (some 482) ([2]) (some (2, optimizedBody546_132, 546, 25))

def optimizedBody546_134 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody546_130, 546, 26)) (some 492) ([]) (some (2, optimizedBody546_132, 546, 27))

def optimizedBody546_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 40#64)

def optimizedBody546_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (60, 60), (62, 62)]

def optimizedBody546_137 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody546_136, 546, 28)) (some 68) ([2]) (some (2, optimizedBody546_132, 546, 29))

def optimizedBody546_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody546_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (58, 0), (60, 60), (62, 62)]

def optimizedBody546_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody546_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody546_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_141 optimizedBody546_3

def optimizedBody546_143 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody546_140, 546, 30)) (some 68) ([2]) (some (2, optimizedBody546_142, 546, 31))

def optimizedBody546_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody546_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody546_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody546_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody546_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody546_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody546_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody546_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody546_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 2), (56, 56), (58, 58), (60, 60),
    (62, 62)]

def optimizedBody546_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (8, 48), (48, 50), (0, 52), (10, 54), (6, 56), (4, 58), (54, 60), (56, 62)]

def optimizedBody546_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (8, 48), (48, 50), (0, 52), (10, 54), (6, 56), (4, 58), (54, 60), (56, 62)]

def optimizedBody546_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_154 optimizedBody546_3

def optimizedBody546_156 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody546_153, 546, 32)) (some 77) ([2, 4, 6]) (some (2, optimizedBody546_155, 546, 33))

def optimizedBody546_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody546_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody546_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody546_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody546_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody546_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody546_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody546_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody546_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody546_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 0), (52, 4), (54, 54), (56, 56)]

def optimizedBody546_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (0, 46), (8, 48), (46, 50), (50, 52), (6, 54), (4, 56)]

def optimizedBody546_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (46, 50), (50, 52), (6, 54), (4, 56)]

def optimizedBody546_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_168 optimizedBody546_3

def optimizedBody546_170 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody546_167, 546, 34)) (some 68) ([2]) (some (2, optimizedBody546_169, 546, 35))

def optimizedBody546_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 10), (50, 50)]

def optimizedBody546_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48), (50, 50)]

def optimizedBody546_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (50, 50)]

def optimizedBody546_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_173 optimizedBody546_3

def optimizedBody546_175 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody546_172, 546, 36)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody546_174, 546, 37))

def optimizedBody546_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody546_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody546_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody546_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody546_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody546_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody546_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody546_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6), (48, 2), (50, 50)]

def optimizedBody546_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (6, 48), (4, 50)]

def optimizedBody546_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (4, 50)]

def optimizedBody546_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_185 optimizedBody546_3

def optimizedBody546_187 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody546_184, 546, 38)) (some 77) ([2, 4, 6]) (some (2, optimizedBody546_186, 546, 39))

def optimizedBody546_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody546_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody546_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody546_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody546_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody546_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody546_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody546_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody546_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_195 optimizedBody546_3

def optimizedBody546_197 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody546_194, 546, 40)) (some 545) ([2, 4]) (some (2, optimizedBody546_196, 546, 41))

def optimizedBody546_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody546_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody546_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody546_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_200 optimizedBody546_3

def optimizedBody546_202 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody546_199, 546, 42)) (some 490) ([2]) (some (2, optimizedBody546_201, 546, 43))

def optimizedBody546_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody546_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_19 optimizedBody546_203

def optimizedBody546_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_58 optimizedBody546_204

def optimizedBody546_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_205

def optimizedBody546_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_202 optimizedBody546_206

def optimizedBody546_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_195 optimizedBody546_207

def optimizedBody546_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_198 optimizedBody546_208

def optimizedBody546_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_209

def optimizedBody546_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_197 optimizedBody546_210

def optimizedBody546_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_193 optimizedBody546_211

def optimizedBody546_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_192 optimizedBody546_212

def optimizedBody546_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_147 optimizedBody546_213

def optimizedBody546_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_146 optimizedBody546_214

def optimizedBody546_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_145 optimizedBody546_215

def optimizedBody546_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_191 optimizedBody546_216

def optimizedBody546_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_190 optimizedBody546_217

def optimizedBody546_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_189 optimizedBody546_218

def optimizedBody546_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_41 optimizedBody546_219

def optimizedBody546_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_164 optimizedBody546_220

def optimizedBody546_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_163 optimizedBody546_221

def optimizedBody546_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_188 optimizedBody546_222

def optimizedBody546_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_41 optimizedBody546_223

def optimizedBody546_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_224

def optimizedBody546_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_187 optimizedBody546_225

def optimizedBody546_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_183 optimizedBody546_226

def optimizedBody546_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_182 optimizedBody546_227

def optimizedBody546_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_181 optimizedBody546_228

def optimizedBody546_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_180 optimizedBody546_229

def optimizedBody546_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_179 optimizedBody546_230

def optimizedBody546_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_178 optimizedBody546_231

def optimizedBody546_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_177 optimizedBody546_232

def optimizedBody546_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_176 optimizedBody546_233

def optimizedBody546_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_234

def optimizedBody546_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_175 optimizedBody546_235

def optimizedBody546_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_171 optimizedBody546_236

def optimizedBody546_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_237

def optimizedBody546_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_170 optimizedBody546_238

def optimizedBody546_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_166 optimizedBody546_239

def optimizedBody546_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_165 optimizedBody546_240

def optimizedBody546_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_17 optimizedBody546_241

def optimizedBody546_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_164 optimizedBody546_242

def optimizedBody546_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_163 optimizedBody546_243

def optimizedBody546_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_162 optimizedBody546_244

def optimizedBody546_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_41 optimizedBody546_245

def optimizedBody546_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_161 optimizedBody546_246

def optimizedBody546_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_160 optimizedBody546_247

def optimizedBody546_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_159 optimizedBody546_248

def optimizedBody546_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_41 optimizedBody546_249

def optimizedBody546_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_158 optimizedBody546_250

def optimizedBody546_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_157 optimizedBody546_251

def optimizedBody546_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_252

def optimizedBody546_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_156 optimizedBody546_253

def optimizedBody546_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_152 optimizedBody546_254

def optimizedBody546_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_151 optimizedBody546_255

def optimizedBody546_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_150 optimizedBody546_256

def optimizedBody546_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_149 optimizedBody546_257

def optimizedBody546_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_148 optimizedBody546_258

def optimizedBody546_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_147 optimizedBody546_259

def optimizedBody546_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_146 optimizedBody546_260

def optimizedBody546_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_145 optimizedBody546_261

def optimizedBody546_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_144 optimizedBody546_262

def optimizedBody546_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_263

def optimizedBody546_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_143 optimizedBody546_264

def optimizedBody546_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_139 optimizedBody546_265

def optimizedBody546_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_138 optimizedBody546_266

def optimizedBody546_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_267

def optimizedBody546_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_137 optimizedBody546_268

def optimizedBody546_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_131 optimizedBody546_269

def optimizedBody546_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_135 optimizedBody546_270

def optimizedBody546_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_271

def optimizedBody546_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_134 optimizedBody546_272

def optimizedBody546_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_130 optimizedBody546_273

def optimizedBody546_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_274

def optimizedBody546_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_133 optimizedBody546_275

def optimizedBody546_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_129 optimizedBody546_276

def optimizedBody546_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_277

def optimizedBody546_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_128 optimizedBody546_278

def optimizedBody546_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_87 optimizedBody546_279

def optimizedBody546_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_280

def optimizedBody546_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_86 optimizedBody546_281

def optimizedBody546_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_282

def optimizedBody546_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_85 optimizedBody546_283

def optimizedBody546_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_81 optimizedBody546_284

def optimizedBody546_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_80 optimizedBody546_285

def optimizedBody546_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_79 optimizedBody546_286

def optimizedBody546_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_17 optimizedBody546_287

def optimizedBody546_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_288

def optimizedBody546_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_78 optimizedBody546_289

def optimizedBody546_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_74 optimizedBody546_290

def optimizedBody546_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_291

def optimizedBody546_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_73 optimizedBody546_292

def optimizedBody546_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_58 optimizedBody546_293

def optimizedBody546_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_41 optimizedBody546_294

def optimizedBody546_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_295

def optimizedBody546_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_57 optimizedBody546_296

def optimizedBody546_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_53 optimizedBody546_297

def optimizedBody546_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_52 optimizedBody546_298

def optimizedBody546_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_51 optimizedBody546_299

def optimizedBody546_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_50 optimizedBody546_300

def optimizedBody546_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_49 optimizedBody546_301

def optimizedBody546_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_48 optimizedBody546_302

def optimizedBody546_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_47 optimizedBody546_303

def optimizedBody546_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_304

def optimizedBody546_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_46 optimizedBody546_305

def optimizedBody546_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_42 optimizedBody546_306

def optimizedBody546_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_21 optimizedBody546_307

def optimizedBody546_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_41 optimizedBody546_308

def optimizedBody546_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_309

def optimizedBody546_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_40 optimizedBody546_310

def optimizedBody546_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_36 optimizedBody546_311

def optimizedBody546_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_312

def optimizedBody546_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_35 optimizedBody546_313

def optimizedBody546_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_31 optimizedBody546_314

def optimizedBody546_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_315

def optimizedBody546_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_316

def optimizedBody546_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_30 optimizedBody546_317

def optimizedBody546_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_17 optimizedBody546_318

def optimizedBody546_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_16 optimizedBody546_319

def optimizedBody546_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_15 optimizedBody546_320

def optimizedBody546_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_14 optimizedBody546_321

def optimizedBody546_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_13 optimizedBody546_322

def optimizedBody546_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_12 optimizedBody546_323

def optimizedBody546_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_324

def optimizedBody546_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_11 optimizedBody546_325

def optimizedBody546_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_7 optimizedBody546_326

def optimizedBody546_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_6 optimizedBody546_327

def optimizedBody546_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_5 optimizedBody546_328

def optimizedBody546_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_0 optimizedBody546_329

def optimized546 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(546, 2, optimizedBody546_330)
end InitECandidate.Proofs.StackAnalysis
