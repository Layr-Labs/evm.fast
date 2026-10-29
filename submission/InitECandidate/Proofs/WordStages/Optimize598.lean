import InitECandidate.Proofs.WordStages.Optimize582
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source598
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody598_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody598_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody598_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody598_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody598_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody598_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody598_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody598_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 136#64))

def optimizedBody598_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody598_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody598_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 56#64))

def optimizedBody598_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 14 64#64))

def optimizedBody598_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 14 72#64))

def optimizedBody598_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 14 80#64))

def optimizedBody598_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 14), (48, 4), (50, 8), (52, 6), (54, 2)]

def optimizedBody598_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (14, 46), (8, 48), (12, 50), (10, 52), (6, 54)]

def optimizedBody598_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (8, 48), (12, 50), (10, 52), (6, 54)]

def optimizedBody598_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody598_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_16 optimizedBody598_17

def optimizedBody598_19 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody598_15, 598, 2)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody598_18, 598, 3))

def optimizedBody598_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody598_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody598_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 16#64))

def optimizedBody598_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 14 32#64))

def optimizedBody598_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 14), (48, 8), (50, 12), (52, 10), (54, 6)]

def optimizedBody598_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody598_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody598_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_26 optimizedBody598_17

def optimizedBody598_28 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody598_25, 598, 4)) (some 427) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody598_27, 598, 5))

def optimizedBody598_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody598_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody598_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody598_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody598_33 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody598_15, 598, 6)) (some 79) ([2, 4, 6]) (some (2, optimizedBody598_18, 598, 7))

def optimizedBody598_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 14)]

def optimizedBody598_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (14, 46)]

def optimizedBody598_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46)]

def optimizedBody598_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_36 optimizedBody598_17

def optimizedBody598_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody598_35, 598, 8)) (some 585) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody598_37, 598, 9))

def optimizedBody598_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (14, 14)]

def optimizedBody598_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_39

def optimizedBody598_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_38 optimizedBody598_40

def optimizedBody598_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_34 optimizedBody598_41

def optimizedBody598_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_23 optimizedBody598_42

def optimizedBody598_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_6 optimizedBody598_43

def optimizedBody598_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_22 optimizedBody598_44

def optimizedBody598_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_6 optimizedBody598_45

def optimizedBody598_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_46

def optimizedBody598_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody598_47 optimizedBody598_40

def optimizedBody598_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_48 optimizedBody598_40

def optimizedBody598_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_21 optimizedBody598_49

def optimizedBody598_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_20 optimizedBody598_50

def optimizedBody598_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_51

def optimizedBody598_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_33 optimizedBody598_52

def optimizedBody598_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_32 optimizedBody598_53

def optimizedBody598_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_31 optimizedBody598_54

def optimizedBody598_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_30 optimizedBody598_55

def optimizedBody598_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_20 optimizedBody598_56

def optimizedBody598_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_29 optimizedBody598_57

def optimizedBody598_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_20 optimizedBody598_58

def optimizedBody598_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_59

def optimizedBody598_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_28 optimizedBody598_60

def optimizedBody598_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_24 optimizedBody598_61

def optimizedBody598_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_23 optimizedBody598_62

def optimizedBody598_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_6 optimizedBody598_63

def optimizedBody598_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_22 optimizedBody598_64

def optimizedBody598_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_6 optimizedBody598_65

def optimizedBody598_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_66

def optimizedBody598_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody598_67 optimizedBody598_40

def optimizedBody598_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_68 optimizedBody598_40

def optimizedBody598_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_21 optimizedBody598_69

def optimizedBody598_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_20 optimizedBody598_70

def optimizedBody598_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_71

def optimizedBody598_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_19 optimizedBody598_72

def optimizedBody598_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_14 optimizedBody598_73

def optimizedBody598_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_13 optimizedBody598_74

def optimizedBody598_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_6 optimizedBody598_75

