import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source390
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles390
def optimizedBody390_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (48, 4), (46, 2), (56, 6)]

def optimizedBody390_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 2), (44, 44), (48, 48), (46, 46), (56, 56)]

def optimizedBody390_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (56, 56)]

def optimizedBody390_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody390_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_2 optimizedBody390_3

def optimizedBody390_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody390_1, 390, 2)) (some 186) ([2, 4]) (some (2, optimizedBody390_4, 390, 3))

def optimizedBody390_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody390_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody390_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody390_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody390_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551600#64))

def optimizedBody390_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody390_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551408#64))

def optimizedBody390_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody390_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 4), (46, 46), (54, 6), (56, 56)]

def optimizedBody390_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (50, 50), (0, 46), (54, 54), (56, 56)]

def optimizedBody390_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (0, 46), (54, 54), (56, 56)]

def optimizedBody390_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_16 optimizedBody390_3

def optimizedBody390_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody390_15, 390, 4)) (some 66) ([2]) (some (2, optimizedBody390_17, 390, 5))

def optimizedBody390_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (50, 50), (0, 0), (54, 54), (56, 56)]

def optimizedBody390_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_6 optimizedBody390_19

def optimizedBody390_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_18 optimizedBody390_20

def optimizedBody390_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_14 optimizedBody390_21

def optimizedBody390_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_13 optimizedBody390_22

def optimizedBody390_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_6 optimizedBody390_23

def optimizedBody390_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (50, 4), (0, 46), (54, 6), (56, 56)]

def optimizedBody390_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_6 optimizedBody390_25

def optimizedBody390_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody390_24 optimizedBody390_26

def optimizedBody390_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody390_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody390_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 2), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56)]

def optimizedBody390_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody390_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody390_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_32 optimizedBody390_3

def optimizedBody390_34 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody390_31, 390, 6)) (some 68) ([2]) (some (2, optimizedBody390_33, 390, 7))

def optimizedBody390_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 0), (48, 4), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody390_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (10, 46), (4, 48), (0, 50), (12, 52), (16, 54), (6, 56)]

def optimizedBody390_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (4, 48), (0, 50), (12, 52), (16, 54), (6, 56)]

def optimizedBody390_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_37 optimizedBody390_3

def optimizedBody390_39 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody390_36, 390, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody390_38, 390, 9))

def optimizedBody390_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody390_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody390_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14 2

def optimizedBody390_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 18446744073709551600#64))

def optimizedBody390_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody390_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14)]

def optimizedBody390_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 14 18446744073709551416#64))

def optimizedBody390_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody390_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 12)]

def optimizedBody390_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody390_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody390_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 8 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody390_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody390_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody390_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 8 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody390_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (16, 16)]

def optimizedBody390_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody390_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody390_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody390_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody390_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 14 (Flapjack.WordRegImm.imm 18446744073709551600#64)))

def optimizedBody390_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 14 18446744073709551600#64))

def optimizedBody390_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody390_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody390_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody390_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody390_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_65 optimizedBody390_3

def optimizedBody390_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody390_64, 390, 10)) (some 190) ([2, 4, 6]) (some (2, optimizedBody390_66, 390, 11))

def optimizedBody390_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody390_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody390_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody390_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_69 optimizedBody390_70

def optimizedBody390_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_68 optimizedBody390_71

def optimizedBody390_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_6 optimizedBody390_72

def optimizedBody390_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_67 optimizedBody390_73

def optimizedBody390_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_63 optimizedBody390_74

def optimizedBody390_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_59 optimizedBody390_75

def optimizedBody390_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_58 optimizedBody390_76

def optimizedBody390_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_62 optimizedBody390_77

def optimizedBody390_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_61 optimizedBody390_78

def optimizedBody390_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_45 optimizedBody390_79

def optimizedBody390_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_60 optimizedBody390_80

def optimizedBody390_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_45 optimizedBody390_81

def optimizedBody390_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_59 optimizedBody390_82

def optimizedBody390_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_58 optimizedBody390_83

def optimizedBody390_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_57 optimizedBody390_84

def optimizedBody390_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_50 optimizedBody390_85

def optimizedBody390_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_56 optimizedBody390_86

def optimizedBody390_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_55 optimizedBody390_87

def optimizedBody390_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_54 optimizedBody390_88

def optimizedBody390_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_50 optimizedBody390_89

def optimizedBody390_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_53 optimizedBody390_90

def optimizedBody390_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_52 optimizedBody390_91

def optimizedBody390_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_51 optimizedBody390_92

def optimizedBody390_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_50 optimizedBody390_93

def optimizedBody390_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_49 optimizedBody390_94

def optimizedBody390_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_48 optimizedBody390_95

def optimizedBody390_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_47 optimizedBody390_96

def optimizedBody390_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_46 optimizedBody390_97

def optimizedBody390_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_45 optimizedBody390_98

def optimizedBody390_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_44 optimizedBody390_99

def optimizedBody390_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_43 optimizedBody390_100

def optimizedBody390_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_42 optimizedBody390_101

def optimizedBody390_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_41 optimizedBody390_102

def optimizedBody390_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_40 optimizedBody390_103

def optimizedBody390_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_6 optimizedBody390_104

def optimizedBody390_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_39 optimizedBody390_105

def optimizedBody390_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_35 optimizedBody390_106

def optimizedBody390_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_6 optimizedBody390_107

def optimizedBody390_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_34 optimizedBody390_108

def optimizedBody390_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_30 optimizedBody390_109

def optimizedBody390_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_29 optimizedBody390_110

def optimizedBody390_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_28 optimizedBody390_111

def optimizedBody390_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_6 optimizedBody390_112

def optimizedBody390_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_27 optimizedBody390_113

def optimizedBody390_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_12 optimizedBody390_114

def optimizedBody390_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_11 optimizedBody390_115

def optimizedBody390_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_10 optimizedBody390_116

def optimizedBody390_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_9 optimizedBody390_117

def optimizedBody390_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_8 optimizedBody390_118

def optimizedBody390_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_7 optimizedBody390_119

def optimizedBody390_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_6 optimizedBody390_120

def optimizedBody390_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_5 optimizedBody390_121

def optimizedBody390_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_0 optimizedBody390_122

def oracle390 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 Flapjack.Spt.ln) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4))) 24
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 28 (Flapjack.Spt.ls 25)) 28
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 3
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 7)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 2
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 7))) 22
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 Flapjack.Spt.ln) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 (Flapjack.Spt.ls 2)) 23
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 4))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 26)))
              24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 28
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 25)))
              22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 23 Flapjack.Spt.ln)))))))
def optimized390 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(390, 4, optimizedBody390_123)
end InitECandidate.Proofs.SmallStages.Oracles390
