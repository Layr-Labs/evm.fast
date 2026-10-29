import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source303
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles303
def optimizedBody303_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (6, 6)]

def optimizedBody303_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody303_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody303_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody303_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 6), (44, 0), (50, 2), (48, 4), (54, 8), (46, 10), (52, 6)]

def optimizedBody303_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (48, 48), (50, 4), (0, 2), (52, 52)]

def optimizedBody303_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48), (54, 54), (46, 46), (52, 52)]

def optimizedBody303_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody303_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody303_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_7 optimizedBody303_8

def optimizedBody303_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody303_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody303_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (56, 44), (44, 50), (58, 48), (60, 54), (46, 46), (62, 52)]

def optimizedBody303_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 56), (6, 44), (58, 58), (60, 60), (0, 46), (62, 62)]

def optimizedBody303_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (56, 56), (6, 44), (58, 58), (60, 60), (0, 46), (62, 62)]

def optimizedBody303_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_14 optimizedBody303_8

def optimizedBody303_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody303_13, 303, 3)) (some 288) ([2]) (some (2, optimizedBody303_15, 303, 4))

def optimizedBody303_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(56, 56), (6, 6), (58, 58), (60, 60), (0, 0), (62, 62)]

def optimizedBody303_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_17

def optimizedBody303_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_16 optimizedBody303_18

def optimizedBody303_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_12 optimizedBody303_19

def optimizedBody303_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_11 optimizedBody303_20

def optimizedBody303_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_21

def optimizedBody303_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 1#64) optimizedBody303_9 optimizedBody303_22

def optimizedBody303_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 56), (6, 6), (48, 58), (50, 60), (0, 0), (52, 62)]

def optimizedBody303_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_24

def optimizedBody303_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_23 optimizedBody303_25

def optimizedBody303_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_6 optimizedBody303_26

def optimizedBody303_28 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody303_5, 303, 2)) (some 162) ([2, 4]) (some (2, optimizedBody303_27, 303, 5))

def optimizedBody303_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody303_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody303_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody303_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody303_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody303_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4]

def optimizedBody303_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_33 optimizedBody303_34

def optimizedBody303_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_32 optimizedBody303_35

def optimizedBody303_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_3 optimizedBody303_36

def optimizedBody303_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_37

def optimizedBody303_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody303_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 0) optimizedBody303_38 optimizedBody303_39

def optimizedBody303_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody303_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 6), (48, 48), (50, 50), (52, 52)]

def optimizedBody303_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (48, 48), (0, 50), (52, 52)]

def optimizedBody303_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (0, 50), (52, 52)]

def optimizedBody303_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_44 optimizedBody303_8

def optimizedBody303_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody303_43, 303, 6)) (some 288) ([2]) (some (2, optimizedBody303_45, 303, 7))

def optimizedBody303_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (48, 48), (0, 0), (52, 52)]

def optimizedBody303_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_47

def optimizedBody303_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_46 optimizedBody303_48

def optimizedBody303_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_42 optimizedBody303_49

def optimizedBody303_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_41 optimizedBody303_50

def optimizedBody303_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_51

def optimizedBody303_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_52

def optimizedBody303_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_40 optimizedBody303_53

def optimizedBody303_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_31 optimizedBody303_54

def optimizedBody303_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_30 optimizedBody303_55

def optimizedBody303_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_56

def optimizedBody303_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (48, 48), (0, 50), (52, 52)]

def optimizedBody303_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_58

def optimizedBody303_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody303_57 optimizedBody303_59

def optimizedBody303_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 6), (44, 44), (48, 48), (52, 52)]

def optimizedBody303_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (48, 48), (52, 52)]

def optimizedBody303_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (52, 52)]

def optimizedBody303_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_63 optimizedBody303_8

def optimizedBody303_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody303_62, 303, 8)) (some 169) ([2, 4]) (some (2, optimizedBody303_64, 303, 9))

def optimizedBody303_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 4), (50, 0)]

