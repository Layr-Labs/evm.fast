import InitECandidate.Proofs.WordStages.Optimize444
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source460
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody460_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody460_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody460_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody460_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody460_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551440#64))

def optimizedBody460_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody460_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody460_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody460_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody460_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody460_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (52, 2), (6, 6), (4, 4)]

def optimizedBody460_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody460_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 52), (4, 4), (44, 44), (52, 52), (46, 6), (48, 4)]

def optimizedBody460_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (52, 52), (46, 46), (48, 48)]

def optimizedBody460_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (48, 48)]

def optimizedBody460_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody460_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_14 optimizedBody460_15

def optimizedBody460_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody460_13, 460, 2)) (some 197) ([2, 4]) (some (2, optimizedBody460_16, 460, 3))

def optimizedBody460_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody460_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody460_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody460_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 20#64)))

def optimizedBody460_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 52), (46, 46), (48, 48)]

def optimizedBody460_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (6, 46), (0, 48)]

def optimizedBody460_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (6, 46), (0, 48)]

def optimizedBody460_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_24 optimizedBody460_15

def optimizedBody460_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody460_23, 460, 4)) (some 442) ([2, 4]) (some (2, optimizedBody460_25, 460, 5))

def optimizedBody460_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (6, 6), (0, 0)]

def optimizedBody460_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_27

def optimizedBody460_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_26 optimizedBody460_28

def optimizedBody460_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_22 optimizedBody460_29

def optimizedBody460_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_21 optimizedBody460_30

def optimizedBody460_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_20 optimizedBody460_31

def optimizedBody460_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_32

def optimizedBody460_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (6, 46), (0, 48)]

def optimizedBody460_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_34

def optimizedBody460_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody460_33 optimizedBody460_35

def optimizedBody460_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody460_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (6, 6), (4, 4)]

def optimizedBody460_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody460_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_38 optimizedBody460_39

def optimizedBody460_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_37 optimizedBody460_40

def optimizedBody460_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_18 optimizedBody460_41

def optimizedBody460_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_42

def optimizedBody460_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_36 optimizedBody460_43

def optimizedBody460_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_19 optimizedBody460_44

def optimizedBody460_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_18 optimizedBody460_45

def optimizedBody460_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_46

def optimizedBody460_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_17 optimizedBody460_47

def optimizedBody460_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_12 optimizedBody460_48

def optimizedBody460_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_49

def optimizedBody460_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody460_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_51

def optimizedBody460_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 6) optimizedBody460_50 optimizedBody460_52

def optimizedBody460_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (52, 2), (6, 6), (4, 4)]

def optimizedBody460_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_54

def optimizedBody460_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_53 optimizedBody460_55

def optimizedBody460_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_11 optimizedBody460_56

def optimizedBody460_58 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln) optimizedBody460_57 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody460_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody460_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody460_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody460_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def optimizedBody460_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody460_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody460_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (56, 0), (54, 2), (4, 4)]

def optimizedBody460_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 54), (4, 4)]

def optimizedBody460_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 56), (4, 4), (44, 44), (52, 52), (56, 56), (54, 0), (46, 4)]

def optimizedBody460_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (44, 44), (52, 52), (56, 56), (54, 54), (46, 46)]

def optimizedBody460_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (56, 56), (54, 54), (46, 46)]

def optimizedBody460_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_69 optimizedBody460_15

def optimizedBody460_71 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody460_68, 460, 6)) (some 197) ([2, 4]) (some (2, optimizedBody460_70, 460, 7))

def optimizedBody460_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 44), (52, 52), (56, 56), (54, 54), (46, 46)]

def optimizedBody460_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (56, 56), (54, 54), (0, 46)]

def optimizedBody460_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (56, 56), (54, 54), (0, 46)]

def optimizedBody460_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_74 optimizedBody460_15

def optimizedBody460_76 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody460_73, 460, 8)) (some 446) ([2]) (some (2, optimizedBody460_75, 460, 9))

def optimizedBody460_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (56, 56), (54, 54), (0, 0)]

