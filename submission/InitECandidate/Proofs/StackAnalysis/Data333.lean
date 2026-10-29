import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody333_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody333_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody333_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody333_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody333_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody333_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody333_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 0), (46, 8), (50, 10), (48, 12), (52, 14), (54, 4), (64, 16), (72, 2), (90, 6)]

def optimizedBody333_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 8), (48, 6), (0, 2), (52, 4), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody333_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (48, 48), (52, 52), (54, 54), (72, 72), (90, 90)]

def optimizedBody333_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody333_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody333_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_9 optimizedBody333_10

def optimizedBody333_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody333_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 (Flapjack.WordStore.temp 0#5)

def optimizedBody333_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody333_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (56, 44), (58, 46), (60, 50), (44, 48), (62, 52), (64, 54), (66, 0), (68, 72), (70, 90)]

def optimizedBody333_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(56, 56), (58, 58), (60, 60), (0, 44), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody333_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (56, 56), (58, 58), (60, 60), (0, 44), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody333_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_17 optimizedBody333_10

def optimizedBody333_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_16, 333, 3)) (some 286) ([2]) (some (2, optimizedBody333_18, 333, 4))

def optimizedBody333_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(56, 56), (58, 58), (60, 60), (0, 0), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody333_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_20

def optimizedBody333_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_19 optimizedBody333_21

def optimizedBody333_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_15 optimizedBody333_22

def optimizedBody333_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_14 optimizedBody333_23

def optimizedBody333_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_13 optimizedBody333_24

def optimizedBody333_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_25

def optimizedBody333_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 1#64) optimizedBody333_11 optimizedBody333_26

def optimizedBody333_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 56), (46, 58), (48, 60), (0, 0), (52, 62), (54, 64), (64, 66), (72, 68), (90, 70)]

def optimizedBody333_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_28

def optimizedBody333_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_27 optimizedBody333_29

def optimizedBody333_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_8 optimizedBody333_30

def optimizedBody333_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_7, 333, 2)) (some 162) ([2, 4]) (some (2, optimizedBody333_31, 333, 5))

def optimizedBody333_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody333_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody333_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody333_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (50, 50), (0, 52), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody333_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (0, 52), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody333_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_37 optimizedBody333_10

def optimizedBody333_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_36, 333, 6)) (some 286) ([2]) (some (2, optimizedBody333_38, 333, 7))

def optimizedBody333_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (4, 4), (50, 50), (0, 0), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody333_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_40

def optimizedBody333_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_39 optimizedBody333_41

def optimizedBody333_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_35 optimizedBody333_42

def optimizedBody333_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_14 optimizedBody333_43

def optimizedBody333_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_44

def optimizedBody333_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (4, 48), (50, 0), (0, 52), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody333_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_46

def optimizedBody333_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody333_45 optimizedBody333_47

def optimizedBody333_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 46), (48, 4), (50, 50), (52, 0), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody333_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody333_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody333_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_51 optimizedBody333_10

def optimizedBody333_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_50, 333, 8)) (some 169) ([2, 4]) (some (2, optimizedBody333_52, 333, 9))

def optimizedBody333_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody333_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody333_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (56, 0), (68, 4), (72, 72), (90, 90)]

def optimizedBody333_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (0, 56), (68, 68), (72, 72), (90, 90)]

def optimizedBody333_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (0, 56), (68, 68), (72, 72), (90, 90)]

def optimizedBody333_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_58 optimizedBody333_10

def optimizedBody333_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_57, 333, 10)) (some 286) ([2]) (some (2, optimizedBody333_59, 333, 11))

def optimizedBody333_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (0, 0), (68, 68), (72, 72), (90, 90)]

def optimizedBody333_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_61

def optimizedBody333_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_60 optimizedBody333_62

def optimizedBody333_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_56 optimizedBody333_63

def optimizedBody333_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_14 optimizedBody333_64

def optimizedBody333_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_65

def optimizedBody333_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (0, 0), (68, 4), (72, 72), (90, 90)]

def optimizedBody333_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_67

def optimizedBody333_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody333_66 optimizedBody333_68

