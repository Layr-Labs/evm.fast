import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody594_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody594_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody594_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody594_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody594_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody594_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody594_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody594_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody594_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody594_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody594_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody594_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 0)]

def optimizedBody594_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46)]

def optimizedBody594_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46)]

def optimizedBody594_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody594_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_13 optimizedBody594_14

def optimizedBody594_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_12, 594, 2)) (some 405) ([2]) (some (2, optimizedBody594_15, 594, 3))

def optimizedBody594_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (46, 46)]

def optimizedBody594_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_12, 594, 4)) (some 416) ([2]) (some (2, optimizedBody594_15, 594, 5))

def optimizedBody594_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody594_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody594_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 183600#64)

def optimizedBody594_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody594_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46)]

def optimizedBody594_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_23 optimizedBody594_14

def optimizedBody594_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_22, 594, 6)) (some 471) ([2]) (some (2, optimizedBody594_24, 594, 7))

def optimizedBody594_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_0

def optimizedBody594_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_25 optimizedBody594_26

def optimizedBody594_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_13 optimizedBody594_27

def optimizedBody594_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_21 optimizedBody594_28

def optimizedBody594_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_29

def optimizedBody594_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 46)]

def optimizedBody594_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_31

def optimizedBody594_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody594_30 optimizedBody594_32

def optimizedBody594_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody594_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody594_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_34 optimizedBody594_35

def optimizedBody594_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_20 optimizedBody594_36

def optimizedBody594_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_37

def optimizedBody594_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_33 optimizedBody594_38

def optimizedBody594_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_20 optimizedBody594_39

def optimizedBody594_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_19 optimizedBody594_40

def optimizedBody594_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_41

def optimizedBody594_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_18 optimizedBody594_42

def optimizedBody594_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_17 optimizedBody594_43

def optimizedBody594_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_44

def optimizedBody594_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_16 optimizedBody594_45

def optimizedBody594_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_11 optimizedBody594_46

def optimizedBody594_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_10 optimizedBody594_47

def optimizedBody594_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_48

def optimizedBody594_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_49

def optimizedBody594_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 10), (44, 0)]

def optimizedBody594_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody594_50 optimizedBody594_51

def optimizedBody594_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody594_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 56#64))

def optimizedBody594_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 64#64))

def optimizedBody594_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 72#64))

def optimizedBody594_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 80#64))

def optimizedBody594_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0), (50, 10)]

def optimizedBody594_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody594_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody594_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_60 optimizedBody594_14

def optimizedBody594_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_59, 594, 8)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody594_61, 594, 9))

def optimizedBody594_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody594_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0), (50, 50)]

def optimizedBody594_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody594_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody594_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_66 optimizedBody594_14

def optimizedBody594_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_65, 594, 10)) (some 418) ([2]) (some (2, optimizedBody594_67, 594, 11))

def optimizedBody594_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (50, 50)]

def optimizedBody594_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_69, 594, 12)) (some 471) ([2]) (some (2, optimizedBody594_61, 594, 13))

def optimizedBody594_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (50, 50)]

def optimizedBody594_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_71

def optimizedBody594_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_70 optimizedBody594_72

def optimizedBody594_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_66 optimizedBody594_73

def optimizedBody594_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_21 optimizedBody594_74

def optimizedBody594_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_75

def optimizedBody594_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46), (50, 50)]

def optimizedBody594_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_77

def optimizedBody594_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody594_76 optimizedBody594_78

def optimizedBody594_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_79 optimizedBody594_72

def optimizedBody594_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_20 optimizedBody594_80

def optimizedBody594_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_19 optimizedBody594_81

def optimizedBody594_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_82

def optimizedBody594_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_68 optimizedBody594_83

def optimizedBody594_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_64 optimizedBody594_84

def optimizedBody594_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_85

def optimizedBody594_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody594_86 optimizedBody594_72

def optimizedBody594_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (50, 50)]

def optimizedBody594_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (50, 50)]

def optimizedBody594_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50)]

def optimizedBody594_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_90 optimizedBody594_14

def optimizedBody594_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_89, 594, 14)) (some 565) ([2]) (some (2, optimizedBody594_91, 594, 15))

def optimizedBody594_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 4), (48, 0), (50, 50)]

def optimizedBody594_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (8, 48), (48, 50)]

def optimizedBody594_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (8, 48), (48, 50)]

def optimizedBody594_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_95 optimizedBody594_14

