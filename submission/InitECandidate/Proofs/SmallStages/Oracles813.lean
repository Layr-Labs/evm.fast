import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source813
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles813
def optimizedBody813_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (44, 4), (58, 2)]

def optimizedBody813_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (44, 44), (58, 58)]

def optimizedBody813_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (58, 58)]

def optimizedBody813_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody813_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_2 optimizedBody813_3

def optimizedBody813_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_1, 813, 2)) (some 69) ([]) (some (2, optimizedBody813_4, 813, 3))

def optimizedBody813_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody813_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1056#64)

def optimizedBody813_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (58, 58), (70, 0)]

def optimizedBody813_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (4, 44), (58, 58), (70, 70)]

def optimizedBody813_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (58, 58), (70, 70)]

def optimizedBody813_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_10 optimizedBody813_3

def optimizedBody813_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_9, 813, 4)) (some 68) ([2]) (some (2, optimizedBody813_11, 813, 5))

def optimizedBody813_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody813_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 2 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody813_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody813_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 2 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody813_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 2 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody813_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody813_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 2 (Flapjack.WordRegImm.imm 480#64)))

def optimizedBody813_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.imm 576#64)))

def optimizedBody813_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 2 (Flapjack.WordRegImm.imm 672#64)))

def optimizedBody813_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 2 (Flapjack.WordRegImm.imm 768#64)))

def optimizedBody813_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 864#64)))

def optimizedBody813_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 960#64)))

def optimizedBody813_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (46, 46), (44, 0), (48, 4), (50, 6), (52, 8), (54, 2), (56, 10), (58, 58), (60, 12), (62, 14),
    (64, 16), (66, 18), (70, 70), (72, 2), (68, 20), (74, 22)]

def optimizedBody813_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (6, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (0, 68), (74, 74)]

def optimizedBody813_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (6, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (0, 68), (74, 74)]

def optimizedBody813_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_27 optimizedBody813_3

def optimizedBody813_29 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_26, 813, 6)) (some 751) ([2, 4]) (some (2, optimizedBody813_28, 813, 7))

def optimizedBody813_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody813_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody813_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody813_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551104#64))

def optimizedBody813_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4736#64)

def optimizedBody813_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody813_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 6), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66), (70, 70), (72, 72), (68, 2), (74, 74)]

def optimizedBody813_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (4, 68), (0, 74)]

def optimizedBody813_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (4, 68), (0, 74)]

def optimizedBody813_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_38 optimizedBody813_3

def optimizedBody813_40 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_37, 813, 8)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_39, 813, 9))

def optimizedBody813_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (70, 70), (72, 72), (68, 4), (74, 0)]

def optimizedBody813_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (4, 68), (6, 74)]

def optimizedBody813_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (4, 68), (6, 74)]

def optimizedBody813_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_43 optimizedBody813_3

def optimizedBody813_45 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_42, 813, 10)) (some 751) ([2, 4]) (some (2, optimizedBody813_44, 813, 11))

def optimizedBody813_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 4), (6, 6), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66), (70, 70), (72, 72), (76, 4), (68, 6)]

def optimizedBody813_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (0, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (6, 68)]

def optimizedBody813_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (0, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (6, 68)]

def optimizedBody813_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_48 optimizedBody813_3

def optimizedBody813_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
  Flapjack.Spt.ln)), optimizedBody813_47, 813, 12)) (some 745) ([2, 4, 6]) (some (2, optimizedBody813_49, 813, 13))

def optimizedBody813_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4544#64)

def optimizedBody813_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 2), (66, 66), (70, 70), (72, 72), (76, 76), (68, 6)]

def optimizedBody813_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (4, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (68, 68)]

def optimizedBody813_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (4, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (68, 68)]

def optimizedBody813_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_54 optimizedBody813_3

def optimizedBody813_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
  Flapjack.Spt.ln)), optimizedBody813_53, 813, 14)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_55, 813, 15))

def optimizedBody813_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 4), (66, 66), (70, 70), (72, 72), (76, 76), (68, 68)]

def optimizedBody813_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (68, 68)]

def optimizedBody813_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (68, 68)]

def optimizedBody813_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_59 optimizedBody813_3

def optimizedBody813_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
  Flapjack.Spt.ln)), optimizedBody813_58, 813, 16)) (some 747) ([2, 4]) (some (2, optimizedBody813_60, 813, 17))

def optimizedBody813_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (46, 46), (44, 44), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (68, 68)]

def optimizedBody813_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (6, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (4, 68)]

def optimizedBody813_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (6, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (4, 68)]

def optimizedBody813_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_64 optimizedBody813_3

def optimizedBody813_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
  Flapjack.Spt.ln)), optimizedBody813_63, 813, 18)) (some 741) ([2]) (some (2, optimizedBody813_65, 813, 19))

def optimizedBody813_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (44, 44), (48, 48), (50, 50), (52, 6), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66), (70, 70), (72, 72), (76, 76), (68, 4)]

def optimizedBody813_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (0, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (6, 68)]

def optimizedBody813_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (0, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (6, 68)]

def optimizedBody813_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_69 optimizedBody813_3

def optimizedBody813_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
  Flapjack.Spt.ln)), optimizedBody813_68, 813, 20)) (some 745) ([2, 4, 6]) (some (2, optimizedBody813_70, 813, 21))

def optimizedBody813_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4640#64)

def optimizedBody813_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (46, 46), (44, 2), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66), (70, 70), (72, 72), (76, 76), (78, 6)]

def optimizedBody813_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (0, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (0, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_75 optimizedBody813_3

def optimizedBody813_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_74, 813, 22)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_76, 813, 23))

def optimizedBody813_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 0),
    (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (4, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (4, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_80 optimizedBody813_3

def optimizedBody813_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_79, 813, 24)) (some 742) ([2]) (some (2, optimizedBody813_81, 813, 25))

def optimizedBody813_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody813_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody813_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody813_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody813_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody813_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody813_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 18446744073709551104#64))

def optimizedBody813_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody813_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody813_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 4544#64)

def optimizedBody813_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody813_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (46, 46), (74, 0), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 2), (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (74, 74), (44, 44), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (4, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (74, 74), (44, 44), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (4, 64), (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_96 optimizedBody813_3

def optimizedBody813_98 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_95, 813, 26)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_97, 813, 27))

