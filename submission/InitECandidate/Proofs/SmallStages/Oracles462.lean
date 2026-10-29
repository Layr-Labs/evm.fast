import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source462
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles462
def optimizedBody462_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody462_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody462_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody462_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody462_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551440#64))

def optimizedBody462_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody462_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody462_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody462_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody462_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody462_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (52, 2), (6, 6), (4, 4)]

def optimizedBody462_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody462_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 52), (4, 4), (44, 44), (52, 52), (46, 6), (48, 4)]

def optimizedBody462_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (52, 52), (46, 46), (48, 48)]

def optimizedBody462_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (48, 48)]

def optimizedBody462_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody462_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_14 optimizedBody462_15

def optimizedBody462_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody462_13, 462, 2)) (some 196) ([2, 4]) (some (2, optimizedBody462_16, 462, 3))

def optimizedBody462_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody462_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody462_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody462_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 20#64)))

def optimizedBody462_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 52), (46, 46), (48, 48)]

def optimizedBody462_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (6, 46), (0, 48)]

def optimizedBody462_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (6, 46), (0, 48)]

def optimizedBody462_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_24 optimizedBody462_15

def optimizedBody462_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody462_23, 462, 4)) (some 444) ([2, 4]) (some (2, optimizedBody462_25, 462, 5))

def optimizedBody462_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (6, 6), (0, 0)]

def optimizedBody462_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_27

def optimizedBody462_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_26 optimizedBody462_28

def optimizedBody462_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_22 optimizedBody462_29

def optimizedBody462_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_21 optimizedBody462_30

def optimizedBody462_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_20 optimizedBody462_31

def optimizedBody462_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_32

def optimizedBody462_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (6, 46), (0, 48)]

def optimizedBody462_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_34

def optimizedBody462_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody462_33 optimizedBody462_35

def optimizedBody462_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody462_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (6, 6), (4, 4)]

def optimizedBody462_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody462_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_38 optimizedBody462_39

def optimizedBody462_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_37 optimizedBody462_40

def optimizedBody462_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_18 optimizedBody462_41

def optimizedBody462_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_42

def optimizedBody462_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_36 optimizedBody462_43

def optimizedBody462_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_19 optimizedBody462_44

def optimizedBody462_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_18 optimizedBody462_45

def optimizedBody462_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_46

def optimizedBody462_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_17 optimizedBody462_47

def optimizedBody462_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_12 optimizedBody462_48

def optimizedBody462_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_49

def optimizedBody462_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody462_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_51

def optimizedBody462_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 6) optimizedBody462_50 optimizedBody462_52

def optimizedBody462_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (52, 2), (6, 6), (4, 4)]

def optimizedBody462_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_54

def optimizedBody462_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_53 optimizedBody462_55

def optimizedBody462_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_11 optimizedBody462_56

def optimizedBody462_58 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln) optimizedBody462_57 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody462_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody462_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody462_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody462_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def optimizedBody462_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody462_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody462_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (56, 0), (54, 2), (4, 4)]

def optimizedBody462_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 54), (4, 4)]

def optimizedBody462_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 56), (4, 4), (44, 44), (52, 52), (56, 56), (54, 0), (46, 4)]

def optimizedBody462_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (44, 44), (52, 52), (56, 56), (54, 54), (46, 46)]

def optimizedBody462_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (56, 56), (54, 54), (46, 46)]

def optimizedBody462_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_69 optimizedBody462_15

def optimizedBody462_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody462_68, 462, 6)) (some 196) ([2, 4]) (some (2, optimizedBody462_70, 462, 7))

def optimizedBody462_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 44), (52, 52), (56, 56), (54, 54), (46, 46)]

def optimizedBody462_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (56, 56), (54, 54), (0, 46)]

def optimizedBody462_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (56, 56), (54, 54), (0, 46)]

def optimizedBody462_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_74 optimizedBody462_15

def optimizedBody462_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody462_73, 462, 8)) (some 448) ([2]) (some (2, optimizedBody462_75, 462, 9))

def optimizedBody462_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (56, 56), (54, 54), (0, 0)]

def optimizedBody462_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_77

def optimizedBody462_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_76 optimizedBody462_78

def optimizedBody462_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_72 optimizedBody462_79

