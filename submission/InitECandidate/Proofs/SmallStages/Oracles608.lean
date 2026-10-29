import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source608
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles608
def optimizedBody608_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody608_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1024#64)

def optimizedBody608_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 2)]

def optimizedBody608_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 128#64))

def optimizedBody608_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody608_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7#64)

def optimizedBody608_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody608_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody608_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody608_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody608_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody608_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_9 optimizedBody608_10

def optimizedBody608_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_8 optimizedBody608_11

def optimizedBody608_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_7 optimizedBody608_12

def optimizedBody608_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_13

def optimizedBody608_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_5 optimizedBody608_14

def optimizedBody608_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_15

def optimizedBody608_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody608_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 2) optimizedBody608_16 optimizedBody608_17

def optimizedBody608_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody608_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody608_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody608_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody608_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody608_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody608_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody608_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (56, 6), (46, 2), (52, 8)]

def optimizedBody608_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (56, 56), (0, 46), (52, 52)]

def optimizedBody608_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (56, 56), (0, 46), (52, 52)]

def optimizedBody608_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_28 optimizedBody608_10

def optimizedBody608_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_27, 608, 2)) (some 598) ([2, 4]) (some (2, optimizedBody608_29, 608, 3))

def optimizedBody608_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody608_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 128#64))

def optimizedBody608_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody608_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (56, 56), (46, 0), (52, 52), (48, 4)]

def optimizedBody608_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (56, 56), (0, 46), (52, 52), (46, 48)]

def optimizedBody608_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (56, 56), (0, 46), (52, 52), (46, 48)]

def optimizedBody608_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_36 optimizedBody608_10

def optimizedBody608_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_35, 608, 4)) (some 392) ([]) (some (2, optimizedBody608_37, 608, 5))

def optimizedBody608_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody608_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (56, 56), (48, 0), (54, 4), (52, 52), (46, 46), (50, 2)]

def optimizedBody608_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46)]

def optimizedBody608_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 56), (50, 48), (0, 54), (52, 52), (54, 46), (56, 50)]

def optimizedBody608_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 (Flapjack.WordStore.temp 0#5)

def optimizedBody608_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody608_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody608_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 54)]

def optimizedBody608_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 208#64))

def optimizedBody608_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (58, 4), (60, 48), (62, 52), (46, 0)]

def optimizedBody608_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (58, 58), (60, 60), (62, 62), (0, 46)]

def optimizedBody608_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (58, 58), (60, 60), (62, 62), (0, 46)]

def optimizedBody608_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_50 optimizedBody608_10

def optimizedBody608_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_49, 608, 7)) (some 76) ([2]) (some (2, optimizedBody608_51, 608, 8))

def optimizedBody608_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 224#64))

def optimizedBody608_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (58, 58), (60, 60), (62, 62)]

def optimizedBody608_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 58), (6, 60), (8, 62)]

def optimizedBody608_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 58), (6, 60), (8, 62)]

def optimizedBody608_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_56 optimizedBody608_10

def optimizedBody608_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_55, 608, 9)) (some 73) ([2]) (some (2, optimizedBody608_57, 608, 10))

def optimizedBody608_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def optimizedBody608_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody608_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody608_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def optimizedBody608_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody608_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody608_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def optimizedBody608_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_65 optimizedBody608_12

def optimizedBody608_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_44 optimizedBody608_66

def optimizedBody608_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_64 optimizedBody608_67

def optimizedBody608_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_63 optimizedBody608_68

def optimizedBody608_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_62 optimizedBody608_69

def optimizedBody608_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_21 optimizedBody608_70

def optimizedBody608_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_20 optimizedBody608_71

def optimizedBody608_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_19 optimizedBody608_72

def optimizedBody608_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_61 optimizedBody608_73

def optimizedBody608_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_60 optimizedBody608_74

def optimizedBody608_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_59 optimizedBody608_75

def optimizedBody608_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_21 optimizedBody608_76

def optimizedBody608_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_20 optimizedBody608_77

def optimizedBody608_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_19 optimizedBody608_78

def optimizedBody608_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_79

def optimizedBody608_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_58 optimizedBody608_80

