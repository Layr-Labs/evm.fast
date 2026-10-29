import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source603
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles603
def optimizedBody603_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody603_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody603_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody603_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody603_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody603_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody603_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody603_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody603_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody603_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody603_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 6 40#64))

def optimizedBody603_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody603_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 6 48#64))

def optimizedBody603_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 6 56#64))

def optimizedBody603_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 6 72#64))

def optimizedBody603_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 6 80#64))

def optimizedBody603_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 6 88#64))

def optimizedBody603_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody603_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody603_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody603_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 96#64))

def optimizedBody603_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody603_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 4 160#64))

def optimizedBody603_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 0#64)

def optimizedBody603_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 12), (4, 4), (44, 0), (66, 2), (54, 18), (46, 16), (48, 14), (50, 6), (52, 8), (56, 4), (58, 20), (60, 22),
    (62, 10), (64, 24)]

def optimizedBody603_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (54, 54), (46, 46), (48, 48), (6, 50), (8, 52), (4, 56), (50, 58), (52, 60), (10, 62), (56, 64)]

def optimizedBody603_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 66), (54, 54), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64)]

def optimizedBody603_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody603_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_5 optimizedBody603_27

def optimizedBody603_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 (Flapjack.WordStore.temp 0#5)

def optimizedBody603_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (68, 44), (70, 54), (72, 46), (74, 48), (44, 50), (46, 52), (48, 56), (76, 58), (78, 60), (50, 62), (80, 64),
    (52, 2)]

def optimizedBody603_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(68, 68), (70, 70), (72, 72), (74, 74), (44, 44), (46, 46), (48, 48), (76, 76), (78, 78), (50, 50), (80, 80),
    (52, 52)]

def optimizedBody603_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (68, 68), (70, 70), (72, 72), (74, 74), (44, 44), (46, 46), (48, 48), (76, 76), (78, 78), (50, 50), (80, 80),
    (52, 52)]

def optimizedBody603_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_32 optimizedBody603_27

def optimizedBody603_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_31, 603, 3)) (some 393) ([2]) (some (2, optimizedBody603_33, 603, 4))

def optimizedBody603_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(68, 68), (70, 70), (72, 72), (74, 74), (44, 44), (46, 46), (48, 48), (76, 76), (78, 78), (50, 50), (80, 80),
    (0, 52)]

def optimizedBody603_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (68, 68), (70, 70), (72, 72), (74, 74), (44, 44), (46, 46), (48, 48), (76, 76), (78, 78), (50, 50), (80, 80),
    (0, 52)]

def optimizedBody603_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_36 optimizedBody603_27

def optimizedBody603_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_35, 603, 5)) (some 476) ([]) (some (2, optimizedBody603_37, 603, 6))

def optimizedBody603_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (68, 68), (70, 70), (72, 72), (74, 74), (44, 44), (46, 46), (48, 48), (76, 76), (78, 78), (50, 50), (80, 80)]

def optimizedBody603_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(68, 68), (70, 70), (72, 72), (74, 74), (6, 44), (8, 46), (4, 48), (76, 76), (78, 78), (10, 50), (80, 80)]

def optimizedBody603_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (68, 68), (70, 70), (72, 72), (74, 74), (6, 44), (8, 46), (4, 48), (76, 76), (78, 78), (10, 50), (80, 80)]

def optimizedBody603_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_41 optimizedBody603_27

def optimizedBody603_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_40, 603, 7)) (some 606) ([2]) (some (2, optimizedBody603_42, 603, 8))

def optimizedBody603_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody603_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody603_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody603_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody603_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody603_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551352#64))

def optimizedBody603_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody603_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody603_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody603_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody603_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(68, 68), (70, 70), (72, 72), (74, 74), (6, 6), (8, 8), (4, 4), (76, 76), (78, 78), (10, 10), (80, 80)]

def optimizedBody603_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_51 optimizedBody603_54

def optimizedBody603_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_50 optimizedBody603_55

def optimizedBody603_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_53 optimizedBody603_56

def optimizedBody603_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_52 optimizedBody603_57

def optimizedBody603_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_47 optimizedBody603_58

def optimizedBody603_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_46 optimizedBody603_59

def optimizedBody603_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_45 optimizedBody603_60

def optimizedBody603_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_44 optimizedBody603_61

def optimizedBody603_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_51 optimizedBody603_62

def optimizedBody603_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_50 optimizedBody603_63

def optimizedBody603_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_49 optimizedBody603_64

