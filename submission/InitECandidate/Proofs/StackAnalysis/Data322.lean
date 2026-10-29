import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody322_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody322_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody322_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 2)]

def optimizedBody322_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 8 40#64))

def optimizedBody322_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody322_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody322_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 8 32#64))

def optimizedBody322_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody322_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody322_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody322_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody322_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody322_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 0), (44, 10), (46, 6), (50, 4), (52, 12), (56, 8), (60, 14)]

def optimizedBody322_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (4, 44), (6, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody322_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (4, 44), (6, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody322_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody322_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_14 optimizedBody322_15

def optimizedBody322_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody322_13, 322, 2)) (some 327) ([2]) (some (2, optimizedBody322_16, 322, 3))

def optimizedBody322_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody322_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody322_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (44, 0), (6, 6), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody322_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_19 optimizedBody322_20

def optimizedBody322_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_18 optimizedBody322_21

def optimizedBody322_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_22

def optimizedBody322_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_17 optimizedBody322_23

def optimizedBody322_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_12 optimizedBody322_24

def optimizedBody322_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_11 optimizedBody322_25

def optimizedBody322_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_10 optimizedBody322_26

def optimizedBody322_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_27

def optimizedBody322_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 0), (44, 10), (6, 6), (50, 4), (52, 12), (56, 8), (60, 14)]

def optimizedBody322_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_29

def optimizedBody322_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody322_28 optimizedBody322_30

def optimizedBody322_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 3#64)

def optimizedBody322_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody322_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (44, 44), (46, 6), (0, 50), (52, 52), (4, 4), (56, 56), (60, 60)]

def optimizedBody322_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody322_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody322_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody322_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody322_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody322_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (44, 44), (46, 46), (50, 0), (52, 52), (54, 4), (56, 56), (60, 60)]

def optimizedBody322_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (48, 48), (8, 44), (46, 46), (0, 50), (52, 52), (4, 54), (56, 56), (60, 60)]

def optimizedBody322_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (8, 44), (46, 46), (0, 50), (52, 52), (4, 54), (56, 56), (60, 60)]

def optimizedBody322_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_42 optimizedBody322_15

def optimizedBody322_44 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody322_41, 322, 4)) (some 327) ([2]) (some (2, optimizedBody322_43, 322, 5))

def optimizedBody322_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody322_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody322_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (44, 2)]

def optimizedBody322_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody322_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (44, 44), (46, 46), (0, 0), (52, 52), (4, 4), (56, 56), (60, 60)]

def optimizedBody322_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody322_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_49 optimizedBody322_50

def optimizedBody322_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_48 optimizedBody322_51

def optimizedBody322_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_47 optimizedBody322_52

def optimizedBody322_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_46 optimizedBody322_53

def optimizedBody322_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_45 optimizedBody322_54

def optimizedBody322_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_55

def optimizedBody322_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_44 optimizedBody322_56

def optimizedBody322_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_40 optimizedBody322_57

def optimizedBody322_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_39 optimizedBody322_58

def optimizedBody322_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_38 optimizedBody322_59

def optimizedBody322_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_37 optimizedBody322_60

def optimizedBody322_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_36 optimizedBody322_61

def optimizedBody322_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_10 optimizedBody322_62

def optimizedBody322_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_63

def optimizedBody322_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody322_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_65

def optimizedBody322_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 2) optimizedBody322_64 optimizedBody322_66

def optimizedBody322_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 2), (44, 6), (46, 8), (0, 0), (52, 10), (4, 4), (56, 12), (60, 14)]

def optimizedBody322_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_68

def optimizedBody322_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_67 optimizedBody322_69

def optimizedBody322_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_35 optimizedBody322_70

def optimizedBody322_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_10 optimizedBody322_71

def optimizedBody322_73 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) optimizedBody322_72 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody322_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 160#64))

def optimizedBody322_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 168#64))

def optimizedBody322_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (48, 48), (44, 44), (46, 46), (50, 0), (52, 52), (56, 56), (60, 60)]

