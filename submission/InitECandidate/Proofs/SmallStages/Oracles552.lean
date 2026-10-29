import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source552
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles552
def optimizedBody552_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody552_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody552_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody552_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody552_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_2 optimizedBody552_3

def optimizedBody552_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_1, 552, 2)) (some 494) ([]) (some (2, optimizedBody552_4, 552, 3))

def optimizedBody552_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody552_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (6, 6), (8, 8), (44, 44)]

def optimizedBody552_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_7, 552, 4)) (some 477) ([]) (some (2, optimizedBody552_4, 552, 5))

def optimizedBody552_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 4), (48, 0), (50, 6), (52, 8)]

def optimizedBody552_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (18, 2), (4, 4), (44, 44), (0, 46), (16, 48), (12, 50), (14, 52)]

def optimizedBody552_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (16, 48), (12, 50), (14, 52)]

def optimizedBody552_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_11 optimizedBody552_3

def optimizedBody552_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_10, 552, 6)) (some 477) ([]) (some (2, optimizedBody552_12, 552, 7))

def optimizedBody552_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody552_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody552_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody552_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 18446744073709551336#64))

def optimizedBody552_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 16), (4, 0), (6, 12), (8, 14), (10, 10), (44, 44), (46, 10), (50, 6), (52, 8), (68, 18), (70, 4)]

def optimizedBody552_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (50, 50), (52, 52), (68, 68), (70, 70)]

def optimizedBody552_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (50, 50), (52, 52), (68, 68), (70, 70)]

def optimizedBody552_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_20 optimizedBody552_3

def optimizedBody552_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_19, 552, 8)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody552_21, 552, 9))

def optimizedBody552_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody552_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody552_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody552_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody552_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody552_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody552_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4), (48, 2), (50, 50), (52, 52), (68, 68), (70, 70)]

def optimizedBody552_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (68, 68), (70, 70)]

def optimizedBody552_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (68, 68), (70, 70)]

def optimizedBody552_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_31 optimizedBody552_3

def optimizedBody552_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_30, 552, 10)) (some 549) ([2, 4]) (some (2, optimizedBody552_32, 552, 11))

def optimizedBody552_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 100#64)

def optimizedBody552_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody552_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody552_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2100#64)

def optimizedBody552_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody552_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_37 optimizedBody552_38

def optimizedBody552_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_39

def optimizedBody552_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_38

def optimizedBody552_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody552_40 optimizedBody552_41

def optimizedBody552_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody552_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2301#64)

def optimizedBody552_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 2), (56, 0), (68, 68), (70, 70)]

def optimizedBody552_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (68, 68), (70, 70)]

def optimizedBody552_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (68, 68), (70, 70)]

def optimizedBody552_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_47 optimizedBody552_3

def optimizedBody552_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_46, 552, 12)) (some 93) ([2, 4]) (some (2, optimizedBody552_48, 552, 13))

def optimizedBody552_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (68, 68), (70, 70)]

def optimizedBody552_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (54, 56), (68, 68), (70, 70)]

def optimizedBody552_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (54, 56), (68, 68), (70, 70)]

def optimizedBody552_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_52 optimizedBody552_3

def optimizedBody552_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_51, 552, 14)) (some 471) ([2]) (some (2, optimizedBody552_53, 552, 15))

def optimizedBody552_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 0), (54, 54), (68, 68), (70, 70)]

def optimizedBody552_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (50, 50), (52, 52), (56, 56), (6, 54), (68, 68), (70, 70)]

def optimizedBody552_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (0, 48), (50, 50), (52, 52), (56, 56), (6, 54), (68, 68), (70, 70)]

def optimizedBody552_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_57 optimizedBody552_3

def optimizedBody552_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_56, 552, 16)) (some 472) ([2]) (some (2, optimizedBody552_58, 552, 17))

def optimizedBody552_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody552_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody552_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 4), (48, 0), (50, 50), (52, 52), (56, 56), (68, 68), (70, 70)]

def optimizedBody552_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (50, 50), (52, 52), (56, 56), (68, 68), (70, 70)]

def optimizedBody552_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (50, 50), (52, 52), (56, 56), (68, 68), (70, 70)]

def optimizedBody552_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_64 optimizedBody552_3

def optimizedBody552_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_63, 552, 18)) (some 550) ([2, 4]) (some (2, optimizedBody552_65, 552, 19))