def optimizedBody460_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_77

def optimizedBody460_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_76 optimizedBody460_78

def optimizedBody460_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_72 optimizedBody460_79

def optimizedBody460_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_80

def optimizedBody460_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (56, 56), (54, 54), (0, 46)]

def optimizedBody460_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_82

def optimizedBody460_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody460_81 optimizedBody460_83

def optimizedBody460_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (52, 52), (56, 56), (54, 54), (4, 4)]

def optimizedBody460_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_85 optimizedBody460_39

def optimizedBody460_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_37 optimizedBody460_86

def optimizedBody460_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_18 optimizedBody460_87

def optimizedBody460_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_88

def optimizedBody460_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_84 optimizedBody460_89

def optimizedBody460_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_19 optimizedBody460_90

def optimizedBody460_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_18 optimizedBody460_91

def optimizedBody460_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_92

def optimizedBody460_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_71 optimizedBody460_93

def optimizedBody460_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_67 optimizedBody460_94

def optimizedBody460_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_95

def optimizedBody460_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(54, 0)]

def optimizedBody460_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_97 optimizedBody460_51

def optimizedBody460_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_98

def optimizedBody460_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 0) optimizedBody460_96 optimizedBody460_99

def optimizedBody460_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (52, 2), (56, 6), (54, 8), (4, 4)]

def optimizedBody460_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_101

def optimizedBody460_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_100 optimizedBody460_102

def optimizedBody460_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_66 optimizedBody460_103

def optimizedBody460_105 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
  Flapjack.Spt.ln) optimizedBody460_104 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
  Flapjack.Spt.ln)

def optimizedBody460_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody460_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (56, 56), (54, 54)]

def optimizedBody460_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (52, 52), (56, 56), (54, 54)]

def optimizedBody460_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_107 optimizedBody460_15

def optimizedBody460_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody460_108, 460, 10)) (some 68) ([2]) (some (2, optimizedBody460_109, 460, 11))

def optimizedBody460_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551400#64))

def optimizedBody460_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (56, 56), (54, 54), (46, 0)]

def optimizedBody460_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (52, 52), (56, 56), (54, 54), (10, 46)]

def optimizedBody460_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (56, 56), (54, 54), (10, 46)]

def optimizedBody460_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_114 optimizedBody460_15

def optimizedBody460_116 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody460_113, 460, 12)) (some 198) ([2]) (some (2, optimizedBody460_115, 460, 13))

def optimizedBody460_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4), (2, 0)]

def optimizedBody460_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody460_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 24#64)

def optimizedBody460_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 2), (48, 4), (52, 52), (56, 56), (54, 54), (58, 10)]

def optimizedBody460_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (52, 52), (56, 56), (54, 54), (58, 58)]

def optimizedBody460_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (52, 52), (56, 56), (54, 54), (58, 58)]

def optimizedBody460_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_122 optimizedBody460_15

def optimizedBody460_124 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody460_121, 460, 14)) (some 457) ([2, 4, 6, 8, 10]) (some (2, optimizedBody460_123, 460, 15))

def optimizedBody460_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1024#64)

def optimizedBody460_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody460_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 0), (48, 4), (52, 52), (56, 56), (54, 54), (58, 58), (50, 2), (8, 8)]

def optimizedBody460_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 48), (8, 8)]

def optimizedBody460_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody460_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 24#64)

def optimizedBody460_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody460_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody460_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 46), (0, 0)]

def optimizedBody460_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody460_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (48, 6), (50, 10), (52, 52), (56, 56), (54, 54), (58, 58), (46, 50), (60, 8)]

def optimizedBody460_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 2), (4, 4), (44, 44), (48, 48), (50, 50), (52, 52), (56, 56), (54, 54), (58, 58), (8, 46), (60, 60)]

def optimizedBody460_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52), (56, 56), (54, 54), (58, 58), (8, 46), (60, 60)]

def optimizedBody460_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_137 optimizedBody460_15

def optimizedBody460_139 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody460_136, 460, 16)) (some 186) ([2, 4]) (some (2, optimizedBody460_138, 460, 17))

