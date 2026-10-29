import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source335
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles335
def optimizedBody335_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody335_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody335_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody335_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody335_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody335_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody335_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 0), (46, 8), (50, 10), (48, 12), (52, 14), (54, 4), (64, 16), (72, 2), (90, 6)]

def optimizedBody335_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 8), (48, 6), (0, 2), (52, 4), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody335_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (48, 48), (52, 52), (54, 54), (72, 72), (90, 90)]

def optimizedBody335_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody335_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody335_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_9 optimizedBody335_10

def optimizedBody335_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody335_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 (Flapjack.WordStore.temp 0#5)

def optimizedBody335_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody335_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (56, 44), (58, 46), (60, 50), (44, 48), (62, 52), (64, 54), (66, 0), (68, 72), (70, 90)]

def optimizedBody335_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(56, 56), (58, 58), (60, 60), (0, 44), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody335_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (56, 56), (58, 58), (60, 60), (0, 44), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody335_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_17 optimizedBody335_10

def optimizedBody335_19 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody335_16, 335, 3)) (some 288) ([2]) (some (2, optimizedBody335_18, 335, 4))

def optimizedBody335_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(56, 56), (58, 58), (60, 60), (0, 0), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody335_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_20

def optimizedBody335_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_19 optimizedBody335_21

def optimizedBody335_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_15 optimizedBody335_22

def optimizedBody335_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_14 optimizedBody335_23

def optimizedBody335_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_13 optimizedBody335_24

def optimizedBody335_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_25

def optimizedBody335_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 1#64) optimizedBody335_11 optimizedBody335_26

def optimizedBody335_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 56), (46, 58), (48, 60), (0, 0), (52, 62), (54, 64), (64, 66), (72, 68), (90, 70)]

def optimizedBody335_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_28

def optimizedBody335_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_27 optimizedBody335_29

def optimizedBody335_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_8 optimizedBody335_30

def optimizedBody335_32 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody335_7, 335, 2)) (some 162) ([2, 4]) (some (2, optimizedBody335_31, 335, 5))

def optimizedBody335_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody335_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody335_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody335_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (50, 50), (0, 52), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody335_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (0, 52), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody335_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_37 optimizedBody335_10

def optimizedBody335_39 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody335_36, 335, 6)) (some 288) ([2]) (some (2, optimizedBody335_38, 335, 7))

def optimizedBody335_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (4, 4), (50, 50), (0, 0), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody335_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_40

def optimizedBody335_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_39 optimizedBody335_41

def optimizedBody335_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_35 optimizedBody335_42

def optimizedBody335_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_14 optimizedBody335_43

def optimizedBody335_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_44

def optimizedBody335_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (4, 48), (50, 0), (0, 52), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody335_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_46

def optimizedBody335_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody335_45 optimizedBody335_47

def optimizedBody335_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 46), (48, 4), (50, 50), (52, 0), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody335_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody335_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (72, 72), (90, 90)]

def optimizedBody335_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_51 optimizedBody335_10

def optimizedBody335_53 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody335_50, 335, 8)) (some 169) ([2, 4]) (some (2, optimizedBody335_52, 335, 9))

def optimizedBody335_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody335_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody335_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (56, 0), (68, 4), (72, 72), (90, 90)]

def optimizedBody335_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (0, 56), (68, 68), (72, 72), (90, 90)]

def optimizedBody335_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (0, 56), (68, 68), (72, 72), (90, 90)]

def optimizedBody335_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_58 optimizedBody335_10

def optimizedBody335_60 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody335_57, 335, 10)) (some 288) ([2]) (some (2, optimizedBody335_59, 335, 11))

def optimizedBody335_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (0, 0), (68, 68), (72, 72), (90, 90)]

def optimizedBody335_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_61

def optimizedBody335_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_60 optimizedBody335_62

def optimizedBody335_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_56 optimizedBody335_63

def optimizedBody335_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_14 optimizedBody335_64

def optimizedBody335_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_65

