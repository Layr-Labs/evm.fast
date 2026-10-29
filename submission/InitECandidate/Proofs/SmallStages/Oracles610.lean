import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source610
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles610
def optimizedBody610_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2)]

def optimizedBody610_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody610_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody610_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody610_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_2 optimizedBody610_3

def optimizedBody610_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody610_1, 610, 2)) (some 392) ([]) (some (2, optimizedBody610_4, 610, 3))

def optimizedBody610_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody610_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody610_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody610_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 4), (46, 0), (48, 2)]

def optimizedBody610_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (54, 54), (46, 46), (0, 48)]

def optimizedBody610_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (46, 46), (0, 48)]

def optimizedBody610_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_11 optimizedBody610_3

def optimizedBody610_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody610_10, 610, 4)) (some 423) ([2]) (some (2, optimizedBody610_12, 610, 5))

def optimizedBody610_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (54, 54), (46, 46), (48, 0)]

def optimizedBody610_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody610_10, 610, 6)) (some 427) ([2]) (some (2, optimizedBody610_12, 610, 7))

def optimizedBody610_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (54, 54), (46, 46)]

def optimizedBody610_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (54, 54), (0, 46)]

def optimizedBody610_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (0, 46)]

def optimizedBody610_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_18 optimizedBody610_3

def optimizedBody610_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody610_17, 610, 8)) (some 432) ([2]) (some (2, optimizedBody610_19, 610, 9))

def optimizedBody610_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (54, 54), (46, 0)]

def optimizedBody610_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (54, 54), (6, 46)]

def optimizedBody610_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (6, 46)]

def optimizedBody610_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_23 optimizedBody610_3

def optimizedBody610_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody610_22, 610, 10)) (some 608) ([2]) (some (2, optimizedBody610_24, 610, 11))

def optimizedBody610_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody610_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 160#64))

def optimizedBody610_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody610_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody610_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody610_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody610_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody610_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody610_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def optimizedBody610_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody610_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody610_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (48, 44), (50, 2), (54, 54), (52, 4)]

def optimizedBody610_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 48), (0, 50), (4, 52)]

def optimizedBody610_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (50, 50), (8, 54), (52, 52)]

def optimizedBody610_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody610_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_40 optimizedBody610_3

def optimizedBody610_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 (Flapjack.WordStore.temp 0#5)

def optimizedBody610_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 8), (48, 48), (50, 50), (44, 0), (52, 52)]

def optimizedBody610_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (50, 50), (44, 44), (52, 52)]

def optimizedBody610_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (50, 50), (44, 44), (52, 52)]

def optimizedBody610_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_45 optimizedBody610_3

def optimizedBody610_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody610_44, 610, 13)) (some 393) ([2]) (some (2, optimizedBody610_46, 610, 14))

def optimizedBody610_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (50, 50), (0, 44), (52, 52)]

def optimizedBody610_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (50, 50), (0, 44), (52, 52)]

def optimizedBody610_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_49 optimizedBody610_3

def optimizedBody610_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody610_48, 610, 15)) (some 476) ([]) (some (2, optimizedBody610_50, 610, 16))

def optimizedBody610_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (48, 48), (50, 50), (52, 52)]

def optimizedBody610_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 48), (0, 50), (4, 52)]

def optimizedBody610_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 48), (0, 50), (4, 52)]

def optimizedBody610_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_54 optimizedBody610_3

def optimizedBody610_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody610_53, 610, 17)) (some 606) ([2]) (some (2, optimizedBody610_55, 610, 18))

def optimizedBody610_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody610_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody610_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody610_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody610_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody610_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551352#64))

def optimizedBody610_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody610_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody610_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody610_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 0), (4, 4)]

def optimizedBody610_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_64 optimizedBody610_66

def optimizedBody610_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_63 optimizedBody610_67

def optimizedBody610_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_28 optimizedBody610_68

def optimizedBody610_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_65 optimizedBody610_69

def optimizedBody610_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_60 optimizedBody610_70

def optimizedBody610_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_59 optimizedBody610_71

def optimizedBody610_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_58 optimizedBody610_72

def optimizedBody610_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_57 optimizedBody610_73

def optimizedBody610_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_64 optimizedBody610_74

def optimizedBody610_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_63 optimizedBody610_75

def optimizedBody610_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_62 optimizedBody610_76

def optimizedBody610_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_59 optimizedBody610_77

def optimizedBody610_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_58 optimizedBody610_78

