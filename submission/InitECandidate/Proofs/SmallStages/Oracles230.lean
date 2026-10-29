import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source230
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles230
def optimizedBody230_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 2), (0, 0), (22, 4), (26, 6), (20, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18)]

def optimizedBody230_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 24 64#64))

def optimizedBody230_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody230_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 24 72#64))

def optimizedBody230_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 24 80#64))

def optimizedBody230_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 24 88#64))

def optimizedBody230_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (48, 0), (44, 4), (46, 16), (50, 20), (52, 8), (54, 22), (56, 12), (58, 24),
    (62, 18), (60, 10), (64, 26), (66, 2), (76, 14), (68, 6)]

def optimizedBody230_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (48, 48), (4, 44), (44, 46), (46, 50), (8, 52), (50, 54), (56, 56), (52, 58), (62, 62), (54, 60), (58, 64),
    (0, 66), (76, 76), (6, 68)]

def optimizedBody230_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (4, 44), (44, 46), (46, 50), (8, 52), (50, 54), (56, 56), (52, 58), (62, 62), (54, 60), (58, 64),
    (0, 66), (76, 76), (6, 68)]

def optimizedBody230_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody230_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_8 optimizedBody230_9

def optimizedBody230_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_7, 230, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody230_10, 230, 3))

def optimizedBody230_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody230_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody230_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody230_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 52), (4, 50), (6, 58), (8, 46), (10, 54), (12, 56), (14, 76), (16, 44), (18, 62), (60, 48)]

def optimizedBody230_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 60)]

def optimizedBody230_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 60)]

def optimizedBody230_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_17 optimizedBody230_9

def optimizedBody230_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_16, 230, 4)) (some 226) ([2, 4, 6, 8, 10, 12, 14, 16, 18]) (some (2, optimizedBody230_18, 230, 5))

def optimizedBody230_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody230_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody230_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody230_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_21 optimizedBody230_22

def optimizedBody230_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_20 optimizedBody230_23

def optimizedBody230_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_24

def optimizedBody230_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_19 optimizedBody230_25

def optimizedBody230_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_15 optimizedBody230_26

def optimizedBody230_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_27

def optimizedBody230_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(4, 4), (44, 44), (46, 46), (8, 8), (50, 50), (56, 56), (52, 52), (62, 62), (54, 54), (58, 58), (0, 0), (76, 76),
    (6, 6), (48, 48)]

def optimizedBody230_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody230_28 optimizedBody230_29

def optimizedBody230_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody230_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody230_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody230_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody230_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody230_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (48, 48), (44, 44), (46, 46), (50, 50),
    (56, 56), (52, 52), (62, 62), (54, 54), (58, 58), (76, 76)]

def optimizedBody230_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (48, 48), (44, 44), (46, 46), (50, 50), (56, 56), (0, 52), (62, 62), (54, 54), (58, 58), (76, 76)]

def optimizedBody230_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (44, 44), (46, 46), (50, 50), (56, 56), (0, 52), (62, 62), (54, 54), (58, 58), (76, 76)]

def optimizedBody230_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_38 optimizedBody230_9

def optimizedBody230_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_37, 230, 6)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody230_39, 230, 7))

def optimizedBody230_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody230_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (48, 48), (44, 44), (46, 46), (50, 50), (56, 56), (52, 0), (62, 62), (54, 54), (58, 58), (76, 76)]

def optimizedBody230_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(48, 48), (44, 44), (14, 46), (10, 50), (56, 56), (0, 52), (62, 62), (16, 54), (12, 58), (76, 76)]

def optimizedBody230_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (44, 44), (14, 46), (10, 50), (56, 56), (0, 52), (62, 62), (16, 54), (12, 58), (76, 76)]

def optimizedBody230_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_44 optimizedBody230_9

def optimizedBody230_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_43, 230, 8)) (some 228) ([2]) (some (2, optimizedBody230_45, 230, 9))

def optimizedBody230_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(48, 48), (44, 44), (14, 14), (10, 10), (56, 56), (0, 0), (62, 62), (16, 16), (12, 12), (76, 76)]

def optimizedBody230_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_47

def optimizedBody230_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_46 optimizedBody230_48

def optimizedBody230_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_42 optimizedBody230_49

def optimizedBody230_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_50

