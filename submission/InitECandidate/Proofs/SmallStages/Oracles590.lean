import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source590
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles590
def optimizedBody590_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody590_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody590_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody590_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody590_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_2 optimizedBody590_3

def optimizedBody590_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody590_1, 590, 2)) (some 494) ([]) (some (2, optimizedBody590_4, 590, 3))

def optimizedBody590_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody590_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (8, 8), (0, 2), (44, 44)]

def optimizedBody590_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody590_7, 590, 4)) (some 477) ([]) (some (2, optimizedBody590_4, 590, 5))

def optimizedBody590_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody590_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody590_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody590_10, 590, 6)) (some 468) ([2, 4, 6, 8]) (some (2, optimizedBody590_4, 590, 7))

def optimizedBody590_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (48, 0)]

def optimizedBody590_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48)]

def optimizedBody590_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody590_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_14 optimizedBody590_3

def optimizedBody590_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody590_13, 590, 8)) (some 495) ([2]) (some (2, optimizedBody590_15, 590, 9))

def optimizedBody590_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5000#64)

def optimizedBody590_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody590_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody590_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8000#64)

def optimizedBody590_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody590_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_20 optimizedBody590_21

def optimizedBody590_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_22

def optimizedBody590_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_21

def optimizedBody590_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody590_23 optimizedBody590_24

def optimizedBody590_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48)]

def optimizedBody590_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody590_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody590_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_28 optimizedBody590_3

def optimizedBody590_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody590_27, 590, 10)) (some 472) ([2]) (some (2, optimizedBody590_29, 590, 11))

def optimizedBody590_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody590_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody590_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0)]

def optimizedBody590_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody590_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody590_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_35 optimizedBody590_3

def optimizedBody590_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody590_34, 590, 12)) (some 496) ([2]) (some (2, optimizedBody590_36, 590, 13))

def optimizedBody590_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0)]

def optimizedBody590_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_38

def optimizedBody590_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_37 optimizedBody590_39

def optimizedBody590_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_33 optimizedBody590_40

def optimizedBody590_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_41

def optimizedBody590_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody590_42 optimizedBody590_39

def optimizedBody590_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody590_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody590_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody590_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody590_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody590_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody590_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (48, 0), (46, 2)]

def optimizedBody590_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody590_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody590_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_52 optimizedBody590_3

def optimizedBody590_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody590_51, 590, 14)) (some 420) ([2]) (some (2, optimizedBody590_53, 590, 15))

def optimizedBody590_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4), (48, 48), (50, 0)]

def optimizedBody590_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody590_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody590_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_57 optimizedBody590_3

def optimizedBody590_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody590_56, 590, 16)) (some 409) ([2]) (some (2, optimizedBody590_58, 590, 17))

def optimizedBody590_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody590_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody590_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody590_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody590_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody590_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (48, 48), (50, 50)]

def optimizedBody590_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (50, 50)]

def optimizedBody590_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_66 optimizedBody590_3

def optimizedBody590_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody590_65, 590, 18)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody590_67, 590, 19))

def optimizedBody590_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody590_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody590_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody590_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody590_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_71 optimizedBody590_72

def optimizedBody590_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_73

def optimizedBody590_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_19 optimizedBody590_72

def optimizedBody590_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_75

def optimizedBody590_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 8) optimizedBody590_74 optimizedBody590_76

def optimizedBody590_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody590_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody590_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_78 optimizedBody590_79

def optimizedBody590_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_80

def optimizedBody590_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody590_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_82 optimizedBody590_79

def optimizedBody590_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_83

def optimizedBody590_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 8) optimizedBody590_81 optimizedBody590_84

def optimizedBody590_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody590_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody590_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 183600#64)

def optimizedBody590_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 9000#64)

def optimizedBody590_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 0)]

def optimizedBody590_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_89 optimizedBody590_90

def optimizedBody590_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_88 optimizedBody590_91

def optimizedBody590_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(2, 2), (46, 6)]

def optimizedBody590_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.imm 0#64) optimizedBody590_92 optimizedBody590_93

def optimizedBody590_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48), (48, 50)]

def optimizedBody590_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (48, 50)]

def optimizedBody590_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_96 optimizedBody590_3

def optimizedBody590_98 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody590_95, 590, 20)) (some 472) ([2]) (some (2, optimizedBody590_97, 590, 21))

def optimizedBody590_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48)]

def optimizedBody590_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48)]

def optimizedBody590_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody590_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_101 optimizedBody590_3

def optimizedBody590_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody590_100, 590, 22)) (some 473) ([2]) (some (2, optimizedBody590_102, 590, 23))

def optimizedBody590_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 0)]