def optimizedBody303_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody303_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 50)]

def optimizedBody303_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody303_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody303_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 44), (56, 48), (58, 0), (60, 52)]

def optimizedBody303_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 6), (46, 46), (56, 56), (58, 58), (60, 60)]

def optimizedBody303_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (56, 56), (58, 58), (60, 60)]

def optimizedBody303_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_73 optimizedBody303_8

def optimizedBody303_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody303_72, 303, 10)) (some 161) ([2, 4]) (some (2, optimizedBody303_74, 303, 11))

def optimizedBody303_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody303_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 4), (56, 56), (58, 58), (48, 6), (60, 60)]

def optimizedBody303_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (56, 56), (58, 58), (6, 48), (60, 60)]

def optimizedBody303_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (56, 56), (58, 58), (6, 48), (60, 60)]

def optimizedBody303_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_79 optimizedBody303_8

def optimizedBody303_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody303_78, 303, 12)) (some 288) ([2]) (some (2, optimizedBody303_80, 303, 13))

def optimizedBody303_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (56, 56), (58, 58), (6, 6), (60, 60)]

def optimizedBody303_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_82

def optimizedBody303_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_81 optimizedBody303_83

def optimizedBody303_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_77 optimizedBody303_84

def optimizedBody303_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_76 optimizedBody303_85

def optimizedBody303_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_86

def optimizedBody303_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody303_87 optimizedBody303_83

def optimizedBody303_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 6), (46, 46), (56, 56), (58, 58), (60, 60)]

def optimizedBody303_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (6, 6), (8, 4), (46, 46), (56, 56), (58, 58), (60, 60)]

def optimizedBody303_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody303_90, 303, 14)) (some 291) ([2, 4]) (some (2, optimizedBody303_74, 303, 15))

def optimizedBody303_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 58)]

def optimizedBody303_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody303_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody303_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 46), (46, 10), (48, 56), (50, 60), (56, 8)]

def optimizedBody303_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 6), (6, 4), (44, 44), (46, 46), (48, 48), (50, 50), (56, 56)]

def optimizedBody303_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (56, 56)]

def optimizedBody303_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_97 optimizedBody303_8

def optimizedBody303_99 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody303_96, 303, 16)) (some 161) ([2, 4]) (some (2, optimizedBody303_98, 303, 17))

def optimizedBody303_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody303_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 8), (54, 6), (56, 56)]

def optimizedBody303_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (50, 50), (8, 52), (6, 54), (4, 56)]

def optimizedBody303_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (8, 52), (6, 54), (4, 56)]

def optimizedBody303_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_103 optimizedBody303_8

def optimizedBody303_105 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody303_102, 303, 18)) (some 288) ([2]) (some (2, optimizedBody303_104, 303, 19))

def optimizedBody303_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (48, 48), (50, 50), (8, 8), (6, 6), (4, 4)]

def optimizedBody303_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_106

def optimizedBody303_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_105 optimizedBody303_107

def optimizedBody303_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_101 optimizedBody303_108

def optimizedBody303_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_100 optimizedBody303_109

def optimizedBody303_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_110

def optimizedBody303_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46), (48, 48), (50, 50), (8, 8), (6, 6), (4, 56)]

def optimizedBody303_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_112

def optimizedBody303_114 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody303_111 optimizedBody303_113

def optimizedBody303_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (50, 50)]

def optimizedBody303_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (10, 44), (6, 48), (0, 50)]

def optimizedBody303_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (6, 48), (0, 50)]

def optimizedBody303_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_117 optimizedBody303_8

def optimizedBody303_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody303_116, 303, 20)) (some 298) ([2, 4, 6, 8]) (some (2, optimizedBody303_118, 303, 21))

def optimizedBody303_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody303_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody303_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody303_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody303_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody303_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody303_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody303_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4]

def optimizedBody303_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_33 optimizedBody303_127

def optimizedBody303_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_3 optimizedBody303_128