def optimizedBody335_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (0, 0), (68, 4), (72, 72), (90, 90)]

def optimizedBody335_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_67

def optimizedBody335_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody335_66 optimizedBody335_68

def optimizedBody335_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody335_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody335_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (66, 0), (68, 68), (56, 0),
    (72, 72), (90, 90)]

def optimizedBody335_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (12, 2), (0, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (66, 66),
    (68, 68), (10, 56), (72, 72), (90, 90)]

def optimizedBody335_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (64, 64), (66, 66), (68, 68), (10, 56), (72, 72),
    (90, 90)]

def optimizedBody335_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_74 optimizedBody335_10

def optimizedBody335_76 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody335_73, 335, 12)) (some 161) ([2, 4]) (some (2, optimizedBody335_75, 335, 13))

def optimizedBody335_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody335_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody335_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody335_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 8), (58, 6), (60, 12), (62, 0),
    (64, 64), (66, 66), (68, 68), (70, 10), (72, 72), (90, 90)]

def optimizedBody335_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (10, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (0, 70), (72, 72), (90, 90)]

def optimizedBody335_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (0, 70), (72, 72), (90, 90)]

def optimizedBody335_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_82 optimizedBody335_10

def optimizedBody335_84 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody335_81, 335, 14)) (some 161) ([2, 4]) (some (2, optimizedBody335_83, 335, 15))

def optimizedBody335_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody335_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody335_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 0), (72, 72), (82, 12), (84, 10), (86, 6), (88, 8), (90, 90)]

def optimizedBody335_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (12, 2), (10, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (0, 70), (72, 72), (82, 82), (84, 84), (86, 86), (88, 88),
    (90, 90)]

def optimizedBody335_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (0, 70), (72, 72), (82, 82), (84, 84), (86, 86), (88, 88), (90, 90)]

def optimizedBody335_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_89 optimizedBody335_10

def optimizedBody335_91 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody335_88, 335, 16)) (some 161) ([2, 4]) (some (2, optimizedBody335_90, 335, 17))

def optimizedBody335_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody335_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody335_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 0), (72, 72), (74, 8), (76, 6), (78, 12), (80, 10), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90)]

def optimizedBody335_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (0, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (10, 78), (80, 80),
    (12, 82), (84, 84), (86, 86), (88, 88), (90, 90)]

def optimizedBody335_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (0, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (10, 78), (80, 80), (12, 82), (84, 84), (86, 86),
    (88, 88), (90, 90)]

def optimizedBody335_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_96 optimizedBody335_10

def optimizedBody335_98 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody335_95, 335, 18)) (some 161) ([2, 4]) (some (2, optimizedBody335_97, 335, 19))

def optimizedBody335_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (14, 14)]

def optimizedBody335_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 14 (Flapjack.WordRegImm.reg 10)))

def optimizedBody335_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody335_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody335_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody335_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 0), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 10), (80, 80), (82, 12), (84, 84), (86, 86),
    (88, 88), (90, 90), (94, 14), (96, 4), (98, 6), (100, 8)]

def optimizedBody335_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody335_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody335_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_106 optimizedBody335_10

def optimizedBody335_108 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody335_105, 335, 20)) (some 288) ([2]) (some (2, optimizedBody335_107, 335, 21))

def optimizedBody335_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 8), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86), (88, 88),
    (90, 90), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody335_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_109

def optimizedBody335_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_108 optimizedBody335_110

def optimizedBody335_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_104 optimizedBody335_111

def optimizedBody335_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_14 optimizedBody335_112

def optimizedBody335_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_113

def optimizedBody335_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58), (60, 0), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 10), (80, 80), (82, 12), (84, 84), (86, 86), (88, 88),
    (90, 90), (94, 14), (96, 4), (98, 6), (100, 8)]

def optimizedBody335_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_115

def optimizedBody335_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 16) optimizedBody335_114 optimizedBody335_116

def optimizedBody335_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 8#64)

def optimizedBody335_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody335_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 21#64)

