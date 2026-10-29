import InitECandidate.Proofs.ClashComputation
import InitECandidate.Proofs.WordStages.Source324
import InitECandidate.Proofs.SmallOptimizerComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Thin324
def optimizedBody324_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody324_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody324_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 2)]

def optimizedBody324_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 8 40#64))

def optimizedBody324_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody324_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody324_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 8 32#64))

def optimizedBody324_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody324_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody324_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody324_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody324_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody324_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 0), (44, 10), (46, 6), (50, 4), (52, 12), (56, 8), (60, 14)]

def optimizedBody324_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (4, 44), (6, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody324_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (4, 44), (6, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody324_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody324_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_14 optimizedBody324_15

def optimizedBody324_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_13, 324, 2)) (some 329) ([2]) (some (2, optimizedBody324_16, 324, 3))

def optimizedBody324_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody324_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody324_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (44, 0), (6, 6), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody324_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_19 optimizedBody324_20

def optimizedBody324_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_18 optimizedBody324_21

def optimizedBody324_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_22

def optimizedBody324_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_17 optimizedBody324_23

def optimizedBody324_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_12 optimizedBody324_24

def optimizedBody324_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_11 optimizedBody324_25

def optimizedBody324_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_10 optimizedBody324_26

def optimizedBody324_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_27

def optimizedBody324_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 0), (44, 10), (6, 6), (50, 4), (52, 12), (56, 8), (60, 14)]

def optimizedBody324_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_29

def optimizedBody324_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody324_28 optimizedBody324_30

def optimizedBody324_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 3#64)

def optimizedBody324_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody324_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (44, 44), (46, 6), (0, 50), (52, 52), (4, 4), (56, 56), (60, 60)]

def optimizedBody324_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody324_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody324_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody324_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody324_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody324_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (44, 44), (46, 46), (50, 0), (52, 52), (54, 4), (56, 56), (60, 60)]

def optimizedBody324_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (48, 48), (8, 44), (46, 46), (0, 50), (52, 52), (4, 54), (56, 56), (60, 60)]

def optimizedBody324_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (8, 44), (46, 46), (0, 50), (52, 52), (4, 54), (56, 56), (60, 60)]

def optimizedBody324_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_42 optimizedBody324_15

def optimizedBody324_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_41, 324, 4)) (some 329) ([2]) (some (2, optimizedBody324_43, 324, 5))

def optimizedBody324_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody324_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody324_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (44, 2)]

def optimizedBody324_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody324_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (44, 44), (46, 46), (0, 0), (52, 52), (4, 4), (56, 56), (60, 60)]

def optimizedBody324_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody324_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_49 optimizedBody324_50

def optimizedBody324_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_48 optimizedBody324_51

def optimizedBody324_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_47 optimizedBody324_52

def optimizedBody324_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_46 optimizedBody324_53

def optimizedBody324_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_45 optimizedBody324_54

def optimizedBody324_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_55

def optimizedBody324_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_44 optimizedBody324_56

def optimizedBody324_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_40 optimizedBody324_57

def optimizedBody324_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_39 optimizedBody324_58

def optimizedBody324_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_38 optimizedBody324_59

def optimizedBody324_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_37 optimizedBody324_60

def optimizedBody324_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_36 optimizedBody324_61

def optimizedBody324_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_10 optimizedBody324_62

def optimizedBody324_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_63

def optimizedBody324_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody324_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_65

def optimizedBody324_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 2) optimizedBody324_64 optimizedBody324_66

def optimizedBody324_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 2), (44, 6), (46, 8), (0, 0), (52, 10), (4, 4), (56, 12), (60, 14)]

def optimizedBody324_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_68

def optimizedBody324_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_67 optimizedBody324_69

def optimizedBody324_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_35 optimizedBody324_70

def optimizedBody324_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_10 optimizedBody324_71

def optimizedBody324_73 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody324_72 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody324_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 160#64))

def optimizedBody324_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 168#64))

def optimizedBody324_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (48, 48), (44, 44), (46, 46), (50, 0), (52, 52), (56, 56), (60, 60)]

def optimizedBody324_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (4, 44), (46, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody324_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (4, 44), (46, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody324_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_78 optimizedBody324_15

def optimizedBody324_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_77, 324, 6)) (some 328) ([2, 4]) (some (2, optimizedBody324_79, 324, 7))

