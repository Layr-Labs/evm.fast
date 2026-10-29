import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source380
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles380
def optimizedBody380_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (0, 0), (10, 4), (14, 6)]

def optimizedBody380_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 320#64))

def optimizedBody380_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody380_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 328#64))

def optimizedBody380_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 336#64))

def optimizedBody380_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 344#64))

def optimizedBody380_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 12 352#64))

def optimizedBody380_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 12 360#64))

def optimizedBody380_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 12 368#64))

def optimizedBody380_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 12 376#64))

def optimizedBody380_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (52, 10), (46, 16), (48, 18), (50, 20), (54, 22), (56, 12), (58, 4),
    (60, 2), (62, 6), (64, 8), (66, 14)]

def optimizedBody380_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (44, 44), (52, 52), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (4, 58), (0, 60), (6, 62), (8, 64),
    (66, 66)]

def optimizedBody380_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (52, 52), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (4, 58), (0, 60), (6, 62), (8, 64),
    (66, 66)]

def optimizedBody380_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody380_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_12 optimizedBody380_13

def optimizedBody380_15 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody380_11, 380, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody380_14, 380, 3))

def optimizedBody380_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody380_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody380_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody380_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 40#64)

def optimizedBody380_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody380_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody380_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody380_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody380_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_23 optimizedBody380_13

def optimizedBody380_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_22 optimizedBody380_24

def optimizedBody380_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_21 optimizedBody380_25

def optimizedBody380_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_20 optimizedBody380_26

def optimizedBody380_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_19 optimizedBody380_27

def optimizedBody380_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_28

def optimizedBody380_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody380_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 2) optimizedBody380_29 optimizedBody380_30

def optimizedBody380_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody380_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 18446744073709551615#64)

def optimizedBody380_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 18446744073709551614#64)

def optimizedBody380_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 13451932020343611451#64)

def optimizedBody380_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 13822214165235122497#64)

def optimizedBody380_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (52, 52), (46, 46), (48, 48),
    (50, 50), (54, 54), (56, 56), (66, 66)]

def optimizedBody380_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (52, 52), (6, 46), (8, 48), (10, 50), (4, 54), (56, 56), (66, 66)]

def optimizedBody380_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (6, 46), (8, 48), (10, 50), (4, 54), (56, 56), (66, 66)]

def optimizedBody380_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_39 optimizedBody380_13

def optimizedBody380_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody380_38, 380, 4)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody380_40, 380, 5))

def optimizedBody380_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody380_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 40#64)

def optimizedBody380_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody380_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_44 optimizedBody380_25

def optimizedBody380_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_42 optimizedBody380_45

def optimizedBody380_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_43 optimizedBody380_46

def optimizedBody380_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_47

def optimizedBody380_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody380_48 optimizedBody380_30

def optimizedBody380_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 6), (8, 8), (44, 44), (52, 52), (46, 6), (48, 8), (50, 10), (54, 4), (56, 56), (66, 66)]

def optimizedBody380_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (52, 52), (6, 46), (8, 48), (0, 50), (4, 54), (46, 56), (66, 66)]

def optimizedBody380_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (6, 46), (8, 48), (0, 50), (4, 54), (46, 56), (66, 66)]

def optimizedBody380_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_52 optimizedBody380_13

def optimizedBody380_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody380_51, 380, 6)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody380_53, 380, 7))

def optimizedBody380_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 41#64)

def optimizedBody380_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_55 optimizedBody380_27

def optimizedBody380_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_56

def optimizedBody380_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 2) optimizedBody380_57 optimizedBody380_30

def optimizedBody380_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 9223372036854775807#64)

def optimizedBody380_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 18446744073709551615#64)

def optimizedBody380_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 6725966010171805725#64)

def optimizedBody380_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 16134479119472337056#64)

def optimizedBody380_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (52, 52), (46, 46), (66, 66)]

def optimizedBody380_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (52, 52), (0, 46), (66, 66)]

def optimizedBody380_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (0, 46), (66, 66)]

def optimizedBody380_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_65 optimizedBody380_13

def optimizedBody380_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody380_64, 380, 8)) (some 107) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody380_66, 380, 9))

