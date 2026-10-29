import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source600
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles600
def optimizedBody600_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody600_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody600_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody600_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody600_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody600_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody600_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody600_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 136#64))

def optimizedBody600_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody600_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody600_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 56#64))

def optimizedBody600_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 14 64#64))

def optimizedBody600_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 14 72#64))

def optimizedBody600_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 14 80#64))

def optimizedBody600_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 14), (48, 4), (50, 8), (52, 6), (54, 2)]

def optimizedBody600_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (14, 46), (8, 48), (12, 50), (10, 52), (6, 54)]

def optimizedBody600_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (8, 48), (12, 50), (10, 52), (6, 54)]

def optimizedBody600_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody600_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_16 optimizedBody600_17

def optimizedBody600_19 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody600_15, 600, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody600_18, 600, 3))

def optimizedBody600_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody600_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody600_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 16#64))

def optimizedBody600_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 14 32#64))

def optimizedBody600_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 14), (48, 8), (50, 12), (52, 10), (54, 6)]

def optimizedBody600_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody600_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody600_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_26 optimizedBody600_17

def optimizedBody600_28 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody600_25, 600, 4)) (some 429) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody600_27, 600, 5))

def optimizedBody600_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody600_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody600_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody600_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody600_33 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody600_15, 600, 6)) (some 79) ([2, 4, 6]) (some (2, optimizedBody600_18, 600, 7))

def optimizedBody600_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 14)]

def optimizedBody600_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (14, 46)]

def optimizedBody600_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46)]

def optimizedBody600_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_36 optimizedBody600_17

def optimizedBody600_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody600_35, 600, 8)) (some 587) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody600_37, 600, 9))

def optimizedBody600_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (14, 14)]

def optimizedBody600_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_39

def optimizedBody600_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_38 optimizedBody600_40

def optimizedBody600_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_34 optimizedBody600_41

def optimizedBody600_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_23 optimizedBody600_42

def optimizedBody600_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_6 optimizedBody600_43

def optimizedBody600_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_22 optimizedBody600_44

def optimizedBody600_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_6 optimizedBody600_45

def optimizedBody600_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_46

def optimizedBody600_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody600_47 optimizedBody600_40

def optimizedBody600_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_48 optimizedBody600_40

def optimizedBody600_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_21 optimizedBody600_49

def optimizedBody600_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_20 optimizedBody600_50

def optimizedBody600_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_51

def optimizedBody600_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_33 optimizedBody600_52

def optimizedBody600_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_32 optimizedBody600_53

def optimizedBody600_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_31 optimizedBody600_54

def optimizedBody600_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_30 optimizedBody600_55

def optimizedBody600_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_20 optimizedBody600_56

def optimizedBody600_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_29 optimizedBody600_57

def optimizedBody600_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_20 optimizedBody600_58

def optimizedBody600_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_59

def optimizedBody600_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_28 optimizedBody600_60

def optimizedBody600_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_24 optimizedBody600_61

def optimizedBody600_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_23 optimizedBody600_62

def optimizedBody600_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_6 optimizedBody600_63

def optimizedBody600_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_22 optimizedBody600_64

def optimizedBody600_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_6 optimizedBody600_65

def optimizedBody600_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_66

def optimizedBody600_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody600_67 optimizedBody600_40

def optimizedBody600_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_68 optimizedBody600_40

def optimizedBody600_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_21 optimizedBody600_69

def optimizedBody600_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_20 optimizedBody600_70

def optimizedBody600_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_71

def optimizedBody600_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_19 optimizedBody600_72

def optimizedBody600_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_14 optimizedBody600_73

def optimizedBody600_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_13 optimizedBody600_74

def optimizedBody600_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_6 optimizedBody600_75

def optimizedBody600_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_12 optimizedBody600_76

def optimizedBody600_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_6 optimizedBody600_77

def optimizedBody600_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_11 optimizedBody600_78

def optimizedBody600_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_6 optimizedBody600_79

def optimizedBody600_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_10 optimizedBody600_80

def optimizedBody600_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_6 optimizedBody600_81

def optimizedBody600_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_82

