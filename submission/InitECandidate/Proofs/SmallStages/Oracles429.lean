import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source429
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles429
def optimizedBody429_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 8), (50, 4), (48, 12), (54, 2), (52, 10), (56, 6)]

def optimizedBody429_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (12, 46), (50, 50), (16, 48), (54, 54), (14, 52), (10, 56)]

def optimizedBody429_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (50, 50), (16, 48), (54, 54), (14, 52), (10, 56)]

def optimizedBody429_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody429_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_2 optimizedBody429_3

def optimizedBody429_5 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody429_1, 429, 2)) (some 409) ([2]) (some (2, optimizedBody429_4, 429, 3))

def optimizedBody429_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody429_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody429_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody429_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody429_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody429_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody429_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 12), (48, 0), (50, 50),
    (52, 16), (54, 54), (56, 14), (58, 10)]

def optimizedBody429_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (4, 48), (50, 50), (48, 52), (54, 54), (52, 56), (56, 58)]

def optimizedBody429_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (48, 52), (54, 54), (52, 56), (56, 58)]

def optimizedBody429_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_14 optimizedBody429_3

def optimizedBody429_16 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody429_13, 429, 4)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody429_15, 429, 5))

def optimizedBody429_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody429_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4#64)

def optimizedBody429_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody429_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7#64)

def optimizedBody429_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody429_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_21 optimizedBody429_3

def optimizedBody429_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_20 optimizedBody429_22

def optimizedBody429_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_19 optimizedBody429_23

def optimizedBody429_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_7 optimizedBody429_24

def optimizedBody429_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_18 optimizedBody429_25

def optimizedBody429_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_6 optimizedBody429_26

def optimizedBody429_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody429_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody429_27 optimizedBody429_28

def optimizedBody429_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 44), (46, 46), (50, 50), (48, 48), (54, 54), (52, 52), (56, 56)]

def optimizedBody429_31 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody429_1, 429, 6)) (some 397) ([2]) (some (2, optimizedBody429_4, 429, 7))

def optimizedBody429_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 4), (8, 8), (6, 6), (12, 2), (44, 44), (46, 46), (4, 48), (48, 50), (50, 52), (14, 54), (52, 56), (54, 58)]

def optimizedBody429_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (48, 50), (50, 52), (14, 54), (52, 56), (54, 58)]

def optimizedBody429_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_33 optimizedBody429_3

def optimizedBody429_35 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody429_32, 429, 8)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody429_34, 429, 9))

def optimizedBody429_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody429_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody429_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12), (8, 8), (6, 6), (10, 10)]

def optimizedBody429_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody429_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody429_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody429_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody429_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody429_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody429_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody429_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 14), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody429_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody429_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody429_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_48 optimizedBody429_3

def optimizedBody429_50 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody429_47, 429, 10)) (some 425) ([2, 4]) (some (2, optimizedBody429_49, 429, 11))

def optimizedBody429_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54)]

def optimizedBody429_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody429_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody429_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_53 optimizedBody429_3

def optimizedBody429_55 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody429_52, 429, 12)) (some 409) ([2]) (some (2, optimizedBody429_54, 429, 13))

def optimizedBody429_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody429_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (12, 46), (46, 48), (16, 50), (14, 52), (10, 54)]

def optimizedBody429_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (46, 48), (16, 50), (14, 52), (10, 54)]

def optimizedBody429_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_58 optimizedBody429_3

def optimizedBody429_60 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody429_57, 429, 14)) (some 397) ([2]) (some (2, optimizedBody429_59, 429, 15))

def optimizedBody429_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 0)]

def optimizedBody429_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 4), (8, 8), (6, 6), (12, 2), (44, 44), (14, 46), (4, 48)]

def optimizedBody429_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (4, 48)]

def optimizedBody429_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_63 optimizedBody429_3

def optimizedBody429_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody429_62, 429, 16)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody429_64, 429, 17))

def optimizedBody429_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 14), (4, 4), (44, 44)]

def optimizedBody429_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody429_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody429_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_68 optimizedBody429_3

def optimizedBody429_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody429_67, 429, 18)) (some 425) ([2, 4]) (some (2, optimizedBody429_69, 429, 19))

def optimizedBody429_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody429_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody429_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_71 optimizedBody429_72

def optimizedBody429_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_17 optimizedBody429_73

def optimizedBody429_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_6 optimizedBody429_74

def optimizedBody429_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_70 optimizedBody429_75

def optimizedBody429_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_66 optimizedBody429_76

def optimizedBody429_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_45 optimizedBody429_77

def optimizedBody429_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_44 optimizedBody429_78

def optimizedBody429_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_43 optimizedBody429_79

def optimizedBody429_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_42 optimizedBody429_80

def optimizedBody429_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_41 optimizedBody429_81

def optimizedBody429_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_40 optimizedBody429_82