def optimizedBody333_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody333_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody333_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (66, 0), (68, 68), (56, 0),
    (72, 72), (90, 90)]

def optimizedBody333_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (12, 2), (0, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (66, 66),
    (68, 68), (10, 56), (72, 72), (90, 90)]

def optimizedBody333_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (66, 66), (68, 68), (10, 56), (72, 72),
    (90, 90)]

def optimizedBody333_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_74 optimizedBody333_10

def optimizedBody333_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_73, 333, 12)) (some 161) ([2, 4]) (some (2, optimizedBody333_75, 333, 13))

def optimizedBody333_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody333_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody333_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody333_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 8), (58, 6), (60, 12), (62, 0),
    (64, 64), (66, 66), (68, 68), (70, 10), (72, 72), (90, 90)]

def optimizedBody333_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (10, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (0, 70), (72, 72), (90, 90)]

def optimizedBody333_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (0, 70), (72, 72), (90, 90)]

def optimizedBody333_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_82 optimizedBody333_10

def optimizedBody333_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
  Flapjack.Spt.ln)), optimizedBody333_81, 333, 14)) (some 161) ([2, 4]) (some (2, optimizedBody333_83, 333, 15))

def optimizedBody333_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody333_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody333_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 0), (72, 72), (82, 12), (84, 10), (86, 6), (88, 8), (90, 90)]

def optimizedBody333_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (12, 2), (10, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (0, 70), (72, 72), (82, 82), (84, 84), (86, 86), (88, 88),
    (90, 90)]

def optimizedBody333_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (0, 70), (72, 72), (82, 82), (84, 84), (86, 86), (88, 88), (90, 90)]

def optimizedBody333_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_89 optimizedBody333_10

def optimizedBody333_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_88, 333, 16)) (some 161) ([2, 4]) (some (2, optimizedBody333_90, 333, 17))

def optimizedBody333_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody333_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody333_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 0), (72, 72), (74, 8), (76, 6), (78, 12), (80, 10), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90)]

def optimizedBody333_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (0, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (10, 78), (80, 80),
    (12, 82), (84, 84), (86, 86), (88, 88), (90, 90)]

def optimizedBody333_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (0, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (10, 78), (80, 80), (12, 82), (84, 84), (86, 86),
    (88, 88), (90, 90)]

def optimizedBody333_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_96 optimizedBody333_10

def optimizedBody333_98 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody333_95, 333, 18)) (some 161) ([2, 4]) (some (2, optimizedBody333_97, 333, 19))

def optimizedBody333_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (14, 14)]

def optimizedBody333_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 14 (Flapjack.WordRegImm.reg 10)))

def optimizedBody333_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody333_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody333_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody333_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 0), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 10), (80, 80), (82, 12), (84, 84), (86, 86),
    (88, 88), (90, 90), (94, 14), (96, 4), (98, 6), (100, 8)]

def optimizedBody333_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody333_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody333_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_106 optimizedBody333_10

def optimizedBody333_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_105, 333, 20)) (some 286) ([2]) (some (2, optimizedBody333_107, 333, 21))

def optimizedBody333_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 8), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86), (88, 88),
    (90, 90), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody333_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_109

def optimizedBody333_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_108 optimizedBody333_110

def optimizedBody333_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_104 optimizedBody333_111

def optimizedBody333_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_14 optimizedBody333_112

def optimizedBody333_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_113

def optimizedBody333_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58), (60, 0), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 10), (80, 80), (82, 12), (84, 84), (86, 86), (88, 88),
    (90, 90), (94, 14), (96, 4), (98, 6), (100, 8)]

def optimizedBody333_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_115

def optimizedBody333_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 16) optimizedBody333_114 optimizedBody333_116

def optimizedBody333_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 8#64)

def optimizedBody333_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody333_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 21#64)

def optimizedBody333_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 8), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody333_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58), (60, 60), (10, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (0, 86),
    (88, 88), (6, 90), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody333_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58), (60, 60), (10, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (0, 86),
    (88, 88), (6, 90), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody333_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_123 optimizedBody333_10

def optimizedBody333_125 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_122, 333, 22)) (some 286) ([2]) (some (2, optimizedBody333_124, 333, 23))