def optimizedBody303_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_126 optimizedBody303_129

def optimizedBody303_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_125 optimizedBody303_130

def optimizedBody303_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_124 optimizedBody303_131

def optimizedBody303_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_120 optimizedBody303_132

def optimizedBody303_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_123 optimizedBody303_133

def optimizedBody303_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_122 optimizedBody303_134

def optimizedBody303_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_121 optimizedBody303_135

def optimizedBody303_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_120 optimizedBody303_136

def optimizedBody303_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_137

def optimizedBody303_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_119 optimizedBody303_138

def optimizedBody303_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_115 optimizedBody303_139

def optimizedBody303_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_140

def optimizedBody303_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_114 optimizedBody303_141

def optimizedBody303_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_3 optimizedBody303_142

def optimizedBody303_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_29 optimizedBody303_143

def optimizedBody303_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_144

def optimizedBody303_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_99 optimizedBody303_145

def optimizedBody303_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_95 optimizedBody303_146

def optimizedBody303_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_94 optimizedBody303_147

def optimizedBody303_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_29 optimizedBody303_148

def optimizedBody303_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_93 optimizedBody303_149

def optimizedBody303_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_92 optimizedBody303_150

def optimizedBody303_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_151

def optimizedBody303_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(54, 10), (58, 58), (8, 8), (46, 46), (56, 56), (60, 60)]

def optimizedBody303_154 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 0) optimizedBody303_152 optimizedBody303_153

def optimizedBody303_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody303_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7#64)

def optimizedBody303_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (54, 54), (56, 56), (58, 58), (60, 60), (62, 8)]

def optimizedBody303_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody303_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody303_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_159 optimizedBody303_8

def optimizedBody303_161 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody303_158, 303, 22)) (some 288) ([2]) (some (2, optimizedBody303_160, 303, 23))

def optimizedBody303_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody303_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_162

def optimizedBody303_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_161 optimizedBody303_163

def optimizedBody303_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_157 optimizedBody303_164

def optimizedBody303_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_156 optimizedBody303_165

def optimizedBody303_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_166

def optimizedBody303_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (54, 54), (56, 56), (58, 58), (60, 60), (62, 8)]

def optimizedBody303_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_168

def optimizedBody303_170 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 0) optimizedBody303_167 optimizedBody303_169

def optimizedBody303_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 88#64)

def optimizedBody303_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (16, 46), (0, 54), (8, 56), (10, 58), (14, 60), (6, 62)]

def optimizedBody303_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 46), (0, 54), (8, 56), (10, 58), (14, 60), (6, 62)]

def optimizedBody303_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_173 optimizedBody303_8

def optimizedBody303_175 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody303_172, 303, 24)) (some 74) ([2]) (some (2, optimizedBody303_174, 303, 25))

def optimizedBody303_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1#64)

def optimizedBody303_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody303_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody303_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody303_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody303_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody303_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody303_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody303_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody303_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody303_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody303_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody303_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody303_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody303_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody303_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody303_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody303_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2, 4]

def optimizedBody303_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_33 optimizedBody303_193

def optimizedBody303_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_192 optimizedBody303_194

def optimizedBody303_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_191 optimizedBody303_195

def optimizedBody303_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_190 optimizedBody303_196

def optimizedBody303_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_189 optimizedBody303_197

def optimizedBody303_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_120 optimizedBody303_198

def optimizedBody303_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_126 optimizedBody303_199

def optimizedBody303_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_125 optimizedBody303_200

def optimizedBody303_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_188 optimizedBody303_201

def optimizedBody303_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_120 optimizedBody303_202

def optimizedBody303_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_187 optimizedBody303_203

def optimizedBody303_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_186 optimizedBody303_204

def optimizedBody303_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_185 optimizedBody303_205

def optimizedBody303_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_120 optimizedBody303_206

def optimizedBody303_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_184 optimizedBody303_207

def optimizedBody303_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_183 optimizedBody303_208