def optimizedBody552_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (0, 0), (50, 50), (52, 52), (56, 56), (68, 68), (70, 70)]

def optimizedBody552_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_67

def optimizedBody552_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_66 optimizedBody552_68

def optimizedBody552_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_62 optimizedBody552_69

def optimizedBody552_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_70

def optimizedBody552_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody552_71 optimizedBody552_68

def optimizedBody552_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (6, 6), (12, 2), (8, 8), (44, 44), (0, 46), (10, 48), (50, 50), (52, 52), (56, 56), (68, 68), (70, 70)]

def optimizedBody552_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (10, 48), (50, 50), (52, 52), (56, 56), (68, 68), (70, 70)]

def optimizedBody552_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_74 optimizedBody552_3

def optimizedBody552_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_73, 552, 20)) (some 413) ([2, 4]) (some (2, optimizedBody552_75, 552, 21))

def optimizedBody552_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 0), (44, 44), (46, 0), (48, 10), (50, 50), (52, 52), (54, 4), (56, 56), (58, 6), (60, 12), (68, 68),
    (70, 70), (62, 8)]

def optimizedBody552_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 6), (12, 4), (16, 8), (10, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56), (6, 58),
    (0, 60), (68, 68), (70, 70), (8, 62)]

def optimizedBody552_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56), (6, 58), (0, 60), (68, 68), (70, 70),
    (8, 62)]

def optimizedBody552_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_79 optimizedBody552_3

def optimizedBody552_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_78, 552, 22)) (some 412) ([2, 4]) (some (2, optimizedBody552_80, 552, 23))

def optimizedBody552_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 4), (56, 56), (58, 6), (60, 0), (62, 14), (64, 12), (66, 16), (68, 68), (70, 70), (72, 10), (74, 8)]

def optimizedBody552_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (46, 46), (48, 48), (14, 50), (16, 52), (54, 54), (56, 56), (58, 58), (60, 60), (6, 62), (4, 64),
    (8, 66), (10, 68), (12, 70), (0, 72), (74, 74)]

def optimizedBody552_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (14, 50), (16, 52), (54, 54), (56, 56), (58, 58), (60, 60), (6, 62), (4, 64),
    (8, 66), (10, 68), (12, 70), (0, 72), (74, 74)]

def optimizedBody552_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_84 optimizedBody552_3

def optimizedBody552_86 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody552_83, 552, 24)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody552_85, 552, 25))

def optimizedBody552_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 14),
    (52, 16), (54, 54), (56, 56), (58, 58), (60, 60), (64, 6), (66, 4), (68, 8), (70, 18), (62, 10), (72, 12), (76, 0),
    (74, 74)]

def optimizedBody552_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (46, 46), (48, 48), (14, 50), (16, 52), (4, 54), (56, 56), (6, 58), (0, 60), (64, 64), (66, 66),
    (68, 68), (70, 70), (10, 62), (12, 72), (76, 76), (8, 74)]

def optimizedBody552_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (14, 50), (16, 52), (4, 54), (56, 56), (6, 58), (0, 60), (64, 64), (66, 66),
    (68, 68), (70, 70), (10, 62), (12, 72), (76, 76), (8, 74)]

def optimizedBody552_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_89 optimizedBody552_3

def optimizedBody552_91 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_88, 552, 26)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody552_90, 552, 27))

def optimizedBody552_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 14),
    (52, 16), (54, 4), (56, 56), (58, 6), (60, 18), (62, 0), (64, 64), (66, 66), (68, 68), (70, 70), (72, 10), (74, 12),
    (76, 76), (78, 8)]

def optimizedBody552_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56), (6, 58), (60, 60), (0, 62), (56, 64),
    (58, 66), (64, 68), (66, 70), (68, 72), (70, 74), (72, 76), (8, 78)]

def optimizedBody552_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56), (6, 58), (60, 60), (0, 62), (56, 64),
    (58, 66), (64, 68), (66, 70), (68, 72), (70, 74), (72, 76), (8, 78)]

def optimizedBody552_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_94 optimizedBody552_3

def optimizedBody552_96 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody552_93, 552, 28)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody552_95, 552, 29))

def optimizedBody552_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (60, 60), (62, 10),
    (56, 56), (58, 58), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72)]

def optimizedBody552_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (60, 60), (62, 62), (6, 56), (4, 58), (8, 64),
    (64, 66), (58, 68), (66, 70), (0, 72)]

