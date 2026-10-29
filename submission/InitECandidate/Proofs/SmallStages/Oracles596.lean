import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source596
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles596
def optimizedBody596_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody596_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody596_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody596_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody596_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody596_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody596_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody596_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody596_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody596_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody596_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody596_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 0)]

def optimizedBody596_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46)]

def optimizedBody596_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46)]

def optimizedBody596_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody596_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_13 optimizedBody596_14

def optimizedBody596_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_12, 596, 2)) (some 407) ([2]) (some (2, optimizedBody596_15, 596, 3))

def optimizedBody596_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (46, 46)]

def optimizedBody596_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_12, 596, 4)) (some 418) ([2]) (some (2, optimizedBody596_15, 596, 5))

def optimizedBody596_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody596_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody596_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 183600#64)

def optimizedBody596_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody596_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46)]

def optimizedBody596_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_23 optimizedBody596_14

def optimizedBody596_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_22, 596, 6)) (some 473) ([2]) (some (2, optimizedBody596_24, 596, 7))

def optimizedBody596_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_0

def optimizedBody596_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_25 optimizedBody596_26

def optimizedBody596_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_13 optimizedBody596_27

def optimizedBody596_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_21 optimizedBody596_28

def optimizedBody596_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_29

def optimizedBody596_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 46)]

def optimizedBody596_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_31

def optimizedBody596_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody596_30 optimizedBody596_32

def optimizedBody596_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody596_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody596_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_34 optimizedBody596_35

def optimizedBody596_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_20 optimizedBody596_36

def optimizedBody596_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_37

def optimizedBody596_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_33 optimizedBody596_38

def optimizedBody596_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_20 optimizedBody596_39

def optimizedBody596_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_19 optimizedBody596_40

def optimizedBody596_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_41

def optimizedBody596_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_18 optimizedBody596_42

def optimizedBody596_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_17 optimizedBody596_43

def optimizedBody596_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_44

def optimizedBody596_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_16 optimizedBody596_45

def optimizedBody596_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_11 optimizedBody596_46

def optimizedBody596_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_10 optimizedBody596_47

def optimizedBody596_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_6 optimizedBody596_48

def optimizedBody596_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_49

def optimizedBody596_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 10), (44, 0)]

def optimizedBody596_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody596_50 optimizedBody596_51

def optimizedBody596_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody596_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 56#64))

def optimizedBody596_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 64#64))

def optimizedBody596_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 72#64))

def optimizedBody596_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 80#64))

def optimizedBody596_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0), (50, 10)]

def optimizedBody596_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody596_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50)]

def optimizedBody596_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_60 optimizedBody596_14

def optimizedBody596_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_59, 596, 8)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody596_61, 596, 9))

def optimizedBody596_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody596_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0), (50, 50)]

def optimizedBody596_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody596_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody596_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_66 optimizedBody596_14

def optimizedBody596_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_65, 596, 10)) (some 420) ([2]) (some (2, optimizedBody596_67, 596, 11))

def optimizedBody596_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (50, 50)]

def optimizedBody596_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_69, 596, 12)) (some 473) ([2]) (some (2, optimizedBody596_61, 596, 13))

def optimizedBody596_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (50, 50)]

def optimizedBody596_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_71

def optimizedBody596_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_70 optimizedBody596_72

def optimizedBody596_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_66 optimizedBody596_73

def optimizedBody596_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_21 optimizedBody596_74

def optimizedBody596_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_75

def optimizedBody596_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46), (50, 50)]

def optimizedBody596_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_77

def optimizedBody596_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody596_76 optimizedBody596_78

def optimizedBody596_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_79 optimizedBody596_72

def optimizedBody596_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_20 optimizedBody596_80

def optimizedBody596_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_19 optimizedBody596_81

def optimizedBody596_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_82

def optimizedBody596_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_68 optimizedBody596_83

def optimizedBody596_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_64 optimizedBody596_84

def optimizedBody596_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_85

def optimizedBody596_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody596_86 optimizedBody596_72

def optimizedBody596_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (50, 50)]

def optimizedBody596_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (50, 50)]

def optimizedBody596_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50)]

def optimizedBody596_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_90 optimizedBody596_14

def optimizedBody596_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_89, 596, 14)) (some 567) ([2]) (some (2, optimizedBody596_91, 596, 15))

def optimizedBody596_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 4), (48, 0), (50, 50)]

def optimizedBody596_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (8, 48), (48, 50)]

def optimizedBody596_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (8, 48), (48, 50)]

def optimizedBody596_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_95 optimizedBody596_14

def optimizedBody596_97 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_94, 596, 16)) (some 591) ([2, 4]) (some (2, optimizedBody596_96, 596, 17))