def optimizedBody813_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (74, 74), (44, 44), (48, 48), (50, 50), (0, 0), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (4, 4),
    (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_99

def optimizedBody813_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_98 optimizedBody813_100

def optimizedBody813_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_94 optimizedBody813_101

def optimizedBody813_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_93 optimizedBody813_102

def optimizedBody813_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_92 optimizedBody813_103

def optimizedBody813_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_91 optimizedBody813_104

def optimizedBody813_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_90 optimizedBody813_105

def optimizedBody813_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_34 optimizedBody813_106

def optimizedBody813_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_89 optimizedBody813_107

def optimizedBody813_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_88 optimizedBody813_108

def optimizedBody813_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_87 optimizedBody813_109

def optimizedBody813_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_86 optimizedBody813_110

def optimizedBody813_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_85 optimizedBody813_111

def optimizedBody813_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_112

def optimizedBody813_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (74, 0), (44, 44), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (4, 4),
    (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_114

def optimizedBody813_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody813_113 optimizedBody813_115

def optimizedBody813_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (46, 46), (74, 74), (44, 44), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 4), (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (74, 74), (44, 44), (48, 48), (50, 50), (4, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (6, 64),
    (0, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (74, 74), (44, 44), (48, 48), (50, 50), (4, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (6, 64), (0, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_119 optimizedBody813_3

def optimizedBody813_121 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_118, 813, 28)) (some 751) ([2, 4]) (some (2, optimizedBody813_120, 813, 29))

def optimizedBody813_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (46, 46), (74, 74), (44, 44), (48, 48), (50, 50), (52, 4), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 6), (66, 0), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (74, 74), (6, 44), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (74, 74), (6, 44), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_124 optimizedBody813_3

def optimizedBody813_126 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_123, 813, 30)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_125, 813, 31))

def optimizedBody813_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (46, 46), (74, 74), (44, 6), (48, 48), (50, 50), (52, 52), (54, 54), (56, 2), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (74, 74), (44, 44), (48, 48), (50, 50), (6, 52), (54, 54), (4, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (74, 74), (44, 44), (48, 48), (50, 50), (6, 52), (54, 54), (4, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_129 optimizedBody813_3

def optimizedBody813_131 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_128, 813, 32)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_130, 813, 33))

def optimizedBody813_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (74, 74), (44, 44), (48, 48), (50, 50), (52, 6), (54, 54), (56, 4), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (74, 74), (4, 44), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (74, 74), (4, 44), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_134 optimizedBody813_3

def optimizedBody813_136 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_133, 813, 34)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_135, 813, 35))

def optimizedBody813_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (46, 46), (74, 74), (44, 4), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (74, 74), (6, 44), (44, 48), (50, 50), (4, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (74, 74), (6, 44), (44, 48), (50, 50), (4, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_139 optimizedBody813_3

def optimizedBody813_141 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_138, 813, 36)) (some 751) ([2, 4]) (some (2, optimizedBody813_140, 813, 37))

def optimizedBody813_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (74, 74), (48, 6), (44, 44), (50, 50), (52, 4), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (74, 74), (48, 48), (44, 44), (50, 50), (6, 52), (54, 54), (4, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (74, 74), (48, 48), (44, 44), (50, 50), (6, 52), (54, 54), (4, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_144 optimizedBody813_3

def optimizedBody813_146 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_143, 813, 38)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_145, 813, 39))

def optimizedBody813_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (74, 74), (48, 48), (44, 44), (50, 50), (52, 6), (54, 54), (56, 4), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (74, 74), (48, 48), (44, 44), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (6, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (74, 74), (48, 48), (44, 44), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (6, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_149 optimizedBody813_3

def optimizedBody813_151 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_148, 813, 40)) (some 745) ([2, 4, 6]) (some (2, optimizedBody813_150, 813, 41))

def optimizedBody813_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (46, 46), (74, 74), (48, 48), (44, 44), (50, 50), (52, 2), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 6), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_153 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_143, 813, 42)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_145, 813, 43))

def optimizedBody813_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (74, 74), (48, 48), (44, 44), (50, 50), (52, 52), (54, 54), (4, 56), (58, 58), (0, 60), (62, 62), (64, 64),
    (6, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (74, 74), (48, 48), (44, 44), (50, 50), (52, 52), (54, 54), (4, 56), (58, 58), (0, 60), (62, 62),
    (64, 64), (6, 66), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_155 optimizedBody813_3

def optimizedBody813_157 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_154, 813, 44)) (some 745) ([2, 4, 6]) (some (2, optimizedBody813_156, 813, 45))

def optimizedBody813_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (46, 46), (74, 74), (48, 48), (44, 44), (50, 50), (52, 52), (54, 54), (56, 4), (58, 58),
    (60, 0), (62, 62), (64, 64), (68, 6), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (46, 46), (74, 74), (48, 48), (6, 44), (44, 50), (52, 52), (4, 54), (54, 56), (56, 58), (58, 60), (0, 62),
    (62, 64), (68, 68), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (74, 74), (48, 48), (6, 44), (44, 50), (52, 52), (4, 54), (54, 56), (56, 58), (58, 60), (0, 62),
    (62, 64), (68, 68), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_160 optimizedBody813_3

def optimizedBody813_162 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
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
  Flapjack.Spt.ln)), optimizedBody813_159, 813, 46)) (some 812) ([2, 4, 6]) (some (2, optimizedBody813_161, 813, 47))

def optimizedBody813_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (46, 46), (74, 74), (48, 48), (50, 6), (44, 44), (52, 52), (66, 4), (54, 54), (56, 56),
    (58, 58), (60, 0), (62, 62), (68, 68), (64, 8), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (74, 74), (48, 48), (50, 50), (44, 44), (52, 52), (66, 66), (54, 54), (56, 56), (4, 58), (6, 60), (62, 62),
    (68, 68), (64, 64), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (74, 74), (48, 48), (50, 50), (44, 44), (52, 52), (66, 66), (54, 54), (56, 56), (4, 58), (6, 60),
    (62, 62), (68, 68), (64, 64), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_165 optimizedBody813_3

def optimizedBody813_167 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody813_164, 813, 48)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_166, 813, 49))

def optimizedBody813_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 4), (6, 6), (46, 46), (74, 74), (48, 48), (50, 50), (44, 44), (52, 52), (66, 66), (54, 54), (56, 56),
    (58, 4), (60, 6), (62, 62), (68, 68), (64, 64), (70, 70), (72, 72), (76, 76), (78, 78)]