def optimizedBody552_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (60, 60), (62, 62), (6, 56), (4, 58), (8, 64),
    (64, 66), (58, 68), (66, 70), (0, 72)]

def optimizedBody552_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_99 optimizedBody552_3

def optimizedBody552_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
  Flapjack.Spt.ln)), optimizedBody552_98, 552, 30)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody552_100, 552, 31))

def optimizedBody552_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 10), (60, 60),
    (62, 62), (64, 64), (58, 58), (66, 66)]

def optimizedBody552_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (46, 46), (48, 48), (6, 50), (8, 52), (50, 54), (54, 56), (60, 60), (62, 62), (64, 64), (0, 58),
    (4, 66)]

def optimizedBody552_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (6, 50), (8, 52), (50, 54), (54, 56), (60, 60), (62, 62), (64, 64), (0, 58),
    (4, 66)]

def optimizedBody552_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_104 optimizedBody552_3

def optimizedBody552_106 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody552_103, 552, 32)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody552_105, 552, 33))

def optimizedBody552_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (52, 6), (56, 8), (50, 50), (54, 54), (58, 10),
    (60, 60), (62, 62), (64, 64), (66, 0), (68, 4)]

def optimizedBody552_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (44, 44), (46, 46), (48, 48), (52, 52), (56, 56), (0, 50), (4, 54), (8, 58), (10, 60), (6, 62), (14, 64),
    (60, 66), (58, 68)]

def optimizedBody552_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (56, 56), (0, 50), (4, 54), (8, 58), (10, 60), (6, 62), (14, 64),
    (60, 66), (58, 68)]

def optimizedBody552_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_109 optimizedBody552_3

def optimizedBody552_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_108, 552, 34)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody552_110, 552, 35))

def optimizedBody552_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (0, 0)]

def optimizedBody552_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 1#64)

def optimizedBody552_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16)]

def optimizedBody552_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_113 optimizedBody552_114

def optimizedBody552_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_115

def optimizedBody552_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody552_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_117 optimizedBody552_114

def optimizedBody552_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_118

def optimizedBody552_120 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 2) optimizedBody552_116 optimizedBody552_119

def optimizedBody552_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody552_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody552_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_122 optimizedBody552_38

def optimizedBody552_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_123

def optimizedBody552_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_61 optimizedBody552_38

def optimizedBody552_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_125

def optimizedBody552_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody552_124 optimizedBody552_126

def optimizedBody552_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (2, 2)]

def optimizedBody552_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 16)))

def optimizedBody552_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody552_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 10000#64)

def optimizedBody552_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 16)))

def optimizedBody552_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(54, 2)]

def optimizedBody552_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_132 optimizedBody552_133

def optimizedBody552_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_131 optimizedBody552_134

def optimizedBody552_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_130 optimizedBody552_135

def optimizedBody552_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(54, 0)]

def optimizedBody552_138 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody552_136 optimizedBody552_137

def optimizedBody552_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody552_140 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody552_124 optimizedBody552_126

def optimizedBody552_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody552_142 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 16) optimizedBody552_116 optimizedBody552_119

def optimizedBody552_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody552_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody552_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1#64)

def optimizedBody552_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12)]

def optimizedBody552_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_145 optimizedBody552_146

def optimizedBody552_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_147

def optimizedBody552_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody552_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_149 optimizedBody552_146

def optimizedBody552_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_150

def optimizedBody552_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 18) optimizedBody552_148 optimizedBody552_151

def optimizedBody552_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (12, 12)]

def optimizedBody552_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 12 12 (Flapjack.WordRegImm.reg 16)))

def optimizedBody552_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 12 (Flapjack.WordRegImm.reg 2)))

def optimizedBody552_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody552_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 2 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody552_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 96#64))

def optimizedBody552_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 11616#64)

def optimizedBody552_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (2, 2)]

def optimizedBody552_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody552_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_160 optimizedBody552_161

def optimizedBody552_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_132 optimizedBody552_162

def optimizedBody552_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_159 optimizedBody552_163

def optimizedBody552_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_158 optimizedBody552_164

def optimizedBody552_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_38 optimizedBody552_165

def optimizedBody552_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_157 optimizedBody552_166

def optimizedBody552_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_156 optimizedBody552_167

def optimizedBody552_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_16 optimizedBody552_168

def optimizedBody552_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_15 optimizedBody552_169