def optimizedBody335_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 8), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (90, 90), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody335_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58), (60, 60), (10, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (0, 86),
    (88, 88), (6, 90), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody335_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58), (60, 60), (10, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (0, 86),
    (88, 88), (6, 90), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody335_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_123 optimizedBody335_10

def optimizedBody335_125 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody335_122, 335, 22)) (some 288) ([2]) (some (2, optimizedBody335_124, 335, 23))

def optimizedBody335_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 8), (60, 60), (10, 10), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (0, 0), (88, 88), (6, 6),
    (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody335_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_126

def optimizedBody335_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_125 optimizedBody335_127

def optimizedBody335_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_121 optimizedBody335_128

def optimizedBody335_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_120 optimizedBody335_129

def optimizedBody335_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_130

def optimizedBody335_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 8), (60, 60), (10, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (0, 86), (88, 88),
    (6, 90), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody335_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_132

def optimizedBody335_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 8) optimizedBody335_131 optimizedBody335_133

def optimizedBody335_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody335_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody335_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 8), (60, 60), (62, 10), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (0, 0),
    (88, 88), (6, 6), (4, 4), (2, 2), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody335_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 58), (2, 2)]

def optimizedBody335_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 62), (2, 2)]

def optimizedBody335_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody335_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody335_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody335_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody335_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody335_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody335_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody335_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(58, 10), (62, 12), (4, 4), (2, 2)]

def optimizedBody335_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody335_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_147 optimizedBody335_148

def optimizedBody335_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_146 optimizedBody335_149

def optimizedBody335_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_145 optimizedBody335_150

def optimizedBody335_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_144 optimizedBody335_151

def optimizedBody335_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_143 optimizedBody335_152

def optimizedBody335_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_142 optimizedBody335_153

def optimizedBody335_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_141 optimizedBody335_154

def optimizedBody335_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_140 optimizedBody335_155

def optimizedBody335_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_139 optimizedBody335_156

def optimizedBody335_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_157

def optimizedBody335_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(58, 10)]

def optimizedBody335_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody335_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_159 optimizedBody335_160

def optimizedBody335_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_161

def optimizedBody335_163 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 10) optimizedBody335_158 optimizedBody335_162

def optimizedBody335_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(58, 10), (62, 8), (4, 4), (2, 2)]

def optimizedBody335_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_164

def optimizedBody335_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_163 optimizedBody335_165

def optimizedBody335_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_138 optimizedBody335_166

def optimizedBody335_168 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) optimizedBody335_167 (Flapjack.Spt.bs
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

def optimizedBody335_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody335_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody335_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody335_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 22#64)

def optimizedBody335_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 0),
    (88, 88), (90, 6), (92, 4), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody335_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (6, 90), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody335_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (6, 90), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody335_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_175 optimizedBody335_10

def optimizedBody335_177 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody335_174, 335, 24)) (some 288) ([2]) (some (2, optimizedBody335_176, 335, 25))

def optimizedBody335_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 86),
    (88, 88), (6, 6), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody335_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_178

def optimizedBody335_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_177 optimizedBody335_179

def optimizedBody335_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_173 optimizedBody335_180

def optimizedBody335_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_172 optimizedBody335_181

def optimizedBody335_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_182

def optimizedBody335_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84), (86, 0),
    (88, 88), (6, 6), (92, 4), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody335_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_184

def optimizedBody335_186 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody335_183 optimizedBody335_185

def optimizedBody335_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody335_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody335_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody335_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (80, 80), (82, 82), (84, 84),
    (86, 86), (88, 88), (90, 6), (92, 92), (94, 94), (96, 96), (98, 98), (100, 100)]

def optimizedBody335_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (42, 46), (18, 48), (16, 50), (28, 52), (8, 54), (24, 56), (12, 58), (34, 60), (40, 62), (20, 64),
    (10, 66), (30, 68), (6, 70), (26, 72), (14, 74), (38, 76), (36, 78), (52, 80), (4, 82), (0, 84), (32, 86), (22, 88),
    (50, 90), (46, 92), (48, 94), (54, 96), (56, 98), (64, 100)]

