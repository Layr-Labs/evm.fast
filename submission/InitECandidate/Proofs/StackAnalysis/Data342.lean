import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody342_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (50, 4), (48, 2)]

def optimizedBody342_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody342_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody342_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody342_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_2 optimizedBody342_3

def optimizedBody342_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody342_1, 342, 2)) (some 169) ([2, 4]) (some (2, optimizedBody342_4, 342, 3))

def optimizedBody342_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody342_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody342_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 24#64)

def optimizedBody342_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4)]

def optimizedBody342_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody342_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (50, 50), (46, 2), (48, 48), (52, 8)]

def optimizedBody342_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (50, 50), (0, 46), (48, 48), (6, 52)]

def optimizedBody342_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (0, 46), (48, 48), (6, 52)]

def optimizedBody342_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_13 optimizedBody342_3

def optimizedBody342_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody342_12, 342, 4)) (some 68) ([2]) (some (2, optimizedBody342_14, 342, 5))

def optimizedBody342_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody342_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 4), (50, 50), (46, 8), (0, 0), (48, 48), (6, 6)]

def optimizedBody342_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody342_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody342_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody342_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody342_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody342_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody342_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (52, 6), (60, 4)]

def optimizedBody342_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody342_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (60, 60), (50, 50), (58, 46), (46, 0), (48, 48), (52, 52)]

def optimizedBody342_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (0, 2), (4, 4), (8, 8), (44, 44), (60, 60), (50, 50), (58, 58), (46, 46), (48, 48), (52, 52)]

def optimizedBody342_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (60, 60), (50, 50), (58, 58), (46, 46), (48, 48), (52, 52)]

def optimizedBody342_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_28 optimizedBody342_3

def optimizedBody342_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody342_27, 342, 6)) (some 161) ([2, 4]) (some (2, optimizedBody342_29, 342, 7))

def optimizedBody342_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody342_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody342_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 19#64)

def optimizedBody342_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody342_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody342_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody342_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody342_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_37 optimizedBody342_3

def optimizedBody342_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_36 optimizedBody342_38

def optimizedBody342_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_35 optimizedBody342_39

def optimizedBody342_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_34 optimizedBody342_40

def optimizedBody342_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_33 optimizedBody342_41

def optimizedBody342_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_42

def optimizedBody342_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody342_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody342_43 optimizedBody342_44

def optimizedBody342_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 6), (44, 44), (76, 6), (70, 0), (68, 4), (60, 60), (50, 50), (58, 58), (74, 8), (46, 46), (48, 48),
    (52, 52)]

def optimizedBody342_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (6, 2), (44, 44), (76, 76), (70, 70), (68, 68), (60, 60), (50, 50), (58, 58), (74, 74), (46, 46), (48, 48),
    (52, 52)]

def optimizedBody342_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (76, 76), (70, 70), (68, 68), (60, 60), (50, 50), (58, 58), (74, 74), (46, 46), (48, 48), (52, 52)]

def optimizedBody342_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_48 optimizedBody342_3

def optimizedBody342_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody342_47, 342, 8)) (some 169) ([2, 4]) (some (2, optimizedBody342_49, 342, 9))

def optimizedBody342_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 4)]

def optimizedBody342_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody342_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def optimizedBody342_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody342_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (76, 76), (62, 0), (70, 70), (68, 68), (60, 60), (50, 50), (58, 58), (74, 74),
    (46, 46), (48, 48), (52, 52), (54, 2)]

def optimizedBody342_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (76, 76), (62, 62), (70, 70), (68, 68), (60, 60), (50, 50), (58, 58), (74, 74), (46, 46), (48, 48),
    (52, 52), (0, 54)]

def optimizedBody342_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (76, 76), (62, 62), (70, 70), (68, 68), (60, 60), (50, 50), (58, 58), (74, 74), (46, 46), (48, 48),
    (52, 52), (0, 54)]

def optimizedBody342_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_57 optimizedBody342_3

def optimizedBody342_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody342_56, 342, 10)) (some 339) ([2, 4, 6]) (some (2, optimizedBody342_58, 342, 11))