def optimizedBody462_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_80

def optimizedBody462_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (56, 56), (54, 54), (0, 46)]

def optimizedBody462_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_82

def optimizedBody462_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody462_81 optimizedBody462_83

def optimizedBody462_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (56, 56), (54, 54), (4, 4)]

def optimizedBody462_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_85 optimizedBody462_39

def optimizedBody462_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_37 optimizedBody462_86

def optimizedBody462_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_18 optimizedBody462_87

def optimizedBody462_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_88

def optimizedBody462_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_84 optimizedBody462_89

def optimizedBody462_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_19 optimizedBody462_90

def optimizedBody462_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_18 optimizedBody462_91

def optimizedBody462_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_92

def optimizedBody462_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_71 optimizedBody462_93

def optimizedBody462_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_67 optimizedBody462_94

def optimizedBody462_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_95

def optimizedBody462_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(54, 0)]

def optimizedBody462_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_97 optimizedBody462_51

def optimizedBody462_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_98

def optimizedBody462_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 0) optimizedBody462_96 optimizedBody462_99

def optimizedBody462_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (52, 2), (56, 6), (54, 8), (4, 4)]

def optimizedBody462_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_101

def optimizedBody462_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_100 optimizedBody462_102

def optimizedBody462_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_66 optimizedBody462_103

def optimizedBody462_105 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
  Flapjack.Spt.ln) optimizedBody462_104 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
  Flapjack.Spt.ln)

def optimizedBody462_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody462_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (56, 56), (54, 54)]

def optimizedBody462_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (52, 52), (56, 56), (54, 54)]

def optimizedBody462_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_107 optimizedBody462_15

def optimizedBody462_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody462_108, 462, 10)) (some 68) ([2]) (some (2, optimizedBody462_109, 462, 11))

def optimizedBody462_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551400#64))

def optimizedBody462_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (56, 56), (54, 54), (46, 0)]

def optimizedBody462_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (52, 52), (56, 56), (54, 54), (10, 46)]

def optimizedBody462_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (56, 56), (54, 54), (10, 46)]

def optimizedBody462_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_114 optimizedBody462_15

def optimizedBody462_116 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody462_113, 462, 12)) (some 197) ([2]) (some (2, optimizedBody462_115, 462, 13))

def optimizedBody462_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4), (2, 0)]

def optimizedBody462_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody462_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 24#64)

def optimizedBody462_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 2), (48, 4), (52, 52), (56, 56), (54, 54), (58, 10)]

def optimizedBody462_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (52, 52), (56, 56), (54, 54), (58, 58)]

def optimizedBody462_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (52, 52), (56, 56), (54, 54), (58, 58)]

def optimizedBody462_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_122 optimizedBody462_15

def optimizedBody462_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody462_121, 462, 14)) (some 459) ([2, 4, 6, 8, 10]) (some (2, optimizedBody462_123, 462, 15))

def optimizedBody462_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1024#64)

def optimizedBody462_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody462_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 0), (48, 4), (52, 52), (56, 56), (54, 54), (58, 58), (50, 2), (8, 8)]

def optimizedBody462_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 48), (8, 8)]

def optimizedBody462_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody462_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 24#64)

def optimizedBody462_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody462_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody462_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 46), (0, 0)]

def optimizedBody462_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody462_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (48, 6), (50, 10), (52, 52), (56, 56), (54, 54), (58, 58), (46, 50), (60, 8)]

def optimizedBody462_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 2), (4, 4), (44, 44), (48, 48), (50, 50), (52, 52), (56, 56), (54, 54), (58, 58), (8, 46), (60, 60)]

def optimizedBody462_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52), (56, 56), (54, 54), (58, 58), (8, 46), (60, 60)]

def optimizedBody462_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_137 optimizedBody462_15

def optimizedBody462_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody462_136, 462, 16)) (some 186) ([2, 4]) (some (2, optimizedBody462_138, 462, 17))

def optimizedBody462_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody462_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody462_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 40#64)

def optimizedBody462_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody462_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0)]

def optimizedBody462_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody462_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody462_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody462_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody462_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 12 24#64))

def optimizedBody462_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 96#64)

def optimizedBody462_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 10), (4, 4)]

def optimizedBody462_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 12), (62, 2), (64, 0)]