def optimizedBody335_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (42, 46), (18, 48), (16, 50), (28, 52), (8, 54), (24, 56), (12, 58), (34, 60), (40, 62), (20, 64),
    (10, 66), (30, 68), (6, 70), (26, 72), (14, 74), (38, 76), (36, 78), (52, 80), (4, 82), (0, 84), (32, 86), (22, 88),
    (50, 90), (46, 92), (48, 94), (54, 96), (56, 98), (64, 100)]

def optimizedBody335_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_192 optimizedBody335_10

def optimizedBody335_194 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody335_191, 335, 26)) (some 78) ([2, 4]) (some (2, optimizedBody335_193, 335, 27))

def optimizedBody335_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (58, 42), (16, 18), (6, 16), (28, 28), (62, 8), (24, 24), (12, 12), (34, 34), (60, 40), (20, 20), (10, 10),
    (30, 30), (66, 6), (26, 26), (14, 14), (54, 38), (56, 36), (52, 52), (4, 4), (0, 0), (2, 32), (22, 22), (50, 50),
    (32, 46), (36, 2), (18, 48), (48, 54), (46, 56), (64, 64)]

def optimizedBody335_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 2), (40, 36)]

def optimizedBody335_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36)]

def optimizedBody335_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 36 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody335_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 40)]

def optimizedBody335_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 2 (Flapjack.WordRegImm.reg 40)))

def optimizedBody335_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody335_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody335_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 50)]

def optimizedBody335_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 38)))

def optimizedBody335_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 42 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody335_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (40, 40), (42, 42)]

def optimizedBody335_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 40 (Flapjack.WordRegImm.reg 0)))

def optimizedBody335_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody335_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody335_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody335_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody335_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody335_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody335_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 42)]

def optimizedBody335_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 42 0#64))

def optimizedBody335_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody335_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 42), (2, 2)]

def optimizedBody335_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 42 0#64))

def optimizedBody335_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 40 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody335_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 36), (50, 38), (36, 2)]

def optimizedBody335_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_220 optimizedBody335_148

def optimizedBody335_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_219 optimizedBody335_221

def optimizedBody335_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_199 optimizedBody335_222

def optimizedBody335_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_218 optimizedBody335_223

def optimizedBody335_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_217 optimizedBody335_224

def optimizedBody335_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_216 optimizedBody335_225

def optimizedBody335_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_215 optimizedBody335_226

def optimizedBody335_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_214 optimizedBody335_227

def optimizedBody335_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_213 optimizedBody335_228

def optimizedBody335_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_212 optimizedBody335_229

def optimizedBody335_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_211 optimizedBody335_230

def optimizedBody335_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_210 optimizedBody335_231

def optimizedBody335_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_209 optimizedBody335_232

def optimizedBody335_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_208 optimizedBody335_233

def optimizedBody335_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_207 optimizedBody335_234

def optimizedBody335_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_206 optimizedBody335_235

def optimizedBody335_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_205 optimizedBody335_236

def optimizedBody335_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_204 optimizedBody335_237

def optimizedBody335_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_203 optimizedBody335_238

def optimizedBody335_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_202 optimizedBody335_239

def optimizedBody335_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_201 optimizedBody335_240

def optimizedBody335_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_119 optimizedBody335_241

def optimizedBody335_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_200 optimizedBody335_242

def optimizedBody335_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_199 optimizedBody335_243

def optimizedBody335_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_198 optimizedBody335_244

def optimizedBody335_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_197 optimizedBody335_245

def optimizedBody335_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_246

def optimizedBody335_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_160

def optimizedBody335_249 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 40 (Flapjack.WordRegImm.reg 36) optimizedBody335_247 optimizedBody335_248

def optimizedBody335_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (50, 8), (36, 36)]

def optimizedBody335_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_250

def optimizedBody335_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_249 optimizedBody335_251