def optimizedBody342_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody342_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody342_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (76, 76), (62, 62), (70, 70), (68, 68), (56, 6), (60, 60), (50, 50), (58, 58), (74, 74),
    (46, 46), (48, 48), (52, 52), (64, 2)]

def optimizedBody342_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (0, 2), (44, 44), (76, 76), (62, 62), (70, 70), (68, 68), (56, 56), (60, 60), (50, 50), (58, 58), (74, 74),
    (46, 46), (48, 48), (52, 52), (64, 64)]

def optimizedBody342_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (76, 76), (62, 62), (70, 70), (68, 68), (56, 56), (60, 60), (50, 50), (58, 58), (74, 74), (46, 46),
    (48, 48), (52, 52), (64, 64)]

def optimizedBody342_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_64 optimizedBody342_3

def optimizedBody342_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody342_63, 342, 12)) (some 341) ([2, 4]) (some (2, optimizedBody342_65, 342, 13))

def optimizedBody342_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (76, 76), (62, 62), (70, 70), (68, 68), (56, 56), (60, 60), (50, 50), (58, 58), (74, 74),
    (66, 4), (46, 46), (72, 0), (48, 48), (52, 52), (64, 64)]

def optimizedBody342_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (4, 4), (44, 44), (76, 76), (62, 62), (70, 70), (68, 68), (56, 56), (60, 60), (50, 50), (58, 58), (74, 74),
    (66, 66), (46, 46), (72, 72), (48, 48), (52, 52), (64, 64)]

def optimizedBody342_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (76, 76), (62, 62), (70, 70), (68, 68), (56, 56), (60, 60), (50, 50), (58, 58), (74, 74), (66, 66),
    (46, 46), (72, 72), (48, 48), (52, 52), (64, 64)]

def optimizedBody342_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_69 optimizedBody342_3

def optimizedBody342_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
  Flapjack.Spt.ln)), optimizedBody342_68, 342, 14)) (some 169) ([2, 4]) (some (2, optimizedBody342_70, 342, 15))

def optimizedBody342_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody342_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (76, 76), (62, 62), (70, 70), (68, 68), (56, 56), (60, 60), (50, 50), (58, 58), (74, 74), (66, 66),
    (46, 46), (72, 72), (48, 48), (52, 52), (54, 0), (64, 64), (78, 4)]

def optimizedBody342_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (76, 76), (62, 62), (70, 70), (68, 68), (56, 56), (60, 60), (50, 50), (58, 58), (74, 74), (66, 66),
    (46, 46), (72, 72), (48, 48), (52, 52), (0, 54), (64, 64), (8, 78)]

def optimizedBody342_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (76, 76), (62, 62), (70, 70), (68, 68), (56, 56), (60, 60), (50, 50), (58, 58), (74, 74), (66, 66),
    (46, 46), (72, 72), (48, 48), (52, 52), (0, 54), (64, 64), (8, 78)]

def optimizedBody342_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_75 optimizedBody342_3

def optimizedBody342_77 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody342_74, 342, 16)) (some 68) ([2]) (some (2, optimizedBody342_76, 342, 17))

def optimizedBody342_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (76, 76), (62, 62), (70, 70), (68, 68), (56, 56), (60, 60), (50, 50), (58, 58), (74, 74), (66, 66),
    (46, 46), (4, 4), (72, 72), (48, 48), (54, 6), (52, 52), (0, 0), (64, 64), (8, 8)]

def optimizedBody342_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4)]

def optimizedBody342_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody342_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody342_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 76), (48, 62), (50, 70), (52, 68), (54, 56), (56, 60), (58, 50), (60, 58),
    (62, 74), (64, 66), (66, 46), (68, 4), (70, 72), (72, 48), (74, 54), (76, 52), (78, 2), (80, 64), (82, 8)]

def optimizedBody342_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (0, 68), (70, 70), (72, 72), (8, 74), (76, 76), (78, 78), (80, 80), (82, 82)]

def optimizedBody342_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (0, 68), (70, 70), (72, 72), (8, 74), (76, 76), (78, 78), (80, 80), (82, 82)]

def optimizedBody342_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_84 optimizedBody342_3

def optimizedBody342_86 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody342_83, 342, 18)) (some 339) ([2, 4, 6]) (some (2, optimizedBody342_85, 342, 19))