def optimizedBody603_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_46 optimizedBody603_65

def optimizedBody603_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_45 optimizedBody603_66

def optimizedBody603_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_44 optimizedBody603_67

def optimizedBody603_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_48 optimizedBody603_68

def optimizedBody603_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_47 optimizedBody603_69

def optimizedBody603_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_46 optimizedBody603_70

def optimizedBody603_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_45 optimizedBody603_71

def optimizedBody603_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_44 optimizedBody603_72

def optimizedBody603_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_73

def optimizedBody603_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_43 optimizedBody603_74

def optimizedBody603_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_39 optimizedBody603_75

def optimizedBody603_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_76

def optimizedBody603_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_38 optimizedBody603_77

def optimizedBody603_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_31 optimizedBody603_78

def optimizedBody603_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_79

def optimizedBody603_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_34 optimizedBody603_80

def optimizedBody603_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_30 optimizedBody603_81

def optimizedBody603_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_29 optimizedBody603_82

def optimizedBody603_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_83

def optimizedBody603_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) optimizedBody603_28 optimizedBody603_84

def optimizedBody603_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 68), (54, 70), (46, 72), (48, 74), (6, 6), (8, 8), (4, 4), (50, 76), (52, 78), (10, 10), (56, 80)]

def optimizedBody603_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_86

def optimizedBody603_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_85 optimizedBody603_87

def optimizedBody603_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_26 optimizedBody603_88

def optimizedBody603_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_25, 603, 2)) (some 609) ([2, 4]) (some (2, optimizedBody603_89, 603, 9))

def optimizedBody603_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (54, 54), (46, 46), (48, 48), (6, 6), (8, 8), (4, 4), (50, 50), (52, 52), (10, 10), (56, 56)]

def optimizedBody603_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_91

def optimizedBody603_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_90 optimizedBody603_92

def optimizedBody603_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_24 optimizedBody603_93

def optimizedBody603_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_94

def optimizedBody603_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 0), (54, 18), (46, 16), (48, 14), (50, 6), (52, 8), (56, 4), (58, 20), (60, 22), (62, 10), (64, 24)]

def optimizedBody603_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (54, 54), (46, 46), (48, 48), (6, 50), (8, 52), (4, 56), (50, 58), (52, 60), (10, 62), (56, 64)]

def optimizedBody603_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (54, 54), (46, 46), (48, 48), (6, 50), (8, 52), (4, 56), (50, 58), (52, 60), (10, 62), (56, 64)]

def optimizedBody603_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_98 optimizedBody603_27

def optimizedBody603_100 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody603_97, 603, 10)) (some 393) ([2]) (some (2, optimizedBody603_99, 603, 11))

def optimizedBody603_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_100 optimizedBody603_92

def optimizedBody603_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_96 optimizedBody603_101

def optimizedBody603_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_102

def optimizedBody603_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 28) optimizedBody603_95 optimizedBody603_103

def optimizedBody603_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_104 optimizedBody603_92

def optimizedBody603_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_23 optimizedBody603_105

def optimizedBody603_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_22 optimizedBody603_106

def optimizedBody603_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_21 optimizedBody603_107

def optimizedBody603_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_20 optimizedBody603_108

def optimizedBody603_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_7 optimizedBody603_109

def optimizedBody603_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_110

def optimizedBody603_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (54, 18), (46, 16), (48, 14), (6, 6), (8, 8), (4, 4), (50, 20), (52, 22), (10, 10), (56, 24)]

def optimizedBody603_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_112

def optimizedBody603_114 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody603_111 optimizedBody603_113

def optimizedBody603_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def optimizedBody603_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody603_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody603_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def optimizedBody603_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody603_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 2)]

def optimizedBody603_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody603_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody603_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 160#64))

def optimizedBody603_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody603_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 2), (52, 52)]

def optimizedBody603_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (52, 52)]

def optimizedBody603_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52)]

def optimizedBody603_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_127 optimizedBody603_27

def optimizedBody603_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_126, 603, 12)) (some 613) ([2]) (some (2, optimizedBody603_128, 603, 13))

def optimizedBody603_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52)]

def optimizedBody603_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48), (48, 50), (50, 52)]

def optimizedBody603_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (48, 50), (50, 52)]

def optimizedBody603_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_132 optimizedBody603_27

def optimizedBody603_134 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_131, 603, 14)) (some 611) ([2]) (some (2, optimizedBody603_133, 603, 15))

def optimizedBody603_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody603_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody603_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 183600#64)