def optimizedBody333_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 8), (60, 60), (10, 10), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (0, 0), (88, 88), (6, 6),
    (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody333_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_126

def optimizedBody333_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_125 optimizedBody333_127

def optimizedBody333_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_121 optimizedBody333_128

def optimizedBody333_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_120 optimizedBody333_129

def optimizedBody333_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_130

def optimizedBody333_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 8), (60, 60), (10, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (0, 86), (88, 88),
    (6, 90), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody333_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_132

def optimizedBody333_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 8) optimizedBody333_131 optimizedBody333_133

def optimizedBody333_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody333_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody333_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 8), (60, 60), (62, 10), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (0, 0),
    (88, 88), (6, 6), (4, 4), (2, 2), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody333_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 58), (2, 2)]

def optimizedBody333_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 62), (2, 2)]

def optimizedBody333_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody333_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody333_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody333_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody333_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody333_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody333_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody333_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(58, 10), (62, 12), (4, 4), (2, 2)]

def optimizedBody333_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody333_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_147 optimizedBody333_148

def optimizedBody333_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_146 optimizedBody333_149

def optimizedBody333_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_145 optimizedBody333_150

def optimizedBody333_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_144 optimizedBody333_151

def optimizedBody333_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_143 optimizedBody333_152

def optimizedBody333_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_142 optimizedBody333_153

def optimizedBody333_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_141 optimizedBody333_154

def optimizedBody333_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_140 optimizedBody333_155

def optimizedBody333_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_139 optimizedBody333_156

def optimizedBody333_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_157

def optimizedBody333_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(58, 10)]

def optimizedBody333_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody333_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_159 optimizedBody333_160

def optimizedBody333_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_161

def optimizedBody333_163 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 10) optimizedBody333_158 optimizedBody333_162

def optimizedBody333_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(58, 10), (62, 8), (4, 4), (2, 2)]

def optimizedBody333_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_164

def optimizedBody333_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_163 optimizedBody333_165

def optimizedBody333_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_138 optimizedBody333_166

def optimizedBody333_168 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody333_167 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody333_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody333_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody333_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody333_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 22#64)

def optimizedBody333_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 0),
    (88, 88), (90, 6), (92, 4), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody333_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (6, 90), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody333_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (6, 90), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody333_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_175 optimizedBody333_10

def optimizedBody333_177 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_174, 333, 24)) (some 286) ([2]) (some (2, optimizedBody333_176, 333, 25))

def optimizedBody333_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (6, 6), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody333_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_178

def optimizedBody333_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_177 optimizedBody333_179

def optimizedBody333_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_173 optimizedBody333_180

def optimizedBody333_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_172 optimizedBody333_181

def optimizedBody333_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_182

def optimizedBody333_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 0),
    (88, 88), (6, 6), (92, 4), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody333_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_184

def optimizedBody333_186 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody333_183 optimizedBody333_185

def optimizedBody333_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody333_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody333_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody333_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84),
    (86, 86), (88, 88), (90, 6), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody333_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (42, 46), (18, 48), (16, 50), (28, 52), (8, 54), (24, 56), (12, 58), (34, 60), (40, 62), (20, 64),
    (10, 66), (30, 68), (6, 70), (26, 72), (14, 74), (38, 76), (36, 78), (52, 80), (4, 82), (0, 84), (32, 86), (22, 88),
    (50, 90), (46, 92), (48, 94), (54, 96), (56, 98), (64, 100)]

def optimizedBody333_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (42, 46), (18, 48), (16, 50), (28, 52), (8, 54), (24, 56), (12, 58), (34, 60), (40, 62), (20, 64),
    (10, 66), (30, 68), (6, 70), (26, 72), (14, 74), (38, 76), (36, 78), (52, 80), (4, 82), (0, 84), (32, 86), (22, 88),
    (50, 90), (46, 92), (48, 94), (54, 96), (56, 98), (64, 100)]

def optimizedBody333_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_192 optimizedBody333_10

def optimizedBody333_194 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_191, 333, 26)) (some 78) ([2, 4]) (some (2, optimizedBody333_193, 333, 27))