def optimizedBody462_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (12, 12), (46, 14), (48, 48), (50, 50), (52, 52), (56, 56), (54, 54), (58, 58), (66, 62), (4, 4), (64, 64),
    (60, 60), (62, 62), (10, 10)]

def optimizedBody462_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4)]

def optimizedBody462_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 12), (4, 4), (44, 44), (46, 12), (48, 46), (50, 48), (52, 50), (54, 52), (56, 56), (58, 54), (60, 58), (66, 66),
    (62, 4), (64, 64), (68, 60), (70, 62), (72, 10)]

def optimizedBody462_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (6, 6), (44, 44), (12, 46), (22, 48), (48, 50), (50, 52), (52, 54), (56, 56), (54, 58), (58, 60), (20, 66),
    (14, 62), (8, 64), (18, 68), (16, 70), (10, 72)]

def optimizedBody462_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (22, 48), (48, 50), (50, 52), (52, 54), (56, 56), (54, 58), (58, 60), (20, 66), (14, 62),
    (8, 64), (18, 68), (16, 70), (10, 72)]

def optimizedBody462_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_157 optimizedBody462_15

def optimizedBody462_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody462_156, 462, 18)) (some 196) ([2, 4]) (some (2, optimizedBody462_158, 462, 19))

def optimizedBody462_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody462_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody462_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 48#64)

def optimizedBody462_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody462_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody462_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_163 optimizedBody462_164

def optimizedBody462_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_144 optimizedBody462_165

def optimizedBody462_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_132 optimizedBody462_166

def optimizedBody462_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_143 optimizedBody462_167

def optimizedBody462_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_162 optimizedBody462_168

def optimizedBody462_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_161 optimizedBody462_169

def optimizedBody462_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_160 optimizedBody462_170

def optimizedBody462_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_171

def optimizedBody462_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_164

def optimizedBody462_174 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody462_172 optimizedBody462_173

def optimizedBody462_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody462_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody462_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (12, 12), (46, 22), (48, 48), (50, 50), (52, 52), (56, 56), (54, 54), (58, 58), (66, 20), (4, 4), (64, 8),
    (60, 18), (62, 16), (10, 10)]

def optimizedBody462_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_177 optimizedBody462_39

def optimizedBody462_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_176 optimizedBody462_178

def optimizedBody462_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_175 optimizedBody462_179

def optimizedBody462_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_180

def optimizedBody462_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_174 optimizedBody462_181

def optimizedBody462_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_19 optimizedBody462_182

def optimizedBody462_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_18 optimizedBody462_183

def optimizedBody462_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_184

def optimizedBody462_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_159 optimizedBody462_185

def optimizedBody462_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_155 optimizedBody462_186

def optimizedBody462_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_187

def optimizedBody462_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10)]

def optimizedBody462_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_189 optimizedBody462_51

def optimizedBody462_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_190

def optimizedBody462_192 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 10) optimizedBody462_188 optimizedBody462_191

def optimizedBody462_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (12, 12), (46, 2), (48, 6), (50, 8), (52, 14), (56, 16), (54, 18), (58, 20), (66, 22), (4, 4), (64, 24),
    (60, 26), (62, 28), (10, 10)]

def optimizedBody462_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_193

def optimizedBody462_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_192 optimizedBody462_194

def optimizedBody462_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_154 optimizedBody462_195

def optimizedBody462_197 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln) optimizedBody462_196 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln)

def optimizedBody462_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 66)]

def optimizedBody462_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody462_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 64), (0, 0)]

def optimizedBody462_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody462_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody462_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody462_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (22, 22)]

def optimizedBody462_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody462_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody462_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 16 8#64))

def optimizedBody462_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody462_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody462_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (12, 12), (26, 46), (46, 48), (20, 20), (48, 50), (52, 52), (56, 56), (16, 16), (54, 54), (58, 58), (2, 2),
    (14, 14), (22, 22), (8, 60), (24, 62), (10, 10), (18, 18)]

def optimizedBody462_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (14, 14)]

def optimizedBody462_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 14), (4, 4)]

def optimizedBody462_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18), (0, 0)]

def optimizedBody462_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 18)))

def optimizedBody462_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody462_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody462_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 22)))

def optimizedBody462_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody462_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (22, 22)]