def optimizedBody460_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody460_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody460_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 40#64)

def optimizedBody460_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody460_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0)]

def optimizedBody460_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody460_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody460_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody460_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody460_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 12 24#64))

def optimizedBody460_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 96#64)

def optimizedBody460_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 10), (4, 4)]

def optimizedBody460_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 12), (62, 2), (64, 0)]

def optimizedBody460_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (12, 12), (46, 14), (48, 48), (50, 50), (52, 52), (56, 56), (54, 54), (58, 58), (66, 62), (4, 4), (64, 64),
    (60, 60), (62, 62), (10, 10)]

def optimizedBody460_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4)]

def optimizedBody460_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 12), (4, 4), (44, 44), (46, 12), (48, 46), (50, 48), (52, 50), (54, 52), (56, 56), (58, 54), (60, 58), (66, 66),
    (62, 4), (64, 64), (68, 60), (70, 62), (72, 10)]

def optimizedBody460_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (6, 6), (44, 44), (12, 46), (22, 48), (48, 50), (50, 52), (52, 54), (56, 56), (54, 58), (58, 60), (20, 66),
    (14, 62), (8, 64), (18, 68), (16, 70), (10, 72)]

def optimizedBody460_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (22, 48), (48, 50), (50, 52), (52, 54), (56, 56), (54, 58), (58, 60), (20, 66), (14, 62),
    (8, 64), (18, 68), (16, 70), (10, 72)]

def optimizedBody460_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_157 optimizedBody460_15

def optimizedBody460_159 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody460_156, 460, 18)) (some 197) ([2, 4]) (some (2, optimizedBody460_158, 460, 19))

def optimizedBody460_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody460_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody460_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 48#64)

def optimizedBody460_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody460_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody460_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_163 optimizedBody460_164

def optimizedBody460_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_144 optimizedBody460_165

def optimizedBody460_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_132 optimizedBody460_166

def optimizedBody460_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_143 optimizedBody460_167

def optimizedBody460_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_162 optimizedBody460_168

def optimizedBody460_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_161 optimizedBody460_169

def optimizedBody460_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_160 optimizedBody460_170

def optimizedBody460_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_171

def optimizedBody460_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_164

def optimizedBody460_174 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody460_172 optimizedBody460_173

def optimizedBody460_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody460_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody460_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (12, 12), (46, 22), (48, 48), (50, 50), (52, 52), (56, 56), (54, 54), (58, 58), (66, 20), (4, 4), (64, 8),
    (60, 18), (62, 16), (10, 10)]

def optimizedBody460_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_177 optimizedBody460_39

def optimizedBody460_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_176 optimizedBody460_178

def optimizedBody460_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_175 optimizedBody460_179

def optimizedBody460_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_180

def optimizedBody460_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_174 optimizedBody460_181

def optimizedBody460_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_19 optimizedBody460_182

def optimizedBody460_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_18 optimizedBody460_183

def optimizedBody460_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_184

def optimizedBody460_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_159 optimizedBody460_185

def optimizedBody460_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_155 optimizedBody460_186

def optimizedBody460_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_187

def optimizedBody460_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10)]

def optimizedBody460_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_189 optimizedBody460_51

def optimizedBody460_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_190

def optimizedBody460_192 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 10) optimizedBody460_188 optimizedBody460_191

def optimizedBody460_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (12, 12), (46, 2), (48, 6), (50, 8), (52, 14), (56, 16), (54, 18), (58, 20), (66, 22), (4, 4), (64, 24),
    (60, 26), (62, 28), (10, 10)]

def optimizedBody460_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_193

def optimizedBody460_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_192 optimizedBody460_194

def optimizedBody460_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_154 optimizedBody460_195

def optimizedBody460_197 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln) optimizedBody460_196 (Flapjack.Spt.bn
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

def optimizedBody460_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 66)]

def optimizedBody460_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody460_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 64), (0, 0)]

def optimizedBody460_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody460_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody460_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody460_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (22, 22)]

def optimizedBody460_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody460_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody460_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 16 8#64))