def optimizedBody552_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_14 optimizedBody552_170

def optimizedBody552_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody552_173 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody552_171 optimizedBody552_172

def optimizedBody552_174 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody552_148 optimizedBody552_151

def optimizedBody552_175 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 2) optimizedBody552_124 optimizedBody552_126

def optimizedBody552_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody552_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody552_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 18446744073709540000#64)

def optimizedBody552_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody552_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody552_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody552_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_180 optimizedBody552_181

def optimizedBody552_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_179 optimizedBody552_182

def optimizedBody552_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_178 optimizedBody552_183

def optimizedBody552_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_158 optimizedBody552_184

def optimizedBody552_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_38 optimizedBody552_185

def optimizedBody552_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_177 optimizedBody552_186

def optimizedBody552_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_156 optimizedBody552_187

def optimizedBody552_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_16 optimizedBody552_188

def optimizedBody552_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_15 optimizedBody552_189

def optimizedBody552_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_14 optimizedBody552_190

def optimizedBody552_192 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody552_191 optimizedBody552_172

def optimizedBody552_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 10000#64)

def optimizedBody552_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_193 optimizedBody552_183

def optimizedBody552_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_158 optimizedBody552_194

def optimizedBody552_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_38 optimizedBody552_195

def optimizedBody552_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_177 optimizedBody552_196

def optimizedBody552_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_156 optimizedBody552_197

def optimizedBody552_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_16 optimizedBody552_198

def optimizedBody552_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_15 optimizedBody552_199

def optimizedBody552_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_14 optimizedBody552_200

def optimizedBody552_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_201

def optimizedBody552_203 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody552_202 optimizedBody552_6

def optimizedBody552_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6)]

def optimizedBody552_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_204

def optimizedBody552_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_203 optimizedBody552_205

def optimizedBody552_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_61 optimizedBody552_206

def optimizedBody552_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_60 optimizedBody552_207

def optimizedBody552_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_208

def optimizedBody552_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_192 optimizedBody552_209

def optimizedBody552_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_176 optimizedBody552_210

def optimizedBody552_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_160 optimizedBody552_211

def optimizedBody552_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_212

def optimizedBody552_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_175 optimizedBody552_213

def optimizedBody552_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_61 optimizedBody552_214

def optimizedBody552_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_141 optimizedBody552_215

def optimizedBody552_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_216

def optimizedBody552_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_174 optimizedBody552_217

def optimizedBody552_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_61 optimizedBody552_218

def optimizedBody552_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_139 optimizedBody552_219

def optimizedBody552_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_220

def optimizedBody552_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_173 optimizedBody552_221

def optimizedBody552_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_155 optimizedBody552_222

def optimizedBody552_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_43 optimizedBody552_223

def optimizedBody552_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_154 optimizedBody552_224

def optimizedBody552_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_153 optimizedBody552_225

def optimizedBody552_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_226

def optimizedBody552_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_152 optimizedBody552_227

def optimizedBody552_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_144 optimizedBody552_228

def optimizedBody552_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_143 optimizedBody552_229

def optimizedBody552_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_230

def optimizedBody552_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_142 optimizedBody552_231

def optimizedBody552_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_117 optimizedBody552_232

def optimizedBody552_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_141 optimizedBody552_233

def optimizedBody552_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_234

def optimizedBody552_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_140 optimizedBody552_235

def optimizedBody552_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_61 optimizedBody552_236

def optimizedBody552_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_139 optimizedBody552_237

def optimizedBody552_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_238

def optimizedBody552_240 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody552_239 optimizedBody552_205

def optimizedBody552_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody552_242 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 2) optimizedBody552_124 optimizedBody552_126

def optimizedBody552_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody552_244 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 8) optimizedBody552_148 optimizedBody552_151

def optimizedBody552_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody552_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody552_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_245 optimizedBody552_246

def optimizedBody552_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_247

def optimizedBody552_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_243 optimizedBody552_246

def optimizedBody552_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_249

def optimizedBody552_251 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 8) optimizedBody552_248 optimizedBody552_250

def optimizedBody552_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8)]

def optimizedBody552_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.reg 12)))

def optimizedBody552_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody552_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 97920#64)

def optimizedBody552_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 2)]

def optimizedBody552_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_255 optimizedBody552_256

def optimizedBody552_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(50, 16)]

def optimizedBody552_259 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody552_257 optimizedBody552_258