def optimizedBody462_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody462_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20), (14, 14), (22, 22), (18, 18)]

def optimizedBody462_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_221 optimizedBody462_39

def optimizedBody462_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_220 optimizedBody462_222

def optimizedBody462_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_219 optimizedBody462_223

def optimizedBody462_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_218 optimizedBody462_224

def optimizedBody462_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_217 optimizedBody462_225

def optimizedBody462_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_216 optimizedBody462_226

def optimizedBody462_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_215 optimizedBody462_227

def optimizedBody462_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_214 optimizedBody462_228

def optimizedBody462_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_213 optimizedBody462_229

def optimizedBody462_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_132 optimizedBody462_230

def optimizedBody462_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_212 optimizedBody462_231

def optimizedBody462_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_130 optimizedBody462_232

def optimizedBody462_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_175 optimizedBody462_233

def optimizedBody462_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_234

def optimizedBody462_236 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 20) optimizedBody462_235 optimizedBody462_52

def optimizedBody462_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_221

def optimizedBody462_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_236 optimizedBody462_237

def optimizedBody462_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_211 optimizedBody462_238

def optimizedBody462_240 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody462_239 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody462_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody462_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (48, 48), (52, 52), (56, 56), (54, 54), (58, 58), (50, 22), (8, 8)]

def optimizedBody462_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_242 optimizedBody462_39

def optimizedBody462_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_241 optimizedBody462_243

def optimizedBody462_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_129 optimizedBody462_244

def optimizedBody462_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_245

def optimizedBody462_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_240 optimizedBody462_246

def optimizedBody462_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_210 optimizedBody462_247

def optimizedBody462_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_248

def optimizedBody462_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_209 optimizedBody462_249

def optimizedBody462_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_208 optimizedBody462_250

def optimizedBody462_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_206 optimizedBody462_251

def optimizedBody462_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_207 optimizedBody462_252

def optimizedBody462_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_206 optimizedBody462_253

def optimizedBody462_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_205 optimizedBody462_254

def optimizedBody462_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_204 optimizedBody462_255

def optimizedBody462_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_203 optimizedBody462_256

def optimizedBody462_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_144 optimizedBody462_257

def optimizedBody462_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_132 optimizedBody462_258

def optimizedBody462_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_143 optimizedBody462_259

def optimizedBody462_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_130 optimizedBody462_260

def optimizedBody462_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_63 optimizedBody462_261

def optimizedBody462_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_202 optimizedBody462_262

def optimizedBody462_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_147 optimizedBody462_263

def optimizedBody462_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_201 optimizedBody462_264

def optimizedBody462_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_200 optimizedBody462_265

def optimizedBody462_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_132 optimizedBody462_266

def optimizedBody462_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_143 optimizedBody462_267

def optimizedBody462_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_162 optimizedBody462_268

def optimizedBody462_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_63 optimizedBody462_269

def optimizedBody462_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_199 optimizedBody462_270

def optimizedBody462_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_198 optimizedBody462_271

def optimizedBody462_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_272

def optimizedBody462_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_197 optimizedBody462_273

def optimizedBody462_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_153 optimizedBody462_274

def optimizedBody462_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_275

def optimizedBody462_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_8 optimizedBody462_276

def optimizedBody462_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_152 optimizedBody462_277

def optimizedBody462_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_145 optimizedBody462_278

def optimizedBody462_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_144 optimizedBody462_279

def optimizedBody462_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_132 optimizedBody462_280

def optimizedBody462_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_151 optimizedBody462_281

def optimizedBody462_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_150 optimizedBody462_282

def optimizedBody462_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_149 optimizedBody462_283

def optimizedBody462_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_148 optimizedBody462_284

def optimizedBody462_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_147 optimizedBody462_285

def optimizedBody462_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_146 optimizedBody462_286

def optimizedBody462_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_145 optimizedBody462_287

def optimizedBody462_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_144 optimizedBody462_288

def optimizedBody462_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_132 optimizedBody462_289

def optimizedBody462_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_143 optimizedBody462_290

def optimizedBody462_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_142 optimizedBody462_291

def optimizedBody462_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_141 optimizedBody462_292

def optimizedBody462_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_140 optimizedBody462_293

def optimizedBody462_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_20 optimizedBody462_294

def optimizedBody462_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_295