def optimizedBody460_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody460_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody460_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (12, 12), (26, 46), (46, 48), (20, 20), (48, 50), (52, 52), (56, 56), (16, 16), (54, 54), (58, 58), (2, 2),
    (14, 14), (22, 22), (8, 60), (24, 62), (10, 10), (18, 18)]

def optimizedBody460_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (14, 14)]

def optimizedBody460_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 14), (4, 4)]

def optimizedBody460_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18), (0, 0)]

def optimizedBody460_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 18)))

def optimizedBody460_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody460_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody460_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 22)))

def optimizedBody460_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody460_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (22, 22)]

def optimizedBody460_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody460_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20), (14, 14), (22, 22), (18, 18)]

def optimizedBody460_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_221 optimizedBody460_39

def optimizedBody460_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_220 optimizedBody460_222

def optimizedBody460_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_219 optimizedBody460_223

def optimizedBody460_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_218 optimizedBody460_224

def optimizedBody460_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_217 optimizedBody460_225

def optimizedBody460_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_216 optimizedBody460_226

def optimizedBody460_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_215 optimizedBody460_227

def optimizedBody460_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_214 optimizedBody460_228

def optimizedBody460_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_213 optimizedBody460_229

def optimizedBody460_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_132 optimizedBody460_230

def optimizedBody460_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_212 optimizedBody460_231

def optimizedBody460_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_130 optimizedBody460_232

def optimizedBody460_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_175 optimizedBody460_233

def optimizedBody460_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_234

def optimizedBody460_236 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 20) optimizedBody460_235 optimizedBody460_52

def optimizedBody460_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_221

def optimizedBody460_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_236 optimizedBody460_237

def optimizedBody460_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_211 optimizedBody460_238

def optimizedBody460_240 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln) optimizedBody460_239 (Flapjack.Spt.bn
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

def optimizedBody460_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody460_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (48, 48), (52, 52), (56, 56), (54, 54), (58, 58), (50, 22), (8, 8)]

def optimizedBody460_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_242 optimizedBody460_39

def optimizedBody460_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_241 optimizedBody460_243

def optimizedBody460_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_129 optimizedBody460_244

def optimizedBody460_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_245

def optimizedBody460_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_240 optimizedBody460_246

def optimizedBody460_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_210 optimizedBody460_247

def optimizedBody460_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_248

def optimizedBody460_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_209 optimizedBody460_249

def optimizedBody460_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_208 optimizedBody460_250

def optimizedBody460_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_206 optimizedBody460_251

def optimizedBody460_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_207 optimizedBody460_252

def optimizedBody460_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_206 optimizedBody460_253

def optimizedBody460_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_205 optimizedBody460_254

def optimizedBody460_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_204 optimizedBody460_255

def optimizedBody460_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_203 optimizedBody460_256

def optimizedBody460_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_144 optimizedBody460_257

def optimizedBody460_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_132 optimizedBody460_258

def optimizedBody460_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_143 optimizedBody460_259

def optimizedBody460_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_130 optimizedBody460_260

def optimizedBody460_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_63 optimizedBody460_261

def optimizedBody460_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_202 optimizedBody460_262

def optimizedBody460_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_147 optimizedBody460_263

def optimizedBody460_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_201 optimizedBody460_264

def optimizedBody460_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_200 optimizedBody460_265

def optimizedBody460_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_132 optimizedBody460_266

def optimizedBody460_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_143 optimizedBody460_267

def optimizedBody460_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_162 optimizedBody460_268

def optimizedBody460_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_63 optimizedBody460_269

def optimizedBody460_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_199 optimizedBody460_270

def optimizedBody460_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_198 optimizedBody460_271

def optimizedBody460_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_272

def optimizedBody460_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_197 optimizedBody460_273

def optimizedBody460_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_153 optimizedBody460_274

def optimizedBody460_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_275

def optimizedBody460_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_8 optimizedBody460_276

def optimizedBody460_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_152 optimizedBody460_277

def optimizedBody460_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_145 optimizedBody460_278

def optimizedBody460_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_144 optimizedBody460_279