def optimizedBody380_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody380_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody380_57 optimizedBody380_30

def optimizedBody380_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody380_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 288#64))

def optimizedBody380_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 296#64))

def optimizedBody380_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 304#64))

def optimizedBody380_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 312#64))

def optimizedBody380_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (48, 6), (46, 10), (50, 8), (56, 4), (52, 52), (62, 0), (64, 2), (66, 66)]

def optimizedBody380_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (44, 44), (48, 48), (0, 46), (50, 50), (56, 56), (10, 52), (62, 62), (64, 64), (66, 66)]

def optimizedBody380_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (0, 46), (50, 50), (56, 56), (10, 52), (62, 62), (64, 64), (66, 66)]

def optimizedBody380_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_77 optimizedBody380_13

def optimizedBody380_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody380_76, 380, 10)) (some 101) ([2, 4, 6, 8]) (some (2, optimizedBody380_78, 380, 11))

def optimizedBody380_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody380_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody380_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 64)]

def optimizedBody380_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 27#64)

def optimizedBody380_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody380_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody380_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_84 optimizedBody380_85

def optimizedBody380_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody380_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_87 optimizedBody380_85

def optimizedBody380_89 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody380_86 optimizedBody380_88

def optimizedBody380_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 28#64)

def optimizedBody380_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody380_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_91 optimizedBody380_23

def optimizedBody380_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_18 optimizedBody380_23

def optimizedBody380_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody380_92 optimizedBody380_93

def optimizedBody380_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody380_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody380_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody380_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 62), (4, 66), (44, 44), (52, 0)]

def optimizedBody380_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 52)]

def optimizedBody380_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 52)]

def optimizedBody380_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_100 optimizedBody380_13

def optimizedBody380_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody380_99, 380, 12)) (some 373) ([2, 4]) (some (2, optimizedBody380_101, 380, 13))

def optimizedBody380_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551589#64)))

def optimizedBody380_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody380_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_20 optimizedBody380_104

def optimizedBody380_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_103 optimizedBody380_105

def optimizedBody380_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_42 optimizedBody380_106

def optimizedBody380_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_107

def optimizedBody380_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_102 optimizedBody380_108

def optimizedBody380_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_98 optimizedBody380_109

def optimizedBody380_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_110

def optimizedBody380_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(48, 48), (50, 50), (56, 56), (10, 10), (62, 62), (66, 66), (46, 44), (64, 0)]

def optimizedBody380_113 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody380_111 optimizedBody380_112

def optimizedBody380_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (48, 48), (50, 50), (56, 56), (10, 10), (62, 62), (64, 64), (66, 66)]

def optimizedBody380_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_114

def optimizedBody380_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_115

def optimizedBody380_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_113 optimizedBody380_116

def optimizedBody380_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_97 optimizedBody380_117

def optimizedBody380_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_96 optimizedBody380_118

def optimizedBody380_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_95 optimizedBody380_119

def optimizedBody380_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_120

def optimizedBody380_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_94 optimizedBody380_121

def optimizedBody380_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_90 optimizedBody380_122

def optimizedBody380_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_42 optimizedBody380_123

def optimizedBody380_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_124

def optimizedBody380_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_89 optimizedBody380_125

def optimizedBody380_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_83 optimizedBody380_126

def optimizedBody380_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_82 optimizedBody380_127

def optimizedBody380_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_128

def optimizedBody380_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 44), (48, 48), (50, 50), (56, 56), (10, 10), (62, 62), (64, 64), (66, 66)]

def optimizedBody380_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_130

def optimizedBody380_132 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 0) optimizedBody380_129 optimizedBody380_131

def optimizedBody380_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody380_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody380_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody380_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody380_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (46, 46), (48, 48), (50, 50), (56, 56),
    (58, 10), (62, 62), (64, 64), (66, 66)]

def optimizedBody380_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (4, 4), (6, 6), (8, 8), (46, 46), (48, 48), (50, 50), (56, 56), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody380_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (50, 50), (56, 56), (58, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody380_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_139 optimizedBody380_13

def optimizedBody380_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody380_138, 380, 14)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody380_140, 380, 15))