def optimizedBody590_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (14, 48)]

def optimizedBody590_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (14, 48)]

def optimizedBody590_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_106 optimizedBody590_3

def optimizedBody590_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody590_105, 590, 24)) (some 409) ([2]) (some (2, optimizedBody590_107, 590, 25))

def optimizedBody590_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody590_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody590_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody590_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody590_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 12), (48, 6), (50, 10), (52, 8), (54, 4),
    (56, 14)]

def optimizedBody590_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (4, 56)]

def optimizedBody590_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (4, 56)]

def optimizedBody590_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_115 optimizedBody590_3

def optimizedBody590_117 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody590_114, 590, 26)) (some 429) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody590_116, 590, 27))

def optimizedBody590_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody590_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody590_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 2), (56, 4)]

def optimizedBody590_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 2), (44, 44), (12, 46), (6, 48), (10, 50), (8, 52), (0, 54), (4, 56)]

def optimizedBody590_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (6, 48), (10, 50), (8, 52), (0, 54), (4, 56)]

def optimizedBody590_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_122 optimizedBody590_3

def optimizedBody590_124 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody590_121, 590, 28)) (some 79) ([2, 4, 6]) (some (2, optimizedBody590_123, 590, 29))

def optimizedBody590_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody590_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 0), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 4)]

def optimizedBody590_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46)]

def optimizedBody590_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody590_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_128 optimizedBody590_3

def optimizedBody590_130 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody590_127, 590, 30)) (some 587) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody590_129, 590, 31))

def optimizedBody590_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4)]

def optimizedBody590_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_131

def optimizedBody590_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_130 optimizedBody590_132

def optimizedBody590_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_126 optimizedBody590_133

def optimizedBody590_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_134

def optimizedBody590_136 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 2) optimizedBody590_135 optimizedBody590_132

def optimizedBody590_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody590_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody590_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody590_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody590_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody590_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4)]

def optimizedBody590_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46)]

def optimizedBody590_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody590_143, 590, 32)) (some 187) ([2, 4]) (some (2, optimizedBody590_129, 590, 33))

def optimizedBody590_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody590_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 136#64))

def optimizedBody590_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody590_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody590_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody590_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody590_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_150 optimizedBody590_3

def optimizedBody590_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody590_149, 590, 34)) (some 190) ([2, 4, 6]) (some (2, optimizedBody590_151, 590, 35))

def optimizedBody590_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_79

def optimizedBody590_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_152 optimizedBody590_153

def optimizedBody590_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_148 optimizedBody590_154

def optimizedBody590_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_147 optimizedBody590_155

def optimizedBody590_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_31 optimizedBody590_156

def optimizedBody590_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_146 optimizedBody590_157

def optimizedBody590_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_145 optimizedBody590_158

def optimizedBody590_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_139 optimizedBody590_159

def optimizedBody590_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_138 optimizedBody590_160

def optimizedBody590_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_137 optimizedBody590_161

def optimizedBody590_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_162

def optimizedBody590_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody590_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_164

def optimizedBody590_166 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody590_163 optimizedBody590_165

def optimizedBody590_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody590_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody590_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody590_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody590_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_168 optimizedBody590_170

def optimizedBody590_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_32 optimizedBody590_171

def optimizedBody590_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_169 optimizedBody590_172

def optimizedBody590_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_168 optimizedBody590_173

def optimizedBody590_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_19 optimizedBody590_174

def optimizedBody590_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_167 optimizedBody590_175

def optimizedBody590_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_47 optimizedBody590_176

def optimizedBody590_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_46 optimizedBody590_177

def optimizedBody590_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_45 optimizedBody590_178

def optimizedBody590_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_44 optimizedBody590_179

def optimizedBody590_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_180

def optimizedBody590_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_166 optimizedBody590_181

def optimizedBody590_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_32 optimizedBody590_182

def optimizedBody590_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_18 optimizedBody590_183

def optimizedBody590_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_184

def optimizedBody590_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_144 optimizedBody590_185

def optimizedBody590_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_142 optimizedBody590_186

def optimizedBody590_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_141 optimizedBody590_187

def optimizedBody590_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_140 optimizedBody590_188

def optimizedBody590_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_139 optimizedBody590_189

def optimizedBody590_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_138 optimizedBody590_190

def optimizedBody590_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_137 optimizedBody590_191

def optimizedBody590_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_192

def optimizedBody590_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_136 optimizedBody590_193

def optimizedBody590_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_32 optimizedBody590_194

def optimizedBody590_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_125 optimizedBody590_195

def optimizedBody590_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_196

def optimizedBody590_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_124 optimizedBody590_197

def optimizedBody590_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_120 optimizedBody590_198

def optimizedBody590_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_119 optimizedBody590_199