def optimizedBody462_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_139 optimizedBody462_296

def optimizedBody462_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_135 optimizedBody462_297

def optimizedBody462_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_134 optimizedBody462_298

def optimizedBody462_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_133 optimizedBody462_299

def optimizedBody462_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_111 optimizedBody462_300

def optimizedBody462_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_3 optimizedBody462_301

def optimizedBody462_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_2 optimizedBody462_302

def optimizedBody462_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_1 optimizedBody462_303

def optimizedBody462_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_0 optimizedBody462_304

def optimizedBody462_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_132 optimizedBody462_305

def optimizedBody462_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_131 optimizedBody462_306

def optimizedBody462_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_130 optimizedBody462_307

def optimizedBody462_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_129 optimizedBody462_308

def optimizedBody462_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_309

def optimizedBody462_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 10)]

def optimizedBody462_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_311 optimizedBody462_51

def optimizedBody462_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_312

def optimizedBody462_314 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 10) optimizedBody462_310 optimizedBody462_313

def optimizedBody462_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2), (48, 4), (52, 6), (56, 10), (54, 12), (58, 14), (50, 16), (8, 8)]

def optimizedBody462_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_315

def optimizedBody462_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_314 optimizedBody462_316

def optimizedBody462_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_128 optimizedBody462_317

def optimizedBody462_319 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody462_318 (Flapjack.Spt.bn
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
  Flapjack.Spt.ln)

def optimizedBody462_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 50)]

def optimizedBody462_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody462_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (56, 56), (54, 54), (58, 58), (50, 0)]

def optimizedBody462_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (10, 46), (12, 48), (52, 52), (56, 56), (54, 54), (58, 58), (50, 50)]

def optimizedBody462_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (12, 48), (52, 52), (56, 56), (54, 54), (58, 58), (50, 50)]

def optimizedBody462_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_324 optimizedBody462_15

def optimizedBody462_326 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody462_323, 462, 20)) (some 68) ([2]) (some (2, optimizedBody462_325, 462, 21))

def optimizedBody462_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody462_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 0), (10, 10), (12, 12), (52, 52), (56, 56), (54, 54), (58, 58), (50, 50), (8, 8), (48, 2)]

def optimizedBody462_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8)]

def optimizedBody462_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody462_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody462_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 10), (50, 12), (52, 52), (54, 56), (56, 54), (58, 58), (60, 50), (62, 8),
    (64, 48)]

def optimizedBody462_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 4), (44, 44), (46, 46), (12, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58), (60, 60), (14, 62), (10, 64)]

def optimizedBody462_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (12, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58), (60, 60), (14, 62), (10, 64)]

def optimizedBody462_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_334 optimizedBody462_15

def optimizedBody462_336 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody462_333, 462, 22)) (some 186) ([2, 4]) (some (2, optimizedBody462_335, 462, 23))

def optimizedBody462_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (0, 0), (10, 10)]

def optimizedBody462_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody462_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 16), (8, 8), (44, 44), (46, 46), (48, 12), (50, 50), (52, 52), (54, 54), (56, 56), (58, 8),
    (60, 60), (62, 14), (64, 10)]

def optimizedBody462_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (14, 46), (10, 48), (12, 50), (16, 52), (18, 54), (20, 56), (22, 58), (24, 60), (4, 62), (6, 64)]

def optimizedBody462_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (14, 46), (10, 48), (12, 50), (16, 52), (18, 54), (20, 56), (22, 58), (24, 60), (4, 62), (6, 64)]

def optimizedBody462_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_341 optimizedBody462_15

def optimizedBody462_343 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody462_340, 462, 24)) (some 461) ([2, 4, 6, 8]) (some (2, optimizedBody462_342, 462, 25))

def optimizedBody462_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody462_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody462_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody462_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody462_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 14), (10, 10), (12, 12), (52, 16), (56, 18), (54, 20), (58, 22), (50, 24), (8, 8), (48, 0)]

def optimizedBody462_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_348 optimizedBody462_39

def optimizedBody462_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_347 optimizedBody462_349

def optimizedBody462_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_346 optimizedBody462_350

def optimizedBody462_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_345 optimizedBody462_351

def optimizedBody462_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_344 optimizedBody462_352

def optimizedBody462_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_353

def optimizedBody462_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_343 optimizedBody462_354