def optimizedBody552_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody552_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody552_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_260 optimizedBody552_261

def optimizedBody552_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_262

def optimizedBody552_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody552_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_264 optimizedBody552_261

def optimizedBody552_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_265

def optimizedBody552_267 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 8) optimizedBody552_263 optimizedBody552_266

def optimizedBody552_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody552_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody552_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_268 optimizedBody552_269

def optimizedBody552_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_270

def optimizedBody552_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_36 optimizedBody552_269

def optimizedBody552_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_272

def optimizedBody552_274 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 8) optimizedBody552_271 optimizedBody552_273

def optimizedBody552_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody552_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody552_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody552_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 0), (60, 60), (62, 58)]

def optimizedBody552_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56), (0, 58), (56, 60), (58, 62)]

def optimizedBody552_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56), (0, 58), (56, 60), (58, 62)]

def optimizedBody552_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_280 optimizedBody552_3

def optimizedBody552_282 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody552_279, 552, 36)) (some 474) ([2]) (some (2, optimizedBody552_281, 552, 37))

def optimizedBody552_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 4), (54, 54), (0, 0), (56, 56), (58, 58)]

def optimizedBody552_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_283

def optimizedBody552_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_282 optimizedBody552_284

def optimizedBody552_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_278 optimizedBody552_285

def optimizedBody552_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_255 optimizedBody552_286

def optimizedBody552_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56), (0, 0), (56, 60), (58, 58)]

def optimizedBody552_289 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody552_287 optimizedBody552_288

def optimizedBody552_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody552_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody552_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody552_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (50, 52), (52, 54), (54, 56), (56, 58)]

def optimizedBody552_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (50, 52), (52, 54), (54, 56), (56, 58)]

def optimizedBody552_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_294 optimizedBody552_3

def optimizedBody552_296 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody552_293, 552, 38)) (some 472) ([2]) (some (2, optimizedBody552_295, 552, 39))

def optimizedBody552_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody552_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (10, 50), (12, 52), (6, 54), (8, 56)]

def optimizedBody552_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (10, 50), (12, 52), (6, 54), (8, 56)]

def optimizedBody552_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_299 optimizedBody552_3

def optimizedBody552_301 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody552_298, 552, 40)) (some 473) ([2]) (some (2, optimizedBody552_300, 552, 41))

def optimizedBody552_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44)]

def optimizedBody552_303 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_1, 552, 42)) (some 422) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody552_4, 552, 43))

def optimizedBody552_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody552_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody552_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_305 optimizedBody552_3

def optimizedBody552_307 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody552_304, 552, 44)) (some 492) ([2]) (some (2, optimizedBody552_306, 552, 45))

def optimizedBody552_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody552_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_43 optimizedBody552_308

def optimizedBody552_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_61 optimizedBody552_309

def optimizedBody552_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_310

def optimizedBody552_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_307 optimizedBody552_311

def optimizedBody552_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_2 optimizedBody552_312

def optimizedBody552_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_122 optimizedBody552_313

def optimizedBody552_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_314

def optimizedBody552_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_303 optimizedBody552_315

def optimizedBody552_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_302 optimizedBody552_316

def optimizedBody552_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_317

def optimizedBody552_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_301 optimizedBody552_318

def optimizedBody552_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_297 optimizedBody552_319

def optimizedBody552_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_320

def optimizedBody552_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_296 optimizedBody552_321

def optimizedBody552_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_292 optimizedBody552_322

def optimizedBody552_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_291 optimizedBody552_323

def optimizedBody552_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_290 optimizedBody552_324

def optimizedBody552_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_325

def optimizedBody552_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_289 optimizedBody552_326

def optimizedBody552_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_277 optimizedBody552_327

def optimizedBody552_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_43 optimizedBody552_328

def optimizedBody552_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_276 optimizedBody552_329

def optimizedBody552_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_275 optimizedBody552_330

def optimizedBody552_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_331

def optimizedBody552_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_274 optimizedBody552_332

def optimizedBody552_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_243 optimizedBody552_333

def optimizedBody552_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_139 optimizedBody552_334

def optimizedBody552_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_335

def optimizedBody552_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_267 optimizedBody552_336

def optimizedBody552_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_243 optimizedBody552_337

def optimizedBody552_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_60 optimizedBody552_338

def optimizedBody552_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_339

def optimizedBody552_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_127 optimizedBody552_340