def optimizedBody342_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody342_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody342_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody342_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66), (68, 0), (70, 70), (72, 72), (74, 8), (76, 76), (78, 78), (80, 80), (82, 82)]

def optimizedBody342_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(6, 44), (10, 46), (12, 48), (14, 50), (16, 52), (18, 54), (20, 56), (22, 58), (24, 60), (26, 62), (28, 64),
    (30, 66), (4, 68), (32, 70), (34, 72), (36, 74), (38, 76), (0, 78), (40, 80), (8, 82)]

def optimizedBody342_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (6, 44), (10, 46), (12, 48), (14, 50), (16, 52), (18, 54), (20, 56), (22, 58), (24, 60), (26, 62), (28, 64),
    (30, 66), (4, 68), (32, 70), (34, 72), (36, 74), (38, 76), (0, 78), (40, 80), (8, 82)]

def optimizedBody342_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_92 optimizedBody342_3

def optimizedBody342_94 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody342_91, 342, 20)) (some 77) ([2, 4, 6]) (some (2, optimizedBody342_93, 342, 21))

def optimizedBody342_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody342_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 6), (76, 10), (62, 12), (70, 14), (68, 16), (56, 18), (60, 20), (50, 22), (58, 24), (74, 26), (66, 28),
    (46, 30), (4, 4), (72, 32), (48, 34), (54, 36), (52, 38), (0, 0), (64, 40), (8, 8)]

def optimizedBody342_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody342_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_96 optimizedBody342_97

def optimizedBody342_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_95 optimizedBody342_98

def optimizedBody342_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_19 optimizedBody342_99

def optimizedBody342_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_100

def optimizedBody342_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_94 optimizedBody342_101

def optimizedBody342_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_90 optimizedBody342_102

def optimizedBody342_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_81 optimizedBody342_103

def optimizedBody342_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_19 optimizedBody342_104

def optimizedBody342_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_89 optimizedBody342_105

def optimizedBody342_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_88 optimizedBody342_106

def optimizedBody342_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_87 optimizedBody342_107

def optimizedBody342_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_31 optimizedBody342_108

def optimizedBody342_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_109

def optimizedBody342_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_86 optimizedBody342_110

def optimizedBody342_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_82 optimizedBody342_111

def optimizedBody342_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_81 optimizedBody342_112

def optimizedBody342_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_80 optimizedBody342_113

def optimizedBody342_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_114

def optimizedBody342_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody342_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody342_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_116 optimizedBody342_117

def optimizedBody342_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_118

def optimizedBody342_120 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 8) optimizedBody342_115 optimizedBody342_119

def optimizedBody342_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (76, 6), (62, 10), (70, 12), (68, 14), (56, 16), (60, 18), (50, 20), (58, 22), (74, 24), (66, 26), (46, 28),
    (4, 4), (72, 30), (48, 32), (54, 34), (52, 36), (0, 0), (64, 38), (8, 8)]

def optimizedBody342_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_121

def optimizedBody342_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_120 optimizedBody342_122

def optimizedBody342_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_79 optimizedBody342_123

def optimizedBody342_125 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody342_124 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody342_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 60)]

def optimizedBody342_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 58), (0, 0)]

def optimizedBody342_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody342_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 56)]

def optimizedBody342_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody342_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody342_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 54)]

def optimizedBody342_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody342_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody342_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody342_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody342_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody342_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (50, 50), (46, 6), (0, 46), (48, 48), (6, 52)]

def optimizedBody342_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_138 optimizedBody342_97

def optimizedBody342_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_137 optimizedBody342_139

def optimizedBody342_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_34 optimizedBody342_140

def optimizedBody342_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_136 optimizedBody342_141

def optimizedBody342_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_135 optimizedBody342_142

def optimizedBody342_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_134 optimizedBody342_143

def optimizedBody342_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_31 optimizedBody342_144

def optimizedBody342_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_133 optimizedBody342_145

def optimizedBody342_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_132 optimizedBody342_146

def optimizedBody342_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_131 optimizedBody342_147

def optimizedBody342_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_31 optimizedBody342_148

def optimizedBody342_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_130 optimizedBody342_149

def optimizedBody342_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_129 optimizedBody342_150

def optimizedBody342_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_128 optimizedBody342_151