def optimizedBody429_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_39 optimizedBody429_83

def optimizedBody429_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_38 optimizedBody429_84

def optimizedBody429_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_37 optimizedBody429_85

def optimizedBody429_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_36 optimizedBody429_86

def optimizedBody429_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_6 optimizedBody429_87

def optimizedBody429_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_65 optimizedBody429_88

def optimizedBody429_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_61 optimizedBody429_89

def optimizedBody429_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_11 optimizedBody429_90

def optimizedBody429_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_7 optimizedBody429_91

def optimizedBody429_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_10 optimizedBody429_92

def optimizedBody429_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_7 optimizedBody429_93

def optimizedBody429_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_9 optimizedBody429_94

def optimizedBody429_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_7 optimizedBody429_95

def optimizedBody429_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_8 optimizedBody429_96

def optimizedBody429_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_7 optimizedBody429_97

def optimizedBody429_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_6 optimizedBody429_98

def optimizedBody429_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_60 optimizedBody429_99

def optimizedBody429_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_56 optimizedBody429_100

def optimizedBody429_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_6 optimizedBody429_101

def optimizedBody429_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_55 optimizedBody429_102

def optimizedBody429_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_51 optimizedBody429_103

def optimizedBody429_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_6 optimizedBody429_104

def optimizedBody429_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_50 optimizedBody429_105

def optimizedBody429_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_46 optimizedBody429_106

def optimizedBody429_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_45 optimizedBody429_107

def optimizedBody429_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_44 optimizedBody429_108

def optimizedBody429_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_43 optimizedBody429_109

def optimizedBody429_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_42 optimizedBody429_110

def optimizedBody429_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_41 optimizedBody429_111

def optimizedBody429_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_40 optimizedBody429_112

def optimizedBody429_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_39 optimizedBody429_113

def optimizedBody429_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_38 optimizedBody429_114

def optimizedBody429_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_37 optimizedBody429_115

def optimizedBody429_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_36 optimizedBody429_116

def optimizedBody429_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_6 optimizedBody429_117

def optimizedBody429_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_35 optimizedBody429_118

def optimizedBody429_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_12 optimizedBody429_119

def optimizedBody429_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_11 optimizedBody429_120

def optimizedBody429_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_7 optimizedBody429_121

def optimizedBody429_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_10 optimizedBody429_122

def optimizedBody429_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_7 optimizedBody429_123

def optimizedBody429_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_9 optimizedBody429_124

def optimizedBody429_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_7 optimizedBody429_125

def optimizedBody429_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_8 optimizedBody429_126

def optimizedBody429_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_7 optimizedBody429_127

def optimizedBody429_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_6 optimizedBody429_128

def optimizedBody429_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_31 optimizedBody429_129

def optimizedBody429_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_30 optimizedBody429_130

def optimizedBody429_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_6 optimizedBody429_131

def optimizedBody429_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_6 optimizedBody429_132

def optimizedBody429_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_29 optimizedBody429_133

def optimizedBody429_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_17 optimizedBody429_134

def optimizedBody429_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_7 optimizedBody429_135

def optimizedBody429_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_6 optimizedBody429_136

def optimizedBody429_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_16 optimizedBody429_137

def optimizedBody429_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_12 optimizedBody429_138

def optimizedBody429_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_11 optimizedBody429_139

def optimizedBody429_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_7 optimizedBody429_140

def optimizedBody429_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_10 optimizedBody429_141

def optimizedBody429_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_7 optimizedBody429_142

def optimizedBody429_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_9 optimizedBody429_143

def optimizedBody429_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_7 optimizedBody429_144

def optimizedBody429_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_8 optimizedBody429_145

def optimizedBody429_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_7 optimizedBody429_146

def optimizedBody429_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_6 optimizedBody429_147

def optimizedBody429_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_5 optimizedBody429_148

def optimizedBody429_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_0 optimizedBody429_149

def oracle429 : Option (Spt Nat) :=
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
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.ls 25)) 27
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23)) 1 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 25)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 4)))
                22
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 27)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 (Flapjack.Spt.ls 27)) 2 (Flapjack.Spt.ls 22))
                25
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 Flapjack.Spt.ln) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 25)) 2 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.ls 25)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 Flapjack.Spt.ln) 25 (Flapjack.Spt.ls 6)) 8
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 5))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 22)) 0 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 26)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 7))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 26)) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                6
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 24))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 27)) 26 (Flapjack.Spt.ls 23)) 24
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 22 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)) 24 Flapjack.Spt.ln) 23
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 28 (Flapjack.Spt.ls 24)) 26
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26)) 25 (Flapjack.Spt.ls 22)) 25
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 29 (Flapjack.Spt.ls 27)) 28 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 23 Flapjack.Spt.ln) 22
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 27 (Flapjack.Spt.ls 25)) 27
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))))))
def optimized429 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(429, 7, optimizedBody429_150)
end InitECandidate.Proofs.SmallStages.Oracles429