def optimizedBody603_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody603_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (48, 50)]

def optimizedBody603_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (48, 50)]

def optimizedBody603_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_140 optimizedBody603_27

def optimizedBody603_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_139, 603, 16)) (some 474) ([2]) (some (2, optimizedBody603_141, 603, 17))

def optimizedBody603_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0), (48, 48)]

def optimizedBody603_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_143

def optimizedBody603_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_142 optimizedBody603_144

def optimizedBody603_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_138 optimizedBody603_145

def optimizedBody603_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_137 optimizedBody603_146

def optimizedBody603_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_147

def optimizedBody603_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 48), (48, 50)]

def optimizedBody603_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_149

def optimizedBody603_151 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody603_148 optimizedBody603_150

def optimizedBody603_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 120#64))

def optimizedBody603_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 128#64))

def optimizedBody603_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48)]

def optimizedBody603_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48)]

def optimizedBody603_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody603_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_156 optimizedBody603_27

def optimizedBody603_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_155, 603, 18)) (some 615) ([2, 4]) (some (2, optimizedBody603_157, 603, 19))

def optimizedBody603_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody603_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody603_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48)]

def optimizedBody603_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48)]

def optimizedBody603_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48)]

def optimizedBody603_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_163 optimizedBody603_27

def optimizedBody603_165 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_162, 603, 20)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody603_164, 603, 21))

def optimizedBody603_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (46, 46)]

def optimizedBody603_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_166

def optimizedBody603_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_165 optimizedBody603_167

def optimizedBody603_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_161 optimizedBody603_168

def optimizedBody603_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_136 optimizedBody603_169

def optimizedBody603_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_160 optimizedBody603_170

def optimizedBody603_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_124 optimizedBody603_171

def optimizedBody603_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_159 optimizedBody603_172

def optimizedBody603_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_173

def optimizedBody603_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_158 optimizedBody603_174

def optimizedBody603_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_154 optimizedBody603_175

def optimizedBody603_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_153 optimizedBody603_176

def optimizedBody603_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_135 optimizedBody603_177

def optimizedBody603_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_152 optimizedBody603_178

def optimizedBody603_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_135 optimizedBody603_179

def optimizedBody603_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_180

def optimizedBody603_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_151 optimizedBody603_181

def optimizedBody603_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_136 optimizedBody603_182

def optimizedBody603_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_135 optimizedBody603_183

def optimizedBody603_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_184

def optimizedBody603_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_134 optimizedBody603_185

def optimizedBody603_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_130 optimizedBody603_186

def optimizedBody603_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_187

def optimizedBody603_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_129 optimizedBody603_188

def optimizedBody603_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_125 optimizedBody603_189

def optimizedBody603_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_190

def optimizedBody603_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52)]

def optimizedBody603_193 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_131, 603, 22)) (some 612) ([2]) (some (2, optimizedBody603_133, 603, 23))

def optimizedBody603_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody603_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody603_196 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_139, 603, 24)) (some 615) ([2, 4]) (some (2, optimizedBody603_141, 603, 25))

def optimizedBody603_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48)]

def optimizedBody603_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (4, 4), (0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody603_199 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_198, 603, 26)) (some 469) ([2]) (some (2, optimizedBody603_157, 603, 27))

def optimizedBody603_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48)]

def optimizedBody603_201 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_162, 603, 28)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody603_164, 603, 29))

def optimizedBody603_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_201 optimizedBody603_167

def optimizedBody603_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_200 optimizedBody603_202

def optimizedBody603_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_203

def optimizedBody603_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_199 optimizedBody603_204

def optimizedBody603_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_197 optimizedBody603_205

def optimizedBody603_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_206

def optimizedBody603_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_196 optimizedBody603_207

def optimizedBody603_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_195 optimizedBody603_208

def optimizedBody603_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_160 optimizedBody603_209

def optimizedBody603_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_194 optimizedBody603_210

def optimizedBody603_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_211

def optimizedBody603_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_193 optimizedBody603_212

def optimizedBody603_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_192 optimizedBody603_213

def optimizedBody603_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_214

def optimizedBody603_216 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 6) optimizedBody603_191 optimizedBody603_215

def optimizedBody603_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_216 optimizedBody603_167

def optimizedBody603_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_124 optimizedBody603_217

def optimizedBody603_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_123 optimizedBody603_218

def optimizedBody603_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_122 optimizedBody603_219

def optimizedBody603_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_49 optimizedBody603_220

def optimizedBody603_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_0 optimizedBody603_221