def optimizedBody552_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_61 optimizedBody552_341

def optimizedBody552_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_121 optimizedBody552_342

def optimizedBody552_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_343

def optimizedBody552_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_259 optimizedBody552_344

def optimizedBody552_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_254 optimizedBody552_345

def optimizedBody552_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_43 optimizedBody552_346

def optimizedBody552_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_253 optimizedBody552_347

def optimizedBody552_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_252 optimizedBody552_348

def optimizedBody552_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_349

def optimizedBody552_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_251 optimizedBody552_350

def optimizedBody552_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_243 optimizedBody552_351

def optimizedBody552_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_139 optimizedBody552_352

def optimizedBody552_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_353

def optimizedBody552_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_244 optimizedBody552_354

def optimizedBody552_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_243 optimizedBody552_355

def optimizedBody552_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_121 optimizedBody552_356

def optimizedBody552_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_357

def optimizedBody552_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_242 optimizedBody552_358

def optimizedBody552_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_61 optimizedBody552_359

def optimizedBody552_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_241 optimizedBody552_360

def optimizedBody552_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_117 optimizedBody552_361

def optimizedBody552_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_362

def optimizedBody552_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_240 optimizedBody552_363

def optimizedBody552_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_61 optimizedBody552_364

def optimizedBody552_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_121 optimizedBody552_365

def optimizedBody552_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_366

def optimizedBody552_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_138 optimizedBody552_367

def optimizedBody552_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_129 optimizedBody552_368

def optimizedBody552_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_128 optimizedBody552_369

def optimizedBody552_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_370

def optimizedBody552_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_127 optimizedBody552_371

def optimizedBody552_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_61 optimizedBody552_372

def optimizedBody552_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_121 optimizedBody552_373

def optimizedBody552_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_374

def optimizedBody552_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_120 optimizedBody552_375

def optimizedBody552_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_61 optimizedBody552_376

def optimizedBody552_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_112 optimizedBody552_377

def optimizedBody552_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_378

def optimizedBody552_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_111 optimizedBody552_379

def optimizedBody552_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_107 optimizedBody552_380

def optimizedBody552_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_381

def optimizedBody552_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_106 optimizedBody552_382

def optimizedBody552_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_102 optimizedBody552_383

def optimizedBody552_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_384

def optimizedBody552_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_101 optimizedBody552_385

def optimizedBody552_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_97 optimizedBody552_386

def optimizedBody552_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_387

def optimizedBody552_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_96 optimizedBody552_388

def optimizedBody552_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_92 optimizedBody552_389

def optimizedBody552_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_390

def optimizedBody552_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_91 optimizedBody552_391

def optimizedBody552_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_87 optimizedBody552_392

def optimizedBody552_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_393

def optimizedBody552_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_86 optimizedBody552_394

def optimizedBody552_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_82 optimizedBody552_395

def optimizedBody552_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_396

def optimizedBody552_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_81 optimizedBody552_397

def optimizedBody552_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_77 optimizedBody552_398

def optimizedBody552_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_399

def optimizedBody552_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_76 optimizedBody552_400

def optimizedBody552_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_62 optimizedBody552_401

def optimizedBody552_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_402

def optimizedBody552_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_72 optimizedBody552_403

def optimizedBody552_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_61 optimizedBody552_404

def optimizedBody552_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_60 optimizedBody552_405

def optimizedBody552_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_406

def optimizedBody552_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_59 optimizedBody552_407

def optimizedBody552_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_55 optimizedBody552_408

def optimizedBody552_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_409

def optimizedBody552_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_54 optimizedBody552_410

def optimizedBody552_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_50 optimizedBody552_411

def optimizedBody552_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_412

def optimizedBody552_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_49 optimizedBody552_413

def optimizedBody552_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_45 optimizedBody552_414

def optimizedBody552_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_44 optimizedBody552_415

def optimizedBody552_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_43 optimizedBody552_416

def optimizedBody552_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_417

def optimizedBody552_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_42 optimizedBody552_418

def optimizedBody552_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_36 optimizedBody552_419

def optimizedBody552_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_35 optimizedBody552_420

def optimizedBody552_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_34 optimizedBody552_421

def optimizedBody552_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_422

def optimizedBody552_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_33 optimizedBody552_423

def optimizedBody552_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_29 optimizedBody552_424

def optimizedBody552_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_28 optimizedBody552_425

def optimizedBody552_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_27 optimizedBody552_426