def optimizedBody813_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (74, 74), (48, 48), (50, 50), (44, 44), (0, 52), (66, 66), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (68, 68), (64, 64), (70, 70), (72, 72), (4, 76), (78, 78)]

def optimizedBody813_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (74, 74), (48, 48), (50, 50), (44, 44), (0, 52), (66, 66), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (68, 68), (64, 64), (70, 70), (72, 72), (4, 76), (78, 78)]

def optimizedBody813_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_170 optimizedBody813_3

def optimizedBody813_172 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody813_169, 813, 50)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_171, 813, 51))

def optimizedBody813_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (46, 46), (74, 74), (48, 48), (50, 50), (44, 44), (52, 0), (66, 66), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (68, 68), (64, 64), (70, 70), (72, 72), (76, 4), (78, 78)]

def optimizedBody813_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (74, 74), (48, 48), (50, 50), (44, 44), (4, 52), (66, 66), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (68, 68), (64, 64), (70, 70), (72, 72), (6, 76), (78, 78)]

def optimizedBody813_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (74, 74), (48, 48), (50, 50), (44, 44), (4, 52), (66, 66), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (68, 68), (64, 64), (70, 70), (72, 72), (6, 76), (78, 78)]

def optimizedBody813_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_175 optimizedBody813_3

def optimizedBody813_177 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody813_174, 813, 52)) (some 751) ([2, 4]) (some (2, optimizedBody813_176, 813, 53))

def optimizedBody813_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (74, 74), (48, 48), (50, 50), (44, 44), (52, 4), (66, 66), (54, 54), (56, 56),
    (58, 58), (60, 60), (62, 62), (68, 68), (64, 64), (70, 70), (72, 72), (76, 6), (78, 78)]

def optimizedBody813_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (74, 74), (48, 48), (50, 50), (0, 44), (4, 52), (66, 66), (6, 54), (52, 56), (54, 58), (56, 60), (58, 62),
    (68, 68), (60, 64), (62, 70), (72, 72), (64, 76), (78, 78)]

def optimizedBody813_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (74, 74), (48, 48), (50, 50), (0, 44), (4, 52), (66, 66), (6, 54), (52, 56), (54, 58), (56, 60),
    (58, 62), (68, 68), (60, 64), (62, 70), (72, 72), (64, 76), (78, 78)]

def optimizedBody813_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_180 optimizedBody813_3

def optimizedBody813_182 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody813_179, 813, 54)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_181, 813, 55))

def optimizedBody813_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (46, 46), (74, 74), (48, 48), (50, 50), (70, 0), (44, 4), (66, 66), (76, 6), (52, 52),
    (54, 54), (56, 56), (58, 58), (68, 68), (60, 60), (62, 62), (72, 72), (64, 64), (78, 78)]

def optimizedBody813_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (74, 74), (48, 48), (50, 50), (70, 70), (10, 44), (66, 66), (76, 76), (52, 52), (54, 54), (8, 56),
    (56, 58), (68, 68), (60, 60), (58, 62), (72, 72), (44, 64), (62, 78)]

def optimizedBody813_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (74, 74), (48, 48), (50, 50), (70, 70), (10, 44), (66, 66), (76, 76), (52, 52), (54, 54), (8, 56),
    (56, 58), (68, 68), (60, 60), (58, 62), (72, 72), (44, 64), (62, 78)]

def optimizedBody813_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_185 optimizedBody813_3

def optimizedBody813_187 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody813_184, 813, 56)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_186, 813, 57))

def optimizedBody813_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody813_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody813_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (74, 74), (48, 48), (64, 0), (50, 50), (70, 70), (10, 10), (66, 66), (76, 76), (52, 52), (54, 54), (8, 8),
    (56, 56), (68, 68), (2, 2), (60, 60), (58, 58), (72, 72), (44, 44), (62, 62)]

def optimizedBody813_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4#64)

def optimizedBody813_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 96#64)

def optimizedBody813_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4)]

def optimizedBody813_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody813_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (10, 10)]

def optimizedBody813_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551104#64))

def optimizedBody813_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody813_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4832#64)

def optimizedBody813_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 8), (46, 46), (44, 74), (48, 48), (50, 64), (52, 50), (54, 70), (56, 10), (58, 66), (60, 76),
    (62, 52), (64, 54), (66, 8), (68, 56), (70, 68), (72, 2), (74, 60), (76, 58), (78, 72), (80, 44), (82, 62)]

def optimizedBody813_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (4, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (0, 82)]

def optimizedBody813_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (4, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (0, 82)]

def optimizedBody813_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_201 optimizedBody813_3

def optimizedBody813_203 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody813_200, 813, 58)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_202, 813, 59))

def optimizedBody813_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 4), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 0)]

def optimizedBody813_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (6, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (4, 82)]

def optimizedBody813_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (6, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (4, 82)]

def optimizedBody813_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_206 optimizedBody813_3

def optimizedBody813_208 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody813_205, 813, 60)) (some 751) ([2, 4]) (some (2, optimizedBody813_207, 813, 61))

def optimizedBody813_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66), (68, 68), (70, 6), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 4)]

def optimizedBody813_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (6, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (4, 82)]

def optimizedBody813_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (6, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (4, 82)]

def optimizedBody813_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_211 optimizedBody813_3

def optimizedBody813_213 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody813_210, 813, 62)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_212, 813, 63))

def optimizedBody813_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 6), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 4)]

def optimizedBody813_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (0, 82)]

def optimizedBody813_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (0, 82)]

def optimizedBody813_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_216 optimizedBody813_3

def optimizedBody813_218 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody813_215, 813, 64)) (some 746) ([2, 4, 6]) (some (2, optimizedBody813_217, 813, 65))

def optimizedBody813_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 0)]

def optimizedBody813_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (46, 46), (44, 44), (48, 48), (6, 50), (50, 52), (52, 54), (10, 56), (56, 58), (58, 60), (60, 62), (54, 64),
    (64, 66), (66, 68), (68, 70), (70, 72), (4, 74), (74, 76), (76, 78), (78, 80), (80, 82)]

def optimizedBody813_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (6, 50), (50, 52), (52, 54), (10, 56), (56, 58), (58, 60), (60, 62), (54, 64),
    (64, 66), (66, 68), (68, 70), (70, 72), (4, 74), (74, 76), (76, 78), (78, 80), (80, 82)]