def optimizedBody380_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 35#64)

def optimizedBody380_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (46, 46), (44, 2), (48, 48), (50, 50),
    (52, 4), (54, 6), (56, 56), (58, 58), (60, 8), (62, 62), (64, 64), (66, 66)]

def optimizedBody380_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 8), (18, 6), (20, 4), (22, 2), (46, 46), (10, 44), (44, 48), (48, 50), (4, 52), (6, 54), (52, 56), (54, 58),
    (8, 60), (62, 62), (64, 64), (66, 66)]

def optimizedBody380_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (10, 44), (44, 48), (48, 50), (4, 52), (6, 54), (52, 56), (54, 58), (8, 60), (62, 62), (64, 64),
    (66, 66)]

def optimizedBody380_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_145 optimizedBody380_13

def optimizedBody380_147 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody380_144, 380, 16)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody380_146, 380, 17))

def optimizedBody380_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody380_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 36#64)

def optimizedBody380_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (46, 46), (44, 44), (48, 48), (50, 0),
    (52, 52), (54, 54), (56, 18), (58, 20), (60, 22), (62, 62), (64, 64), (66, 66)]

def optimizedBody380_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (24, 2), (6, 6), (4, 4), (46, 46), (18, 44), (20, 48), (16, 50), (0, 52), (52, 54), (14, 56), (12, 58),
    (10, 60), (56, 62), (22, 64), (60, 66)]

def optimizedBody380_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (18, 44), (20, 48), (16, 50), (0, 52), (52, 54), (14, 56), (12, 58), (10, 60), (56, 62), (22, 64),
    (60, 66)]

def optimizedBody380_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_152 optimizedBody380_13

def optimizedBody380_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody380_151, 380, 18)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody380_153, 380, 19))

def optimizedBody380_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (46, 46), (44, 18), (48, 20), (50, 0),
    (52, 52), (54, 8), (56, 56), (58, 22), (60, 60), (62, 24), (64, 6), (66, 4)]

def optimizedBody380_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (46, 46), (6, 44), (8, 48), (4, 50), (44, 52), (16, 54), (50, 56), (0, 58), (52, 60), (10, 62), (14, 64),
    (12, 66)]

def optimizedBody380_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (6, 44), (8, 48), (4, 50), (44, 52), (16, 54), (50, 56), (0, 58), (52, 60), (10, 62), (14, 64),
    (12, 66)]

def optimizedBody380_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_157 optimizedBody380_13

def optimizedBody380_159 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody380_156, 380, 20)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody380_158, 380, 21))

def optimizedBody380_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (46, 46), (44, 44), (48, 18), (50, 50),
    (52, 52)]

def optimizedBody380_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (4, 44), (8, 48), (10, 50), (6, 52)]

def optimizedBody380_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (8, 48), (10, 50), (6, 52)]

def optimizedBody380_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_162 optimizedBody380_13

def optimizedBody380_164 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody380_161, 380, 22)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody380_163, 380, 23))

def optimizedBody380_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody380_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody380_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_165 optimizedBody380_166

def optimizedBody380_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_167

def optimizedBody380_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_136 optimizedBody380_166

def optimizedBody380_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_169

def optimizedBody380_171 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody380_168 optimizedBody380_170

def optimizedBody380_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_92

def optimizedBody380_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_93

def optimizedBody380_174 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody380_172 optimizedBody380_173

def optimizedBody380_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody380_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody380_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 42#64)

def optimizedBody380_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_177 optimizedBody380_27

def optimizedBody380_179 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody380_178 optimizedBody380_30

def optimizedBody380_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (6, 6), (46, 46), (48, 0)]

def optimizedBody380_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 46), (14, 48)]

def optimizedBody380_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 46), (14, 48)]

def optimizedBody380_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_182 optimizedBody380_13

def optimizedBody380_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody380_181, 380, 24)) (some 374) ([2, 4, 6]) (some (2, optimizedBody380_183, 380, 25))

def optimizedBody380_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 14)]

def optimizedBody380_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody380_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_185 optimizedBody380_186

def optimizedBody380_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_187