def optimizedBody610_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_57 optimizedBody610_79

def optimizedBody610_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_61 optimizedBody610_80

def optimizedBody610_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_60 optimizedBody610_81

def optimizedBody610_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_59 optimizedBody610_82

def optimizedBody610_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_58 optimizedBody610_83

def optimizedBody610_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_57 optimizedBody610_84

def optimizedBody610_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_85

def optimizedBody610_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_56 optimizedBody610_86

def optimizedBody610_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_52 optimizedBody610_87

def optimizedBody610_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_88

def optimizedBody610_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_51 optimizedBody610_89

def optimizedBody610_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_44 optimizedBody610_90

def optimizedBody610_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_91

def optimizedBody610_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_47 optimizedBody610_92

def optimizedBody610_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_43 optimizedBody610_93

def optimizedBody610_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_42 optimizedBody610_94

def optimizedBody610_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_95

def optimizedBody610_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) optimizedBody610_41 optimizedBody610_96

def optimizedBody610_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_66

def optimizedBody610_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_97 optimizedBody610_98

def optimizedBody610_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_39 optimizedBody610_99

def optimizedBody610_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody610_38, 610, 12)) (some 609) ([2, 4]) (some (2, optimizedBody610_100, 610, 19))

def optimizedBody610_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def optimizedBody610_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody610_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody610_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody610_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody610_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_105 optimizedBody610_106

def optimizedBody610_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_104 optimizedBody610_107

def optimizedBody610_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_103 optimizedBody610_108

def optimizedBody610_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_102 optimizedBody610_109

def optimizedBody610_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_59 optimizedBody610_110

def optimizedBody610_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_58 optimizedBody610_111

def optimizedBody610_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_57 optimizedBody610_112

def optimizedBody610_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_113

def optimizedBody610_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_101 optimizedBody610_114

def optimizedBody610_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_37 optimizedBody610_115

def optimizedBody610_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_36 optimizedBody610_116

def optimizedBody610_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_35 optimizedBody610_117

def optimizedBody610_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_34 optimizedBody610_118

def optimizedBody610_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_33 optimizedBody610_119

def optimizedBody610_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_32 optimizedBody610_120

def optimizedBody610_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_31 optimizedBody610_121

def optimizedBody610_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_30 optimizedBody610_122

def optimizedBody610_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_29 optimizedBody610_123

def optimizedBody610_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_124

def optimizedBody610_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(44, 44), (10, 54), (46, 4)]

def optimizedBody610_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody610_125 optimizedBody610_126

def optimizedBody610_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (44, 44), (46, 46)]

def optimizedBody610_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody610_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody610_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_130 optimizedBody610_3

def optimizedBody610_132 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody610_129, 610, 20)) (some 393) ([2]) (some (2, optimizedBody610_131, 610, 21))

def optimizedBody610_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody610_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_105 optimizedBody610_133

def optimizedBody610_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_134

def optimizedBody610_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_132 optimizedBody610_135

def optimizedBody610_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_128 optimizedBody610_136

def optimizedBody610_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_137

def optimizedBody610_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_138

def optimizedBody610_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_127 optimizedBody610_139

def optimizedBody610_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_28 optimizedBody610_140

def optimizedBody610_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_27 optimizedBody610_141

def optimizedBody610_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_26 optimizedBody610_142

def optimizedBody610_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_143

def optimizedBody610_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_25 optimizedBody610_144

def optimizedBody610_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_21 optimizedBody610_145

def optimizedBody610_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_146

def optimizedBody610_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_20 optimizedBody610_147

def optimizedBody610_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_16 optimizedBody610_148

def optimizedBody610_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_149

def optimizedBody610_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_15 optimizedBody610_150

def optimizedBody610_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_14 optimizedBody610_151

def optimizedBody610_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_152

def optimizedBody610_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_13 optimizedBody610_153

def optimizedBody610_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_9 optimizedBody610_154

def optimizedBody610_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_8 optimizedBody610_155

def optimizedBody610_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_7 optimizedBody610_156

def optimizedBody610_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_157

def optimizedBody610_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_5 optimizedBody610_158

def optimizedBody610_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_0 optimizedBody610_159

def oracle610 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 22
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 23
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 27
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 22
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                0 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 27))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                27
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 3)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                0 (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
              0
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                2 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 22)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) 23
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) 22 (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 22
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 27 (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
              23
              (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 24
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))))
def optimized610 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(610, 2, optimizedBody610_160)
end InitECandidate.Proofs.SmallStages.Oracles610