def optimizedBody335_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_196 optimizedBody335_252

def optimizedBody335_254 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) optimizedBody335_253 (Flapjack.Spt.bn
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

def optimizedBody335_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 54)]

def optimizedBody335_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 50)]

def optimizedBody335_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody335_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody335_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody335_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody335_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551488#64))

def optimizedBody335_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody335_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody335_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 4), (48, 48), (0, 46)]

def optimizedBody335_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_263 optimizedBody335_264

def optimizedBody335_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_262 optimizedBody335_265

def optimizedBody335_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_261 optimizedBody335_266

def optimizedBody335_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_260 optimizedBody335_267

def optimizedBody335_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_259 optimizedBody335_268

def optimizedBody335_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_258 optimizedBody335_269

def optimizedBody335_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_257 optimizedBody335_270

def optimizedBody335_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_256 optimizedBody335_271

def optimizedBody335_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_272

def optimizedBody335_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 23#64)

def optimizedBody335_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 52), (50, 50), (48, 48), (52, 46)]

def optimizedBody335_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 50), (48, 48), (0, 52)]

def optimizedBody335_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 50), (48, 48), (0, 52)]

def optimizedBody335_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_277 optimizedBody335_10

def optimizedBody335_279 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody335_276, 335, 28)) (some 288) ([2]) (some (2, optimizedBody335_278, 335, 29))

def optimizedBody335_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (4, 4), (48, 48), (0, 0)]

def optimizedBody335_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_280

def optimizedBody335_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_279 optimizedBody335_281

def optimizedBody335_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_275 optimizedBody335_282

def optimizedBody335_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_274 optimizedBody335_283

def optimizedBody335_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_284

def optimizedBody335_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 52), (4, 50), (48, 48), (0, 46)]

def optimizedBody335_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_286

def optimizedBody335_288 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody335_285 optimizedBody335_287

def optimizedBody335_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody335_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody335_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 4), (48, 48), (0, 0)]

def optimizedBody335_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_290 optimizedBody335_291

def optimizedBody335_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_289 optimizedBody335_292

def optimizedBody335_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_257 optimizedBody335_293

def optimizedBody335_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_54 optimizedBody335_294

def optimizedBody335_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_295

def optimizedBody335_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_288 optimizedBody335_296

def optimizedBody335_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_171 optimizedBody335_297

def optimizedBody335_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_33 optimizedBody335_298

def optimizedBody335_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_299

def optimizedBody335_301 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody335_273 optimizedBody335_300

def optimizedBody335_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody335_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody335_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551480#64))

def optimizedBody335_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody335_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_263 optimizedBody335_305

def optimizedBody335_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_262 optimizedBody335_306

def optimizedBody335_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_304 optimizedBody335_307

def optimizedBody335_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_260 optimizedBody335_308

def optimizedBody335_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_259 optimizedBody335_309

def optimizedBody335_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_258 optimizedBody335_310

def optimizedBody335_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_303 optimizedBody335_311

def optimizedBody335_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_302 optimizedBody335_312

def optimizedBody335_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_313

def optimizedBody335_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody335_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody335_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (6, 46), (4, 48)]

def optimizedBody335_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46), (4, 48)]

def optimizedBody335_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_318 optimizedBody335_10

def optimizedBody335_320 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody335_317, 335, 30)) (some 288) ([2]) (some (2, optimizedBody335_319, 335, 31))

def optimizedBody335_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 6), (4, 4)]

def optimizedBody335_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_321

def optimizedBody335_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_320 optimizedBody335_322

def optimizedBody335_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_316 optimizedBody335_323

def optimizedBody335_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_315 optimizedBody335_324

def optimizedBody335_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_325

def optimizedBody335_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (6, 46), (4, 48)]

def optimizedBody335_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_327

def optimizedBody335_329 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody335_326 optimizedBody335_328

def optimizedBody335_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody335_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody335_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody335_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_331 optimizedBody335_332

def optimizedBody335_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_145 optimizedBody335_333