def optimizedBody813_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_221 optimizedBody813_3

def optimizedBody813_223 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody813_220, 813, 66)) (some 742) ([2]) (some (2, optimizedBody813_222, 813, 67))

def optimizedBody813_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody813_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody813_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_224 optimizedBody813_225

def optimizedBody813_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_226

def optimizedBody813_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_188 optimizedBody813_225

def optimizedBody813_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_228

def optimizedBody813_230 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody813_227 optimizedBody813_229

def optimizedBody813_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody813_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody813_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody813_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_232 optimizedBody813_233

def optimizedBody813_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_234

def optimizedBody813_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody813_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_236 optimizedBody813_233

def optimizedBody813_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_237

def optimizedBody813_239 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody813_235 optimizedBody813_238

def optimizedBody813_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody813_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody813_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_84 optimizedBody813_241

def optimizedBody813_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_242

def optimizedBody813_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_189 optimizedBody813_241

def optimizedBody813_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_244

def optimizedBody813_246 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody813_243 optimizedBody813_245

def optimizedBody813_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody813_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody813_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody813_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 54), (4, 10), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 10), (56, 56), (58, 58), (60, 60), (62, 54),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 4), (74, 74), (76, 76), (78, 78), (80, 80)]

def optimizedBody813_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (0, 44), (48, 48), (50, 50), (14, 52), (10, 54), (16, 56), (18, 58), (52, 60), (54, 62), (8, 64), (56, 66),
    (26, 68), (12, 70), (4, 72), (58, 74), (24, 76), (22, 78), (20, 80)]

def optimizedBody813_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (0, 44), (48, 48), (50, 50), (14, 52), (10, 54), (16, 56), (18, 58), (52, 60), (54, 62), (8, 64),
    (56, 66), (26, 68), (12, 70), (4, 72), (58, 74), (24, 76), (22, 78), (20, 80)]

def optimizedBody813_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_252 optimizedBody813_3

def optimizedBody813_254 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_251, 813, 68)) (some 739) ([2, 4]) (some (2, optimizedBody813_253, 813, 69))

def optimizedBody813_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody813_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (0, 0), (48, 48), (6, 6), (50, 50), (14, 14), (10, 10), (16, 16), (18, 18), (52, 52), (54, 54), (8, 8),
    (56, 56), (26, 26), (12, 12), (4, 4), (58, 58), (24, 24), (22, 22), (20, 20)]

def optimizedBody813_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_255 optimizedBody813_256

def optimizedBody813_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_257

def optimizedBody813_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_254 optimizedBody813_258

def optimizedBody813_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_250 optimizedBody813_259

def optimizedBody813_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (0, 44), (48, 48), (6, 6), (50, 50), (14, 52), (10, 10), (16, 56), (18, 58), (52, 60), (54, 54), (8, 64),
    (56, 66), (26, 68), (12, 70), (4, 4), (58, 74), (24, 76), (22, 78), (20, 80)]

def optimizedBody813_262 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.imm 0#64) optimizedBody813_260 optimizedBody813_261

def optimizedBody813_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody813_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody813_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (74, 0), (48, 48), (64, 6), (50, 50), (70, 14), (10, 10), (66, 16), (76, 18), (52, 52), (54, 54), (8, 8),
    (56, 56), (68, 26), (2, 2), (60, 4), (58, 58), (72, 24), (44, 22), (62, 20)]

def optimizedBody813_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody813_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_265 optimizedBody813_266

def optimizedBody813_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_264 optimizedBody813_267

def optimizedBody813_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_263 optimizedBody813_268

def optimizedBody813_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_269

def optimizedBody813_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_262 optimizedBody813_270

def optimizedBody813_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_249 optimizedBody813_271

def optimizedBody813_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_83 optimizedBody813_272

def optimizedBody813_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_248 optimizedBody813_273

def optimizedBody813_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_247 optimizedBody813_274

def optimizedBody813_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_275

def optimizedBody813_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_246 optimizedBody813_276

def optimizedBody813_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_189 optimizedBody813_277

def optimizedBody813_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_240 optimizedBody813_278

def optimizedBody813_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_279

def optimizedBody813_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_239 optimizedBody813_280

def optimizedBody813_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_189 optimizedBody813_281

def optimizedBody813_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_231 optimizedBody813_282

def optimizedBody813_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_283

def optimizedBody813_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_230 optimizedBody813_284

def optimizedBody813_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_84 optimizedBody813_285

def optimizedBody813_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_83 optimizedBody813_286

def optimizedBody813_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_287

def optimizedBody813_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_223 optimizedBody813_288

def optimizedBody813_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_219 optimizedBody813_289

def optimizedBody813_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_290

def optimizedBody813_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_218 optimizedBody813_291

def optimizedBody813_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_214 optimizedBody813_292

def optimizedBody813_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_293

def optimizedBody813_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_213 optimizedBody813_294

def optimizedBody813_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_209 optimizedBody813_295

def optimizedBody813_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_296

def optimizedBody813_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_208 optimizedBody813_297

def optimizedBody813_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_204 optimizedBody813_298

def optimizedBody813_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_299

def optimizedBody813_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_203 optimizedBody813_300

def optimizedBody813_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_199 optimizedBody813_301

def optimizedBody813_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_35 optimizedBody813_302

def optimizedBody813_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_198 optimizedBody813_303

def optimizedBody813_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_197 optimizedBody813_304

def optimizedBody813_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_196 optimizedBody813_305

def optimizedBody813_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_88 optimizedBody813_306

def optimizedBody813_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_87 optimizedBody813_307

def optimizedBody813_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_86 optimizedBody813_308

def optimizedBody813_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_195 optimizedBody813_309

def optimizedBody813_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_194 optimizedBody813_310

def optimizedBody813_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_193 optimizedBody813_311

def optimizedBody813_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_192 optimizedBody813_312

def optimizedBody813_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_15 optimizedBody813_313

def optimizedBody813_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_314

def optimizedBody813_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody813_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_316

def optimizedBody813_318 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody813_315 optimizedBody813_317

def optimizedBody813_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 0), (74, 4), (48, 6), (64, 12), (50, 14), (70, 16), (10, 10), (66, 18), (76, 20), (52, 22), (54, 24), (8, 8),
    (56, 26), (68, 28), (2, 2), (60, 30), (58, 32), (72, 34), (44, 36), (62, 38)]