def optimizedBody333_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (58, 42), (16, 18), (6, 16), (28, 28), (62, 8), (24, 24), (12, 12), (34, 34), (60, 40), (20, 20), (10, 10),
    (30, 30), (66, 6), (26, 26), (14, 14), (54, 38), (56, 36), (52, 52), (4, 4), (0, 0), (2, 32), (22, 22), (50, 50),
    (32, 46), (36, 2), (18, 48), (48, 54), (46, 56), (64, 64)]

def optimizedBody333_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 2), (40, 36)]

def optimizedBody333_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36)]

def optimizedBody333_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 36 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody333_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 40)]

def optimizedBody333_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 2 (Flapjack.WordRegImm.reg 40)))

def optimizedBody333_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody333_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody333_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 50)]

def optimizedBody333_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 38)))

def optimizedBody333_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 42 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody333_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (40, 40), (42, 42)]

def optimizedBody333_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 40 (Flapjack.WordRegImm.reg 0)))

def optimizedBody333_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody333_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody333_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody333_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody333_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody333_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody333_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 42)]

def optimizedBody333_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 42 0#64))

def optimizedBody333_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody333_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 42), (2, 2)]

def optimizedBody333_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 42 0#64))

def optimizedBody333_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 40 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody333_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 36), (50, 38), (36, 2)]

def optimizedBody333_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_220 optimizedBody333_148

def optimizedBody333_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_219 optimizedBody333_221

def optimizedBody333_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_199 optimizedBody333_222

def optimizedBody333_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_218 optimizedBody333_223

def optimizedBody333_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_217 optimizedBody333_224

def optimizedBody333_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_216 optimizedBody333_225

def optimizedBody333_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_215 optimizedBody333_226

def optimizedBody333_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_214 optimizedBody333_227

def optimizedBody333_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_213 optimizedBody333_228

def optimizedBody333_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_212 optimizedBody333_229

def optimizedBody333_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_211 optimizedBody333_230

def optimizedBody333_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_210 optimizedBody333_231

def optimizedBody333_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_209 optimizedBody333_232

def optimizedBody333_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_208 optimizedBody333_233

def optimizedBody333_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_207 optimizedBody333_234

def optimizedBody333_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_206 optimizedBody333_235

def optimizedBody333_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_205 optimizedBody333_236

def optimizedBody333_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_204 optimizedBody333_237

def optimizedBody333_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_203 optimizedBody333_238

def optimizedBody333_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_202 optimizedBody333_239

def optimizedBody333_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_201 optimizedBody333_240

def optimizedBody333_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_119 optimizedBody333_241

def optimizedBody333_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_200 optimizedBody333_242

def optimizedBody333_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_199 optimizedBody333_243

def optimizedBody333_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_198 optimizedBody333_244

def optimizedBody333_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_197 optimizedBody333_245

def optimizedBody333_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_246

def optimizedBody333_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_160

def optimizedBody333_249 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 40 (Flapjack.WordRegImm.reg 36) optimizedBody333_247 optimizedBody333_248

def optimizedBody333_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (50, 8), (36, 36)]

def optimizedBody333_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_250

def optimizedBody333_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_249 optimizedBody333_251

def optimizedBody333_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_196 optimizedBody333_252

def optimizedBody333_254 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody333_253 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody333_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 54)]

def optimizedBody333_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 50)]

def optimizedBody333_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody333_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody333_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody333_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody333_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551488#64))

def optimizedBody333_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody333_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody333_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 4), (48, 48), (0, 46)]

def optimizedBody333_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_263 optimizedBody333_264

def optimizedBody333_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_262 optimizedBody333_265

def optimizedBody333_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_261 optimizedBody333_266

def optimizedBody333_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_260 optimizedBody333_267

def optimizedBody333_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_259 optimizedBody333_268

def optimizedBody333_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_258 optimizedBody333_269

def optimizedBody333_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_257 optimizedBody333_270

def optimizedBody333_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_256 optimizedBody333_271

def optimizedBody333_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_272

def optimizedBody333_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 23#64)

def optimizedBody333_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 52), (50, 50), (48, 48), (52, 46)]

def optimizedBody333_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 50), (48, 48), (0, 52)]

def optimizedBody333_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 50), (48, 48), (0, 52)]