def optimizedBody335_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_330 optimizedBody335_334

def optimizedBody335_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_187 optimizedBody335_335

def optimizedBody335_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_336

def optimizedBody335_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_329 optimizedBody335_337

def optimizedBody335_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_171 optimizedBody335_338

def optimizedBody335_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_33 optimizedBody335_339

def optimizedBody335_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_340

def optimizedBody335_342 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody335_314 optimizedBody335_341

def optimizedBody335_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody335_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody335_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_343 optimizedBody335_344

def optimizedBody335_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_136 optimizedBody335_345

def optimizedBody335_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_346

def optimizedBody335_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_342 optimizedBody335_347

def optimizedBody335_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_136 optimizedBody335_348

def optimizedBody335_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_33 optimizedBody335_349

def optimizedBody335_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_350

def optimizedBody335_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_301 optimizedBody335_351

def optimizedBody335_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_136 optimizedBody335_352

def optimizedBody335_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_255 optimizedBody335_353

def optimizedBody335_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_354

def optimizedBody335_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_254 optimizedBody335_355

def optimizedBody335_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_195 optimizedBody335_356

def optimizedBody335_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_357

def optimizedBody335_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_136 optimizedBody335_358

def optimizedBody335_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_359

def optimizedBody335_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_194 optimizedBody335_360

def optimizedBody335_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_190 optimizedBody335_361

def optimizedBody335_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_189 optimizedBody335_362

def optimizedBody335_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_188 optimizedBody335_363

def optimizedBody335_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_187 optimizedBody335_364

def optimizedBody335_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_365

def optimizedBody335_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_186 optimizedBody335_366

def optimizedBody335_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_33 optimizedBody335_367

def optimizedBody335_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_171 optimizedBody335_368

def optimizedBody335_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_170 optimizedBody335_369

def optimizedBody335_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_169 optimizedBody335_370

def optimizedBody335_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_371

def optimizedBody335_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_168 optimizedBody335_372

def optimizedBody335_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_137 optimizedBody335_373

def optimizedBody335_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_374

def optimizedBody335_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_136 optimizedBody335_375

def optimizedBody335_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_135 optimizedBody335_376

def optimizedBody335_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_377

def optimizedBody335_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_134 optimizedBody335_378

def optimizedBody335_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_119 optimizedBody335_379

def optimizedBody335_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_118 optimizedBody335_380

def optimizedBody335_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_381

def optimizedBody335_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_117 optimizedBody335_382

def optimizedBody335_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_5 optimizedBody335_383

def optimizedBody335_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_103 optimizedBody335_384

def optimizedBody335_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_33 optimizedBody335_385

def optimizedBody335_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_102 optimizedBody335_386

def optimizedBody335_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_101 optimizedBody335_387

def optimizedBody335_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_100 optimizedBody335_388

def optimizedBody335_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_99 optimizedBody335_389

def optimizedBody335_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_390

def optimizedBody335_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_98 optimizedBody335_391

def optimizedBody335_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_94 optimizedBody335_392

def optimizedBody335_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_93 optimizedBody335_393

def optimizedBody335_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_33 optimizedBody335_394

def optimizedBody335_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_92 optimizedBody335_395

def optimizedBody335_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_33 optimizedBody335_396

def optimizedBody335_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_397

def optimizedBody335_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_91 optimizedBody335_398

def optimizedBody335_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_87 optimizedBody335_399

def optimizedBody335_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_86 optimizedBody335_400

def optimizedBody335_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_33 optimizedBody335_401

def optimizedBody335_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_85 optimizedBody335_402

def optimizedBody335_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_33 optimizedBody335_403

def optimizedBody335_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_404

def optimizedBody335_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_84 optimizedBody335_405

def optimizedBody335_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_80 optimizedBody335_406

def optimizedBody335_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_79 optimizedBody335_407

def optimizedBody335_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_77 optimizedBody335_408

def optimizedBody335_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_78 optimizedBody335_409

def optimizedBody335_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_77 optimizedBody335_410