def optimizedBody324_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody324_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (2, 2), (46, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody324_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_81 optimizedBody324_82

def optimizedBody324_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_18 optimizedBody324_83

def optimizedBody324_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_84

def optimizedBody324_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_80 optimizedBody324_85

def optimizedBody324_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_76 optimizedBody324_86

def optimizedBody324_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_75 optimizedBody324_87

def optimizedBody324_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_37 optimizedBody324_88

def optimizedBody324_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_74 optimizedBody324_89

def optimizedBody324_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_37 optimizedBody324_90

def optimizedBody324_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_91

def optimizedBody324_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_73 optimizedBody324_92

def optimizedBody324_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_34 optimizedBody324_93

def optimizedBody324_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_94

def optimizedBody324_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_33 optimizedBody324_95

def optimizedBody324_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_96

def optimizedBody324_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (2, 44), (46, 6), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody324_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_98

def optimizedBody324_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 0) optimizedBody324_97 optimizedBody324_99

def optimizedBody324_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (44, 2), (46, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody324_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (48, 48), (0, 44), (46, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody324_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (0, 44), (46, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody324_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_103 optimizedBody324_15

def optimizedBody324_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_102, 324, 8)) (some 180) ([2]) (some (2, optimizedBody324_104, 324, 9))

def optimizedBody324_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (44, 0), (46, 46), (50, 50), (52, 52), (54, 4), (56, 56), (60, 60)]

def optimizedBody324_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (4, 44), (44, 46), (50, 50), (46, 52), (52, 54), (56, 56), (60, 60)]

def optimizedBody324_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (4, 44), (44, 46), (50, 50), (46, 52), (52, 54), (56, 56), (60, 60)]

def optimizedBody324_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_108 optimizedBody324_15

def optimizedBody324_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_107, 324, 10)) (some 68) ([2]) (some (2, optimizedBody324_109, 324, 11))

def optimizedBody324_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (48, 48), (54, 4), (44, 44), (50, 50), (46, 46), (52, 52), (56, 56), (58, 0), (60, 60)]

def optimizedBody324_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(48, 48), (54, 54), (0, 44), (50, 50), (44, 46), (52, 52), (56, 56), (10, 58), (46, 60)]

def optimizedBody324_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (54, 54), (0, 44), (50, 50), (44, 46), (52, 52), (56, 56), (10, 58), (46, 60)]

def optimizedBody324_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_113 optimizedBody324_15

def optimizedBody324_115 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_112, 324, 12)) (some 178) ([2, 4]) (some (2, optimizedBody324_114, 324, 13))

def optimizedBody324_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 52)]

def optimizedBody324_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody324_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 52)]

def optimizedBody324_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 10)))

def optimizedBody324_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (6, 46), (44, 48), (46, 0), (48, 50), (50, 4), (52, 10)]

def optimizedBody324_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48), (8, 50), (10, 52)]

def optimizedBody324_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (8, 50), (10, 52)]

def optimizedBody324_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_122 optimizedBody324_15

def optimizedBody324_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_121, 324, 14)) (some 176) ([2, 4, 6]) (some (2, optimizedBody324_123, 324, 15))

def optimizedBody324_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody324_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody324_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody324_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody324_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody324_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody324_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody324_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 10)]

def optimizedBody324_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (10, 44), (0, 46), (8, 48), (4, 50)]

def optimizedBody324_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46), (8, 48), (4, 50)]

def optimizedBody324_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_134 optimizedBody324_15

def optimizedBody324_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_133, 324, 16)) (some 176) ([2, 4, 6]) (some (2, optimizedBody324_135, 324, 17))

def optimizedBody324_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody324_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0), (6, 6), (4, 4)]

def optimizedBody324_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_137 optimizedBody324_138

def optimizedBody324_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_45 optimizedBody324_139

def optimizedBody324_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_140

def optimizedBody324_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_136 optimizedBody324_141

def optimizedBody324_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_132 optimizedBody324_142

def optimizedBody324_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_131 optimizedBody324_143

def optimizedBody324_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_37 optimizedBody324_144

def optimizedBody324_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_130 optimizedBody324_145

def optimizedBody324_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_37 optimizedBody324_146

def optimizedBody324_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_129 optimizedBody324_147

def optimizedBody324_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_128 optimizedBody324_148

def optimizedBody324_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_149

def optimizedBody324_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody324_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody324_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 8), (50, 10)]

def optimizedBody324_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_133, 324, 18)) (some 331) ([2, 4]) (some (2, optimizedBody324_135, 324, 19))