def optimizedBody460_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_132 optimizedBody460_280

def optimizedBody460_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_151 optimizedBody460_281

def optimizedBody460_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_150 optimizedBody460_282

def optimizedBody460_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_149 optimizedBody460_283

def optimizedBody460_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_148 optimizedBody460_284

def optimizedBody460_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_147 optimizedBody460_285

def optimizedBody460_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_146 optimizedBody460_286

def optimizedBody460_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_145 optimizedBody460_287

def optimizedBody460_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_144 optimizedBody460_288

def optimizedBody460_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_132 optimizedBody460_289

def optimizedBody460_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_143 optimizedBody460_290

def optimizedBody460_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_142 optimizedBody460_291

def optimizedBody460_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_141 optimizedBody460_292

def optimizedBody460_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_140 optimizedBody460_293

def optimizedBody460_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_20 optimizedBody460_294

def optimizedBody460_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_295

def optimizedBody460_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_139 optimizedBody460_296

def optimizedBody460_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_135 optimizedBody460_297

def optimizedBody460_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_134 optimizedBody460_298

def optimizedBody460_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_133 optimizedBody460_299

def optimizedBody460_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_111 optimizedBody460_300

def optimizedBody460_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_3 optimizedBody460_301

def optimizedBody460_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_2 optimizedBody460_302

def optimizedBody460_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_1 optimizedBody460_303

def optimizedBody460_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_0 optimizedBody460_304

def optimizedBody460_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_132 optimizedBody460_305

def optimizedBody460_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_131 optimizedBody460_306

def optimizedBody460_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_130 optimizedBody460_307

def optimizedBody460_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_129 optimizedBody460_308

def optimizedBody460_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_309

def optimizedBody460_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 10)]

def optimizedBody460_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_311 optimizedBody460_51

def optimizedBody460_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_312

def optimizedBody460_314 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 10) optimizedBody460_310 optimizedBody460_313

def optimizedBody460_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2), (48, 4), (52, 6), (56, 10), (54, 12), (58, 14), (50, 16), (8, 8)]

def optimizedBody460_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_315

def optimizedBody460_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_314 optimizedBody460_316

def optimizedBody460_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_128 optimizedBody460_317

def optimizedBody460_319 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln) optimizedBody460_318 (Flapjack.Spt.bn
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

def optimizedBody460_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 50)]

def optimizedBody460_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody460_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (56, 56), (54, 54), (58, 58), (50, 0)]

def optimizedBody460_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (10, 46), (12, 48), (52, 52), (56, 56), (54, 54), (58, 58), (50, 50)]

def optimizedBody460_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (12, 48), (52, 52), (56, 56), (54, 54), (58, 58), (50, 50)]

def optimizedBody460_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_324 optimizedBody460_15

def optimizedBody460_326 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody460_323, 460, 20)) (some 68) ([2]) (some (2, optimizedBody460_325, 460, 21))

def optimizedBody460_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody460_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 0), (10, 10), (12, 12), (52, 52), (56, 56), (54, 54), (58, 58), (50, 50), (8, 8), (48, 2)]

def optimizedBody460_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8)]

def optimizedBody460_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody460_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody460_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 10), (50, 12), (52, 52), (54, 56), (56, 54), (58, 58), (60, 50), (62, 8),
    (64, 48)]

def optimizedBody460_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 4), (44, 44), (46, 46), (12, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58), (60, 60), (14, 62), (10, 64)]

def optimizedBody460_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (12, 48), (50, 50), (52, 52), (54, 54), (56, 56), (8, 58), (60, 60), (14, 62), (10, 64)]

def optimizedBody460_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_334 optimizedBody460_15

def optimizedBody460_336 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody460_333, 460, 22)) (some 186) ([2, 4]) (some (2, optimizedBody460_335, 460, 23))

def optimizedBody460_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (0, 0), (10, 10)]

def optimizedBody460_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody460_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 16), (8, 8), (44, 44), (46, 46), (48, 12), (50, 50), (52, 52), (54, 54), (56, 56), (58, 8),
    (60, 60), (62, 14), (64, 10)]