def optimizedBody335_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_411

def optimizedBody335_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_76 optimizedBody335_412

def optimizedBody335_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_72 optimizedBody335_413

def optimizedBody335_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_71 optimizedBody335_414

def optimizedBody335_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_33 optimizedBody335_415

def optimizedBody335_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_70 optimizedBody335_416

def optimizedBody335_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_33 optimizedBody335_417

def optimizedBody335_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_418

def optimizedBody335_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_69 optimizedBody335_419

def optimizedBody335_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_55 optimizedBody335_420

def optimizedBody335_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_54 optimizedBody335_421

def optimizedBody335_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_422

def optimizedBody335_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_53 optimizedBody335_423

def optimizedBody335_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_49 optimizedBody335_424

def optimizedBody335_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_425

def optimizedBody335_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_48 optimizedBody335_426

def optimizedBody335_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_34 optimizedBody335_427

def optimizedBody335_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_33 optimizedBody335_428

def optimizedBody335_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_429

def optimizedBody335_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_32 optimizedBody335_430

def optimizedBody335_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_6 optimizedBody335_431

def optimizedBody335_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_5 optimizedBody335_432

def optimizedBody335_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_4 optimizedBody335_433

def optimizedBody335_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_3 optimizedBody335_434

def optimizedBody335_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_2 optimizedBody335_435

def optimizedBody335_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_1 optimizedBody335_436

def optimizedBody335_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_0 optimizedBody335_437