def optimizedBody462_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_339 optimizedBody462_355

def optimizedBody462_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_338 optimizedBody462_356

def optimizedBody462_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_337 optimizedBody462_357

def optimizedBody462_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_132 optimizedBody462_358

def optimizedBody462_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_212 optimizedBody462_359

def optimizedBody462_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_130 optimizedBody462_360

def optimizedBody462_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_175 optimizedBody462_361

def optimizedBody462_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_362

def optimizedBody462_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_336 optimizedBody462_363

def optimizedBody462_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_332 optimizedBody462_364

def optimizedBody462_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_331 optimizedBody462_365

def optimizedBody462_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_330 optimizedBody462_366

def optimizedBody462_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_111 optimizedBody462_367

def optimizedBody462_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_3 optimizedBody462_368

def optimizedBody462_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_2 optimizedBody462_369

def optimizedBody462_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_1 optimizedBody462_370

def optimizedBody462_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_0 optimizedBody462_371

def optimizedBody462_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_132 optimizedBody462_372

def optimizedBody462_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_131 optimizedBody462_373

def optimizedBody462_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_130 optimizedBody462_374

def optimizedBody462_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_129 optimizedBody462_375

def optimizedBody462_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_376

def optimizedBody462_378 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 12) optimizedBody462_377 optimizedBody462_52

def optimizedBody462_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (46, 2), (10, 10), (12, 12), (52, 4), (56, 6), (54, 14), (58, 16), (50, 18), (8, 8), (48, 20)]

def optimizedBody462_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_379

def optimizedBody462_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_378 optimizedBody462_380

def optimizedBody462_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_329 optimizedBody462_381

def optimizedBody462_383 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody462_382 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody462_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46), (2, 48)]

def optimizedBody462_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody462_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody462_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 2)]

def optimizedBody462_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody462_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody462_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_389 optimizedBody462_15

def optimizedBody462_391 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody462_388, 462, 26)) (some 180) ([2]) (some (2, optimizedBody462_390, 462, 27))

def optimizedBody462_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody462_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody462_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 4), (50, 2)]

def optimizedBody462_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (6, 46), (4, 48), (0, 50)]

def optimizedBody462_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46), (4, 48), (0, 50)]

def optimizedBody462_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_396 optimizedBody462_15

def optimizedBody462_398 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody462_395, 462, 28)) (some 178) ([2, 4]) (some (2, optimizedBody462_397, 462, 29))

def optimizedBody462_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4), (0, 0)]

def optimizedBody462_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody462_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0), (4, 4)]

def optimizedBody462_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4]

def optimizedBody462_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_401 optimizedBody462_402

def optimizedBody462_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_400 optimizedBody462_403

def optimizedBody462_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_399 optimizedBody462_404

def optimizedBody462_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_405

def optimizedBody462_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_398 optimizedBody462_406

def optimizedBody462_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_394 optimizedBody462_407

def optimizedBody462_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_393 optimizedBody462_408

def optimizedBody462_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_18 optimizedBody462_409

def optimizedBody462_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_392 optimizedBody462_410

def optimizedBody462_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_160 optimizedBody462_411

def optimizedBody462_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_412

def optimizedBody462_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_391 optimizedBody462_413

def optimizedBody462_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_387 optimizedBody462_414

def optimizedBody462_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_386 optimizedBody462_415

def optimizedBody462_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_385 optimizedBody462_416

def optimizedBody462_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_384 optimizedBody462_417

def optimizedBody462_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_418

def optimizedBody462_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_383 optimizedBody462_419

def optimizedBody462_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_328 optimizedBody462_420

def optimizedBody462_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_421

def optimizedBody462_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_126 optimizedBody462_422

def optimizedBody462_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_327 optimizedBody462_423

def optimizedBody462_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_18 optimizedBody462_424

def optimizedBody462_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_425

def optimizedBody462_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_326 optimizedBody462_426

def optimizedBody462_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_322 optimizedBody462_427

def optimizedBody462_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_321 optimizedBody462_428

def optimizedBody462_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_320 optimizedBody462_429

def optimizedBody462_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_430

def optimizedBody462_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_319 optimizedBody462_431

def optimizedBody462_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_127 optimizedBody462_432

def optimizedBody462_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_433