def optimizedBody608_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_54 optimizedBody608_81

def optimizedBody608_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_53 optimizedBody608_82

def optimizedBody608_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_31 optimizedBody608_83

def optimizedBody608_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_84

def optimizedBody608_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_52 optimizedBody608_85

def optimizedBody608_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_48 optimizedBody608_86

def optimizedBody608_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_47 optimizedBody608_87

def optimizedBody608_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_46 optimizedBody608_88

def optimizedBody608_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_89

def optimizedBody608_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 50), (0, 0), (54, 54), (56, 56), (44, 44), (46, 4), (48, 48), (52, 52)]

def optimizedBody608_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_91

def optimizedBody608_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody608_90 optimizedBody608_92

def optimizedBody608_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody608_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (52, 54), (0, 56)]

def optimizedBody608_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (52, 54), (0, 56)]

def optimizedBody608_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_96 optimizedBody608_10

def optimizedBody608_98 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody608_95, 608, 11)) (some 393) ([2]) (some (2, optimizedBody608_97, 608, 12))

def optimizedBody608_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody608_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody608_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody608_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody608_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody608_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody608_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody608_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 200#64)))

def optimizedBody608_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody608_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody608_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48), (48, 50), (50, 52)]

def optimizedBody608_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (48, 50), (50, 52)]

def optimizedBody608_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_110 optimizedBody608_10

def optimizedBody608_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_109, 608, 13)) (some 476) ([]) (some (2, optimizedBody608_111, 608, 14))

def optimizedBody608_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody608_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 44), (0, 46), (4, 48), (12, 50)]

def optimizedBody608_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46), (4, 48), (12, 50)]

def optimizedBody608_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_115 optimizedBody608_10

def optimizedBody608_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_114, 608, 15)) (some 606) ([2]) (some (2, optimizedBody608_116, 608, 16))

def optimizedBody608_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody608_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody608_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12)]

def optimizedBody608_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody608_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_120 optimizedBody608_121

def optimizedBody608_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_101 optimizedBody608_122

def optimizedBody608_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_100 optimizedBody608_123

def optimizedBody608_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_62 optimizedBody608_124

def optimizedBody608_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_21 optimizedBody608_125

def optimizedBody608_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_20 optimizedBody608_126

def optimizedBody608_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_19 optimizedBody608_127

def optimizedBody608_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_119 optimizedBody608_128

def optimizedBody608_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_118 optimizedBody608_129

def optimizedBody608_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_59 optimizedBody608_130

def optimizedBody608_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_21 optimizedBody608_131

def optimizedBody608_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_20 optimizedBody608_132

def optimizedBody608_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_19 optimizedBody608_133

def optimizedBody608_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_134

def optimizedBody608_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_117 optimizedBody608_135

def optimizedBody608_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_113 optimizedBody608_136

def optimizedBody608_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_137

def optimizedBody608_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_112 optimizedBody608_138

def optimizedBody608_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_108 optimizedBody608_139

def optimizedBody608_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_101 optimizedBody608_140

def optimizedBody608_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_100 optimizedBody608_141

def optimizedBody608_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_107 optimizedBody608_142

def optimizedBody608_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_106 optimizedBody608_143

def optimizedBody608_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_105 optimizedBody608_144

def optimizedBody608_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_104 optimizedBody608_145

def optimizedBody608_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_103 optimizedBody608_146

def optimizedBody608_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_102 optimizedBody608_147

def optimizedBody608_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_101 optimizedBody608_148

def optimizedBody608_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_100 optimizedBody608_149

def optimizedBody608_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_99 optimizedBody608_150

def optimizedBody608_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_44 optimizedBody608_151

def optimizedBody608_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_152

def optimizedBody608_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_98 optimizedBody608_153

def optimizedBody608_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_94 optimizedBody608_154

def optimizedBody608_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_155

def optimizedBody608_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_93 optimizedBody608_156

def optimizedBody608_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_45 optimizedBody608_157

def optimizedBody608_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_44 optimizedBody608_158

def optimizedBody608_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_43 optimizedBody608_159

def optimizedBody608_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_160

