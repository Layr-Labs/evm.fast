import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source433
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles433
def optimizedBody433_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 2), (4, 4), (6, 6)]

def optimizedBody433_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody433_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 8), (50, 6)]

def optimizedBody433_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (48, 48), (4, 50)]

def optimizedBody433_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (4, 50)]

def optimizedBody433_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody433_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_4 optimizedBody433_5

def optimizedBody433_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody433_3, 433, 2)) (some 68) ([2]) (some (2, optimizedBody433_6, 433, 3))

def optimizedBody433_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody433_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 6), (52, 4)]

def optimizedBody433_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (52, 52)]

def optimizedBody433_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52)]

def optimizedBody433_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_11 optimizedBody433_5

def optimizedBody433_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody433_10, 433, 4)) (some 158) ([2, 4, 6]) (some (2, optimizedBody433_12, 433, 5))

def optimizedBody433_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody433_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody433_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody433_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody433_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551480#64))

def optimizedBody433_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody433_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 2), (52, 52)]

def optimizedBody433_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody433_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody433_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_22 optimizedBody433_5

def optimizedBody433_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody433_21, 433, 6)) (some 79) ([2, 4, 6]) (some (2, optimizedBody433_23, 433, 7))

def optimizedBody433_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody433_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody433_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody433_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (8, 46), (46, 48), (4, 50), (0, 52)]

def optimizedBody433_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (46, 48), (4, 50), (0, 52)]

def optimizedBody433_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_29 optimizedBody433_5

def optimizedBody433_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody433_28, 433, 8)) (some 68) ([2]) (some (2, optimizedBody433_30, 433, 9))

def optimizedBody433_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody433_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody433_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody433_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody433_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody433_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody433_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody433_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody433_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 4)]

def optimizedBody433_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48)]

def optimizedBody433_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48)]

def optimizedBody433_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_42 optimizedBody433_5

def optimizedBody433_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody433_41, 433, 10)) (some 390) ([2, 4, 6]) (some (2, optimizedBody433_43, 433, 11))

def optimizedBody433_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (48, 48)]

def optimizedBody433_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_8 optimizedBody433_45

def optimizedBody433_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_44 optimizedBody433_46

def optimizedBody433_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_40 optimizedBody433_47

def optimizedBody433_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_39 optimizedBody433_48

def optimizedBody433_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_38 optimizedBody433_49

def optimizedBody433_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_17 optimizedBody433_50

def optimizedBody433_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_16 optimizedBody433_51

def optimizedBody433_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_52

def optimizedBody433_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_37 optimizedBody433_53

def optimizedBody433_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_36 optimizedBody433_54

def optimizedBody433_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_35 optimizedBody433_55

def optimizedBody433_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_34 optimizedBody433_56

def optimizedBody433_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_33 optimizedBody433_57

def optimizedBody433_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_32 optimizedBody433_58

def optimizedBody433_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_8 optimizedBody433_59

def optimizedBody433_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_31 optimizedBody433_60

def optimizedBody433_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_22 optimizedBody433_61

def optimizedBody433_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_27 optimizedBody433_62

def optimizedBody433_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_8 optimizedBody433_63

def optimizedBody433_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 48), (48, 50)]

def optimizedBody433_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_8 optimizedBody433_65

def optimizedBody433_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody433_64 optimizedBody433_66

def optimizedBody433_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0), (48, 48)]

def optimizedBody433_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody433_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody433_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_70 optimizedBody433_5

def optimizedBody433_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody433_69, 433, 12)) (some 409) ([2]) (some (2, optimizedBody433_71, 433, 13))

def optimizedBody433_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48)]

def optimizedBody433_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (6, 46), (0, 48)]

def optimizedBody433_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48)]

def optimizedBody433_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_75 optimizedBody433_5

def optimizedBody433_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody433_74, 433, 14)) (some 397) ([2]) (some (2, optimizedBody433_76, 433, 15))

def optimizedBody433_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody433_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody433_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44)]

def optimizedBody433_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody433_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody433_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_82 optimizedBody433_5

def optimizedBody433_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody433_81, 433, 16)) (some 425) ([2, 4]) (some (2, optimizedBody433_83, 433, 17))

def optimizedBody433_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody433_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody433_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_85 optimizedBody433_86

def optimizedBody433_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_26 optimizedBody433_87

def optimizedBody433_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_8 optimizedBody433_88

def optimizedBody433_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_84 optimizedBody433_89

def optimizedBody433_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_80 optimizedBody433_90

def optimizedBody433_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_37 optimizedBody433_91

def optimizedBody433_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_36 optimizedBody433_92

def optimizedBody433_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_79 optimizedBody433_93

def optimizedBody433_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_78 optimizedBody433_94

def optimizedBody433_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_8 optimizedBody433_95

def optimizedBody433_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_77 optimizedBody433_96

def optimizedBody433_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_73 optimizedBody433_97

def optimizedBody433_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_8 optimizedBody433_98

def optimizedBody433_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_72 optimizedBody433_99

def optimizedBody433_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_68 optimizedBody433_100

def optimizedBody433_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_8 optimizedBody433_101

def optimizedBody433_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_67 optimizedBody433_102

def optimizedBody433_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_26 optimizedBody433_103

def optimizedBody433_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_25 optimizedBody433_104

def optimizedBody433_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_8 optimizedBody433_105

def optimizedBody433_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_24 optimizedBody433_106

def optimizedBody433_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_20 optimizedBody433_107

def optimizedBody433_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_19 optimizedBody433_108

def optimizedBody433_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_18 optimizedBody433_109

def optimizedBody433_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_17 optimizedBody433_110

def optimizedBody433_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_16 optimizedBody433_111

def optimizedBody433_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_112

def optimizedBody433_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_14 optimizedBody433_113

def optimizedBody433_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_8 optimizedBody433_114

def optimizedBody433_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_13 optimizedBody433_115

def optimizedBody433_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_9 optimizedBody433_116

def optimizedBody433_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_8 optimizedBody433_117

def optimizedBody433_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_7 optimizedBody433_118

def optimizedBody433_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_2 optimizedBody433_119

def optimizedBody433_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_1 optimizedBody433_120

def optimizedBody433_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_0 optimizedBody433_121

def oracle433 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 3
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            4
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bs Flapjack.Spt.ln 24
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))
                Flapjack.Spt.ln)
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))) 22
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.ls 26)))
            0
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 24
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs Flapjack.Spt.ln 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23))))
              22 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
              23 (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bs Flapjack.Spt.ln 25
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))))
def optimized433 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(433, 4, optimizedBody433_122)
end InitECandidate.Proofs.SmallStages.Oracles433