def optimizedBody552_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_26 optimizedBody552_427

def optimizedBody552_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_25 optimizedBody552_428

def optimizedBody552_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_24 optimizedBody552_429

def optimizedBody552_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_23 optimizedBody552_430

def optimizedBody552_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_431

def optimizedBody552_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_22 optimizedBody552_432

def optimizedBody552_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_18 optimizedBody552_433

def optimizedBody552_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_17 optimizedBody552_434

def optimizedBody552_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_16 optimizedBody552_435

def optimizedBody552_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_15 optimizedBody552_436

def optimizedBody552_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_14 optimizedBody552_437

def optimizedBody552_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_438

def optimizedBody552_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_13 optimizedBody552_439

def optimizedBody552_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_9 optimizedBody552_440

def optimizedBody552_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_441

def optimizedBody552_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_8 optimizedBody552_442

def optimizedBody552_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_1 optimizedBody552_443

def optimizedBody552_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_6 optimizedBody552_444

def optimizedBody552_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_5 optimizedBody552_445

def optimizedBody552_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody552_0 optimizedBody552_446

def oracle552 : Option (Spt Nat) :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
                  9
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 25 (Flapjack.Spt.ls 6)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 24
                    (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 4 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 8))))
                  6
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 5)))
                    34
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 34
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 34)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 32)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 29 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.ls 30))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 8))) 35
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 Flapjack.Spt.ln)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 25
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 35 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 26))))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 25 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 8)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 25))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                    1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 33 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 2 (Flapjack.Spt.ls 4)) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 8))) 22
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 35)))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 6)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)) Flapjack.Spt.ln))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 Flapjack.Spt.ln)) 25
                    (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 24 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 2
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 30)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 8)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 23
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 (Flapjack.Spt.ls 3))))
                  4
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 23 (Flapjack.Spt.ls 6))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 28 (Flapjack.Spt.ls 37)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 6)) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                    3 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 34 Flapjack.Spt.ln) Flapjack.Spt.ln))
                  2 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 0 (Flapjack.Spt.ls 5)) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 9))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 8 Flapjack.Spt.ln)))
                  8
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 8 Flapjack.Spt.ln))
                    26 (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 25 (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 (Flapjack.Spt.ls 31)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 6))) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 28 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 24
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 3 (Flapjack.Spt.ls 7))))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)) 34
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 24 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 34 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 6)) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.ls 4))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 32 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 26
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 34 (Flapjack.Spt.ls 29))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 Flapjack.Spt.ln)))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.ls 27)))
                    2
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 6)) 26
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 9 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 23 (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)) 26
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 27)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 30 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 7 Flapjack.Spt.ln)))
                  7
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 (Flapjack.Spt.ls 1)))
                    35
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 35
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 1)) 22
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 5))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 34 (Flapjack.Spt.ls 0))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 25 Flapjack.Spt.ln) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) 35
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 22 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 1)) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    4
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 37)) (Flapjack.Spt.ls 35))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 23 Flapjack.Spt.ln) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 34)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln))
                  22
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 35)) 25
                    (Flapjack.Spt.ls 35))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 22 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 25 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 28)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 35 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 23 (Flapjack.Spt.ls 35)) (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 30)))))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 31)) (Flapjack.Spt.ls 26))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  26
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 28 Flapjack.Spt.ln) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 26 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 25 (Flapjack.Spt.ls 36)) (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 32)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 33)) 22
                    (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 23 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 28 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 33)) (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 28 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 27)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) (Flapjack.Spt.ls 24))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  24 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 37)) 34 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 25 Flapjack.Spt.ln) 24 (Flapjack.Spt.ls 35)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 38)) (Flapjack.Spt.ls 34))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 33)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 34)) 23
                    (Flapjack.Spt.ls 34))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 24 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 34 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 22 (Flapjack.Spt.ls 34)) (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 29)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.ls 25))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  25 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) 35 Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 26 Flapjack.Spt.ln) 25 (Flapjack.Spt.ls 31)))
                  22 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 24 (Flapjack.Spt.ls 31)) (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 31)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 32)) (Flapjack.Spt.ls 27))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 22 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 27 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 32)) (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 26 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) (Flapjack.Spt.ls 23))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 36)) 26 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 24 Flapjack.Spt.ln) 23 (Flapjack.Spt.ls 34)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))))))))))
def optimized552 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(552, 1, optimizedBody552_447)
end InitECandidate.Proofs.SmallStages.Oracles552