def optimizedBody460_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (14, 46), (10, 48), (12, 50), (16, 52), (18, 54), (20, 56), (22, 58), (24, 60), (4, 62), (6, 64)]

def optimizedBody460_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (14, 46), (10, 48), (12, 50), (16, 52), (18, 54), (20, 56), (22, 58), (24, 60), (4, 62), (6, 64)]

def optimizedBody460_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_341 optimizedBody460_15

def optimizedBody460_343 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody460_340, 460, 24)) (some 459) ([2, 4, 6, 8]) (some (2, optimizedBody460_342, 460, 25))

def optimizedBody460_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody460_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody460_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody460_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody460_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 14), (10, 10), (12, 12), (52, 16), (56, 18), (54, 20), (58, 22), (50, 24), (8, 8), (48, 0)]

def optimizedBody460_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_348 optimizedBody460_39

def optimizedBody460_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_347 optimizedBody460_349

def optimizedBody460_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_346 optimizedBody460_350

def optimizedBody460_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_345 optimizedBody460_351

def optimizedBody460_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_344 optimizedBody460_352

def optimizedBody460_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_353

def optimizedBody460_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_343 optimizedBody460_354

def optimizedBody460_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_339 optimizedBody460_355

def optimizedBody460_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_338 optimizedBody460_356

def optimizedBody460_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_337 optimizedBody460_357

def optimizedBody460_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_132 optimizedBody460_358

def optimizedBody460_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_212 optimizedBody460_359

def optimizedBody460_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_130 optimizedBody460_360

def optimizedBody460_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_175 optimizedBody460_361

def optimizedBody460_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_362

def optimizedBody460_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_336 optimizedBody460_363

def optimizedBody460_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_332 optimizedBody460_364

def optimizedBody460_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_331 optimizedBody460_365

def optimizedBody460_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_330 optimizedBody460_366

def optimizedBody460_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_111 optimizedBody460_367

def optimizedBody460_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_3 optimizedBody460_368

def optimizedBody460_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_2 optimizedBody460_369

def optimizedBody460_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_1 optimizedBody460_370

def optimizedBody460_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_0 optimizedBody460_371

def optimizedBody460_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_132 optimizedBody460_372

def optimizedBody460_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_131 optimizedBody460_373

def optimizedBody460_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_130 optimizedBody460_374

def optimizedBody460_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_129 optimizedBody460_375

def optimizedBody460_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_376

def optimizedBody460_378 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 12) optimizedBody460_377 optimizedBody460_52

def optimizedBody460_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (46, 2), (10, 10), (12, 12), (52, 4), (56, 6), (54, 14), (58, 16), (50, 18), (8, 8), (48, 20)]

def optimizedBody460_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_379

def optimizedBody460_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_378 optimizedBody460_380

def optimizedBody460_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_329 optimizedBody460_381

def optimizedBody460_383 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln) optimizedBody460_382 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody460_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46), (2, 48)]

def optimizedBody460_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody460_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody460_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 2)]

def optimizedBody460_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody460_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody460_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_389 optimizedBody460_15

def optimizedBody460_391 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody460_388, 460, 26)) (some 180) ([2]) (some (2, optimizedBody460_390, 460, 27))

def optimizedBody460_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody460_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody460_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 4), (50, 2)]

def optimizedBody460_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (6, 46), (4, 48), (0, 50)]

def optimizedBody460_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46), (4, 48), (0, 50)]

def optimizedBody460_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_396 optimizedBody460_15

def optimizedBody460_398 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody460_395, 460, 28)) (some 178) ([2, 4]) (some (2, optimizedBody460_397, 460, 29))

def optimizedBody460_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4), (0, 0)]

def optimizedBody460_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody460_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0), (4, 4)]

def optimizedBody460_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4]

def optimizedBody460_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_401 optimizedBody460_402

def optimizedBody460_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_400 optimizedBody460_403

def optimizedBody460_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_399 optimizedBody460_404

def optimizedBody460_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_405

def optimizedBody460_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_398 optimizedBody460_406

def optimizedBody460_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_394 optimizedBody460_407