def optimizedBody603_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_222

def optimizedBody603_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 160#64))

def optimizedBody603_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 54), (48, 46), (50, 48), (52, 2), (54, 52), (56, 56)]

def optimizedBody603_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56)]

def optimizedBody603_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56)]

def optimizedBody603_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_227 optimizedBody603_27

def optimizedBody603_229 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody603_226, 603, 30)) (some 613) ([2]) (some (2, optimizedBody603_228, 603, 31))

def optimizedBody603_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56)]

def optimizedBody603_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (52, 54), (54, 56)]

def optimizedBody603_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (52, 54), (54, 56)]

def optimizedBody603_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_232 optimizedBody603_27

def optimizedBody603_234 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody603_231, 603, 32)) (some 611) ([2]) (some (2, optimizedBody603_233, 603, 33))

def optimizedBody603_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody603_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54)]

def optimizedBody603_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54)]

def optimizedBody603_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_237 optimizedBody603_27

def optimizedBody603_239 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody603_236, 603, 34)) (some 474) ([2]) (some (2, optimizedBody603_238, 603, 35))

def optimizedBody603_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (48, 48), (0, 0), (52, 52), (54, 54)]

def optimizedBody603_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_240

def optimizedBody603_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_239 optimizedBody603_241

def optimizedBody603_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_235 optimizedBody603_242

def optimizedBody603_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_137 optimizedBody603_243

def optimizedBody603_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_244

def optimizedBody603_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54)]

def optimizedBody603_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_246

def optimizedBody603_248 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody603_245 optimizedBody603_247

def optimizedBody603_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54)]

def optimizedBody603_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody603_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_235 optimizedBody603_27

def optimizedBody603_252 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody603_250, 603, 36)) (some 615) ([2, 4]) (some (2, optimizedBody603_251, 603, 37))

def optimizedBody603_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody603_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (50, 52), (4, 54)]

def optimizedBody603_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (50, 52), (4, 54)]

def optimizedBody603_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_255 optimizedBody603_27

def optimizedBody603_257 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody603_254, 603, 38)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody603_256, 603, 39))

def optimizedBody603_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (48, 48), (0, 0), (50, 50), (4, 4)]

def optimizedBody603_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_258

def optimizedBody603_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_257 optimizedBody603_259

def optimizedBody603_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_253 optimizedBody603_260

def optimizedBody603_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_136 optimizedBody603_261

def optimizedBody603_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_160 optimizedBody603_262

def optimizedBody603_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_124 optimizedBody603_263

def optimizedBody603_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_159 optimizedBody603_264

def optimizedBody603_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_265

def optimizedBody603_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_252 optimizedBody603_266

def optimizedBody603_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_249 optimizedBody603_267

def optimizedBody603_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_153 optimizedBody603_268

def optimizedBody603_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_135 optimizedBody603_269

def optimizedBody603_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_152 optimizedBody603_270

def optimizedBody603_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_135 optimizedBody603_271

def optimizedBody603_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_272

def optimizedBody603_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_248 optimizedBody603_273

def optimizedBody603_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_136 optimizedBody603_274

def optimizedBody603_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_135 optimizedBody603_275

def optimizedBody603_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_276

def optimizedBody603_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_234 optimizedBody603_277

def optimizedBody603_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_230 optimizedBody603_278

def optimizedBody603_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_279

def optimizedBody603_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_229 optimizedBody603_280

def optimizedBody603_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_225 optimizedBody603_281

def optimizedBody603_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_282

def optimizedBody603_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 54), (48, 48), (50, 2), (52, 52), (54, 56)]

def optimizedBody603_285 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody603_236, 603, 40)) (some 612) ([2]) (some (2, optimizedBody603_238, 603, 41))

def optimizedBody603_286 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody603_250, 603, 42)) (some 615) ([2, 4]) (some (2, optimizedBody603_251, 603, 43))

def optimizedBody603_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody603_288 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody603_254, 603, 44)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody603_256, 603, 45))

def optimizedBody603_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_288 optimizedBody603_259

def optimizedBody603_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_253 optimizedBody603_289

def optimizedBody603_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_287 optimizedBody603_290

def optimizedBody603_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_160 optimizedBody603_291

def optimizedBody603_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_124 optimizedBody603_292

def optimizedBody603_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_159 optimizedBody603_293

def optimizedBody603_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_294

def optimizedBody603_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_286 optimizedBody603_295

def optimizedBody603_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_249 optimizedBody603_296