def optimizedBody594_97 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_94, 594, 16)) (some 589) ([2, 4]) (some (2, optimizedBody594_96, 594, 17))

def optimizedBody594_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody594_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48)]

def optimizedBody594_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (48, 48)]

def optimizedBody594_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48)]

def optimizedBody594_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_101 optimizedBody594_14

def optimizedBody594_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_100, 594, 18)) (some 68) ([2]) (some (2, optimizedBody594_102, 594, 19))

def optimizedBody594_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody594_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody594_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 2), (48, 48)]

def optimizedBody594_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48)]

def optimizedBody594_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48)]

def optimizedBody594_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_108 optimizedBody594_14

def optimizedBody594_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_107, 594, 20)) (some 77) ([2, 4, 6]) (some (2, optimizedBody594_109, 594, 21))

def optimizedBody594_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0), (48, 48)]

def optimizedBody594_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody594_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody594_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_113 optimizedBody594_14

def optimizedBody594_115 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_112, 594, 22)) (some 493) ([2]) (some (2, optimizedBody594_114, 594, 23))

def optimizedBody594_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 100#64)

def optimizedBody594_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_107, 594, 24)) (some 470) ([2]) (some (2, optimizedBody594_109, 594, 25))

def optimizedBody594_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (48, 48)]

def optimizedBody594_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_118

def optimizedBody594_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_117 optimizedBody594_119

def optimizedBody594_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_113 optimizedBody594_120

def optimizedBody594_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_116 optimizedBody594_121

def optimizedBody594_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_122

def optimizedBody594_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3000#64)

def optimizedBody594_125 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_107, 594, 26)) (some 470) ([2]) (some (2, optimizedBody594_109, 594, 27))

def optimizedBody594_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_107, 594, 28)) (some 494) ([2]) (some (2, optimizedBody594_109, 594, 29))

def optimizedBody594_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_126 optimizedBody594_119

def optimizedBody594_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_111 optimizedBody594_127

def optimizedBody594_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_128

def optimizedBody594_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_125 optimizedBody594_129

def optimizedBody594_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_113 optimizedBody594_130

def optimizedBody594_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_124 optimizedBody594_131

def optimizedBody594_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_132

def optimizedBody594_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody594_123 optimizedBody594_133

def optimizedBody594_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (4, 4), (44, 44), (6, 46), (0, 48)]

def optimizedBody594_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48)]

def optimizedBody594_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_136 optimizedBody594_14

def optimizedBody594_138 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_135, 594, 30)) (some 565) ([2]) (some (2, optimizedBody594_137, 594, 31))

def optimizedBody594_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (8, 8)]

def optimizedBody594_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody594_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody594_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody594_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody594_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody594_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody594_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (8, 8), (0, 0)]

def optimizedBody594_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_145 optimizedBody594_146

def optimizedBody594_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_144 optimizedBody594_147

def optimizedBody594_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_143 optimizedBody594_148

def optimizedBody594_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_19 optimizedBody594_149

def optimizedBody594_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_142 optimizedBody594_150

def optimizedBody594_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_34 optimizedBody594_151

def optimizedBody594_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_141 optimizedBody594_152

def optimizedBody594_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_140 optimizedBody594_153

def optimizedBody594_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_139 optimizedBody594_154

def optimizedBody594_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_155

def optimizedBody594_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_138 optimizedBody594_156

def optimizedBody594_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_111 optimizedBody594_157

def optimizedBody594_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_158

def optimizedBody594_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_134 optimizedBody594_159

def optimizedBody594_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_20 optimizedBody594_160

def optimizedBody594_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_19 optimizedBody594_161

def optimizedBody594_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_162

def optimizedBody594_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_115 optimizedBody594_163

def optimizedBody594_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_111 optimizedBody594_164

def optimizedBody594_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_165

def optimizedBody594_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_110 optimizedBody594_166

def optimizedBody594_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_106 optimizedBody594_167

def optimizedBody594_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_105 optimizedBody594_168

def optimizedBody594_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_104 optimizedBody594_169

def optimizedBody594_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_170

def optimizedBody594_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_103 optimizedBody594_171

def optimizedBody594_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_99 optimizedBody594_172

def optimizedBody594_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_98 optimizedBody594_173

def optimizedBody594_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_174

def optimizedBody594_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (8, 8), (0, 48)]

def optimizedBody594_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_176

def optimizedBody594_178 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody594_175 optimizedBody594_177