def optimizedBody303_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_182 optimizedBody303_209

def optimizedBody303_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_120 optimizedBody303_210

def optimizedBody303_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_181 optimizedBody303_211

def optimizedBody303_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_180 optimizedBody303_212

def optimizedBody303_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_179 optimizedBody303_213

def optimizedBody303_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_120 optimizedBody303_214

def optimizedBody303_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_178 optimizedBody303_215

def optimizedBody303_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_177 optimizedBody303_216

def optimizedBody303_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_176 optimizedBody303_217

def optimizedBody303_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_121 optimizedBody303_218

def optimizedBody303_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_120 optimizedBody303_219

def optimizedBody303_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_220

def optimizedBody303_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_175 optimizedBody303_221

def optimizedBody303_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_159 optimizedBody303_222

def optimizedBody303_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_171 optimizedBody303_223

def optimizedBody303_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_224

def optimizedBody303_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_170 optimizedBody303_225

def optimizedBody303_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_31 optimizedBody303_226

def optimizedBody303_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_155 optimizedBody303_227

def optimizedBody303_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_228

def optimizedBody303_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_229

def optimizedBody303_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_154 optimizedBody303_230

def optimizedBody303_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_31 optimizedBody303_231

def optimizedBody303_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_30 optimizedBody303_232

def optimizedBody303_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_233

def optimizedBody303_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_91 optimizedBody303_234

def optimizedBody303_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_89 optimizedBody303_235

def optimizedBody303_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_236

def optimizedBody303_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_88 optimizedBody303_237

def optimizedBody303_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_3 optimizedBody303_238

def optimizedBody303_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_29 optimizedBody303_239

def optimizedBody303_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_240

def optimizedBody303_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_75 optimizedBody303_241

def optimizedBody303_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_71 optimizedBody303_242

def optimizedBody303_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_70 optimizedBody303_243

def optimizedBody303_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_29 optimizedBody303_244

def optimizedBody303_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_69 optimizedBody303_245

def optimizedBody303_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_68 optimizedBody303_246

def optimizedBody303_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_247

def optimizedBody303_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(12, 12), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody303_250 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 0) optimizedBody303_248 optimizedBody303_249

def optimizedBody303_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody303_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 17#64)

def optimizedBody303_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody303_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody303_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_253 optimizedBody303_8

def optimizedBody303_256 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody303_254, 303, 26)) (some 288) ([2]) (some (2, optimizedBody303_255, 303, 27))

def optimizedBody303_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody303_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_257

def optimizedBody303_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_256 optimizedBody303_258

def optimizedBody303_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_253 optimizedBody303_259

def optimizedBody303_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_41 optimizedBody303_260

def optimizedBody303_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_261

def optimizedBody303_263 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 0) optimizedBody303_262 optimizedBody303_258

def optimizedBody303_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody303_265 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody303_264, 303, 28)) (some 300) ([]) (some (2, optimizedBody303_255, 303, 29))

def optimizedBody303_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52)]

def optimizedBody303_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (12, 44), (10, 46), (0, 48), (8, 50), (6, 52)]

def optimizedBody303_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (10, 46), (0, 48), (8, 50), (6, 52)]

def optimizedBody303_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_268 optimizedBody303_8

def optimizedBody303_270 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody303_267, 303, 30)) (some 74) ([2]) (some (2, optimizedBody303_269, 303, 31))

def optimizedBody303_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 2#64)

def optimizedBody303_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody303_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody303_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody303_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4]

def optimizedBody303_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_33 optimizedBody303_275

def optimizedBody303_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_192 optimizedBody303_276

def optimizedBody303_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_191 optimizedBody303_277

def optimizedBody303_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_190 optimizedBody303_278

def optimizedBody303_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_274 optimizedBody303_279

def optimizedBody303_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_120 optimizedBody303_280

def optimizedBody303_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_126 optimizedBody303_281

def optimizedBody303_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_125 optimizedBody303_282