def optimizedBody230_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(48, 48), (44, 44), (14, 46), (10, 50), (56, 56), (0, 0), (62, 62), (16, 54), (12, 58), (76, 76)]

def optimizedBody230_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_52

def optimizedBody230_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody230_51 optimizedBody230_53

def optimizedBody230_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody230_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody230_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody230_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody230_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody230_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody230_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody230_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody230_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody230_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (48, 48), (44, 44), (46, 14), (50, 10),
    (52, 18), (54, 6), (56, 56), (58, 20), (60, 0), (62, 62), (64, 4), (66, 16), (68, 22), (70, 12), (72, 2), (74, 24),
    (76, 76), (78, 8)]

def optimizedBody230_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (48, 48), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78)]

def optimizedBody230_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78)]

def optimizedBody230_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_66 optimizedBody230_9

def optimizedBody230_68 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody230_65, 230, 10)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody230_67, 230, 11))

def optimizedBody230_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 58), (4, 74), (6, 68), (8, 52), (10, 56), (12, 76), (14, 44), (16, 62), (80, 48), (44, 60)]

def optimizedBody230_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (0, 2), (6, 6), (80, 80), (44, 44)]

def optimizedBody230_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (80, 80), (44, 44)]

def optimizedBody230_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_71 optimizedBody230_9

def optimizedBody230_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_70, 230, 12)) (some 205) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody230_72, 230, 13))

def optimizedBody230_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (80, 80), (44, 44)]

def optimizedBody230_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (80, 80), (0, 44)]

def optimizedBody230_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (80, 80), (0, 44)]

def optimizedBody230_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_76 optimizedBody230_9

def optimizedBody230_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_75, 230, 14)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody230_77, 230, 15))

def optimizedBody230_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 80)]

def optimizedBody230_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody230_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody230_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_81 optimizedBody230_9

def optimizedBody230_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_80, 230, 16)) (some 225) ([2]) (some (2, optimizedBody230_82, 230, 17))

def optimizedBody230_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody230_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_21 optimizedBody230_84

def optimizedBody230_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_20 optimizedBody230_85

def optimizedBody230_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_86

def optimizedBody230_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_83 optimizedBody230_87

def optimizedBody230_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_79 optimizedBody230_88

def optimizedBody230_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_89

def optimizedBody230_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 0), (80, 80)]

def optimizedBody230_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody230_90 optimizedBody230_91

def optimizedBody230_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (80, 80)]

def optimizedBody230_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 80)]

def optimizedBody230_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 80)]

def optimizedBody230_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_95 optimizedBody230_9

def optimizedBody230_97 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_94, 230, 18)) (some 229) ([2]) (some (2, optimizedBody230_96, 230, 19))

def optimizedBody230_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody230_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_21 optimizedBody230_98

def optimizedBody230_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_20 optimizedBody230_99

def optimizedBody230_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_100

def optimizedBody230_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_97 optimizedBody230_101

def optimizedBody230_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_93 optimizedBody230_102

def optimizedBody230_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_103

def optimizedBody230_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_104

def optimizedBody230_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_92 optimizedBody230_105

def optimizedBody230_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_14 optimizedBody230_106

def optimizedBody230_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_41 optimizedBody230_107

def optimizedBody230_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_108

def optimizedBody230_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_78 optimizedBody230_109

def optimizedBody230_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_74 optimizedBody230_110

def optimizedBody230_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_111

def optimizedBody230_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_73 optimizedBody230_112

def optimizedBody230_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_69 optimizedBody230_113

def optimizedBody230_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_114

def optimizedBody230_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78), (48, 48)]

def optimizedBody230_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody230_115 optimizedBody230_116

def optimizedBody230_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(48, 48), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76), (78, 78)]

def optimizedBody230_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(48, 48), (34, 44), (32, 46), (20, 50), (28, 52), (22, 54), (18, 56), (16, 58), (46, 60), (14, 62), (26, 64),
    (10, 66), (8, 68), (4, 70), (30, 72), (12, 74), (0, 76), (24, 78)]

def optimizedBody230_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (34, 44), (32, 46), (20, 50), (28, 52), (22, 54), (18, 56), (16, 58), (46, 60), (14, 62), (26, 64),
    (10, 66), (8, 68), (4, 70), (30, 72), (12, 74), (0, 76), (24, 78)]

def optimizedBody230_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_120 optimizedBody230_9