def optimizedBody590_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_118 optimizedBody590_200

def optimizedBody590_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_201

def optimizedBody590_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_117 optimizedBody590_202

def optimizedBody590_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_113 optimizedBody590_203

def optimizedBody590_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_112 optimizedBody590_204

def optimizedBody590_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_18 optimizedBody590_205

def optimizedBody590_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_111 optimizedBody590_206

def optimizedBody590_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_18 optimizedBody590_207

def optimizedBody590_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_110 optimizedBody590_208

def optimizedBody590_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_18 optimizedBody590_209

def optimizedBody590_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_109 optimizedBody590_210

def optimizedBody590_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_18 optimizedBody590_211

def optimizedBody590_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_212

def optimizedBody590_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_108 optimizedBody590_213

def optimizedBody590_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_104 optimizedBody590_214

def optimizedBody590_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_215

def optimizedBody590_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_103 optimizedBody590_216

def optimizedBody590_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_99 optimizedBody590_217

def optimizedBody590_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_218

def optimizedBody590_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_98 optimizedBody590_219

def optimizedBody590_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_57 optimizedBody590_220

def optimizedBody590_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_221

def optimizedBody590_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_94 optimizedBody590_222

def optimizedBody590_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_87 optimizedBody590_223

def optimizedBody590_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_86 optimizedBody590_224

def optimizedBody590_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_225

def optimizedBody590_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_85 optimizedBody590_226

def optimizedBody590_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_70 optimizedBody590_227

def optimizedBody590_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_18 optimizedBody590_228

def optimizedBody590_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_229

def optimizedBody590_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_77 optimizedBody590_230

def optimizedBody590_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_70 optimizedBody590_231

def optimizedBody590_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_31 optimizedBody590_232

def optimizedBody590_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_32 optimizedBody590_233

def optimizedBody590_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_69 optimizedBody590_234

def optimizedBody590_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_235

def optimizedBody590_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_68 optimizedBody590_236

def optimizedBody590_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_64 optimizedBody590_237

def optimizedBody590_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_63 optimizedBody590_238

def optimizedBody590_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_18 optimizedBody590_239

def optimizedBody590_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_62 optimizedBody590_240

def optimizedBody590_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_18 optimizedBody590_241

def optimizedBody590_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_61 optimizedBody590_242

def optimizedBody590_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_18 optimizedBody590_243

def optimizedBody590_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_60 optimizedBody590_244

def optimizedBody590_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_18 optimizedBody590_245

def optimizedBody590_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_246

def optimizedBody590_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_59 optimizedBody590_247

def optimizedBody590_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_55 optimizedBody590_248

def optimizedBody590_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_249

def optimizedBody590_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_54 optimizedBody590_250

def optimizedBody590_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_50 optimizedBody590_251

def optimizedBody590_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_49 optimizedBody590_252

def optimizedBody590_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_48 optimizedBody590_253

def optimizedBody590_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_47 optimizedBody590_254

def optimizedBody590_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_46 optimizedBody590_255

def optimizedBody590_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_45 optimizedBody590_256

def optimizedBody590_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_44 optimizedBody590_257

def optimizedBody590_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_258

def optimizedBody590_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_43 optimizedBody590_259

def optimizedBody590_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_32 optimizedBody590_260

def optimizedBody590_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_31 optimizedBody590_261

def optimizedBody590_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_262

def optimizedBody590_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_30 optimizedBody590_263

def optimizedBody590_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_26 optimizedBody590_264

def optimizedBody590_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_265

def optimizedBody590_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_25 optimizedBody590_266

def optimizedBody590_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_19 optimizedBody590_267

def optimizedBody590_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_18 optimizedBody590_268

def optimizedBody590_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_17 optimizedBody590_269

def optimizedBody590_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_270

def optimizedBody590_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_16 optimizedBody590_271

def optimizedBody590_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_12 optimizedBody590_272

def optimizedBody590_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_273

def optimizedBody590_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_11 optimizedBody590_274

def optimizedBody590_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_9 optimizedBody590_275

def optimizedBody590_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_276

def optimizedBody590_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_8 optimizedBody590_277

def optimizedBody590_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_1 optimizedBody590_278

def optimizedBody590_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_6 optimizedBody590_279

def optimizedBody590_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_5 optimizedBody590_280

def optimizedBody590_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody590_0 optimizedBody590_281

def oracle590 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  24
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 25))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 2)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.ls 2))
                22
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 23)) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 7))))
                0
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                  22 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 7))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                  0 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0))))
                22
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 4)) 4
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 26)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) (Flapjack.Spt.ls 22)) 22
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 22 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 27))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 28))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                22 Flapjack.Spt.ln)))))))
def optimized590 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(590, 1, optimizedBody590_282)
end InitECandidate.Proofs.SmallStages.Oracles590