def optimizedBody813_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_319

def optimizedBody813_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_318 optimizedBody813_320

def optimizedBody813_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_191 optimizedBody813_321

def optimizedBody813_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_15 optimizedBody813_322

def optimizedBody813_324 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln) optimizedBody813_323 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody813_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 60)]

def optimizedBody813_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 48), (4, 48), (6, 44), (44, 46), (48, 48), (46, 50), (50, 52), (52, 54), (54, 56), (56, 58)]

def optimizedBody813_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (0, 46), (50, 50), (46, 52), (54, 54), (56, 56)]

def optimizedBody813_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (50, 50), (46, 52), (54, 54), (56, 56)]

def optimizedBody813_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_328 optimizedBody813_3

def optimizedBody813_330 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody813_327, 813, 70)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_329, 813, 71))

def optimizedBody813_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (0, 0), (50, 50), (46, 46), (54, 54), (56, 56)]

def optimizedBody813_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_331

def optimizedBody813_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_330 optimizedBody813_332

def optimizedBody813_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_326 optimizedBody813_333

def optimizedBody813_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_334

def optimizedBody813_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 46), (48, 48), (0, 50), (50, 52), (46, 54), (54, 56), (56, 58)]

def optimizedBody813_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_336

def optimizedBody813_338 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody813_335 optimizedBody813_337

def optimizedBody813_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (48, 48), (50, 50), (46, 46), (54, 54), (56, 56)]

def optimizedBody813_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (48, 48), (50, 50), (0, 46), (54, 54), (56, 56)]

def optimizedBody813_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (0, 46), (54, 54), (56, 56)]

def optimizedBody813_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_341 optimizedBody813_3

def optimizedBody813_343 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_340, 813, 72)) (some 756) ([2]) (some (2, optimizedBody813_342, 813, 73))

def optimizedBody813_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56)]

def optimizedBody813_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (46, 48), (48, 50), (4, 52), (52, 54), (54, 56)]

def optimizedBody813_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (48, 50), (4, 52), (52, 54), (54, 56)]

def optimizedBody813_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_346 optimizedBody813_3

def optimizedBody813_348 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody813_345, 813, 74)) (some 756) ([2]) (some (2, optimizedBody813_347, 813, 75))

def optimizedBody813_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody813_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (44, 44), (46, 46), (48, 48), (50, 4), (52, 52), (54, 54)]

def optimizedBody813_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (4, 50), (6, 52), (54, 54)]

def optimizedBody813_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (6, 52), (54, 54)]

def optimizedBody813_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_352 optimizedBody813_3

def optimizedBody813_354 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_351, 813, 76)) (some 747) ([2, 4]) (some (2, optimizedBody813_353, 813, 77))

def optimizedBody813_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (48, 48), (4, 4), (6, 6), (54, 54)]

def optimizedBody813_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_355

def optimizedBody813_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_354 optimizedBody813_356

def optimizedBody813_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_350 optimizedBody813_357

def optimizedBody813_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_358

def optimizedBody813_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (48, 48), (4, 4), (6, 52), (54, 54)]

def optimizedBody813_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_360

def optimizedBody813_362 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 6) optimizedBody813_359 optimizedBody813_361

def optimizedBody813_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 4), (52, 6), (54, 54)]

def optimizedBody813_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (48, 50), (50, 52), (52, 54)]

def optimizedBody813_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (48, 50), (50, 52), (52, 54)]

def optimizedBody813_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_365 optimizedBody813_3

def optimizedBody813_367 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_364, 813, 78)) (some 750) ([2, 4, 6]) (some (2, optimizedBody813_366, 813, 79))

def optimizedBody813_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52)]

def optimizedBody813_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (48, 50), (50, 52)]

def optimizedBody813_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (48, 50), (50, 52)]

def optimizedBody813_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_370 optimizedBody813_3

def optimizedBody813_372 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_369, 813, 80)) (some 739) ([2, 4]) (some (2, optimizedBody813_371, 813, 81))

def optimizedBody813_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody813_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 48), (50, 50)]

def optimizedBody813_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody813_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody813_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_376 optimizedBody813_3

def optimizedBody813_378 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_375, 813, 82)) (some 739) ([2, 4]) (some (2, optimizedBody813_377, 813, 83))

def optimizedBody813_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody813_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46)]

def optimizedBody813_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody813_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody813_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_382 optimizedBody813_3

def optimizedBody813_384 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_381, 813, 84)) (some 739) ([2, 4]) (some (2, optimizedBody813_383, 813, 85))

def optimizedBody813_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody813_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody813_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody813_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_387 optimizedBody813_3

def optimizedBody813_389 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody813_386, 813, 86)) (some 70) ([2]) (some (2, optimizedBody813_388, 813, 87))

def optimizedBody813_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody813_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_15 optimizedBody813_390

def optimizedBody813_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_189 optimizedBody813_391

def optimizedBody813_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_392

def optimizedBody813_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_389 optimizedBody813_393

def optimizedBody813_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_385 optimizedBody813_394

def optimizedBody813_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_395

def optimizedBody813_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_384 optimizedBody813_396

def optimizedBody813_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_380 optimizedBody813_397

def optimizedBody813_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_379 optimizedBody813_398

def optimizedBody813_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_83 optimizedBody813_399

def optimizedBody813_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_400

def optimizedBody813_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_378 optimizedBody813_401

def optimizedBody813_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_374 optimizedBody813_402

def optimizedBody813_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_373 optimizedBody813_403

def optimizedBody813_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_83 optimizedBody813_404

def optimizedBody813_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_405

def optimizedBody813_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_372 optimizedBody813_406

def optimizedBody813_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_368 optimizedBody813_407

def optimizedBody813_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_408

def optimizedBody813_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_367 optimizedBody813_409

def optimizedBody813_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_363 optimizedBody813_410

def optimizedBody813_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_411

def optimizedBody813_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_362 optimizedBody813_412

def optimizedBody813_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_349 optimizedBody813_413

def optimizedBody813_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_414

def optimizedBody813_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_348 optimizedBody813_415

def optimizedBody813_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_344 optimizedBody813_416

def optimizedBody813_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_417

def optimizedBody813_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_343 optimizedBody813_418

def optimizedBody813_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_339 optimizedBody813_419

def optimizedBody813_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_420

def optimizedBody813_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_338 optimizedBody813_421

def optimizedBody813_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_189 optimizedBody813_422