def optimizedBody303_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_182 optimizedBody303_283

def optimizedBody303_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_120 optimizedBody303_284

def optimizedBody303_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_184 optimizedBody303_285

def optimizedBody303_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_177 optimizedBody303_286

def optimizedBody303_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_2 optimizedBody303_287

def optimizedBody303_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_273 optimizedBody303_288

def optimizedBody303_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_120 optimizedBody303_289

def optimizedBody303_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_184 optimizedBody303_290

def optimizedBody303_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_177 optimizedBody303_291

def optimizedBody303_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_2 optimizedBody303_292

def optimizedBody303_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_272 optimizedBody303_293

def optimizedBody303_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_120 optimizedBody303_294

def optimizedBody303_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_184 optimizedBody303_295

def optimizedBody303_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_183 optimizedBody303_296

def optimizedBody303_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_179 optimizedBody303_297

def optimizedBody303_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_120 optimizedBody303_298

def optimizedBody303_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_181 optimizedBody303_299

def optimizedBody303_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_180 optimizedBody303_300

def optimizedBody303_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_124 optimizedBody303_301

def optimizedBody303_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_120 optimizedBody303_302

def optimizedBody303_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_187 optimizedBody303_303

def optimizedBody303_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_177 optimizedBody303_304

def optimizedBody303_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_271 optimizedBody303_305

def optimizedBody303_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_121 optimizedBody303_306

def optimizedBody303_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_120 optimizedBody303_307

def optimizedBody303_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_308

def optimizedBody303_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_270 optimizedBody303_309

def optimizedBody303_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_266 optimizedBody303_310

def optimizedBody303_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_171 optimizedBody303_311

def optimizedBody303_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_312

def optimizedBody303_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_265 optimizedBody303_313

def optimizedBody303_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_254 optimizedBody303_314

def optimizedBody303_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_315

def optimizedBody303_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_263 optimizedBody303_316

def optimizedBody303_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_252 optimizedBody303_317

def optimizedBody303_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_251 optimizedBody303_318

def optimizedBody303_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_319

def optimizedBody303_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_320

def optimizedBody303_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_250 optimizedBody303_321

def optimizedBody303_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_67 optimizedBody303_322

def optimizedBody303_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_66 optimizedBody303_323

def optimizedBody303_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_324

def optimizedBody303_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_65 optimizedBody303_325

def optimizedBody303_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_61 optimizedBody303_326

def optimizedBody303_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_327

def optimizedBody303_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_60 optimizedBody303_328

def optimizedBody303_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_3 optimizedBody303_329

def optimizedBody303_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_29 optimizedBody303_330

def optimizedBody303_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_10 optimizedBody303_331

def optimizedBody303_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_28 optimizedBody303_332

def optimizedBody303_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_4 optimizedBody303_333

def optimizedBody303_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_3 optimizedBody303_334

def optimizedBody303_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_2 optimizedBody303_335

def optimizedBody303_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_1 optimizedBody303_336

def optimizedBody303_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody303_0 optimizedBody303_337

def oracle303 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
                25
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 3
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  31
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 4 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                  29
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))
                4
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln) 26
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 29 (Flapjack.Spt.ls 28)) 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 30
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.ls 2)))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 29)) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)) 25 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 28 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  28
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
                  27
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 28
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  29 (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 31))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))))
              0
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 2)))
                  31
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 30)) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 30 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 6 Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 29)) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                  3
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))))
                  23
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 1))) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 Flapjack.Spt.ln))
                  30 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 28)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 28 (Flapjack.Spt.ls 23)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln) (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 5)))))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1))))
                  24
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 22 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 23))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                27
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 Flapjack.Spt.ln) Flapjack.Spt.ln) 28
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) 22 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))
                26
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  29 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 25
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 24 Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) 24 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25)))
                  30 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 22))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                24
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 28 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  22
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 22
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 31
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 23 Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))))
def optimized303 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(303, 4, optimizedBody303_338)
end InitECandidate.Proofs.SmallStages.Oracles303