def optimizedBody333_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_277 optimizedBody333_10

def optimizedBody333_279 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_276, 333, 28)) (some 286) ([2]) (some (2, optimizedBody333_278, 333, 29))

def optimizedBody333_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (4, 4), (48, 48), (0, 0)]

def optimizedBody333_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_280

def optimizedBody333_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_279 optimizedBody333_281

def optimizedBody333_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_275 optimizedBody333_282

def optimizedBody333_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_274 optimizedBody333_283

def optimizedBody333_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_284

def optimizedBody333_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 52), (4, 50), (48, 48), (0, 46)]

def optimizedBody333_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_286

def optimizedBody333_288 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody333_285 optimizedBody333_287

def optimizedBody333_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody333_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody333_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 4), (48, 48), (0, 0)]

def optimizedBody333_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_290 optimizedBody333_291

def optimizedBody333_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_289 optimizedBody333_292

def optimizedBody333_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_257 optimizedBody333_293

def optimizedBody333_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_54 optimizedBody333_294

def optimizedBody333_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_295

def optimizedBody333_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_288 optimizedBody333_296

def optimizedBody333_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_171 optimizedBody333_297

def optimizedBody333_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_33 optimizedBody333_298

def optimizedBody333_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_299

def optimizedBody333_301 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody333_273 optimizedBody333_300

def optimizedBody333_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody333_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody333_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551480#64))

def optimizedBody333_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody333_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_263 optimizedBody333_305

def optimizedBody333_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_262 optimizedBody333_306

def optimizedBody333_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_304 optimizedBody333_307

def optimizedBody333_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_260 optimizedBody333_308

def optimizedBody333_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_259 optimizedBody333_309

def optimizedBody333_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_258 optimizedBody333_310

def optimizedBody333_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_303 optimizedBody333_311

def optimizedBody333_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_302 optimizedBody333_312

def optimizedBody333_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_313

def optimizedBody333_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody333_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody333_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (6, 46), (4, 48)]

def optimizedBody333_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46), (4, 48)]

def optimizedBody333_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_318 optimizedBody333_10

def optimizedBody333_320 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_317, 333, 30)) (some 286) ([2]) (some (2, optimizedBody333_319, 333, 31))

def optimizedBody333_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 6), (4, 4)]

def optimizedBody333_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_321

def optimizedBody333_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_320 optimizedBody333_322

def optimizedBody333_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_316 optimizedBody333_323

def optimizedBody333_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_315 optimizedBody333_324

def optimizedBody333_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_325

def optimizedBody333_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (6, 46), (4, 48)]

def optimizedBody333_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_327

def optimizedBody333_329 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody333_326 optimizedBody333_328

def optimizedBody333_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody333_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody333_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody333_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_331 optimizedBody333_332

def optimizedBody333_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_145 optimizedBody333_333

def optimizedBody333_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_330 optimizedBody333_334

def optimizedBody333_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_187 optimizedBody333_335

def optimizedBody333_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_336

def optimizedBody333_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_329 optimizedBody333_337

def optimizedBody333_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_171 optimizedBody333_338

def optimizedBody333_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_33 optimizedBody333_339

def optimizedBody333_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_340

def optimizedBody333_342 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody333_314 optimizedBody333_341

def optimizedBody333_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody333_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody333_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_343 optimizedBody333_344

def optimizedBody333_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_136 optimizedBody333_345

def optimizedBody333_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_346

def optimizedBody333_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_342 optimizedBody333_347

def optimizedBody333_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_136 optimizedBody333_348

def optimizedBody333_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_33 optimizedBody333_349

def optimizedBody333_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_350

def optimizedBody333_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_301 optimizedBody333_351

def optimizedBody333_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_136 optimizedBody333_352

def optimizedBody333_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_255 optimizedBody333_353

def optimizedBody333_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_354

def optimizedBody333_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_254 optimizedBody333_355

def optimizedBody333_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_195 optimizedBody333_356

def optimizedBody333_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_357

def optimizedBody333_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_136 optimizedBody333_358

def optimizedBody333_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_359

def optimizedBody333_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_194 optimizedBody333_360

def optimizedBody333_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_190 optimizedBody333_361