def optimizedBody322_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (4, 44), (46, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody322_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (4, 44), (46, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody322_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_78 optimizedBody322_15

def optimizedBody322_80 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody322_77, 322, 6)) (some 326) ([2, 4]) (some (2, optimizedBody322_79, 322, 7))

def optimizedBody322_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody322_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (2, 2), (46, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody322_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_81 optimizedBody322_82

def optimizedBody322_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_18 optimizedBody322_83

def optimizedBody322_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_84

def optimizedBody322_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_80 optimizedBody322_85

def optimizedBody322_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_76 optimizedBody322_86

def optimizedBody322_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_75 optimizedBody322_87

def optimizedBody322_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_37 optimizedBody322_88

def optimizedBody322_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_74 optimizedBody322_89

def optimizedBody322_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_37 optimizedBody322_90

def optimizedBody322_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_91

def optimizedBody322_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_73 optimizedBody322_92

def optimizedBody322_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_34 optimizedBody322_93

def optimizedBody322_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_94

def optimizedBody322_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_33 optimizedBody322_95

def optimizedBody322_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_96

def optimizedBody322_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (2, 44), (46, 6), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody322_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_98

def optimizedBody322_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 0) optimizedBody322_97 optimizedBody322_99

def optimizedBody322_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (44, 2), (46, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody322_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (48, 48), (0, 44), (46, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody322_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (0, 44), (46, 46), (50, 50), (52, 52), (56, 56), (60, 60)]

def optimizedBody322_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_103 optimizedBody322_15

def optimizedBody322_105 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody322_102, 322, 8)) (some 180) ([2]) (some (2, optimizedBody322_104, 322, 9))

def optimizedBody322_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (44, 0), (46, 46), (50, 50), (52, 52), (54, 4), (56, 56), (60, 60)]

def optimizedBody322_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (4, 44), (44, 46), (50, 50), (46, 52), (52, 54), (56, 56), (60, 60)]

def optimizedBody322_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (4, 44), (44, 46), (50, 50), (46, 52), (52, 54), (56, 56), (60, 60)]

def optimizedBody322_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_108 optimizedBody322_15

def optimizedBody322_110 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody322_107, 322, 10)) (some 68) ([2]) (some (2, optimizedBody322_109, 322, 11))

def optimizedBody322_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (48, 48), (54, 4), (44, 44), (50, 50), (46, 46), (52, 52), (56, 56), (58, 0), (60, 60)]

def optimizedBody322_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(48, 48), (54, 54), (0, 44), (50, 50), (44, 46), (52, 52), (56, 56), (10, 58), (46, 60)]

def optimizedBody322_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (48, 48), (54, 54), (0, 44), (50, 50), (44, 46), (52, 52), (56, 56), (10, 58), (46, 60)]

def optimizedBody322_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_113 optimizedBody322_15

def optimizedBody322_115 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody322_112, 322, 12)) (some 178) ([2, 4]) (some (2, optimizedBody322_114, 322, 13))

def optimizedBody322_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 52)]

def optimizedBody322_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody322_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 52)]

def optimizedBody322_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 10)))

def optimizedBody322_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (6, 46), (44, 48), (46, 0), (48, 50), (50, 4), (52, 10)]

def optimizedBody322_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48), (8, 50), (10, 52)]

def optimizedBody322_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (8, 50), (10, 52)]

def optimizedBody322_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_122 optimizedBody322_15

def optimizedBody322_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody322_121, 322, 14)) (some 176) ([2, 4, 6]) (some (2, optimizedBody322_123, 322, 15))

def optimizedBody322_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody322_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody322_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody322_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody322_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody322_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody322_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody322_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 10)]

def optimizedBody322_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (10, 44), (0, 46), (8, 48), (4, 50)]

def optimizedBody322_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46), (8, 48), (4, 50)]

def optimizedBody322_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_134 optimizedBody322_15

def optimizedBody322_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody322_133, 322, 16)) (some 176) ([2, 4, 6]) (some (2, optimizedBody322_135, 322, 17))

def optimizedBody322_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody322_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0), (6, 6), (4, 4)]

