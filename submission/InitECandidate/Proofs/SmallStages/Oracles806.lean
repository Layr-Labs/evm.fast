import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source806
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles806
def optimizedBody806_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 0), (46, 4), (50, 2), (48, 6)]

def optimizedBody806_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (46, 46), (50, 50), (4, 48)]

def optimizedBody806_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (46, 46), (50, 50), (4, 48)]

def optimizedBody806_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody806_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_2 optimizedBody806_3

def optimizedBody806_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody806_1, 806, 2)) (some 779) ([2]) (some (2, optimizedBody806_4, 806, 3))

def optimizedBody806_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody806_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody806_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody806_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody806_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody806_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody806_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_10 optimizedBody806_11

def optimizedBody806_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_9 optimizedBody806_12

def optimizedBody806_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_13

def optimizedBody806_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody806_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody806_14 optimizedBody806_15

def optimizedBody806_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 6), (46, 46), (50, 50), (56, 4)]

def optimizedBody806_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44), (46, 46), (50, 50), (56, 56)]

def optimizedBody806_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (46, 46), (50, 50), (56, 56)]

def optimizedBody806_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_19 optimizedBody806_3

def optimizedBody806_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody806_18, 806, 4)) (some 791) ([2]) (some (2, optimizedBody806_20, 806, 5))

def optimizedBody806_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody806_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_10 optimizedBody806_22

def optimizedBody806_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_9 optimizedBody806_23

def optimizedBody806_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_24

def optimizedBody806_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody806_25 optimizedBody806_15

def optimizedBody806_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 4), (46, 46), (50, 50), (56, 56)]

def optimizedBody806_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (56, 56)]

def optimizedBody806_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (56, 56)]

def optimizedBody806_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_29 optimizedBody806_3

def optimizedBody806_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody806_28, 806, 6)) (some 69) ([]) (some (2, optimizedBody806_30, 806, 7))

def optimizedBody806_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody806_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (54, 0), (56, 56)]

def optimizedBody806_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (54, 54), (56, 56)]

def optimizedBody806_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (54, 54), (56, 56)]

def optimizedBody806_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_35 optimizedBody806_3

def optimizedBody806_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody806_34, 806, 8)) (some 68) ([2]) (some (2, optimizedBody806_36, 806, 9))

def optimizedBody806_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 192#64)

def optimizedBody806_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 0), (54, 54), (56, 56)]

def optimizedBody806_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody806_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody806_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_41 optimizedBody806_3

def optimizedBody806_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody806_40, 806, 10)) (some 68) ([2]) (some (2, optimizedBody806_42, 806, 11))

def optimizedBody806_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 576#64)

def optimizedBody806_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody806_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (46, 48), (48, 50), (0, 52), (52, 54), (54, 56)]

def optimizedBody806_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (48, 50), (0, 52), (52, 54), (54, 56)]

def optimizedBody806_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_47 optimizedBody806_3

def optimizedBody806_49 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody806_46, 806, 12)) (some 68) ([2]) (some (2, optimizedBody806_48, 806, 13))

def optimizedBody806_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (56, 6)]

def optimizedBody806_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56)]

def optimizedBody806_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56)]

def optimizedBody806_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_52 optimizedBody806_3

def optimizedBody806_54 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody806_51, 806, 14)) (some 785) ([2, 4]) (some (2, optimizedBody806_53, 806, 15))

def optimizedBody806_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody806_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (28, 46), (46, 48), (0, 50), (48, 52), (30, 54)]

def optimizedBody806_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (28, 46), (46, 48), (0, 50), (48, 52), (30, 54)]

def optimizedBody806_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_57 optimizedBody806_3

def optimizedBody806_59 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody806_56, 806, 16)) (some 797) ([2, 4]) (some (2, optimizedBody806_58, 806, 17))

def optimizedBody806_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody806_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody806_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody806_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody806_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody806_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody806_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody806_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody806_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody806_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody806_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody806_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody806_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 30), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (26, 26), (28, 28), (44, 44), (46, 46), (48, 48), (50, 30)]

def optimizedBody806_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (6, 50)]

def optimizedBody806_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (6, 50)]

def optimizedBody806_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_74 optimizedBody806_3

def optimizedBody806_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody806_73, 806, 18)) (some 805) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28]) (some (2, optimizedBody806_75, 806, 19))

def optimizedBody806_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody806_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody806_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody806_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_79 optimizedBody806_3

def optimizedBody806_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody806_78, 806, 20)) (some 769) ([2, 4, 6]) (some (2, optimizedBody806_80, 806, 21))