def optimizedBody230_122 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody230_119, 230, 20)) (some 201) ([]) (some (2, optimizedBody230_121, 230, 21))

def optimizedBody230_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody230_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody230_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody230_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551528#64))

def optimizedBody230_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 320#64)))

def optimizedBody230_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (30, 30), (24, 24), (22, 22), (26, 26)]

def optimizedBody230_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody230_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (26, 26)]

def optimizedBody230_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody230_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (22, 22)]

def optimizedBody230_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody230_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (24, 24)]

def optimizedBody230_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody230_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody230_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody230_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (16, 16), (28, 28), (8, 8), (12, 12)]

def optimizedBody230_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody230_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody230_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody230_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody230_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody230_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (28, 28)]

def optimizedBody230_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody230_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody230_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (20, 20), (10, 10), (32, 32), (4, 4)]

def optimizedBody230_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody230_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody230_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody230_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (32, 32)]

def optimizedBody230_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 32 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody230_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody230_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody230_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody230_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (18, 18), (14, 14), (34, 34), (0, 0)]

def optimizedBody230_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody230_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody230_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody230_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (34, 34)]

def optimizedBody230_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 34 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody230_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody230_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody230_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 128#64)

def optimizedBody230_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody230_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (6, 6), (8, 8), (48, 48), (44, 6), (46, 46)]

def optimizedBody230_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 101#8, 99#8, 112#8, 97#8, 100#8, 100#8]) 2 4 6 8
  (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      Flapjack.Spt.ln,
    Flapjack.Spt.ln)

def optimizedBody230_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 44), (0, 46), (12, 48)]

def optimizedBody230_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody230_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody230_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody230_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody230_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody230_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody230_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody230_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody230_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody230_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody230_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody230_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody230_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody230_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody230_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody230_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 48#64))

def optimizedBody230_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 56#64))

def optimizedBody230_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody230_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody230_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody230_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody230_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody230_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody230_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody230_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody230_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody230_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody230_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody230_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody230_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody230_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody230_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_21 optimizedBody230_199

def optimizedBody230_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_20 optimizedBody230_200

def optimizedBody230_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_198 optimizedBody230_201

def optimizedBody230_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_55 optimizedBody230_202

def optimizedBody230_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_20 optimizedBody230_203

def optimizedBody230_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_197 optimizedBody230_204

def optimizedBody230_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_55 optimizedBody230_205

def optimizedBody230_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_20 optimizedBody230_206

def optimizedBody230_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_196 optimizedBody230_207

def optimizedBody230_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_55 optimizedBody230_208

def optimizedBody230_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_20 optimizedBody230_209

def optimizedBody230_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_195 optimizedBody230_210

def optimizedBody230_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_55 optimizedBody230_211

def optimizedBody230_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_14 optimizedBody230_212

def optimizedBody230_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_194 optimizedBody230_213

def optimizedBody230_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_55 optimizedBody230_214

def optimizedBody230_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_193 optimizedBody230_215

def optimizedBody230_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_192 optimizedBody230_216

def optimizedBody230_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_191 optimizedBody230_217

def optimizedBody230_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_190 optimizedBody230_218

def optimizedBody230_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_189 optimizedBody230_219

def optimizedBody230_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_188 optimizedBody230_220

def optimizedBody230_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_187 optimizedBody230_221

def optimizedBody230_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_186 optimizedBody230_222

def optimizedBody230_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_185 optimizedBody230_223

def optimizedBody230_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_21 optimizedBody230_224

def optimizedBody230_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_184 optimizedBody230_225

def optimizedBody230_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_21 optimizedBody230_226

def optimizedBody230_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_183 optimizedBody230_227

def optimizedBody230_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_21 optimizedBody230_228

def optimizedBody230_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_182 optimizedBody230_229

def optimizedBody230_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_21 optimizedBody230_230

def optimizedBody230_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_181 optimizedBody230_231

def optimizedBody230_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_55 optimizedBody230_232

def optimizedBody230_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_180 optimizedBody230_233

def optimizedBody230_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_179 optimizedBody230_234

def optimizedBody230_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_178 optimizedBody230_235

def optimizedBody230_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_177 optimizedBody230_236

def optimizedBody230_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_176 optimizedBody230_237

def optimizedBody230_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_175 optimizedBody230_238