def optimizedBody322_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_137 optimizedBody322_138

def optimizedBody322_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_45 optimizedBody322_139

def optimizedBody322_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_140

def optimizedBody322_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_136 optimizedBody322_141

def optimizedBody322_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_132 optimizedBody322_142

def optimizedBody322_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_131 optimizedBody322_143

def optimizedBody322_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_37 optimizedBody322_144

def optimizedBody322_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_130 optimizedBody322_145

def optimizedBody322_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_37 optimizedBody322_146

def optimizedBody322_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_129 optimizedBody322_147

def optimizedBody322_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_128 optimizedBody322_148

def optimizedBody322_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_149

def optimizedBody322_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody322_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody322_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 8), (50, 10)]

def optimizedBody322_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody322_133, 322, 18)) (some 329) ([2, 4]) (some (2, optimizedBody322_135, 322, 19))

def optimizedBody322_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_154 optimizedBody322_141

def optimizedBody322_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_153 optimizedBody322_155

def optimizedBody322_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_152 optimizedBody322_156

def optimizedBody322_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_128 optimizedBody322_157

def optimizedBody322_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_151 optimizedBody322_158

def optimizedBody322_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_37 optimizedBody322_159

def optimizedBody322_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_160

def optimizedBody322_162 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody322_150 optimizedBody322_161

def optimizedBody322_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_138

def optimizedBody322_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_162 optimizedBody322_163

def optimizedBody322_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_127 optimizedBody322_164

def optimizedBody322_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_126 optimizedBody322_165

def optimizedBody322_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_125 optimizedBody322_166

def optimizedBody322_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_45 optimizedBody322_167

def optimizedBody322_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_168

def optimizedBody322_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_124 optimizedBody322_169

def optimizedBody322_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_120 optimizedBody322_170

def optimizedBody322_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_119 optimizedBody322_171

def optimizedBody322_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_118 optimizedBody322_172

def optimizedBody322_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_173

def optimizedBody322_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody322_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 48), (54, 54), (50, 0), (8, 50), (46, 44), (6, 6), (52, 52), (56, 56), (0, 52), (10, 10), (48, 46)]

def optimizedBody322_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 6 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody322_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody322_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody322_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody322_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (54, 54), (50, 50), (46, 8), (48, 46), (52, 6), (56, 52), (58, 56), (60, 0), (62, 10),
    (64, 48)]

def optimizedBody322_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (12, 54), (14, 50), (8, 46), (16, 48), (4, 52), (18, 56), (20, 58), (6, 60), (10, 62), (22, 64)]

def optimizedBody322_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 54), (14, 50), (8, 46), (16, 48), (4, 52), (18, 56), (20, 58), (6, 60), (10, 62), (22, 64)]

def optimizedBody322_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_183 optimizedBody322_15

def optimizedBody322_185 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody322_182, 322, 20)) (some 329) ([2, 4]) (some (2, optimizedBody322_184, 322, 21))

def optimizedBody322_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody322_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody322_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody322_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (54, 12), (50, 14), (8, 8), (46, 16), (6, 6), (52, 18), (56, 20), (0, 0), (10, 10), (48, 22)]

def optimizedBody322_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_189 optimizedBody322_50

def optimizedBody322_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_188 optimizedBody322_190

def optimizedBody322_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_18 optimizedBody322_191

def optimizedBody322_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_187 optimizedBody322_192

def optimizedBody322_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_186 optimizedBody322_193

def optimizedBody322_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_194

def optimizedBody322_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_185 optimizedBody322_195

def optimizedBody322_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_181 optimizedBody322_196

def optimizedBody322_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_180 optimizedBody322_197

def optimizedBody322_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_179 optimizedBody322_198

def optimizedBody322_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_39 optimizedBody322_199

def optimizedBody322_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_178 optimizedBody322_200

def optimizedBody322_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_4 optimizedBody322_201

def optimizedBody322_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_177 optimizedBody322_202

def optimizedBody322_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_7 optimizedBody322_203

def optimizedBody322_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_204