def optimizedBody813_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_325 optimizedBody813_423

def optimizedBody813_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_424

def optimizedBody813_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_324 optimizedBody813_425

def optimizedBody813_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_190 optimizedBody813_426

def optimizedBody813_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_427

def optimizedBody813_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_189 optimizedBody813_428

def optimizedBody813_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_188 optimizedBody813_429

def optimizedBody813_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_430

def optimizedBody813_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_187 optimizedBody813_431

def optimizedBody813_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_183 optimizedBody813_432

def optimizedBody813_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_433

def optimizedBody813_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_182 optimizedBody813_434

def optimizedBody813_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_178 optimizedBody813_435

def optimizedBody813_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_436

def optimizedBody813_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_177 optimizedBody813_437

def optimizedBody813_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_173 optimizedBody813_438

def optimizedBody813_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_439

def optimizedBody813_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_172 optimizedBody813_440

def optimizedBody813_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_168 optimizedBody813_441

def optimizedBody813_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_442

def optimizedBody813_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_167 optimizedBody813_443

def optimizedBody813_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_163 optimizedBody813_444

def optimizedBody813_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_445

def optimizedBody813_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_162 optimizedBody813_446

def optimizedBody813_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_158 optimizedBody813_447

def optimizedBody813_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_448

def optimizedBody813_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_157 optimizedBody813_449

def optimizedBody813_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_147 optimizedBody813_450

def optimizedBody813_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_451

def optimizedBody813_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_153 optimizedBody813_452

def optimizedBody813_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_152 optimizedBody813_453

def optimizedBody813_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_35 optimizedBody813_454

def optimizedBody813_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_72 optimizedBody813_455

def optimizedBody813_457 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_33 optimizedBody813_456

def optimizedBody813_458 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_32 optimizedBody813_457

def optimizedBody813_459 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_31 optimizedBody813_458

def optimizedBody813_460 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_30 optimizedBody813_459

def optimizedBody813_461 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_13 optimizedBody813_460

def optimizedBody813_462 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_461

def optimizedBody813_463 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_151 optimizedBody813_462

def optimizedBody813_464 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_147 optimizedBody813_463

def optimizedBody813_465 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_464

def optimizedBody813_466 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_146 optimizedBody813_465

def optimizedBody813_467 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_142 optimizedBody813_466

def optimizedBody813_468 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_467

def optimizedBody813_469 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_141 optimizedBody813_468

def optimizedBody813_470 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_137 optimizedBody813_469

def optimizedBody813_471 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_470

def optimizedBody813_472 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_136 optimizedBody813_471

def optimizedBody813_473 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_132 optimizedBody813_472

def optimizedBody813_474 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_473

def optimizedBody813_475 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_131 optimizedBody813_474

def optimizedBody813_476 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_127 optimizedBody813_475

def optimizedBody813_477 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_35 optimizedBody813_476

def optimizedBody813_478 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_51 optimizedBody813_477

def optimizedBody813_479 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_33 optimizedBody813_478

def optimizedBody813_480 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_32 optimizedBody813_479

def optimizedBody813_481 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_31 optimizedBody813_480

def optimizedBody813_482 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_30 optimizedBody813_481

def optimizedBody813_483 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_13 optimizedBody813_482

def optimizedBody813_484 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_483

def optimizedBody813_485 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_126 optimizedBody813_484

def optimizedBody813_486 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_122 optimizedBody813_485

def optimizedBody813_487 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_486

def optimizedBody813_488 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_121 optimizedBody813_487

def optimizedBody813_489 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_117 optimizedBody813_488

def optimizedBody813_490 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_489

def optimizedBody813_491 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_116 optimizedBody813_490

def optimizedBody813_492 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_84 optimizedBody813_491

def optimizedBody813_493 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_83 optimizedBody813_492

def optimizedBody813_494 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_493

def optimizedBody813_495 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_82 optimizedBody813_494

def optimizedBody813_496 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_78 optimizedBody813_495

def optimizedBody813_497 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_496

def optimizedBody813_498 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_77 optimizedBody813_497

def optimizedBody813_499 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_73 optimizedBody813_498

def optimizedBody813_500 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_35 optimizedBody813_499

def optimizedBody813_501 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_72 optimizedBody813_500

def optimizedBody813_502 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_33 optimizedBody813_501

def optimizedBody813_503 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_32 optimizedBody813_502

def optimizedBody813_504 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_31 optimizedBody813_503

def optimizedBody813_505 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_30 optimizedBody813_504

def optimizedBody813_506 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_13 optimizedBody813_505

def optimizedBody813_507 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_506

def optimizedBody813_508 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_71 optimizedBody813_507

def optimizedBody813_509 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_67 optimizedBody813_508

def optimizedBody813_510 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_509

def optimizedBody813_511 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_66 optimizedBody813_510

def optimizedBody813_512 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_62 optimizedBody813_511

def optimizedBody813_513 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_512

def optimizedBody813_514 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_61 optimizedBody813_513

def optimizedBody813_515 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_57 optimizedBody813_514

def optimizedBody813_516 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_515

def optimizedBody813_517 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_56 optimizedBody813_516

def optimizedBody813_518 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_52 optimizedBody813_517

def optimizedBody813_519 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_35 optimizedBody813_518

def optimizedBody813_520 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_51 optimizedBody813_519

def optimizedBody813_521 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_33 optimizedBody813_520

def optimizedBody813_522 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_32 optimizedBody813_521

def optimizedBody813_523 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_31 optimizedBody813_522

def optimizedBody813_524 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_30 optimizedBody813_523

def optimizedBody813_525 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_13 optimizedBody813_524

def optimizedBody813_526 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_525

def optimizedBody813_527 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_50 optimizedBody813_526

def optimizedBody813_528 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_46 optimizedBody813_527

def optimizedBody813_529 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_528

def optimizedBody813_530 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_45 optimizedBody813_529

def optimizedBody813_531 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_41 optimizedBody813_530

def optimizedBody813_532 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_531

def optimizedBody813_533 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_40 optimizedBody813_532

def optimizedBody813_534 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_36 optimizedBody813_533

def optimizedBody813_535 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_35 optimizedBody813_534

def optimizedBody813_536 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_34 optimizedBody813_535

def optimizedBody813_537 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_33 optimizedBody813_536

def optimizedBody813_538 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_32 optimizedBody813_537

def optimizedBody813_539 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_31 optimizedBody813_538