def optimizedBody324_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_154 optimizedBody324_141

def optimizedBody324_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_153 optimizedBody324_155

def optimizedBody324_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_152 optimizedBody324_156

def optimizedBody324_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_128 optimizedBody324_157

def optimizedBody324_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_151 optimizedBody324_158

def optimizedBody324_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_37 optimizedBody324_159

def optimizedBody324_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_160

def optimizedBody324_162 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody324_150 optimizedBody324_161

def optimizedBody324_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_138

def optimizedBody324_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_162 optimizedBody324_163

def optimizedBody324_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_127 optimizedBody324_164

def optimizedBody324_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_126 optimizedBody324_165

def optimizedBody324_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_125 optimizedBody324_166

def optimizedBody324_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_45 optimizedBody324_167

def optimizedBody324_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_168

def optimizedBody324_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_124 optimizedBody324_169

def optimizedBody324_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_120 optimizedBody324_170

def optimizedBody324_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_119 optimizedBody324_171

def optimizedBody324_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_118 optimizedBody324_172

def optimizedBody324_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_173

def optimizedBody324_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody324_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 48), (54, 54), (50, 0), (8, 50), (46, 44), (6, 6), (52, 52), (56, 56), (0, 52), (10, 10), (48, 46)]

def optimizedBody324_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 6 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody324_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody324_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody324_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody324_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (54, 54), (50, 50), (46, 8), (48, 46), (52, 6), (56, 52), (58, 56), (60, 0), (62, 10),
    (64, 48)]

def optimizedBody324_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (12, 54), (14, 50), (8, 46), (16, 48), (4, 52), (18, 56), (20, 58), (6, 60), (10, 62), (22, 64)]

def optimizedBody324_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 54), (14, 50), (8, 46), (16, 48), (4, 52), (18, 56), (20, 58), (6, 60), (10, 62), (22, 64)]

def optimizedBody324_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_183 optimizedBody324_15

def optimizedBody324_185 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_182, 324, 20)) (some 331) ([2, 4]) (some (2, optimizedBody324_184, 324, 21))

def optimizedBody324_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody324_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody324_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody324_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (54, 12), (50, 14), (8, 8), (46, 16), (6, 6), (52, 18), (56, 20), (0, 0), (10, 10), (48, 22)]

def optimizedBody324_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_189 optimizedBody324_50

def optimizedBody324_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_188 optimizedBody324_190

def optimizedBody324_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_18 optimizedBody324_191

def optimizedBody324_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_187 optimizedBody324_192

def optimizedBody324_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_186 optimizedBody324_193

def optimizedBody324_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_194

def optimizedBody324_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_185 optimizedBody324_195

def optimizedBody324_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_181 optimizedBody324_196

def optimizedBody324_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_180 optimizedBody324_197

def optimizedBody324_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_179 optimizedBody324_198

def optimizedBody324_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_39 optimizedBody324_199

def optimizedBody324_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_178 optimizedBody324_200

def optimizedBody324_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_4 optimizedBody324_201

def optimizedBody324_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_177 optimizedBody324_202

def optimizedBody324_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_7 optimizedBody324_203

def optimizedBody324_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_204

def optimizedBody324_206 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.WordRegImm.reg 2) optimizedBody324_205 optimizedBody324_66

def optimizedBody324_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (54, 4), (50, 12), (8, 8), (46, 14), (6, 6), (52, 16), (56, 18), (0, 0), (10, 10), (48, 20)]

def optimizedBody324_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_207

def optimizedBody324_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_206 optimizedBody324_208

def optimizedBody324_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_35 optimizedBody324_209

def optimizedBody324_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_7 optimizedBody324_210

def optimizedBody324_212 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody324_211 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody324_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody324_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 160#64))

def optimizedBody324_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 168#64))

def optimizedBody324_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 8), (48, 0), (50, 10)]

def optimizedBody324_217 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody324_133, 324, 22)) (some 176) ([2, 4, 6]) (some (2, optimizedBody324_135, 324, 23))

def optimizedBody324_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_217 optimizedBody324_141

def optimizedBody324_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_216 optimizedBody324_218

def optimizedBody324_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_215 optimizedBody324_219

def optimizedBody324_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_4 optimizedBody324_220

def optimizedBody324_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_214 optimizedBody324_221

def optimizedBody324_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_4 optimizedBody324_222

def optimizedBody324_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_213 optimizedBody324_223

def optimizedBody324_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_179 optimizedBody324_224

def optimizedBody324_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_225

