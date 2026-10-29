import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source654
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles654
def optimizedBody654_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (0, 0)]

def optimizedBody654_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 64#64))

def optimizedBody654_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody654_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 72#64))

def optimizedBody654_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 80#64))

def optimizedBody654_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 88#64))

def optimizedBody654_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 8), (48, 4), (50, 6), (52, 10), (54, 2)]

def optimizedBody654_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (12, 44), (8, 46), (4, 48), (6, 50), (52, 52), (10, 54)]

def optimizedBody654_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (8, 46), (4, 48), (6, 50), (52, 52), (10, 54)]

def optimizedBody654_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody654_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_8 optimizedBody654_9

def optimizedBody654_11 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody654_7, 654, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody654_10, 654, 3))

def optimizedBody654_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody654_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody654_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody654_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody654_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody654_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody654_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_16 optimizedBody654_17

def optimizedBody654_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_15 optimizedBody654_18

def optimizedBody654_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_12 optimizedBody654_19

def optimizedBody654_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody654_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody654_20 optimizedBody654_21

def optimizedBody654_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (6, 6), (8, 8), (44, 12), (52, 52)]

def optimizedBody654_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (8, 8), (0, 2), (44, 44), (52, 52)]

def optimizedBody654_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52)]

def optimizedBody654_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_25 optimizedBody654_9

def optimizedBody654_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody654_24, 654, 4)) (some 648) ([2, 4, 6, 8]) (some (2, optimizedBody654_26, 654, 5))

def optimizedBody654_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 4), (48, 6), (50, 8), (52, 52), (54, 0)]

def optimizedBody654_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (4, 4), (0, 2), (44, 44), (12, 46), (14, 48), (16, 50), (50, 52), (10, 54)]

def optimizedBody654_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (14, 48), (16, 50), (50, 52), (10, 54)]

def optimizedBody654_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_30 optimizedBody654_9

def optimizedBody654_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody654_29, 654, 6)) (some 647) ([2, 4, 6, 8]) (some (2, optimizedBody654_31, 654, 7))

def optimizedBody654_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 8), (48, 6), (50, 50),
    (52, 4), (54, 0)]

def optimizedBody654_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 6), (20, 8), (18, 4), (24, 2), (44, 44), (16, 46), (14, 48), (0, 50), (12, 52), (10, 54)]

def optimizedBody654_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 46), (14, 48), (0, 50), (12, 52), (10, 54)]

def optimizedBody654_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_35 optimizedBody654_9

def optimizedBody654_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody654_34, 654, 8)) (some 646) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody654_36, 654, 9))

def optimizedBody654_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody654_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody654_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody654_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody654_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody654_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody654_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody654_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody654_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 26), (50, 0), (48, 28),
    (52, 22), (54, 20), (56, 18), (58, 24), (60, 30), (62, 32)]

def optimizedBody654_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (24, 2), (8, 8), (6, 6), (44, 44), (22, 46), (50, 50), (0, 48), (14, 52), (16, 54), (12, 56), (10, 58),
    (18, 60), (20, 62)]

def optimizedBody654_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (22, 46), (50, 50), (0, 48), (14, 52), (16, 54), (12, 56), (10, 58), (18, 60), (20, 62)]

def optimizedBody654_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_48 optimizedBody654_9

def optimizedBody654_50 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody654_47, 654, 10)) (some 646) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody654_49, 654, 11))

def optimizedBody654_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 4), (48, 24), (50, 50),
    (52, 8), (54, 6)]

def optimizedBody654_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (14, 4), (16, 6), (18, 8), (44, 44), (6, 46), (4, 48), (0, 50), (10, 52), (8, 54)]

def optimizedBody654_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (0, 50), (10, 52), (8, 54)]

def optimizedBody654_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_53 optimizedBody654_9

def optimizedBody654_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody654_52, 654, 12)) (some 646) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody654_54, 654, 13))