def optimizedBody380_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_184 optimizedBody380_188

def optimizedBody380_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_180 optimizedBody380_189

def optimizedBody380_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_190

def optimizedBody380_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_179 optimizedBody380_191

def optimizedBody380_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_176 optimizedBody380_192

def optimizedBody380_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_175 optimizedBody380_193

def optimizedBody380_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_194

def optimizedBody380_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_174 optimizedBody380_195

def optimizedBody380_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_18 optimizedBody380_196

def optimizedBody380_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_42 optimizedBody380_197

def optimizedBody380_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_198

def optimizedBody380_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_171 optimizedBody380_199

def optimizedBody380_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_18 optimizedBody380_200

def optimizedBody380_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_80 optimizedBody380_201

def optimizedBody380_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_202

def optimizedBody380_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_164 optimizedBody380_203

def optimizedBody380_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_160 optimizedBody380_204

def optimizedBody380_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_205

def optimizedBody380_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_159 optimizedBody380_206

def optimizedBody380_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_155 optimizedBody380_207

def optimizedBody380_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_208

def optimizedBody380_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_154 optimizedBody380_209

def optimizedBody380_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_150 optimizedBody380_210

def optimizedBody380_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_149 optimizedBody380_211

def optimizedBody380_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_135 optimizedBody380_212

def optimizedBody380_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_134 optimizedBody380_213

def optimizedBody380_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_133 optimizedBody380_214

def optimizedBody380_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_148 optimizedBody380_215

def optimizedBody380_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_216

def optimizedBody380_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_147 optimizedBody380_217

def optimizedBody380_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_143 optimizedBody380_218

def optimizedBody380_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_142 optimizedBody380_219

def optimizedBody380_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_135 optimizedBody380_220

def optimizedBody380_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_134 optimizedBody380_221

def optimizedBody380_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_133 optimizedBody380_222

def optimizedBody380_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_32 optimizedBody380_223

def optimizedBody380_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_224

def optimizedBody380_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_141 optimizedBody380_225

def optimizedBody380_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_137 optimizedBody380_226

def optimizedBody380_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_87 optimizedBody380_227

def optimizedBody380_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_95 optimizedBody380_228

def optimizedBody380_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_136 optimizedBody380_229

def optimizedBody380_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_135 optimizedBody380_230

def optimizedBody380_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_134 optimizedBody380_231

def optimizedBody380_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_133 optimizedBody380_232

def optimizedBody380_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_17 optimizedBody380_233

def optimizedBody380_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_234

def optimizedBody380_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_132 optimizedBody380_235

def optimizedBody380_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_81 optimizedBody380_236

def optimizedBody380_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_80 optimizedBody380_237

def optimizedBody380_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_238

def optimizedBody380_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 0), (10, 62), (6, 64), (4, 66), (8, 8), (44, 44)]

def optimizedBody380_241 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody380_239 optimizedBody380_240

def optimizedBody380_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 43#64)

def optimizedBody380_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_242 optimizedBody380_27

def optimizedBody380_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_243

def optimizedBody380_245 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody380_244 optimizedBody380_30

def optimizedBody380_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody380_247 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody380_244 optimizedBody380_30

def optimizedBody380_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (44, 44), (46, 0), (48, 10), (50, 6), (52, 4)]

def optimizedBody380_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (10, 48), (46, 50), (4, 52)]

def optimizedBody380_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (10, 48), (46, 50), (4, 52)]

def optimizedBody380_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_250 optimizedBody380_13

def optimizedBody380_252 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody380_249, 380, 26)) (some 375) ([2, 4]) (some (2, optimizedBody380_251, 380, 27))

def optimizedBody380_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (10, 10), (46, 46), (4, 4)]

def optimizedBody380_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_253

def optimizedBody380_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_252 optimizedBody380_254

def optimizedBody380_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_248 optimizedBody380_255

def optimizedBody380_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_256

def optimizedBody380_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (10, 10), (46, 6), (4, 4)]

def optimizedBody380_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_258

def optimizedBody380_260 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody380_257 optimizedBody380_259

def optimizedBody380_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody380_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (44, 44), (46, 0), (48, 10), (50, 46), (52, 4)]