def optimizedBody322_206 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.WordRegImm.reg 2) optimizedBody322_205 optimizedBody322_66

def optimizedBody322_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (54, 4), (50, 12), (8, 8), (46, 14), (6, 6), (52, 16), (56, 18), (0, 0), (10, 10), (48, 20)]

def optimizedBody322_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_207

def optimizedBody322_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_206 optimizedBody322_208

def optimizedBody322_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_35 optimizedBody322_209

def optimizedBody322_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_7 optimizedBody322_210

def optimizedBody322_212 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) optimizedBody322_211 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody322_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody322_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 160#64))

def optimizedBody322_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 168#64))

def optimizedBody322_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 8), (48, 0), (50, 10)]

def optimizedBody322_217 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody322_133, 322, 22)) (some 176) ([2, 4, 6]) (some (2, optimizedBody322_135, 322, 23))

def optimizedBody322_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_217 optimizedBody322_141

def optimizedBody322_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_216 optimizedBody322_218

def optimizedBody322_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_215 optimizedBody322_219

def optimizedBody322_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_4 optimizedBody322_220

def optimizedBody322_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_214 optimizedBody322_221

def optimizedBody322_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_4 optimizedBody322_222

def optimizedBody322_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_213 optimizedBody322_223

def optimizedBody322_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_179 optimizedBody322_224

def optimizedBody322_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_225

def optimizedBody322_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_212 optimizedBody322_226

def optimizedBody322_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_176 optimizedBody322_227

def optimizedBody322_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_228

def optimizedBody322_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_175 optimizedBody322_229

def optimizedBody322_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_230

def optimizedBody322_232 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody322_174 optimizedBody322_231

def optimizedBody322_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody322_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody322_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody322_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody322_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody322_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody322_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody322_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody322_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody322_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_240 optimizedBody322_241

def optimizedBody322_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_239 optimizedBody322_242

def optimizedBody322_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_238 optimizedBody322_243

def optimizedBody322_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_237 optimizedBody322_244

def optimizedBody322_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_236 optimizedBody322_245

def optimizedBody322_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_37 optimizedBody322_246

def optimizedBody322_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_235 optimizedBody322_247

def optimizedBody322_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_234 optimizedBody322_248

def optimizedBody322_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_233 optimizedBody322_249

def optimizedBody322_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_37 optimizedBody322_250

def optimizedBody322_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_251

def optimizedBody322_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_232 optimizedBody322_252

def optimizedBody322_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_117 optimizedBody322_253

def optimizedBody322_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_116 optimizedBody322_254

def optimizedBody322_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_255

def optimizedBody322_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_115 optimizedBody322_256

def optimizedBody322_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_111 optimizedBody322_257

def optimizedBody322_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_258

def optimizedBody322_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_110 optimizedBody322_259

def optimizedBody322_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_106 optimizedBody322_260

def optimizedBody322_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_81 optimizedBody322_261

def optimizedBody322_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_18 optimizedBody322_262

def optimizedBody322_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_263

def optimizedBody322_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_105 optimizedBody322_264

def optimizedBody322_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_101 optimizedBody322_265

def optimizedBody322_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_266

def optimizedBody322_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_100 optimizedBody322_267

def optimizedBody322_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_32 optimizedBody322_268

def optimizedBody322_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_7 optimizedBody322_269

def optimizedBody322_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_9 optimizedBody322_270

def optimizedBody322_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_31 optimizedBody322_271

def optimizedBody322_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_8 optimizedBody322_272

def optimizedBody322_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_7 optimizedBody322_273

def optimizedBody322_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_6 optimizedBody322_274

def optimizedBody322_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_4 optimizedBody322_275

def optimizedBody322_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_5 optimizedBody322_276

def optimizedBody322_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_4 optimizedBody322_277

def optimizedBody322_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_3 optimizedBody322_278

def optimizedBody322_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_2 optimizedBody322_279

def optimizedBody322_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_1 optimizedBody322_280

def optimizedBody322_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody322_0 optimizedBody322_281

def optimized322 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(322, 3, optimizedBody322_282)
end InitECandidate.Proofs.StackAnalysis