def optimizedBody654_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (44, 44)]

def optimizedBody654_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody654_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody654_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_58 optimizedBody654_9

def optimizedBody654_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody654_57, 654, 14)) (some 650) ([2, 4, 6, 8, 10, 12, 14, 16, 18]) (some (2, optimizedBody654_59, 654, 15))

def optimizedBody654_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody654_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_16 optimizedBody654_61

def optimizedBody654_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_14 optimizedBody654_62

def optimizedBody654_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_12 optimizedBody654_63

def optimizedBody654_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_60 optimizedBody654_64

def optimizedBody654_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_56 optimizedBody654_65

def optimizedBody654_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_12 optimizedBody654_66

def optimizedBody654_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_55 optimizedBody654_67

def optimizedBody654_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_51 optimizedBody654_68

def optimizedBody654_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_12 optimizedBody654_69

def optimizedBody654_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_50 optimizedBody654_70

def optimizedBody654_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_46 optimizedBody654_71

def optimizedBody654_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_45 optimizedBody654_72

def optimizedBody654_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_13 optimizedBody654_73

def optimizedBody654_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_44 optimizedBody654_74

def optimizedBody654_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_13 optimizedBody654_75

def optimizedBody654_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_43 optimizedBody654_76

def optimizedBody654_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_13 optimizedBody654_77

def optimizedBody654_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_42 optimizedBody654_78

def optimizedBody654_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_13 optimizedBody654_79

def optimizedBody654_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_41 optimizedBody654_80

def optimizedBody654_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_13 optimizedBody654_81

def optimizedBody654_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_40 optimizedBody654_82

def optimizedBody654_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_13 optimizedBody654_83

def optimizedBody654_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_39 optimizedBody654_84

def optimizedBody654_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_13 optimizedBody654_85

def optimizedBody654_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_38 optimizedBody654_86

def optimizedBody654_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_13 optimizedBody654_87

def optimizedBody654_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_12 optimizedBody654_88

def optimizedBody654_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_37 optimizedBody654_89

def optimizedBody654_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_33 optimizedBody654_90

def optimizedBody654_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_12 optimizedBody654_91

def optimizedBody654_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_32 optimizedBody654_92

def optimizedBody654_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_28 optimizedBody654_93

def optimizedBody654_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_12 optimizedBody654_94

def optimizedBody654_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_27 optimizedBody654_95

def optimizedBody654_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_23 optimizedBody654_96

def optimizedBody654_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_12 optimizedBody654_97

def optimizedBody654_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_12 optimizedBody654_98

def optimizedBody654_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_22 optimizedBody654_99

def optimizedBody654_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_14 optimizedBody654_100

def optimizedBody654_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_13 optimizedBody654_101

def optimizedBody654_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_12 optimizedBody654_102

def optimizedBody654_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_11 optimizedBody654_103

def optimizedBody654_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_6 optimizedBody654_104

def optimizedBody654_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_5 optimizedBody654_105

def optimizedBody654_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_2 optimizedBody654_106

def optimizedBody654_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_4 optimizedBody654_107

def optimizedBody654_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_2 optimizedBody654_108

def optimizedBody654_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_3 optimizedBody654_109

def optimizedBody654_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_2 optimizedBody654_110

def optimizedBody654_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_1 optimizedBody654_111

def optimizedBody654_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody654_0 optimizedBody654_112

def oracle654 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9))) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 5
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 6 Flapjack.Spt.ln))
                5 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 0)))
                0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 12))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 8 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 5
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                5 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15))) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 22 Flapjack.Spt.ln)) 3
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 13)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 7 Flapjack.Spt.ln))
                4
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 26
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 14)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 12)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 16)))
                2 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 6 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4)))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 27 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 23 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 25 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 26 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 22 (Flapjack.Spt.ls 26)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 24 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 26))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))))
def optimized654 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(654, 2, optimizedBody654_113)
end InitECandidate.Proofs.SmallStages.Oracles654