def optimizedBody462_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_126 optimizedBody462_434

def optimizedBody462_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_125 optimizedBody462_435

def optimizedBody462_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_436

def optimizedBody462_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_124 optimizedBody462_437

def optimizedBody462_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_120 optimizedBody462_438

def optimizedBody462_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_119 optimizedBody462_439

def optimizedBody462_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_118 optimizedBody462_440

def optimizedBody462_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_117 optimizedBody462_441

def optimizedBody462_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_442

def optimizedBody462_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_116 optimizedBody462_443

def optimizedBody462_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_112 optimizedBody462_444

def optimizedBody462_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_111 optimizedBody462_445

def optimizedBody462_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_3 optimizedBody462_446

def optimizedBody462_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_2 optimizedBody462_447

def optimizedBody462_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_1 optimizedBody462_448

def optimizedBody462_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_449

def optimizedBody462_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_110 optimizedBody462_450

def optimizedBody462_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_107 optimizedBody462_451

def optimizedBody462_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_106 optimizedBody462_452

def optimizedBody462_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_453

def optimizedBody462_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_105 optimizedBody462_454

def optimizedBody462_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_65 optimizedBody462_455

def optimizedBody462_457 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_456

def optimizedBody462_458 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_8 optimizedBody462_457

def optimizedBody462_459 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_64 optimizedBody462_458

def optimizedBody462_460 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_18 optimizedBody462_459

def optimizedBody462_461 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_63 optimizedBody462_460

def optimizedBody462_462 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_62 optimizedBody462_461

def optimizedBody462_463 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_61 optimizedBody462_462

def optimizedBody462_464 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_60 optimizedBody462_463

def optimizedBody462_465 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_59 optimizedBody462_464

def optimizedBody462_466 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_465

def optimizedBody462_467 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_58 optimizedBody462_466

def optimizedBody462_468 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_10 optimizedBody462_467

def optimizedBody462_469 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_9 optimizedBody462_468

def optimizedBody462_470 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_8 optimizedBody462_469

def optimizedBody462_471 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_7 optimizedBody462_470

def optimizedBody462_472 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_6 optimizedBody462_471

def optimizedBody462_473 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_5 optimizedBody462_472

def optimizedBody462_474 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_4 optimizedBody462_473

def optimizedBody462_475 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_3 optimizedBody462_474

def optimizedBody462_476 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_2 optimizedBody462_475

def optimizedBody462_477 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_1 optimizedBody462_476

def optimizedBody462_478 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody462_0 optimizedBody462_477

def oracle462 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 11)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 2
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 29))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                  24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 2 Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 4 (Flapjack.Spt.ls 5)) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 7)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 26
                    (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 2)) 1 (Flapjack.Spt.ls 24)) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 28 (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 32))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2))))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 6))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 28
                    (Flapjack.Spt.ls 1))
                  26
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6))) 27
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  0
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1 (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 29 (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 28))))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 22 (Flapjack.Spt.ls 31))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 Flapjack.Spt.ln)))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 4 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 28))))
                  26
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 12)) 0 (Flapjack.Spt.ls 4))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 1
                    Flapjack.Spt.ln))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)))
                    26
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 2 (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23))))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 33)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 0))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) 28
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8)) (Flapjack.Spt.ls 27))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 0 (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1 (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 10))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 27))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 22))) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 27
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                26
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 27))))
                  23
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 5))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) Flapjack.Spt.ln)))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 2)) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 5))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) (Flapjack.Spt.ls 29)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 22 Flapjack.Spt.ln) 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6))))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 28
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0))))
                  2
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 27 (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 30)) (Flapjack.Spt.ls 26)))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 5 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 26))))
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 11))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6))) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) Flapjack.Spt.ln)))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 5)))
                    3 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 24)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))))
                  0
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 27 (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.ls 28)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 22 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.ls 26))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))) 26
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                    Flapjack.Spt.ln)
                  24
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 24)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 35))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln) 24
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 28)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))) 27
                    Flapjack.Spt.ln)
                  26
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln) 26
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 22
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))) 23
                    Flapjack.Spt.ln)
                  23
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 34)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 36))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 28
                    Flapjack.Spt.ln)
                  22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  22 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))))))))
def optimized462 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(462, 1, optimizedBody462_478)
end InitECandidate.Proofs.SmallStages.Oracles462