def optimizedBody806_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody806_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody806_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody806_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_84 optimizedBody806_3

def optimizedBody806_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody806_83, 806, 22)) (some 70) ([2]) (some (2, optimizedBody806_85, 806, 23))

def optimizedBody806_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody806_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_10 optimizedBody806_87

def optimizedBody806_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_9 optimizedBody806_88

def optimizedBody806_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_89

def optimizedBody806_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_86 optimizedBody806_90

def optimizedBody806_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_82 optimizedBody806_91

def optimizedBody806_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_92

def optimizedBody806_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_81 optimizedBody806_93

def optimizedBody806_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_77 optimizedBody806_94

def optimizedBody806_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_95

def optimizedBody806_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_76 optimizedBody806_96

def optimizedBody806_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_72 optimizedBody806_97

def optimizedBody806_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_71 optimizedBody806_98

def optimizedBody806_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_7 optimizedBody806_99

def optimizedBody806_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_70 optimizedBody806_100

def optimizedBody806_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_7 optimizedBody806_101

def optimizedBody806_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_69 optimizedBody806_102

def optimizedBody806_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_7 optimizedBody806_103

def optimizedBody806_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_68 optimizedBody806_104

def optimizedBody806_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_7 optimizedBody806_105

def optimizedBody806_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_67 optimizedBody806_106

def optimizedBody806_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_7 optimizedBody806_107

def optimizedBody806_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_66 optimizedBody806_108

def optimizedBody806_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_7 optimizedBody806_109

def optimizedBody806_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_65 optimizedBody806_110

def optimizedBody806_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_7 optimizedBody806_111

def optimizedBody806_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_64 optimizedBody806_112

def optimizedBody806_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_7 optimizedBody806_113

def optimizedBody806_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_63 optimizedBody806_114

def optimizedBody806_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_7 optimizedBody806_115

def optimizedBody806_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_62 optimizedBody806_116

def optimizedBody806_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_7 optimizedBody806_117

def optimizedBody806_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_61 optimizedBody806_118

def optimizedBody806_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_7 optimizedBody806_119

def optimizedBody806_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_60 optimizedBody806_120

def optimizedBody806_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_7 optimizedBody806_121

def optimizedBody806_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_122

def optimizedBody806_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_59 optimizedBody806_123

def optimizedBody806_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_55 optimizedBody806_124

def optimizedBody806_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_125

def optimizedBody806_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_54 optimizedBody806_126

def optimizedBody806_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_50 optimizedBody806_127

def optimizedBody806_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_128

def optimizedBody806_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_49 optimizedBody806_129

def optimizedBody806_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_45 optimizedBody806_130

def optimizedBody806_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_44 optimizedBody806_131

def optimizedBody806_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_132

def optimizedBody806_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_43 optimizedBody806_133

def optimizedBody806_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_39 optimizedBody806_134

def optimizedBody806_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_38 optimizedBody806_135

def optimizedBody806_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_136

def optimizedBody806_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_37 optimizedBody806_137

def optimizedBody806_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_33 optimizedBody806_138

def optimizedBody806_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_32 optimizedBody806_139

def optimizedBody806_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_140

def optimizedBody806_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_31 optimizedBody806_141

def optimizedBody806_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_27 optimizedBody806_142

def optimizedBody806_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_143

def optimizedBody806_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_144

def optimizedBody806_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_26 optimizedBody806_145

def optimizedBody806_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_8 optimizedBody806_146

def optimizedBody806_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_7 optimizedBody806_147

def optimizedBody806_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_148

def optimizedBody806_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_21 optimizedBody806_149

def optimizedBody806_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_17 optimizedBody806_150

def optimizedBody806_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_151

def optimizedBody806_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_152

def optimizedBody806_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_16 optimizedBody806_153

def optimizedBody806_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_8 optimizedBody806_154

def optimizedBody806_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_7 optimizedBody806_155

def optimizedBody806_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_6 optimizedBody806_156

def optimizedBody806_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_5 optimizedBody806_157

def optimizedBody806_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody806_0 optimizedBody806_158

def oracle806 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 27)) 25
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 28)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)) 25
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 27)))
                3 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 1 (Flapjack.Spt.ls 25)) 23
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 23 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 22 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 28
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 27))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 15)) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 28 Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 28)) 25
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 28)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 28 Flapjack.Spt.ln) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 22
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 23
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 24
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 27 Flapjack.Spt.ln) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))))))
def optimized806 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(806, 4, optimizedBody806_159)
end InitECandidate.Proofs.SmallStages.Oracles806