def optimizedBody342_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_127 optimizedBody342_152

def optimizedBody342_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_10 optimizedBody342_153

def optimizedBody342_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_9 optimizedBody342_154

def optimizedBody342_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_8 optimizedBody342_155

def optimizedBody342_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_126 optimizedBody342_156

def optimizedBody342_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_157

def optimizedBody342_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_125 optimizedBody342_158

def optimizedBody342_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_78 optimizedBody342_159

def optimizedBody342_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_160

def optimizedBody342_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_16 optimizedBody342_161

def optimizedBody342_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_162

def optimizedBody342_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_77 optimizedBody342_163

def optimizedBody342_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_73 optimizedBody342_164

def optimizedBody342_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_72 optimizedBody342_165

def optimizedBody342_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_19 optimizedBody342_166

def optimizedBody342_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_167

def optimizedBody342_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_71 optimizedBody342_168

def optimizedBody342_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_67 optimizedBody342_169

def optimizedBody342_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_170

def optimizedBody342_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_66 optimizedBody342_171

def optimizedBody342_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_62 optimizedBody342_172

def optimizedBody342_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_61 optimizedBody342_173

def optimizedBody342_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_60 optimizedBody342_174

def optimizedBody342_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_175

def optimizedBody342_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_59 optimizedBody342_176

def optimizedBody342_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_55 optimizedBody342_177

def optimizedBody342_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_16 optimizedBody342_178

def optimizedBody342_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_54 optimizedBody342_179

def optimizedBody342_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_53 optimizedBody342_180

def optimizedBody342_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_181

def optimizedBody342_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_182

def optimizedBody342_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_45 optimizedBody342_183

def optimizedBody342_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_52 optimizedBody342_184

def optimizedBody342_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_51 optimizedBody342_185

def optimizedBody342_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_186

def optimizedBody342_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_50 optimizedBody342_187

def optimizedBody342_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_46 optimizedBody342_188

def optimizedBody342_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_189

def optimizedBody342_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_190

def optimizedBody342_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_45 optimizedBody342_191

def optimizedBody342_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_32 optimizedBody342_192

def optimizedBody342_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_31 optimizedBody342_193

def optimizedBody342_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_194

def optimizedBody342_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_30 optimizedBody342_195

def optimizedBody342_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_26 optimizedBody342_196

def optimizedBody342_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_25 optimizedBody342_197

def optimizedBody342_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_24 optimizedBody342_198

def optimizedBody342_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_23 optimizedBody342_199

def optimizedBody342_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_22 optimizedBody342_200

def optimizedBody342_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_21 optimizedBody342_201

def optimizedBody342_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_20 optimizedBody342_202

def optimizedBody342_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_19 optimizedBody342_203

def optimizedBody342_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_204

def optimizedBody342_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody342_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_206 optimizedBody342_117

def optimizedBody342_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_207

def optimizedBody342_209 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 0) optimizedBody342_205 optimizedBody342_208

def optimizedBody342_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (4, 4), (50, 8), (46, 10), (0, 0), (48, 12), (6, 6)]

def optimizedBody342_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_210

def optimizedBody342_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_209 optimizedBody342_211

def optimizedBody342_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_18 optimizedBody342_212

def optimizedBody342_214 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody342_213 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody342_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46), (4, 0)]

def optimizedBody342_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4]

def optimizedBody342_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_215 optimizedBody342_216

def optimizedBody342_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_217

def optimizedBody342_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_214 optimizedBody342_218

def optimizedBody342_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_17 optimizedBody342_219

def optimizedBody342_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_220

def optimizedBody342_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_16 optimizedBody342_221

def optimizedBody342_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_222

def optimizedBody342_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_15 optimizedBody342_223

def optimizedBody342_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_11 optimizedBody342_224

def optimizedBody342_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_10 optimizedBody342_225

def optimizedBody342_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_9 optimizedBody342_226

def optimizedBody342_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_8 optimizedBody342_227

def optimizedBody342_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_7 optimizedBody342_228

def optimizedBody342_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_6 optimizedBody342_229

def optimizedBody342_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_5 optimizedBody342_230

def optimizedBody342_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody342_0 optimizedBody342_231

def optimized342 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(342, 3, optimizedBody342_232)
end InitECandidate.Proofs.StackAnalysis