def optimizedBody608_162 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) optimizedBody608_11 optimizedBody608_161

def optimizedBody608_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 6), (46, 8)]

def optimizedBody608_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_163

def optimizedBody608_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_162 optimizedBody608_164

def optimizedBody608_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_42 optimizedBody608_165

def optimizedBody608_167 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody608_41, 608, 6)) (some 607) ([]) (some (2, optimizedBody608_166, 608, 17))

def optimizedBody608_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_41

def optimizedBody608_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_167 optimizedBody608_168

def optimizedBody608_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_40 optimizedBody608_169

def optimizedBody608_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_39 optimizedBody608_170

def optimizedBody608_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_31 optimizedBody608_171

def optimizedBody608_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_172

def optimizedBody608_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_38 optimizedBody608_173

def optimizedBody608_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_34 optimizedBody608_174

def optimizedBody608_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_175

def optimizedBody608_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 4)]

def optimizedBody608_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_177

def optimizedBody608_179 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody608_176 optimizedBody608_178

def optimizedBody608_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody608_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody608_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody608_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_182 optimizedBody608_10

def optimizedBody608_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_181, 608, 18)) (some 392) ([]) (some (2, optimizedBody608_183, 608, 19))

def optimizedBody608_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody608_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody608_187 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_180, 608, 20)) (some 601) ([]) (some (2, optimizedBody608_183, 608, 21))

def optimizedBody608_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody608_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody608_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_189 optimizedBody608_10

def optimizedBody608_191 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_188, 608, 22)) (some 604) ([]) (some (2, optimizedBody608_190, 608, 23))

def optimizedBody608_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody608_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_24 optimizedBody608_192

def optimizedBody608_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_193

def optimizedBody608_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_191 optimizedBody608_194

def optimizedBody608_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_180 optimizedBody608_195

def optimizedBody608_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_196

def optimizedBody608_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_187 optimizedBody608_197

def optimizedBody608_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_180 optimizedBody608_198

def optimizedBody608_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_101 optimizedBody608_199

def optimizedBody608_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_100 optimizedBody608_200

def optimizedBody608_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_186 optimizedBody608_201

def optimizedBody608_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_185 optimizedBody608_202

def optimizedBody608_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_21 optimizedBody608_203

def optimizedBody608_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_20 optimizedBody608_204

def optimizedBody608_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_19 optimizedBody608_205

def optimizedBody608_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_206

def optimizedBody608_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_184 optimizedBody608_207

def optimizedBody608_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_180 optimizedBody608_208

def optimizedBody608_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_209

def optimizedBody608_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_179 optimizedBody608_210

def optimizedBody608_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_33 optimizedBody608_211

def optimizedBody608_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_32 optimizedBody608_212

def optimizedBody608_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_31 optimizedBody608_213

def optimizedBody608_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_214

def optimizedBody608_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_30 optimizedBody608_215

def optimizedBody608_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_26 optimizedBody608_216

def optimizedBody608_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_25 optimizedBody608_217

def optimizedBody608_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_24 optimizedBody608_218

def optimizedBody608_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_23 optimizedBody608_219

def optimizedBody608_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_9 optimizedBody608_220

def optimizedBody608_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_22 optimizedBody608_221

def optimizedBody608_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_21 optimizedBody608_222

def optimizedBody608_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_20 optimizedBody608_223

def optimizedBody608_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_19 optimizedBody608_224

def optimizedBody608_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_225

def optimizedBody608_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_4 optimizedBody608_226

def optimizedBody608_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_18 optimizedBody608_227

def optimizedBody608_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_3 optimizedBody608_228

def optimizedBody608_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_2 optimizedBody608_229

def optimizedBody608_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_1 optimizedBody608_230

def optimizedBody608_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_0 optimizedBody608_231

def oracle608 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)) 1
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 28
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 28 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 30 (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                1 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 0 Flapjack.Spt.ln))
              3
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 31 (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                4
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 26
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 23)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 2 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 1 (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1))))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 25)) 28
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 22 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.ls 27)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.ls 26)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))))))))
def optimized608 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(608, 2, optimizedBody608_232)
end InitECandidate.Proofs.SmallStages.Oracles608