def optimizedBody596_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody596_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48)]

def optimizedBody596_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (48, 48)]

def optimizedBody596_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48)]

def optimizedBody596_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_101 optimizedBody596_14

def optimizedBody596_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_100, 596, 18)) (some 68) ([2]) (some (2, optimizedBody596_102, 596, 19))

def optimizedBody596_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody596_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody596_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 2), (48, 48)]

def optimizedBody596_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48)]

def optimizedBody596_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48)]

def optimizedBody596_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_108 optimizedBody596_14

def optimizedBody596_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_107, 596, 20)) (some 77) ([2, 4, 6]) (some (2, optimizedBody596_109, 596, 21))

def optimizedBody596_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0), (48, 48)]

def optimizedBody596_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody596_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody596_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_113 optimizedBody596_14

def optimizedBody596_115 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_112, 596, 22)) (some 495) ([2]) (some (2, optimizedBody596_114, 596, 23))

def optimizedBody596_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 100#64)

def optimizedBody596_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_107, 596, 24)) (some 472) ([2]) (some (2, optimizedBody596_109, 596, 25))

def optimizedBody596_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (48, 48)]

def optimizedBody596_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_118

def optimizedBody596_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_117 optimizedBody596_119

def optimizedBody596_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_113 optimizedBody596_120

def optimizedBody596_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_116 optimizedBody596_121

def optimizedBody596_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_122

def optimizedBody596_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3000#64)

def optimizedBody596_125 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_107, 596, 26)) (some 472) ([2]) (some (2, optimizedBody596_109, 596, 27))

def optimizedBody596_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_107, 596, 28)) (some 496) ([2]) (some (2, optimizedBody596_109, 596, 29))

def optimizedBody596_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_126 optimizedBody596_119

def optimizedBody596_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_111 optimizedBody596_127

def optimizedBody596_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_128

def optimizedBody596_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_125 optimizedBody596_129

def optimizedBody596_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_113 optimizedBody596_130

def optimizedBody596_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_124 optimizedBody596_131

def optimizedBody596_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_132

def optimizedBody596_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody596_123 optimizedBody596_133

def optimizedBody596_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (4, 4), (44, 44), (6, 46), (0, 48)]

def optimizedBody596_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48)]

def optimizedBody596_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_136 optimizedBody596_14

def optimizedBody596_138 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_135, 596, 30)) (some 567) ([2]) (some (2, optimizedBody596_137, 596, 31))

def optimizedBody596_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (8, 8)]

def optimizedBody596_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody596_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody596_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody596_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody596_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody596_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody596_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (8, 8), (0, 0)]

def optimizedBody596_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_145 optimizedBody596_146

def optimizedBody596_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_144 optimizedBody596_147

def optimizedBody596_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_143 optimizedBody596_148

def optimizedBody596_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_19 optimizedBody596_149

def optimizedBody596_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_142 optimizedBody596_150

def optimizedBody596_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_34 optimizedBody596_151

def optimizedBody596_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_141 optimizedBody596_152

def optimizedBody596_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_140 optimizedBody596_153

def optimizedBody596_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_139 optimizedBody596_154

def optimizedBody596_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_155

def optimizedBody596_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_138 optimizedBody596_156

def optimizedBody596_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_111 optimizedBody596_157

def optimizedBody596_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_158

def optimizedBody596_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_134 optimizedBody596_159

def optimizedBody596_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_20 optimizedBody596_160

def optimizedBody596_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_19 optimizedBody596_161

def optimizedBody596_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_162

def optimizedBody596_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_115 optimizedBody596_163

def optimizedBody596_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_111 optimizedBody596_164

def optimizedBody596_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_165

def optimizedBody596_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_110 optimizedBody596_166

def optimizedBody596_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_106 optimizedBody596_167

def optimizedBody596_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_105 optimizedBody596_168

def optimizedBody596_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_104 optimizedBody596_169

def optimizedBody596_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_170

def optimizedBody596_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_103 optimizedBody596_171

def optimizedBody596_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_99 optimizedBody596_172

def optimizedBody596_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_98 optimizedBody596_173

def optimizedBody596_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_174

def optimizedBody596_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (8, 8), (0, 48)]

def optimizedBody596_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_176

def optimizedBody596_178 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody596_175 optimizedBody596_177

def optimizedBody596_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 112#64)))

def optimizedBody596_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 8)]

def optimizedBody596_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody596_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody596_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody596_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody596_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody596_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody596_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody596_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody596_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody596_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody596_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody596_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody596_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody596_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody596_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody596_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_195 optimizedBody596_14

def optimizedBody596_197 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody596_194, 596, 32)) (some 487) ([2, 4]) (some (2, optimizedBody596_196, 596, 33))