def optimizedBody594_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 112#64)))

def optimizedBody594_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 8)]

def optimizedBody594_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody594_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody594_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody594_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody594_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody594_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody594_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody594_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody594_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody594_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody594_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody594_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody594_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody594_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody594_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody594_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_195 optimizedBody594_14

def optimizedBody594_197 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody594_194, 594, 32)) (some 485) ([2, 4]) (some (2, optimizedBody594_196, 594, 33))

def optimizedBody594_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody594_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody594_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody594_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody594_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_34 optimizedBody594_201

def optimizedBody594_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_20 optimizedBody594_202

def optimizedBody594_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_200 optimizedBody594_203

def optimizedBody594_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_199 optimizedBody594_204

def optimizedBody594_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_198 optimizedBody594_205

def optimizedBody594_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_4 optimizedBody594_206

def optimizedBody594_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_3 optimizedBody594_207

def optimizedBody594_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_2 optimizedBody594_208

def optimizedBody594_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_1 optimizedBody594_209

def optimizedBody594_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_210

def optimizedBody594_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_197 optimizedBody594_211

def optimizedBody594_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_193 optimizedBody594_212

def optimizedBody594_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_184 optimizedBody594_213

def optimizedBody594_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_183 optimizedBody594_214

def optimizedBody594_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_192 optimizedBody594_215

def optimizedBody594_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_191 optimizedBody594_216

def optimizedBody594_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_0 optimizedBody594_217

def optimizedBody594_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_181 optimizedBody594_218

def optimizedBody594_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_190 optimizedBody594_219

def optimizedBody594_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_189 optimizedBody594_220

def optimizedBody594_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_188 optimizedBody594_221

def optimizedBody594_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_187 optimizedBody594_222

def optimizedBody594_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_186 optimizedBody594_223

def optimizedBody594_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_185 optimizedBody594_224

def optimizedBody594_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_184 optimizedBody594_225

def optimizedBody594_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_183 optimizedBody594_226

def optimizedBody594_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_182 optimizedBody594_227

def optimizedBody594_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_19 optimizedBody594_228

def optimizedBody594_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_181 optimizedBody594_229

def optimizedBody594_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_180 optimizedBody594_230

def optimizedBody594_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_179 optimizedBody594_231

def optimizedBody594_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_19 optimizedBody594_232

def optimizedBody594_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_233

def optimizedBody594_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_178 optimizedBody594_234

def optimizedBody594_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_20 optimizedBody594_235

def optimizedBody594_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_19 optimizedBody594_236

def optimizedBody594_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_237

def optimizedBody594_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_97 optimizedBody594_238

def optimizedBody594_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_93 optimizedBody594_239

def optimizedBody594_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_240

def optimizedBody594_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_92 optimizedBody594_241

def optimizedBody594_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_88 optimizedBody594_242

def optimizedBody594_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_243

def optimizedBody594_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_87 optimizedBody594_244

def optimizedBody594_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_20 optimizedBody594_245

def optimizedBody594_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_63 optimizedBody594_246

def optimizedBody594_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_247

def optimizedBody594_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_62 optimizedBody594_248

def optimizedBody594_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_58 optimizedBody594_249

def optimizedBody594_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_57 optimizedBody594_250

def optimizedBody594_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_251

def optimizedBody594_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_56 optimizedBody594_252

def optimizedBody594_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_253

def optimizedBody594_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_55 optimizedBody594_254

def optimizedBody594_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_255

def optimizedBody594_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_54 optimizedBody594_256

def optimizedBody594_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_257

def optimizedBody594_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_53 optimizedBody594_258

def optimizedBody594_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_259

def optimizedBody594_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_260

def optimizedBody594_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_9 optimizedBody594_261

def optimizedBody594_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_52 optimizedBody594_262

def optimizedBody594_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_8 optimizedBody594_263

def optimizedBody594_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_7 optimizedBody594_264

def optimizedBody594_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_6 optimizedBody594_265

def optimizedBody594_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_5 optimizedBody594_266

def optimizedBody594_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_4 optimizedBody594_267

def optimizedBody594_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_3 optimizedBody594_268

def optimizedBody594_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_2 optimizedBody594_269

def optimizedBody594_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_1 optimizedBody594_270

def optimizedBody594_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody594_0 optimizedBody594_271

def optimized594 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(594, 1, optimizedBody594_272)
end InitECandidate.Proofs.StackAnalysis