def optimizedBody324_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_212 optimizedBody324_226

def optimizedBody324_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_176 optimizedBody324_227

def optimizedBody324_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_228

def optimizedBody324_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_175 optimizedBody324_229

def optimizedBody324_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_230

def optimizedBody324_232 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody324_174 optimizedBody324_231

def optimizedBody324_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody324_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody324_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody324_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody324_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody324_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody324_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody324_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody324_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody324_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_240 optimizedBody324_241

def optimizedBody324_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_239 optimizedBody324_242

def optimizedBody324_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_238 optimizedBody324_243

def optimizedBody324_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_237 optimizedBody324_244

def optimizedBody324_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_236 optimizedBody324_245

def optimizedBody324_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_37 optimizedBody324_246

def optimizedBody324_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_235 optimizedBody324_247

def optimizedBody324_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_234 optimizedBody324_248

def optimizedBody324_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_233 optimizedBody324_249

def optimizedBody324_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_37 optimizedBody324_250

def optimizedBody324_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_251

def optimizedBody324_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_232 optimizedBody324_252

def optimizedBody324_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_117 optimizedBody324_253

def optimizedBody324_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_116 optimizedBody324_254

def optimizedBody324_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_255

def optimizedBody324_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_115 optimizedBody324_256

def optimizedBody324_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_111 optimizedBody324_257

def optimizedBody324_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_258

def optimizedBody324_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_110 optimizedBody324_259

def optimizedBody324_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_106 optimizedBody324_260

def optimizedBody324_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_81 optimizedBody324_261

def optimizedBody324_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_18 optimizedBody324_262

def optimizedBody324_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_263

def optimizedBody324_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_105 optimizedBody324_264

def optimizedBody324_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_101 optimizedBody324_265

def optimizedBody324_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_266

def optimizedBody324_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_100 optimizedBody324_267

def optimizedBody324_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_32 optimizedBody324_268

def optimizedBody324_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_7 optimizedBody324_269

def optimizedBody324_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_9 optimizedBody324_270

def optimizedBody324_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_31 optimizedBody324_271

def optimizedBody324_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_8 optimizedBody324_272

def optimizedBody324_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_7 optimizedBody324_273

def optimizedBody324_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_6 optimizedBody324_274

def optimizedBody324_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_4 optimizedBody324_275

def optimizedBody324_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_5 optimizedBody324_276

def optimizedBody324_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_4 optimizedBody324_277

def optimizedBody324_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_3 optimizedBody324_278

def optimizedBody324_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_2 optimizedBody324_279

def optimizedBody324_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_1 optimizedBody324_280

def optimizedBody324_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody324_0 optimizedBody324_281

def oracle324 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))
                  3
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 4
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 23 Flapjack.Spt.ln))))
              4
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 5
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4)))
                  3
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.ls 3))) 30
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 3)) 30
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 4)))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 7 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 1))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 3))) 3
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 4)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 5))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 4))) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 27)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 24 (Flapjack.Spt.ls 2)))))
              4
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 9)) 6
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 5)))
                  26
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 30 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 3)))
                  26 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 22 Flapjack.Spt.ln))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 Flapjack.Spt.ln))
                  24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 3)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 26 (Flapjack.Spt.ls 4))))
                4
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 0 Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 2))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 5))) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 (Flapjack.Spt.ls 1)))))
              5
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 10)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 23 (Flapjack.Spt.ls 0)))
                  25
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 4))) 28
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 23 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 30))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 4)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)) Flapjack.Spt.ln) 30
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 26)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 (Flapjack.Spt.ls 5))))
                7
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 26 (Flapjack.Spt.ls 28)) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 0)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1))) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22)) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 4)))))
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 24 Flapjack.Spt.ln))
                  28
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 28 (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 25 Flapjack.Spt.ln)) 25
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.ls 2)))
                  22
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)))
                1
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 3 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 3)))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 6)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 25 Flapjack.Spt.ln)))
                6
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                28 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 24)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 30 Flapjack.Spt.ln))
                25
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) (Flapjack.Spt.ls 24))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 25))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                26
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) (Flapjack.Spt.ls 22))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                24
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 26))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 23)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 23))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 30
                  Flapjack.Spt.ln))))))))
def optimized324 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(324, 3, optimizedBody324_282)
theorem optimize324_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source324, oracle324) = optimized324 := by
  conv => lhs; cbv
  try rfl
#print axioms optimize324_eq
end InitECandidate.Proofs.SmallStages.Thin324