def optimizedBody603_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_153 optimizedBody603_297

def optimizedBody603_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_135 optimizedBody603_298

def optimizedBody603_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_152 optimizedBody603_299

def optimizedBody603_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_135 optimizedBody603_300

def optimizedBody603_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_301

def optimizedBody603_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_285 optimizedBody603_302

def optimizedBody603_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_284 optimizedBody603_303

def optimizedBody603_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_304

def optimizedBody603_306 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 4) optimizedBody603_283 optimizedBody603_305

def optimizedBody603_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody603_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (46, 48), (48, 50)]

def optimizedBody603_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (48, 50)]

def optimizedBody603_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_309 optimizedBody603_27

def optimizedBody603_311 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_308, 603, 46)) (some 92) ([2, 4]) (some (2, optimizedBody603_310, 603, 47))

def optimizedBody603_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody603_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody603_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 144#64))

def optimizedBody603_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48)]

def optimizedBody603_316 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_162, 603, 48)) (some 77) ([2, 4, 6]) (some (2, optimizedBody603_164, 603, 49))

def optimizedBody603_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_316 optimizedBody603_167

def optimizedBody603_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_315 optimizedBody603_317

def optimizedBody603_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_314 optimizedBody603_318

def optimizedBody603_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_0 optimizedBody603_319

def optimizedBody603_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_313 optimizedBody603_320

def optimizedBody603_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_312 optimizedBody603_321

def optimizedBody603_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_47 optimizedBody603_322

def optimizedBody603_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_46 optimizedBody603_323

def optimizedBody603_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_45 optimizedBody603_324

def optimizedBody603_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_44 optimizedBody603_325

def optimizedBody603_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_21 optimizedBody603_326

def optimizedBody603_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_327

def optimizedBody603_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46), (46, 48)]

def optimizedBody603_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_329

def optimizedBody603_331 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 0) optimizedBody603_328 optimizedBody603_330

def optimizedBody603_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_331 optimizedBody603_167

def optimizedBody603_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_53 optimizedBody603_332

def optimizedBody603_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_7 optimizedBody603_333

def optimizedBody603_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_334

def optimizedBody603_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_311 optimizedBody603_335

def optimizedBody603_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_195 optimizedBody603_336

def optimizedBody603_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_153 optimizedBody603_337

def optimizedBody603_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_307 optimizedBody603_338

def optimizedBody603_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_339

def optimizedBody603_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_306 optimizedBody603_340

def optimizedBody603_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_160 optimizedBody603_341

def optimizedBody603_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_224 optimizedBody603_342

def optimizedBody603_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_122 optimizedBody603_343

def optimizedBody603_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_344

def optimizedBody603_346 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody603_223 optimizedBody603_345

def optimizedBody603_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody603_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody603_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody603_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_349 optimizedBody603_27

def optimizedBody603_351 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_348, 603, 50)) (some 76) ([2]) (some (2, optimizedBody603_350, 603, 51))

def optimizedBody603_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody603_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody603_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody603_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_354 optimizedBody603_27

def optimizedBody603_356 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_353, 603, 52)) (some 73) ([2]) (some (2, optimizedBody603_355, 603, 53))

def optimizedBody603_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody603_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody603_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_358 optimizedBody603_27

def optimizedBody603_360 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody603_357, 603, 54)) (some 492) ([2]) (some (2, optimizedBody603_359, 603, 55))

def optimizedBody603_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody603_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody603_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_361 optimizedBody603_362

def optimizedBody603_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_136 optimizedBody603_363

def optimizedBody603_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_364

def optimizedBody603_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_360 optimizedBody603_365

def optimizedBody603_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_354 optimizedBody603_366

def optimizedBody603_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_287 optimizedBody603_367

def optimizedBody603_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_368

def optimizedBody603_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_356 optimizedBody603_369

def optimizedBody603_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_352 optimizedBody603_370

def optimizedBody603_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_371

def optimizedBody603_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_351 optimizedBody603_372

def optimizedBody603_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_347 optimizedBody603_373

def optimizedBody603_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_374

def optimizedBody603_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_346 optimizedBody603_375

def optimizedBody603_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_18 optimizedBody603_376

def optimizedBody603_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_17 optimizedBody603_377

def optimizedBody603_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_121 optimizedBody603_378

def optimizedBody603_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_120 optimizedBody603_379

def optimizedBody603_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_119 optimizedBody603_380

def optimizedBody603_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_7 optimizedBody603_381