def optimizedBody600_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (14, 14)]

def optimizedBody600_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_84

def optimizedBody600_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody600_83 optimizedBody600_85

def optimizedBody600_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 104#64))

def optimizedBody600_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody600_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody600_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 14)]

def optimizedBody600_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46)]

def optimizedBody600_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody600_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_92 optimizedBody600_17

def optimizedBody600_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody600_91, 600, 10)) (some 841) ([2]) (some (2, optimizedBody600_93, 600, 11))

def optimizedBody600_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def optimizedBody600_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody600_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody600_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 168#64))

def optimizedBody600_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody600_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody600_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody600_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_101 optimizedBody600_17

def optimizedBody600_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody600_100, 600, 12)) (some 849) ([2]) (some (2, optimizedBody600_102, 600, 13))

def optimizedBody600_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody600_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_104

def optimizedBody600_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_103 optimizedBody600_105

def optimizedBody600_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_99 optimizedBody600_106

def optimizedBody600_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_107

def optimizedBody600_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 44)]

def optimizedBody600_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_109

def optimizedBody600_111 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) optimizedBody600_108 optimizedBody600_110

def optimizedBody600_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody600_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody600_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_88 optimizedBody600_113

def optimizedBody600_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_112 optimizedBody600_114

def optimizedBody600_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_115

def optimizedBody600_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_111 optimizedBody600_116

def optimizedBody600_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_96 optimizedBody600_117

def optimizedBody600_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_98 optimizedBody600_118

def optimizedBody600_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_97 optimizedBody600_119

def optimizedBody600_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_120

def optimizedBody600_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 44)]

def optimizedBody600_123 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody600_121 optimizedBody600_122

def optimizedBody600_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_0

def optimizedBody600_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_124

def optimizedBody600_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_123 optimizedBody600_125

def optimizedBody600_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_96 optimizedBody600_126

def optimizedBody600_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_95 optimizedBody600_127

def optimizedBody600_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_128

def optimizedBody600_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_94 optimizedBody600_129

def optimizedBody600_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_90 optimizedBody600_130

def optimizedBody600_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_131

def optimizedBody600_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody600_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_133

def optimizedBody600_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 0) optimizedBody600_132 optimizedBody600_134

def optimizedBody600_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody600_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_88 optimizedBody600_136

def optimizedBody600_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_21 optimizedBody600_137

def optimizedBody600_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_138

def optimizedBody600_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_135 optimizedBody600_139

def optimizedBody600_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_89 optimizedBody600_140

def optimizedBody600_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_88 optimizedBody600_141

def optimizedBody600_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_87 optimizedBody600_142

def optimizedBody600_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_6 optimizedBody600_143

def optimizedBody600_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_9 optimizedBody600_144

def optimizedBody600_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_86 optimizedBody600_145

def optimizedBody600_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_8 optimizedBody600_146

def optimizedBody600_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_7 optimizedBody600_147

def optimizedBody600_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_6 optimizedBody600_148

def optimizedBody600_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_5 optimizedBody600_149

def optimizedBody600_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_4 optimizedBody600_150

def optimizedBody600_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_3 optimizedBody600_151

def optimizedBody600_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_2 optimizedBody600_152

def optimizedBody600_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_1 optimizedBody600_153

def optimizedBody600_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody600_0 optimizedBody600_154

def oracle600 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 0)))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 7
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 7 (Flapjack.Spt.ls 26))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                7 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))
              7
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) 1 Flapjack.Spt.ln) 7
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 7
                (Flapjack.Spt.ls 6))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
              7
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3)) 7
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                2 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 22 (Flapjack.Spt.ls 25))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 4
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 Flapjack.Spt.ln) 5
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
              1 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 7 (Flapjack.Spt.ls 3)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs Flapjack.Spt.ln 3
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4 (Flapjack.Spt.ls 27)))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln))
                2 (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 25))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 27)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) (Flapjack.Spt.ls 26)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 Flapjack.Spt.ln)))))))))
def optimized600 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(600, 1, optimizedBody600_155)
end InitECandidate.Proofs.SmallStages.Oracles600