def optimizedBody380_263 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody380_249, 380, 28)) (some 376) ([2, 4]) (some (2, optimizedBody380_251, 380, 29))

def optimizedBody380_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_263 optimizedBody380_254

def optimizedBody380_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_262 optimizedBody380_264

def optimizedBody380_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_265

def optimizedBody380_267 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody380_266 optimizedBody380_254

def optimizedBody380_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody380_269 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody380_249, 380, 30)) (some 377) ([2, 4]) (some (2, optimizedBody380_251, 380, 31))

def optimizedBody380_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_269 optimizedBody380_254

def optimizedBody380_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_262 optimizedBody380_270

def optimizedBody380_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_271

def optimizedBody380_273 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody380_272 optimizedBody380_254

def optimizedBody380_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody380_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (44, 44), (46, 46)]

def optimizedBody380_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody380_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody380_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_277 optimizedBody380_13

def optimizedBody380_279 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody380_276, 380, 32)) (some 378) ([2, 4]) (some (2, optimizedBody380_278, 380, 33))

def optimizedBody380_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody380_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_280

def optimizedBody380_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_279 optimizedBody380_281

def optimizedBody380_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_275 optimizedBody380_282

def optimizedBody380_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_283

def optimizedBody380_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 46)]

def optimizedBody380_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_285

def optimizedBody380_287 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody380_284 optimizedBody380_286

def optimizedBody380_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody380_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody380_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_288 optimizedBody380_289

def optimizedBody380_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_290

def optimizedBody380_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_287 optimizedBody380_291

def optimizedBody380_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_274 optimizedBody380_292

def optimizedBody380_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_42 optimizedBody380_293

def optimizedBody380_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_294

def optimizedBody380_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_273 optimizedBody380_295

def optimizedBody380_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_268 optimizedBody380_296

def optimizedBody380_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_42 optimizedBody380_297

def optimizedBody380_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_298

def optimizedBody380_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_267 optimizedBody380_299

def optimizedBody380_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_261 optimizedBody380_300

def optimizedBody380_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_42 optimizedBody380_301

def optimizedBody380_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_302

def optimizedBody380_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_260 optimizedBody380_303

def optimizedBody380_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_91 optimizedBody380_304

def optimizedBody380_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_42 optimizedBody380_305

def optimizedBody380_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_306

def optimizedBody380_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_307

def optimizedBody380_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_247 optimizedBody380_308

def optimizedBody380_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_246 optimizedBody380_309

def optimizedBody380_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_91 optimizedBody380_310

def optimizedBody380_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_311

def optimizedBody380_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_312

def optimizedBody380_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_245 optimizedBody380_313

def optimizedBody380_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_18 optimizedBody380_314

def optimizedBody380_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_80 optimizedBody380_315

def optimizedBody380_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_316

def optimizedBody380_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_317

def optimizedBody380_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_241 optimizedBody380_318

def optimizedBody380_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_18 optimizedBody380_319

def optimizedBody380_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_42 optimizedBody380_320

def optimizedBody380_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_321

def optimizedBody380_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_79 optimizedBody380_322

def optimizedBody380_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_75 optimizedBody380_323

def optimizedBody380_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_74 optimizedBody380_324

def optimizedBody380_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_42 optimizedBody380_325

def optimizedBody380_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_73 optimizedBody380_326

def optimizedBody380_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_42 optimizedBody380_327

def optimizedBody380_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_72 optimizedBody380_328

def optimizedBody380_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_42 optimizedBody380_329

def optimizedBody380_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_71 optimizedBody380_330

def optimizedBody380_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_42 optimizedBody380_331

def optimizedBody380_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_70 optimizedBody380_332

def optimizedBody380_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_42 optimizedBody380_333

def optimizedBody380_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_334

def optimizedBody380_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_335

def optimizedBody380_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_69 optimizedBody380_336

def optimizedBody380_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_18 optimizedBody380_337

def optimizedBody380_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_68 optimizedBody380_338

def optimizedBody380_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_339

def optimizedBody380_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_67 optimizedBody380_340

def optimizedBody380_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_63 optimizedBody380_341

def optimizedBody380_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_62 optimizedBody380_342