def optimizedBody603_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_118 optimizedBody603_382

def optimizedBody603_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_0 optimizedBody603_383

def optimizedBody603_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_117 optimizedBody603_384

def optimizedBody603_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_116 optimizedBody603_385

def optimizedBody603_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_115 optimizedBody603_386

def optimizedBody603_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_46 optimizedBody603_387

def optimizedBody603_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_45 optimizedBody603_388

def optimizedBody603_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_44 optimizedBody603_389

def optimizedBody603_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_19 optimizedBody603_390

def optimizedBody603_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_114 optimizedBody603_391

def optimizedBody603_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_18 optimizedBody603_392

def optimizedBody603_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_17 optimizedBody603_393

def optimizedBody603_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_16 optimizedBody603_394

def optimizedBody603_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_7 optimizedBody603_395

def optimizedBody603_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_15 optimizedBody603_396

def optimizedBody603_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_7 optimizedBody603_397

def optimizedBody603_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_14 optimizedBody603_398

def optimizedBody603_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_7 optimizedBody603_399

def optimizedBody603_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_13 optimizedBody603_400

def optimizedBody603_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_7 optimizedBody603_401

def optimizedBody603_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_12 optimizedBody603_402

def optimizedBody603_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_7 optimizedBody603_403

def optimizedBody603_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_11 optimizedBody603_404

def optimizedBody603_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_7 optimizedBody603_405

def optimizedBody603_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_10 optimizedBody603_406

def optimizedBody603_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_7 optimizedBody603_407

def optimizedBody603_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_9 optimizedBody603_408

def optimizedBody603_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_7 optimizedBody603_409

def optimizedBody603_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_8 optimizedBody603_410

def optimizedBody603_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_7 optimizedBody603_411

def optimizedBody603_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_6 optimizedBody603_412

def optimizedBody603_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_5 optimizedBody603_413

def optimizedBody603_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_4 optimizedBody603_414

def optimizedBody603_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_3 optimizedBody603_415

def optimizedBody603_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_2 optimizedBody603_416

def optimizedBody603_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_1 optimizedBody603_417

def optimizedBody603_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody603_0 optimizedBody603_418

def oracle603 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 35
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 38 Flapjack.Spt.ln)))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)))
                  14 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 (Flapjack.Spt.ls 22)))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 25
                    (Flapjack.Spt.ls 0))
                  4
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 34 (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 37 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 27
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 5
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    31
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 27 (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 2))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)) 36
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))
                    27
                    (Flapjack.Spt.bs Flapjack.Spt.ln 39
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 27 (Flapjack.Spt.ls 22))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0)) 36
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 38 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 25 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 4))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 38
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 34 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)))
                    24
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 40 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 35 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0)))))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 26
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 29
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 28))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)) 24 Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln) 37
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 25)) 5 (Flapjack.Spt.ls 0)))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    22 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 37 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 34
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 2 Flapjack.Spt.ln)))
                7
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 Flapjack.Spt.ln)))
                  13
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 2 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 28)))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 3))))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 39
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln)))
                  10
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 0)) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.ls 40))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 36 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)))))
                6
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 28
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    30 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)) 23 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26)) 40
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
                  9
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 37
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    0 (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 Flapjack.Spt.ln)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 39))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                8
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 26
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    32
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28)
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 24 Flapjack.Spt.ln) 12
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)) 35 (Flapjack.Spt.ls 23))
                    23
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 34
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 23)))))
                4
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 40
                    (Flapjack.Spt.ls 0))
                  1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 2 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)) 3 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln) 36
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)) 39
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln)))
                  11
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 4
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 3 Flapjack.Spt.ln)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 23)))
                  31
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 34
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.ls 36))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 27
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln) 23
                    (Flapjack.Spt.ls 40)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                  26
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    22 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))) 35
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
                  29
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 34))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln) 24
                    Flapjack.Spt.ln)
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln) 37
                    (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 27)))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 40
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                  24
                  (Flapjack.Spt.bs Flapjack.Spt.ln 38
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 36
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 22)))
                  30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.ls 35))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 33
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln) 22
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 28)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                  25
                  (Flapjack.Spt.bs Flapjack.Spt.ln 39
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 37
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 26))) 34
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
                  28
                  (Flapjack.Spt.bs Flapjack.Spt.ln 40
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    23 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 36
                    (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 26 Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 23
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 35
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 24)) 32
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))))))))
def optimized603 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(603, 1, optimizedBody603_419)
end InitECandidate.Proofs.SmallStages.Oracles603