def optimizedBody230_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_174 optimizedBody230_239

def optimizedBody230_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_173 optimizedBody230_240

def optimizedBody230_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_172 optimizedBody230_241

def optimizedBody230_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_21 optimizedBody230_242

def optimizedBody230_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_171 optimizedBody230_243

def optimizedBody230_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_21 optimizedBody230_244

def optimizedBody230_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_170 optimizedBody230_245

def optimizedBody230_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_21 optimizedBody230_246

def optimizedBody230_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_169 optimizedBody230_247

def optimizedBody230_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_168 optimizedBody230_248

def optimizedBody230_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_167 optimizedBody230_249

def optimizedBody230_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_166 optimizedBody230_250

def optimizedBody230_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_165 optimizedBody230_251

def optimizedBody230_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_164 optimizedBody230_252

def optimizedBody230_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_136 optimizedBody230_253

def optimizedBody230_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_163 optimizedBody230_254

def optimizedBody230_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_162 optimizedBody230_255

def optimizedBody230_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_161 optimizedBody230_256

def optimizedBody230_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_160 optimizedBody230_257

def optimizedBody230_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_159 optimizedBody230_258

def optimizedBody230_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_158 optimizedBody230_259

def optimizedBody230_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_157 optimizedBody230_260

def optimizedBody230_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_156 optimizedBody230_261

def optimizedBody230_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_155 optimizedBody230_262

def optimizedBody230_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_136 optimizedBody230_263

def optimizedBody230_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_154 optimizedBody230_264

def optimizedBody230_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_153 optimizedBody230_265

def optimizedBody230_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_152 optimizedBody230_266

def optimizedBody230_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_151 optimizedBody230_267

def optimizedBody230_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_150 optimizedBody230_268

def optimizedBody230_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_149 optimizedBody230_269

def optimizedBody230_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_148 optimizedBody230_270

def optimizedBody230_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_147 optimizedBody230_271

def optimizedBody230_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_146 optimizedBody230_272

def optimizedBody230_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_136 optimizedBody230_273

def optimizedBody230_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_145 optimizedBody230_274

def optimizedBody230_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_144 optimizedBody230_275

def optimizedBody230_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_143 optimizedBody230_276

def optimizedBody230_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_142 optimizedBody230_277

def optimizedBody230_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_141 optimizedBody230_278

def optimizedBody230_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_140 optimizedBody230_279

def optimizedBody230_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_139 optimizedBody230_280

def optimizedBody230_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_138 optimizedBody230_281

def optimizedBody230_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_137 optimizedBody230_282

def optimizedBody230_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_136 optimizedBody230_283

def optimizedBody230_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_135 optimizedBody230_284

def optimizedBody230_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_134 optimizedBody230_285

def optimizedBody230_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_133 optimizedBody230_286

def optimizedBody230_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_132 optimizedBody230_287

def optimizedBody230_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_131 optimizedBody230_288

def optimizedBody230_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_130 optimizedBody230_289

def optimizedBody230_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_129 optimizedBody230_290

def optimizedBody230_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_128 optimizedBody230_291

def optimizedBody230_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_127 optimizedBody230_292

def optimizedBody230_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_126 optimizedBody230_293

def optimizedBody230_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_125 optimizedBody230_294

def optimizedBody230_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_124 optimizedBody230_295

def optimizedBody230_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_123 optimizedBody230_296

def optimizedBody230_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_297

def optimizedBody230_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_122 optimizedBody230_298

def optimizedBody230_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_118 optimizedBody230_299

def optimizedBody230_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_300

def optimizedBody230_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_301

def optimizedBody230_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_117 optimizedBody230_302

def optimizedBody230_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_14 optimizedBody230_303

def optimizedBody230_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_55 optimizedBody230_304

def optimizedBody230_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_305

def optimizedBody230_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_68 optimizedBody230_306

def optimizedBody230_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_64 optimizedBody230_307

def optimizedBody230_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_63 optimizedBody230_308

def optimizedBody230_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_55 optimizedBody230_309

def optimizedBody230_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_62 optimizedBody230_310

def optimizedBody230_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_55 optimizedBody230_311

def optimizedBody230_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_61 optimizedBody230_312

def optimizedBody230_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_55 optimizedBody230_313

def optimizedBody230_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_60 optimizedBody230_314

def optimizedBody230_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_55 optimizedBody230_315

def optimizedBody230_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_59 optimizedBody230_316