def optimizedBody598_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_12 optimizedBody598_76

def optimizedBody598_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_6 optimizedBody598_77

def optimizedBody598_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_11 optimizedBody598_78

def optimizedBody598_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_6 optimizedBody598_79

def optimizedBody598_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_10 optimizedBody598_80

def optimizedBody598_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_6 optimizedBody598_81

def optimizedBody598_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_82

def optimizedBody598_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (14, 14)]

def optimizedBody598_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_84

def optimizedBody598_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody598_83 optimizedBody598_85

def optimizedBody598_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 104#64))

def optimizedBody598_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody598_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody598_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 14)]

def optimizedBody598_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46)]

def optimizedBody598_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody598_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_92 optimizedBody598_17

def optimizedBody598_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody598_91, 598, 10)) (some 829) ([2]) (some (2, optimizedBody598_93, 598, 11))

def optimizedBody598_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def optimizedBody598_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody598_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody598_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 168#64))

def optimizedBody598_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody598_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody598_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody598_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_101 optimizedBody598_17

def optimizedBody598_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody598_100, 598, 12)) (some 837) ([2]) (some (2, optimizedBody598_102, 598, 13))

def optimizedBody598_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody598_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_104

def optimizedBody598_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_103 optimizedBody598_105

def optimizedBody598_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_99 optimizedBody598_106

def optimizedBody598_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_107

def optimizedBody598_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 44)]

def optimizedBody598_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_109

def optimizedBody598_111 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) optimizedBody598_108 optimizedBody598_110

def optimizedBody598_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody598_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody598_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_88 optimizedBody598_113

def optimizedBody598_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_112 optimizedBody598_114

def optimizedBody598_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_115

def optimizedBody598_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_111 optimizedBody598_116

def optimizedBody598_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_96 optimizedBody598_117

def optimizedBody598_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_98 optimizedBody598_118

def optimizedBody598_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_97 optimizedBody598_119

def optimizedBody598_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_120

def optimizedBody598_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 44)]

def optimizedBody598_123 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody598_121 optimizedBody598_122

def optimizedBody598_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_0

def optimizedBody598_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_124

def optimizedBody598_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_123 optimizedBody598_125

def optimizedBody598_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_96 optimizedBody598_126

def optimizedBody598_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_95 optimizedBody598_127

def optimizedBody598_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_128

def optimizedBody598_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_94 optimizedBody598_129

def optimizedBody598_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_90 optimizedBody598_130

def optimizedBody598_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_131

def optimizedBody598_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody598_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_133

def optimizedBody598_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 0) optimizedBody598_132 optimizedBody598_134

def optimizedBody598_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody598_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_88 optimizedBody598_136

def optimizedBody598_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_21 optimizedBody598_137

def optimizedBody598_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_138

def optimizedBody598_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_135 optimizedBody598_139

def optimizedBody598_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_89 optimizedBody598_140

def optimizedBody598_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_88 optimizedBody598_141

def optimizedBody598_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_87 optimizedBody598_142

def optimizedBody598_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_6 optimizedBody598_143

def optimizedBody598_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_9 optimizedBody598_144

def optimizedBody598_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_86 optimizedBody598_145

def optimizedBody598_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_8 optimizedBody598_146

def optimizedBody598_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_7 optimizedBody598_147

def optimizedBody598_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_6 optimizedBody598_148

def optimizedBody598_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_5 optimizedBody598_149

def optimizedBody598_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_4 optimizedBody598_150

def optimizedBody598_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_3 optimizedBody598_151

def optimizedBody598_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_2 optimizedBody598_152

def optimizedBody598_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_1 optimizedBody598_153

def optimizedBody598_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody598_0 optimizedBody598_154

def oracle598 : Option (Spt Nat) :=
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
def optimized598 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(598, 1, optimizedBody598_155)
theorem optimize598_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source598, oracle598) = optimized598 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize598_eq
end InitECandidate.Proofs.WordStages