def optimizedBody380_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_61 optimizedBody380_343

def optimizedBody380_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_60 optimizedBody380_344

def optimizedBody380_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_59 optimizedBody380_345

def optimizedBody380_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_32 optimizedBody380_346

def optimizedBody380_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_347

def optimizedBody380_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_348

def optimizedBody380_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_58 optimizedBody380_349

def optimizedBody380_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_18 optimizedBody380_350

def optimizedBody380_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_17 optimizedBody380_351

def optimizedBody380_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_352

def optimizedBody380_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_54 optimizedBody380_353

def optimizedBody380_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_50 optimizedBody380_354

def optimizedBody380_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_355

def optimizedBody380_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_356

def optimizedBody380_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_49 optimizedBody380_357

def optimizedBody380_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_18 optimizedBody380_358

def optimizedBody380_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_42 optimizedBody380_359

def optimizedBody380_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_360

def optimizedBody380_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_41 optimizedBody380_361

def optimizedBody380_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_37 optimizedBody380_362

def optimizedBody380_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_36 optimizedBody380_363

def optimizedBody380_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_35 optimizedBody380_364

def optimizedBody380_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_34 optimizedBody380_365

def optimizedBody380_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_33 optimizedBody380_366

def optimizedBody380_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_32 optimizedBody380_367

def optimizedBody380_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_368

def optimizedBody380_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_369

def optimizedBody380_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_31 optimizedBody380_370

def optimizedBody380_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_18 optimizedBody380_371

def optimizedBody380_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_17 optimizedBody380_372

def optimizedBody380_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_16 optimizedBody380_373

def optimizedBody380_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_15 optimizedBody380_374

def optimizedBody380_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_10 optimizedBody380_375

def optimizedBody380_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_9 optimizedBody380_376

def optimizedBody380_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_2 optimizedBody380_377

def optimizedBody380_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_8 optimizedBody380_378

def optimizedBody380_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_2 optimizedBody380_379

def optimizedBody380_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_7 optimizedBody380_380

def optimizedBody380_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_2 optimizedBody380_381

def optimizedBody380_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_6 optimizedBody380_382

def optimizedBody380_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_2 optimizedBody380_383

def optimizedBody380_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_5 optimizedBody380_384

def optimizedBody380_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_2 optimizedBody380_385

def optimizedBody380_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_4 optimizedBody380_386

def optimizedBody380_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_2 optimizedBody380_387

def optimizedBody380_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_3 optimizedBody380_388

def optimizedBody380_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_2 optimizedBody380_389

def optimizedBody380_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_1 optimizedBody380_390

def optimizedBody380_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody380_0 optimizedBody380_391

def oracle380 : Option (Spt Nat) :=
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
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 4
                      (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 0)))
                    4 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 1))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 28)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 22 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 1)) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                  10 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 (Flapjack.Spt.ls 4)) 0 (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 22)) 2 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                  8
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 31)) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 4 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln) 1 Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 0 Flapjack.Spt.ln) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 26))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 3 Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                7
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 4))))
                  9
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 1))) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4))) 1
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 28
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 4 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 31)))
                  11
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 3))) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 2 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5)) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1)))
                    23
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 25)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 0 Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 33 (Flapjack.Spt.ls 0))))
                6
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                  6
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 4
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  6
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))) 33
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 9))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 29)) 26
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)) 3 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 4))))
                  6
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) 26 Flapjack.Spt.ln) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                  6
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 1))) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1 Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))) 8
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 1 Flapjack.Spt.ln))
                  6
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 24)) 27
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 33
                    (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 26 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 1 (Flapjack.Spt.ls 33)))
                  6 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                  6
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 1)))
                    26
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                    (Flapjack.Spt.ls 23))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 28
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) Flapjack.Spt.ln) 25
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 30
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 31)) 23 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 32 Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 33)) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln) Flapjack.Spt.ln) 28
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 28)) 22 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 33 Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 27
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 33
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) Flapjack.Spt.ln) 29
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 29)) 26 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 31
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 32)) 24 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln) 26
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 33
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 33)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))))))))))
def optimized380 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(380, 4, optimizedBody380_392)
end InitECandidate.Proofs.SmallStages.Oracles380