def optimizedBody333_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_189 optimizedBody333_362

def optimizedBody333_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_188 optimizedBody333_363

def optimizedBody333_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_187 optimizedBody333_364

def optimizedBody333_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_365

def optimizedBody333_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_186 optimizedBody333_366

def optimizedBody333_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_33 optimizedBody333_367

def optimizedBody333_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_171 optimizedBody333_368

def optimizedBody333_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_170 optimizedBody333_369

def optimizedBody333_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_169 optimizedBody333_370

def optimizedBody333_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_371

def optimizedBody333_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_168 optimizedBody333_372

def optimizedBody333_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_137 optimizedBody333_373

def optimizedBody333_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_374

def optimizedBody333_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_136 optimizedBody333_375

def optimizedBody333_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_135 optimizedBody333_376

def optimizedBody333_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_377

def optimizedBody333_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_134 optimizedBody333_378

def optimizedBody333_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_119 optimizedBody333_379

def optimizedBody333_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_118 optimizedBody333_380

def optimizedBody333_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_381

def optimizedBody333_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_117 optimizedBody333_382

def optimizedBody333_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_5 optimizedBody333_383

def optimizedBody333_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_103 optimizedBody333_384

def optimizedBody333_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_33 optimizedBody333_385

def optimizedBody333_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_102 optimizedBody333_386

def optimizedBody333_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_101 optimizedBody333_387

def optimizedBody333_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_100 optimizedBody333_388

def optimizedBody333_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_99 optimizedBody333_389

def optimizedBody333_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_390

def optimizedBody333_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_98 optimizedBody333_391

def optimizedBody333_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_94 optimizedBody333_392

def optimizedBody333_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_93 optimizedBody333_393

def optimizedBody333_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_33 optimizedBody333_394

def optimizedBody333_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_92 optimizedBody333_395

def optimizedBody333_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_33 optimizedBody333_396

def optimizedBody333_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_397

def optimizedBody333_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_91 optimizedBody333_398

def optimizedBody333_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_87 optimizedBody333_399

def optimizedBody333_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_86 optimizedBody333_400

def optimizedBody333_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_33 optimizedBody333_401

def optimizedBody333_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_85 optimizedBody333_402

def optimizedBody333_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_33 optimizedBody333_403

def optimizedBody333_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_404

def optimizedBody333_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_84 optimizedBody333_405

def optimizedBody333_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_80 optimizedBody333_406

def optimizedBody333_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_79 optimizedBody333_407

def optimizedBody333_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_77 optimizedBody333_408

def optimizedBody333_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_78 optimizedBody333_409

def optimizedBody333_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_77 optimizedBody333_410

def optimizedBody333_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_411

def optimizedBody333_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_76 optimizedBody333_412

def optimizedBody333_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_72 optimizedBody333_413

def optimizedBody333_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_71 optimizedBody333_414

def optimizedBody333_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_33 optimizedBody333_415

def optimizedBody333_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_70 optimizedBody333_416

def optimizedBody333_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_33 optimizedBody333_417

def optimizedBody333_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_418

def optimizedBody333_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_69 optimizedBody333_419

def optimizedBody333_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_55 optimizedBody333_420

def optimizedBody333_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_54 optimizedBody333_421

def optimizedBody333_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_422

def optimizedBody333_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_53 optimizedBody333_423

def optimizedBody333_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_49 optimizedBody333_424

def optimizedBody333_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_425

def optimizedBody333_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_48 optimizedBody333_426

def optimizedBody333_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_34 optimizedBody333_427

def optimizedBody333_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_33 optimizedBody333_428

def optimizedBody333_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_12 optimizedBody333_429

def optimizedBody333_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_32 optimizedBody333_430

def optimizedBody333_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_6 optimizedBody333_431

def optimizedBody333_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_5 optimizedBody333_432

def optimizedBody333_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_4 optimizedBody333_433

def optimizedBody333_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_3 optimizedBody333_434

def optimizedBody333_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_2 optimizedBody333_435

def optimizedBody333_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_1 optimizedBody333_436

def optimizedBody333_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_0 optimizedBody333_437

def optimized333 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(333, 4, optimizedBody333_438)
end InitECandidate.Proofs.StackAnalysis