def oracle335 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 47))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 41 Flapjack.Spt.ln)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 42 (Flapjack.Spt.ls 47)) 23
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 47 (Flapjack.Spt.ls 31))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.ls 37)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 1 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                  36
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 38))) 35
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 32)) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) 27
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 17) (Flapjack.Spt.ls 4)))
                    23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 29 (Flapjack.Spt.ls 47)))
                    29
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 34 (Flapjack.Spt.ls 40))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
                6
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 38 (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 32 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    32
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 16) (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 1))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 43)) 5
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 15) (Flapjack.Spt.ls 25)))
                    27 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 Flapjack.Spt.ln) 24
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 33 Flapjack.Spt.ln))
                    36
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 21) 38 (Flapjack.Spt.ls 44))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 0)))))
                8
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 27))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 41)))
                    1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.ls 4)) 2
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 36 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                  24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 (Flapjack.Spt.ls 28)) 0
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 2
                        (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 1)))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 23
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 14) (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln) 1 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 25 (Flapjack.Spt.ls 42))) 32
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 0 (Flapjack.Spt.ls 36))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.ls 25)))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 34 Flapjack.Spt.ln) 0
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 45 (Flapjack.Spt.ls 48)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 1)) 27
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 25
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    29
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 0)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)) 45
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.ls 23)))
                    36 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 19) 0 Flapjack.Spt.ln))
                    27
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 40 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 22 Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 44 (Flapjack.Spt.ls 29))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 39)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2)) 2
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                  27
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 36)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 24 (Flapjack.Spt.ls 30)) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 46) (Flapjack.Spt.ls 31))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 37)) 25
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 6)))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 27 (Flapjack.Spt.ls 44))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 32 (Flapjack.Spt.ls 38))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.ls 23)))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 36 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                    0
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 21) Flapjack.Spt.ln) 36
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 30 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 27
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    0
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 22)) 45
                      (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 0))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.ls 41)) 33
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 27)))
                    25 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 Flapjack.Spt.ln) 26
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 31 (Flapjack.Spt.ls 49)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 36 (Flapjack.Spt.ls 42))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln))))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 21) 3 (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 34)))
                  23
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 36
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                    34
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 26)) 32
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 1 (Flapjack.Spt.ls 35))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 49 (Flapjack.Spt.ls 33))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 2 (Flapjack.Spt.ls 35)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 23 (Flapjack.Spt.ls 40)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 28 (Flapjack.Spt.ls 34))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 44) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 0
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 43 (Flapjack.Spt.ls 50)))
                    23
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 44 (Flapjack.Spt.ls 49)) 25
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 26 (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)) 23
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 49)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 1))))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 22)))
                    45 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 36 Flapjack.Spt.ln)) 26
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 (Flapjack.Spt.ls 1)) 22
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 23 Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 30))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 38)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 21) (Flapjack.Spt.ls 37)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 25 (Flapjack.Spt.ls 31)) 23
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) 26
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 30)))
                    22 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 28 (Flapjack.Spt.ls 3)))
                    30
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 33 (Flapjack.Spt.ls 39))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))))))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 37 (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                    1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) 45
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 31 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 32
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    31
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 23)) 36
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 0))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 49 (Flapjack.Spt.ls 42)) 34
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 26)))
                    0
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 Flapjack.Spt.ln) 25
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 32 (Flapjack.Spt.ls 50)))
                    45
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 21) 37 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln))))
                4
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 42)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 2 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                  25
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 45
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                    35
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 27)) 27
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 5
                        (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 0)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 50 (Flapjack.Spt.ls 34)) 22
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln) (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 (Flapjack.Spt.ls 41)))
                    33
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 29 (Flapjack.Spt.ls 35))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 43) (Flapjack.Spt.ls 26)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 33 Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 44 (Flapjack.Spt.ls 49)))
                    22
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 45 (Flapjack.Spt.ls 50)) 26
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)) 24
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    28
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 50)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 0)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 47 (Flapjack.Spt.ls 44)) 36
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 24)))
                    32 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 34 Flapjack.Spt.ln))
                    32
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 5 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 43 (Flapjack.Spt.ls 28))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 40)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 45 Flapjack.Spt.ln)))
                  26
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 23 (Flapjack.Spt.ls 29)) 25
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 47) (Flapjack.Spt.ls 32))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 24
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 26 (Flapjack.Spt.ls 0))) 31
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 31 (Flapjack.Spt.ls 37))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.ls 24)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 47)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 5)) 32
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 29 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 26
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    30
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 0))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) 32
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 28)))
                    2
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 Flapjack.Spt.ln) 27
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 30 (Flapjack.Spt.ls 48)))
                    28
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 19) 35 (Flapjack.Spt.ls 41))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
                7
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 44)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 (Flapjack.Spt.ls 6)) (Flapjack.Spt.ls 33)))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 33
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 18) (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 36))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 48 (Flapjack.Spt.ls 32))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 0 (Flapjack.Spt.ls 36)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
                  45
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 22 (Flapjack.Spt.ls 39)))
                    34
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 33))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 28)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 42 Flapjack.Spt.ln)) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 43 (Flapjack.Spt.ls 48)) 24
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 25 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 48)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 0)))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 45 (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 25 Flapjack.Spt.ln)))
                  33
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 24
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 28)) (Flapjack.Spt.ls 45))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 42))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 32))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  45
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 33 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 32
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 47))))
                  30
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 36))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 41 Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 32
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 38))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 47 (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  26
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 29 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 34
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 23 (Flapjack.Spt.ls 49))))
                  31
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)) Flapjack.Spt.ln)
                    (Flapjack.Spt.ls 45)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 43))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 45
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 40))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 49 (Flapjack.Spt.ls 34)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 50)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  32
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 31 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 44))))
                  28
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 34))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 35 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 44) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 36))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  25
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 27 Flapjack.Spt.ln)) 35
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 36
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 24 (Flapjack.Spt.ls 50))))
                  32
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 44))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 41))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 50 (Flapjack.Spt.ls 35)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 31))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  36
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 32 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 45))))
                  29
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 35))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 36 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 45) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 27
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 37))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 45 (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 28 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 28
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 22 (Flapjack.Spt.ls 48))))
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 45))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 32)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 42 Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 36
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 39))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 48 (Flapjack.Spt.ls 33)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  27
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 30 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 43))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 33))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 34 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 43) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 35))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  23
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 26 Flapjack.Spt.ln)) 34
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln))))))))))
def optimized335 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(335, 4, optimizedBody335_438)
end InitECandidate.Proofs.SmallStages.Oracles335