def optimizedBody460_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_393 optimizedBody460_408

def optimizedBody460_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_18 optimizedBody460_409

def optimizedBody460_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_392 optimizedBody460_410

def optimizedBody460_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_160 optimizedBody460_411

def optimizedBody460_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_412

def optimizedBody460_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_391 optimizedBody460_413

def optimizedBody460_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_387 optimizedBody460_414

def optimizedBody460_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_386 optimizedBody460_415

def optimizedBody460_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_385 optimizedBody460_416

def optimizedBody460_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_384 optimizedBody460_417

def optimizedBody460_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_418

def optimizedBody460_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_383 optimizedBody460_419

def optimizedBody460_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_328 optimizedBody460_420

def optimizedBody460_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_421

def optimizedBody460_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_126 optimizedBody460_422

def optimizedBody460_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_327 optimizedBody460_423

def optimizedBody460_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_18 optimizedBody460_424

def optimizedBody460_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_425

def optimizedBody460_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_326 optimizedBody460_426

def optimizedBody460_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_322 optimizedBody460_427

def optimizedBody460_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_321 optimizedBody460_428

def optimizedBody460_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_320 optimizedBody460_429

def optimizedBody460_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_430

def optimizedBody460_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_319 optimizedBody460_431

def optimizedBody460_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_127 optimizedBody460_432

def optimizedBody460_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_433

def optimizedBody460_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_126 optimizedBody460_434

def optimizedBody460_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_125 optimizedBody460_435

def optimizedBody460_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_436

def optimizedBody460_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_124 optimizedBody460_437

def optimizedBody460_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_120 optimizedBody460_438

def optimizedBody460_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_119 optimizedBody460_439

def optimizedBody460_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_118 optimizedBody460_440

def optimizedBody460_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_117 optimizedBody460_441

def optimizedBody460_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_442

def optimizedBody460_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_116 optimizedBody460_443

def optimizedBody460_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_112 optimizedBody460_444

def optimizedBody460_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_111 optimizedBody460_445

def optimizedBody460_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_3 optimizedBody460_446

def optimizedBody460_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_2 optimizedBody460_447

def optimizedBody460_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_1 optimizedBody460_448

def optimizedBody460_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_449

def optimizedBody460_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_110 optimizedBody460_450

def optimizedBody460_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_107 optimizedBody460_451

def optimizedBody460_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_106 optimizedBody460_452

def optimizedBody460_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_453

def optimizedBody460_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_105 optimizedBody460_454

def optimizedBody460_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_65 optimizedBody460_455

def optimizedBody460_457 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_456

def optimizedBody460_458 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_8 optimizedBody460_457

def optimizedBody460_459 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_64 optimizedBody460_458

def optimizedBody460_460 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_18 optimizedBody460_459

def optimizedBody460_461 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_63 optimizedBody460_460

def optimizedBody460_462 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_62 optimizedBody460_461

def optimizedBody460_463 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_61 optimizedBody460_462

def optimizedBody460_464 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_60 optimizedBody460_463

def optimizedBody460_465 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_59 optimizedBody460_464

def optimizedBody460_466 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_465

def optimizedBody460_467 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_58 optimizedBody460_466

def optimizedBody460_468 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_10 optimizedBody460_467

def optimizedBody460_469 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_9 optimizedBody460_468

def optimizedBody460_470 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_8 optimizedBody460_469

def optimizedBody460_471 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_7 optimizedBody460_470

def optimizedBody460_472 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_6 optimizedBody460_471

def optimizedBody460_473 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_5 optimizedBody460_472

def optimizedBody460_474 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_4 optimizedBody460_473

def optimizedBody460_475 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_3 optimizedBody460_474

def optimizedBody460_476 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_2 optimizedBody460_475

def optimizedBody460_477 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_1 optimizedBody460_476

def optimizedBody460_478 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody460_0 optimizedBody460_477

def oracle460 : Option (Spt Nat) :=
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
def optimized460 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(460, 1, optimizedBody460_478)
theorem optimize460_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source460, oracle460) = optimized460 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize460_eq
end InitECandidate.Proofs.WordStages