def optimizedBody813_540 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_30 optimizedBody813_539

def optimizedBody813_541 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_13 optimizedBody813_540

def optimizedBody813_542 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_541

def optimizedBody813_543 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_29 optimizedBody813_542

def optimizedBody813_544 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_25 optimizedBody813_543

def optimizedBody813_545 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_24 optimizedBody813_544

def optimizedBody813_546 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_15 optimizedBody813_545

def optimizedBody813_547 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_23 optimizedBody813_546

def optimizedBody813_548 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_15 optimizedBody813_547

def optimizedBody813_549 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_22 optimizedBody813_548

def optimizedBody813_550 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_15 optimizedBody813_549

def optimizedBody813_551 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_21 optimizedBody813_550

def optimizedBody813_552 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_15 optimizedBody813_551

def optimizedBody813_553 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_20 optimizedBody813_552

def optimizedBody813_554 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_15 optimizedBody813_553

def optimizedBody813_555 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_19 optimizedBody813_554

def optimizedBody813_556 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_15 optimizedBody813_555

def optimizedBody813_557 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_18 optimizedBody813_556

def optimizedBody813_558 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_15 optimizedBody813_557

def optimizedBody813_559 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_17 optimizedBody813_558

def optimizedBody813_560 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_15 optimizedBody813_559

def optimizedBody813_561 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_16 optimizedBody813_560

def optimizedBody813_562 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_15 optimizedBody813_561

def optimizedBody813_563 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_14 optimizedBody813_562

def optimizedBody813_564 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_13 optimizedBody813_563

def optimizedBody813_565 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_564

def optimizedBody813_566 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_12 optimizedBody813_565

def optimizedBody813_567 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_8 optimizedBody813_566

def optimizedBody813_568 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_7 optimizedBody813_567

def optimizedBody813_569 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_6 optimizedBody813_568

def optimizedBody813_570 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_5 optimizedBody813_569

def optimizedBody813_571 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody813_0 optimizedBody813_570