def optimizedBody230_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_55 optimizedBody230_317

def optimizedBody230_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_58 optimizedBody230_318

def optimizedBody230_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_55 optimizedBody230_319

def optimizedBody230_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_57 optimizedBody230_320

def optimizedBody230_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_55 optimizedBody230_321

def optimizedBody230_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_56 optimizedBody230_322

def optimizedBody230_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_55 optimizedBody230_323

def optimizedBody230_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_324

def optimizedBody230_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_54 optimizedBody230_325

def optimizedBody230_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_20 optimizedBody230_326

def optimizedBody230_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_41 optimizedBody230_327

def optimizedBody230_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_328

def optimizedBody230_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_40 optimizedBody230_329

def optimizedBody230_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_36 optimizedBody230_330

def optimizedBody230_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_35 optimizedBody230_331

def optimizedBody230_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_34 optimizedBody230_332

def optimizedBody230_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_33 optimizedBody230_333

def optimizedBody230_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_32 optimizedBody230_334

def optimizedBody230_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_31 optimizedBody230_335

def optimizedBody230_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_336

def optimizedBody230_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_337

def optimizedBody230_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_30 optimizedBody230_338

def optimizedBody230_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_14 optimizedBody230_339

def optimizedBody230_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_13 optimizedBody230_340

def optimizedBody230_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_341

def optimizedBody230_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_11 optimizedBody230_342

def optimizedBody230_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_6 optimizedBody230_343

def optimizedBody230_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_5 optimizedBody230_344

def optimizedBody230_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_2 optimizedBody230_345

def optimizedBody230_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_346

def optimizedBody230_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_2 optimizedBody230_347

def optimizedBody230_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_3 optimizedBody230_348

def optimizedBody230_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_2 optimizedBody230_349

def optimizedBody230_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_1 optimizedBody230_350

def optimizedBody230_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_0 optimizedBody230_351

def oracle230 : Option (Spt Nat) :=
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
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 14))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 28 (Flapjack.Spt.ls 40)))
                  26
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 3))))
                12
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 8 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 39)) (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 27 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 32))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 40))))
                10
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 31 (Flapjack.Spt.ls 24)) 8
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 8 Flapjack.Spt.ln))
                  23
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 15) Flapjack.Spt.ln)))
                8
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 28
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 5 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 Flapjack.Spt.ln) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 36))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 38 Flapjack.Spt.ln)))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) 38
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                  12
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 24 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 1))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 33 (Flapjack.Spt.ls 16)) 6
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 31 Flapjack.Spt.ln))
                  25
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 13) Flapjack.Spt.ln)))
                12
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 25))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 25 Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 16) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 34))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
                11
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 22)) 29 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 29 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
                  2 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 1 Flapjack.Spt.ln)))
                6
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 26
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 22 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 0 Flapjack.Spt.ln) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 15) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 38 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.ls 38))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 2)))
                  12
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0)) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 37))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 34 (Flapjack.Spt.ls 10)) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
                  28
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 27)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) 23
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 31 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 26 Flapjack.Spt.ln) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 33)) Flapjack.Spt.ln))
                13
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 30 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 Flapjack.Spt.ln))
                  22
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln)))
                7
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.ls 40)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 24 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 12 (Flapjack.Spt.ls 37))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 29 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4)))
                  3
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln) 29
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 38)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 32 (Flapjack.Spt.ls 17)) 7
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)))
                  4
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
                9
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 23 Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 35))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 23)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                  4
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 38
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 28 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 38 Flapjack.Spt.ln))
                  24
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 2 (Flapjack.Spt.ls 22))))
                5
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 31
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 24 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 31)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                  2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 Flapjack.Spt.ln) 31
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 36)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln) 27
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) Flapjack.Spt.ln) 34
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 38))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) (Flapjack.Spt.ls 27)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln) 22
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln) 30
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln) 25
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) Flapjack.Spt.ln) 33
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 30)) Flapjack.Spt.ln) 29
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln) 26
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  38
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln) 24
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln) 31
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln) 23
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) Flapjack.Spt.ln) 32
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 31))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) Flapjack.Spt.ln)
                  (Flapjack.Spt.ls 30))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 29)) Flapjack.Spt.ln) 28
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))))))
def optimized230 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(230, 10, optimizedBody230_352)
end InitECandidate.Proofs.SmallStages.Oracles230