def optimizedBody596_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody596_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody596_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody596_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody596_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_34 optimizedBody596_201

def optimizedBody596_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_20 optimizedBody596_202

def optimizedBody596_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_200 optimizedBody596_203

def optimizedBody596_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_199 optimizedBody596_204

def optimizedBody596_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_198 optimizedBody596_205

def optimizedBody596_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_4 optimizedBody596_206

def optimizedBody596_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_3 optimizedBody596_207

def optimizedBody596_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_2 optimizedBody596_208

def optimizedBody596_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_1 optimizedBody596_209

def optimizedBody596_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_210

def optimizedBody596_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_197 optimizedBody596_211

def optimizedBody596_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_193 optimizedBody596_212

def optimizedBody596_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_184 optimizedBody596_213

def optimizedBody596_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_183 optimizedBody596_214

def optimizedBody596_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_192 optimizedBody596_215

def optimizedBody596_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_191 optimizedBody596_216

def optimizedBody596_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_0 optimizedBody596_217

def optimizedBody596_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_181 optimizedBody596_218

def optimizedBody596_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_190 optimizedBody596_219

def optimizedBody596_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_189 optimizedBody596_220

def optimizedBody596_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_188 optimizedBody596_221

def optimizedBody596_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_187 optimizedBody596_222

def optimizedBody596_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_186 optimizedBody596_223

def optimizedBody596_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_185 optimizedBody596_224

def optimizedBody596_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_184 optimizedBody596_225

def optimizedBody596_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_183 optimizedBody596_226

def optimizedBody596_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_182 optimizedBody596_227

def optimizedBody596_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_19 optimizedBody596_228

def optimizedBody596_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_181 optimizedBody596_229

def optimizedBody596_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_180 optimizedBody596_230

def optimizedBody596_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_179 optimizedBody596_231

def optimizedBody596_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_19 optimizedBody596_232

def optimizedBody596_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_233

def optimizedBody596_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_178 optimizedBody596_234

def optimizedBody596_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_20 optimizedBody596_235

def optimizedBody596_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_19 optimizedBody596_236

def optimizedBody596_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_237

def optimizedBody596_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_97 optimizedBody596_238

def optimizedBody596_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_93 optimizedBody596_239

def optimizedBody596_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_240

def optimizedBody596_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_92 optimizedBody596_241

def optimizedBody596_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_88 optimizedBody596_242

def optimizedBody596_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_243

def optimizedBody596_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_87 optimizedBody596_244

def optimizedBody596_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_20 optimizedBody596_245

def optimizedBody596_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_63 optimizedBody596_246

def optimizedBody596_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_247

def optimizedBody596_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_62 optimizedBody596_248

def optimizedBody596_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_58 optimizedBody596_249

def optimizedBody596_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_57 optimizedBody596_250

def optimizedBody596_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_6 optimizedBody596_251

def optimizedBody596_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_56 optimizedBody596_252

def optimizedBody596_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_6 optimizedBody596_253

def optimizedBody596_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_55 optimizedBody596_254

def optimizedBody596_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_6 optimizedBody596_255

def optimizedBody596_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_54 optimizedBody596_256

def optimizedBody596_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_6 optimizedBody596_257

def optimizedBody596_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_53 optimizedBody596_258

def optimizedBody596_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_6 optimizedBody596_259

def optimizedBody596_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_260

def optimizedBody596_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_9 optimizedBody596_261

def optimizedBody596_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_52 optimizedBody596_262

def optimizedBody596_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_8 optimizedBody596_263

def optimizedBody596_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_7 optimizedBody596_264

def optimizedBody596_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_6 optimizedBody596_265

def optimizedBody596_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_5 optimizedBody596_266

def optimizedBody596_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_4 optimizedBody596_267

def optimizedBody596_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_3 optimizedBody596_268

def optimizedBody596_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_2 optimizedBody596_269

def optimizedBody596_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_1 optimizedBody596_270

def optimizedBody596_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody596_0 optimizedBody596_271

def oracle596 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                23
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 24)))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22))) 23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22)) 1 (Flapjack.Spt.ls 2)) 0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 3))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.ls 25))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  Flapjack.Spt.ln)
                5
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 3)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 3)) 3 Flapjack.Spt.ln)))
              5
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 23 Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 25)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 (Flapjack.Spt.ls 5)))
              5
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) 5 Flapjack.Spt.ln))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 5 Flapjack.Spt.ln)))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  0 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 5 Flapjack.Spt.ln)))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 22 Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 5
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))))
                2
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 5 Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23))))
                23
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))))
def optimized596 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(596, 1, optimizedBody596_272)
end InitECandidate.Proofs.SmallStages.Oracles596