def oracle813 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 37)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 23)) 31
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 31))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                      Flapjack.Spt.ln))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln) 33
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                    29
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 27 (Flapjack.Spt.ls 24)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 23))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 30 (Flapjack.Spt.ls 0))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 Flapjack.Spt.ln)))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 35 Flapjack.Spt.ln) 25
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) 29
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 0)) 28
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 33 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 23)) 22
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 38 (Flapjack.Spt.ls 30))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) 2
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                      32
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 38
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 38 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 29)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 0
                        (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 33))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 24)))
                      33 (Flapjack.Spt.ls 34)))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 38
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                      25
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 30)) 31
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 37 Flapjack.Spt.ln)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 39 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 37
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 4)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 (Flapjack.Spt.ls 32)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 24))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln) 24
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 28
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 28 Flapjack.Spt.ln)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 33)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                      3 Flapjack.Spt.ln))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                      29
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 34)) 36
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)))
                    25
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 34)) 25
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 39)))))
                  35
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 24
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 29 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 3 (Flapjack.Spt.ls 33))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) 0
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                      28 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 25)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 24))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
                      29 (Flapjack.Spt.ls 33)))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 1)) 2
                        (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 2)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 27
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 13) Flapjack.Spt.ln)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 Flapjack.Spt.ln) 33
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 23
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 31 (Flapjack.Spt.ls 33)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 26))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 29)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 24)))
                    1
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 36
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 0 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 24
                        (Flapjack.Spt.ls 24))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 29
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 34))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 38)))
                      Flapjack.Spt.ln))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 31
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 2
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
                    3
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 Flapjack.Spt.ln)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 25))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 3
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 37 Flapjack.Spt.ln))
                      2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 0
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      22
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 27
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 31 (Flapjack.Spt.ls 1)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 35)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 35 (Flapjack.Spt.ls 28))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 0
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                      30
                      (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 35 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 0))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 23)))
                      31 (Flapjack.Spt.ls 36)))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 22
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 28)) 29
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 3))))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 36
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 24 (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 28))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 24 (Flapjack.Spt.ls 31)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 29)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 23))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 3 (Flapjack.Spt.ls 2)) 23
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 31)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 25
                        (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 26))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                      36 Flapjack.Spt.ln))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 27
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 32)) 33
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)))
                    22
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 36 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 0
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 28
                        (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 34)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 22
                        (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 36)))))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 19) 30 (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln) 26
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 30 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 2 (Flapjack.Spt.ls 22)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23))))
                    2
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 38 Flapjack.Spt.ln) 27
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) 31
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 30 (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 5)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 25
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 34))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                      35
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 36
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) Flapjack.Spt.ln))
                    31
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 29 (Flapjack.Spt.ls 35)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 24))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 28 (Flapjack.Spt.ls 27)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 37)))
                    1
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 33
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 (Flapjack.Spt.ls 32)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 39)) 23
                        (Flapjack.Spt.ls 37)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 36)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 30
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 30))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 26)))
                      Flapjack.Spt.ln))
                  6
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) Flapjack.Spt.ln))
                    28
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 37)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 29 Flapjack.Spt.ln)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 31 (Flapjack.Spt.ls 22))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln))
                      2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 Flapjack.Spt.ln)))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 33
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                      24
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 28
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 0)) 27
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 32 (Flapjack.Spt.ls 2)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 23
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 36 (Flapjack.Spt.ls 29))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 0
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                      31
                      (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 36 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 2)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 2))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 37)))
                      32 (Flapjack.Spt.ls 38)))
                  8
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 36
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 2)))
                      24
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 29)) 30
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 39))))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 25
                        (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 39 (Flapjack.Spt.ls 29))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 34)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 36)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 37))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 27)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 32)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 26
                        (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 27))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                      2 Flapjack.Spt.ln))
                  9
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 33)) 35
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)))
                    24
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 37))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 23))))))
                23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 24
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 2)))))
                  29
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0)) 22
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 28 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 31 (Flapjack.Spt.ls 2))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 1
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                      27
                      (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 31 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 24)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 37))))
                    2
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 39
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                      28
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 32
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                  10
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 2)) 31
                        (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 3
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 32))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 36
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 38
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                    32
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 30 (Flapjack.Spt.ls 5)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 25))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 27 (Flapjack.Spt.ls 28)))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 22)))
                    4
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 35
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 0 (Flapjack.Spt.ls 39)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 40)) 22
                        (Flapjack.Spt.ls 22))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 34)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 33)))
                      Flapjack.Spt.ln))
                  5
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 0
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                      30
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 38
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
                    26
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 24))))))
                29
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 4
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 Flapjack.Spt.ln))
                      0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))) 23
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 25
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 30 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 0 (Flapjack.Spt.ls 27))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 0
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                      29
                      (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 33 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 25))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 1)))
                      30 (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))
                  11
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 23
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 28
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2 Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    35
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 22
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 32 (Flapjack.Spt.ls 38)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 27))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 25 (Flapjack.Spt.ls 30)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 30)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 25 Flapjack.Spt.ln)))
                    3
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 38 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 30)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 24
                        (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 3))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 32)))
                      35 Flapjack.Spt.ln))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2))) 26
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 31)) 32
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)))
                    23
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 24 Flapjack.Spt.ln)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 38 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 1
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 27
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 38 (Flapjack.Spt.ls 28)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 23
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 37 (Flapjack.Spt.ls 35)))))
                  23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 31)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 25))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln) 25
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 29
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 29 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 25 (Flapjack.Spt.ls 23)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 27)))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 36 Flapjack.Spt.ln) 26
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) 30
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 29 (Flapjack.Spt.ls 35))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 22)) 24
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 39 (Flapjack.Spt.ls 31))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) 2 Flapjack.Spt.ln) 33
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 34
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 39 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 35
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) Flapjack.Spt.ln))
                    30
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 2 (Flapjack.Spt.ls 25)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 29 (Flapjack.Spt.ls 33)))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23)))
                    7
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 32
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 0 (Flapjack.Spt.ls 36)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 38))
                        (Flapjack.Spt.ls 23))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 39 Flapjack.Spt.ln) 38
                      Flapjack.Spt.ln)
                    32
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 28 (Flapjack.Spt.ls 35))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 26)) 22
                        (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 34)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 23))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 35 Flapjack.Spt.ln) 25
                      (Flapjack.Spt.ls 29))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 31
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 29
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 35)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 26))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 29 Flapjack.Spt.ln) 28
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
                    24
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22)))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 37
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 26
                        (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 34)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))))
                23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 33 (Flapjack.Spt.ls 33)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 22
                        (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 28))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) Flapjack.Spt.ln) 33
                      (Flapjack.Spt.ls 34)))
                  35
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)) 25
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) 31 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 33
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                      32
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
                    28
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 24 (Flapjack.Spt.ls 30))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 23))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 28)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 30
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 32)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 38)) 25
                        Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 36)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 39 (Flapjack.Spt.ls 37)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 23)) 27
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                      37 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) 36 Flapjack.Spt.ln))
                    25
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 27 (Flapjack.Spt.ls 23))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 24
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 36 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 37))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)))))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 33
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 23
                        (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 30))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 29)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln) 29
                      (Flapjack.Spt.ls 33)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 27
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 34
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 36
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                      35 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) Flapjack.Spt.ln))
                    30
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 26 (Flapjack.Spt.ls 32))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 24))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 30)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 32
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                      22 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) 27 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 24)) 29
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 31
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) 34 Flapjack.Spt.ln))
                    27
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 29 (Flapjack.Spt.ls 24))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 27 Flapjack.Spt.ln) 26
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 34 Flapjack.Spt.ln))
                    23
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 24)))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 36
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 24
                        (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 28)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 32))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 31)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 33))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) Flapjack.Spt.ln) 31
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 36 Flapjack.Spt.ln)))
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)) 22
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 29 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 31
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                      30
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
                    26
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 23 (Flapjack.Spt.ls 28))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 33)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 28
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 31)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 22
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))))))
                29
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 36 (Flapjack.Spt.ls 35)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 25
                        (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 30))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) Flapjack.Spt.ln) 36
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)) 27
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 33 Flapjack.Spt.ln))
                    22
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 37))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 33 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 31
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 33)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 28))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 24))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 38 Flapjack.Spt.ln) 27
                      (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 30 (Flapjack.Spt.ls 38))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 25
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 35
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 38 Flapjack.Spt.ln) 36
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) Flapjack.Spt.ln))
                    31
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 27 (Flapjack.Spt.ls 33))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 25)) 23
                        (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 31)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 33
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                      24 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) 28 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 25)) 30
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 32
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) Flapjack.Spt.ln))
                    28
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 25)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 30 (Flapjack.Spt.ls 25))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 28 Flapjack.Spt.ln) 27
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
                    22
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 25)))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 34
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 25
                        (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 29)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 32 (Flapjack.Spt.ls 32)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 23
                        (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 27))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) Flapjack.Spt.ln) 32
                      (Flapjack.Spt.ls 38)))
                  29
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)) 24
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 30 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 32
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                      31
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
                    27
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 22 (Flapjack.Spt.ls 29))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 27)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 29
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 36)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 24 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 35)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 38 (Flapjack.Spt.ls 36)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) Flapjack.Spt.ln) 34
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 35 Flapjack.Spt.ln))
                    24
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 35 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 32
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 38)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 29))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 28)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 25))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 39 Flapjack.Spt.ln) 28
                      (Flapjack.Spt.ls 32)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 31 (Flapjack.Spt.ls 39))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 26
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 36
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 35
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                      33
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
                    29
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 25 (Flapjack.Spt.ls 31))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 29)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 23)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 31
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 39)))
                      23
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 39)) 26
                        Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 22)) 28
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) 38 Flapjack.Spt.ln))
                    26
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 37)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 28 (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 26 Flapjack.Spt.ln) 25
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 38 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 37)))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 35
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 22
                        (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 31))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 30)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 26))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) Flapjack.Spt.ln) 30
                      (Flapjack.Spt.ls 35)))
                  23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 23
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 28
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 37
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 30 Flapjack.Spt.ln) 29
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
                    25
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 27))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 26)))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 27
                        (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 30)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 23
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 35 (Flapjack.Spt.ls 34)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 24
                        (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 29))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) Flapjack.Spt.ln) 35
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)) 26
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 32 Flapjack.Spt.ln))
                    23
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 37)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 32
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 37))))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 30
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 27))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 37))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 36 Flapjack.Spt.ln) 26
                      (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 29 (Flapjack.Spt.ls 36))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 24
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 33
                      (Flapjack.Spt.bs Flapjack.Spt.ln 34
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))))))))))))
def optimized813 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(813, 3, optimizedBody813_571)
end InitECandidate.Proofs.SmallStages.Oracles813
