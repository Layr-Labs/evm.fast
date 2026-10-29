import InitECandidate.Proofs.WordStages.Optimize585
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source601
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody601_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody601_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody601_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody601_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody601_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody601_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody601_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody601_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody601_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody601_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody601_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 6 40#64))

def optimizedBody601_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody601_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 6 48#64))

def optimizedBody601_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 6 56#64))

def optimizedBody601_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 6 72#64))

def optimizedBody601_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 6 80#64))

def optimizedBody601_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 6 88#64))

def optimizedBody601_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody601_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody601_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody601_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 96#64))

def optimizedBody601_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody601_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 4 160#64))

def optimizedBody601_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 0#64)

def optimizedBody601_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 12), (4, 4), (44, 0), (66, 2), (54, 18), (46, 16), (48, 14), (50, 6), (52, 8), (56, 4), (58, 20), (60, 22),
    (62, 10), (64, 24)]

def optimizedBody601_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (54, 54), (46, 46), (48, 48), (6, 50), (8, 52), (4, 56), (50, 58), (52, 60), (10, 62), (56, 64)]

def optimizedBody601_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 66), (54, 54), (46, 46), (48, 48), (50, 50), (52, 52), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64)]

def optimizedBody601_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody601_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_5 optimizedBody601_27

def optimizedBody601_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 (Flapjack.WordStore.temp 0#5)

def optimizedBody601_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (68, 44), (70, 54), (72, 46), (74, 48), (44, 50), (46, 52), (48, 56), (76, 58), (78, 60), (50, 62), (80, 64),
    (52, 2)]

def optimizedBody601_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(68, 68), (70, 70), (72, 72), (74, 74), (44, 44), (46, 46), (48, 48), (76, 76), (78, 78), (50, 50), (80, 80),
    (52, 52)]

def optimizedBody601_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (68, 68), (70, 70), (72, 72), (74, 74), (44, 44), (46, 46), (48, 48), (76, 76), (78, 78), (50, 50), (80, 80),
    (52, 52)]

def optimizedBody601_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_32 optimizedBody601_27

def optimizedBody601_34 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody601_31, 601, 3)) (some 391) ([2]) (some (2, optimizedBody601_33, 601, 4))

def optimizedBody601_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(68, 68), (70, 70), (72, 72), (74, 74), (44, 44), (46, 46), (48, 48), (76, 76), (78, 78), (50, 50), (80, 80),
    (0, 52)]

def optimizedBody601_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (68, 68), (70, 70), (72, 72), (74, 74), (44, 44), (46, 46), (48, 48), (76, 76), (78, 78), (50, 50), (80, 80),
    (0, 52)]

def optimizedBody601_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_36 optimizedBody601_27

def optimizedBody601_38 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody601_35, 601, 5)) (some 474) ([]) (some (2, optimizedBody601_37, 601, 6))

def optimizedBody601_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (68, 68), (70, 70), (72, 72), (74, 74), (44, 44), (46, 46), (48, 48), (76, 76), (78, 78), (50, 50), (80, 80)]

def optimizedBody601_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(68, 68), (70, 70), (72, 72), (74, 74), (6, 44), (8, 46), (4, 48), (76, 76), (78, 78), (10, 50), (80, 80)]

def optimizedBody601_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (68, 68), (70, 70), (72, 72), (74, 74), (6, 44), (8, 46), (4, 48), (76, 76), (78, 78), (10, 50), (80, 80)]

def optimizedBody601_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_41 optimizedBody601_27

def optimizedBody601_43 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody601_40, 601, 7)) (some 604) ([2]) (some (2, optimizedBody601_42, 601, 8))

def optimizedBody601_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody601_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody601_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody601_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody601_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody601_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551352#64))

def optimizedBody601_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody601_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody601_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody601_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody601_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(68, 68), (70, 70), (72, 72), (74, 74), (6, 6), (8, 8), (4, 4), (76, 76), (78, 78), (10, 10), (80, 80)]

def optimizedBody601_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_51 optimizedBody601_54

def optimizedBody601_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_50 optimizedBody601_55

def optimizedBody601_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_53 optimizedBody601_56

def optimizedBody601_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_52 optimizedBody601_57

def optimizedBody601_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_47 optimizedBody601_58

def optimizedBody601_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_46 optimizedBody601_59

def optimizedBody601_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_45 optimizedBody601_60

def optimizedBody601_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_44 optimizedBody601_61

def optimizedBody601_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_51 optimizedBody601_62

def optimizedBody601_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_50 optimizedBody601_63

def optimizedBody601_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_49 optimizedBody601_64

def optimizedBody601_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_46 optimizedBody601_65

def optimizedBody601_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_45 optimizedBody601_66

def optimizedBody601_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_44 optimizedBody601_67

def optimizedBody601_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_48 optimizedBody601_68

def optimizedBody601_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_47 optimizedBody601_69

def optimizedBody601_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_46 optimizedBody601_70

def optimizedBody601_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_45 optimizedBody601_71

def optimizedBody601_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_44 optimizedBody601_72

def optimizedBody601_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_73

def optimizedBody601_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_43 optimizedBody601_74

def optimizedBody601_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_39 optimizedBody601_75

def optimizedBody601_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_76

def optimizedBody601_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_38 optimizedBody601_77

def optimizedBody601_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_31 optimizedBody601_78

def optimizedBody601_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_79

def optimizedBody601_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_34 optimizedBody601_80

def optimizedBody601_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_30 optimizedBody601_81

def optimizedBody601_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_29 optimizedBody601_82

def optimizedBody601_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_83

def optimizedBody601_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) optimizedBody601_28 optimizedBody601_84

def optimizedBody601_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 68), (54, 70), (46, 72), (48, 74), (6, 6), (8, 8), (4, 4), (50, 76), (52, 78), (10, 10), (56, 80)]

def optimizedBody601_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_86

def optimizedBody601_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_85 optimizedBody601_87

def optimizedBody601_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_26 optimizedBody601_88

def optimizedBody601_90 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody601_25, 601, 2)) (some 607) ([2, 4]) (some (2, optimizedBody601_89, 601, 9))

def optimizedBody601_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (54, 54), (46, 46), (48, 48), (6, 6), (8, 8), (4, 4), (50, 50), (52, 52), (10, 10), (56, 56)]

def optimizedBody601_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_91

def optimizedBody601_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_90 optimizedBody601_92

def optimizedBody601_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_24 optimizedBody601_93

def optimizedBody601_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_94

def optimizedBody601_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 0), (54, 18), (46, 16), (48, 14), (50, 6), (52, 8), (56, 4), (58, 20), (60, 22), (62, 10), (64, 24)]

def optimizedBody601_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (54, 54), (46, 46), (48, 48), (6, 50), (8, 52), (4, 56), (50, 58), (52, 60), (10, 62), (56, 64)]

def optimizedBody601_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (54, 54), (46, 46), (48, 48), (6, 50), (8, 52), (4, 56), (50, 58), (52, 60), (10, 62), (56, 64)]

def optimizedBody601_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_98 optimizedBody601_27

def optimizedBody601_100 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody601_97, 601, 10)) (some 391) ([2]) (some (2, optimizedBody601_99, 601, 11))

def optimizedBody601_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_100 optimizedBody601_92

def optimizedBody601_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_96 optimizedBody601_101

def optimizedBody601_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_102

def optimizedBody601_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 28) optimizedBody601_95 optimizedBody601_103

def optimizedBody601_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_104 optimizedBody601_92

def optimizedBody601_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_23 optimizedBody601_105

def optimizedBody601_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_22 optimizedBody601_106

def optimizedBody601_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_21 optimizedBody601_107

def optimizedBody601_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_20 optimizedBody601_108

def optimizedBody601_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_7 optimizedBody601_109

def optimizedBody601_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_110

def optimizedBody601_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (54, 18), (46, 16), (48, 14), (6, 6), (8, 8), (4, 4), (50, 20), (52, 22), (10, 10), (56, 24)]

def optimizedBody601_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_112

def optimizedBody601_114 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody601_111 optimizedBody601_113

def optimizedBody601_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def optimizedBody601_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody601_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody601_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def optimizedBody601_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody601_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 2)]

def optimizedBody601_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody601_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody601_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 160#64))

def optimizedBody601_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody601_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 2), (52, 52)]

def optimizedBody601_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (52, 52)]

def optimizedBody601_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52)]

def optimizedBody601_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_127 optimizedBody601_27

def optimizedBody601_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_126, 601, 12)) (some 611) ([2]) (some (2, optimizedBody601_128, 601, 13))

def optimizedBody601_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52)]

def optimizedBody601_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48), (48, 50), (50, 52)]

def optimizedBody601_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (48, 50), (50, 52)]

def optimizedBody601_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_132 optimizedBody601_27

def optimizedBody601_134 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_131, 601, 14)) (some 609) ([2]) (some (2, optimizedBody601_133, 601, 15))

def optimizedBody601_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody601_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody601_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 183600#64)

def optimizedBody601_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody601_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (48, 50)]

def optimizedBody601_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (48, 50)]

def optimizedBody601_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_140 optimizedBody601_27

def optimizedBody601_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_139, 601, 16)) (some 472) ([2]) (some (2, optimizedBody601_141, 601, 17))

def optimizedBody601_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0), (48, 48)]

def optimizedBody601_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_143

def optimizedBody601_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_142 optimizedBody601_144

def optimizedBody601_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_138 optimizedBody601_145

def optimizedBody601_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_137 optimizedBody601_146

def optimizedBody601_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_147

def optimizedBody601_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 48), (48, 50)]

def optimizedBody601_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_149

def optimizedBody601_151 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody601_148 optimizedBody601_150

def optimizedBody601_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 120#64))

def optimizedBody601_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 128#64))

def optimizedBody601_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48)]

def optimizedBody601_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48)]

def optimizedBody601_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody601_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_156 optimizedBody601_27

def optimizedBody601_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_155, 601, 18)) (some 613) ([2, 4]) (some (2, optimizedBody601_157, 601, 19))

def optimizedBody601_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody601_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody601_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48)]

def optimizedBody601_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48)]

def optimizedBody601_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48)]

def optimizedBody601_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_163 optimizedBody601_27

def optimizedBody601_165 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_162, 601, 20)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody601_164, 601, 21))

def optimizedBody601_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (46, 46)]

def optimizedBody601_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_166

def optimizedBody601_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_165 optimizedBody601_167

def optimizedBody601_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_161 optimizedBody601_168

def optimizedBody601_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_136 optimizedBody601_169

def optimizedBody601_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_160 optimizedBody601_170

def optimizedBody601_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_124 optimizedBody601_171

def optimizedBody601_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_159 optimizedBody601_172

def optimizedBody601_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_173

def optimizedBody601_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_158 optimizedBody601_174

def optimizedBody601_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_154 optimizedBody601_175

def optimizedBody601_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_153 optimizedBody601_176

def optimizedBody601_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_135 optimizedBody601_177

def optimizedBody601_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_152 optimizedBody601_178

def optimizedBody601_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_135 optimizedBody601_179

def optimizedBody601_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_180

def optimizedBody601_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_151 optimizedBody601_181

def optimizedBody601_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_136 optimizedBody601_182

def optimizedBody601_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_135 optimizedBody601_183

def optimizedBody601_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_184

def optimizedBody601_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_134 optimizedBody601_185

def optimizedBody601_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_130 optimizedBody601_186

def optimizedBody601_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_187

def optimizedBody601_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_129 optimizedBody601_188

def optimizedBody601_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_125 optimizedBody601_189

def optimizedBody601_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_190

def optimizedBody601_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52)]

def optimizedBody601_193 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_131, 601, 22)) (some 610) ([2]) (some (2, optimizedBody601_133, 601, 23))

def optimizedBody601_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody601_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody601_196 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_139, 601, 24)) (some 613) ([2, 4]) (some (2, optimizedBody601_141, 601, 25))

def optimizedBody601_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48)]

def optimizedBody601_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (4, 4), (0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody601_199 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_198, 601, 26)) (some 467) ([2]) (some (2, optimizedBody601_157, 601, 27))

def optimizedBody601_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48)]

def optimizedBody601_201 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_162, 601, 28)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody601_164, 601, 29))

def optimizedBody601_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_201 optimizedBody601_167

def optimizedBody601_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_200 optimizedBody601_202

def optimizedBody601_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_203

def optimizedBody601_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_199 optimizedBody601_204

def optimizedBody601_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_197 optimizedBody601_205

def optimizedBody601_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_206

def optimizedBody601_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_196 optimizedBody601_207

def optimizedBody601_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_195 optimizedBody601_208

def optimizedBody601_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_160 optimizedBody601_209

def optimizedBody601_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_194 optimizedBody601_210

def optimizedBody601_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_211

def optimizedBody601_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_193 optimizedBody601_212

def optimizedBody601_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_192 optimizedBody601_213

def optimizedBody601_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_214

def optimizedBody601_216 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 6) optimizedBody601_191 optimizedBody601_215

def optimizedBody601_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_216 optimizedBody601_167

def optimizedBody601_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_124 optimizedBody601_217

def optimizedBody601_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_123 optimizedBody601_218

def optimizedBody601_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_122 optimizedBody601_219

def optimizedBody601_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_49 optimizedBody601_220

def optimizedBody601_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_0 optimizedBody601_221

def optimizedBody601_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_222

def optimizedBody601_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 160#64))

def optimizedBody601_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 54), (48, 46), (50, 48), (52, 2), (54, 52), (56, 56)]

def optimizedBody601_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56)]

def optimizedBody601_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56)]

def optimizedBody601_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_227 optimizedBody601_27

def optimizedBody601_229 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody601_226, 601, 30)) (some 611) ([2]) (some (2, optimizedBody601_228, 601, 31))

def optimizedBody601_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56)]

def optimizedBody601_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (52, 54), (54, 56)]

def optimizedBody601_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (48, 50), (50, 52), (52, 54), (54, 56)]

def optimizedBody601_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_232 optimizedBody601_27

def optimizedBody601_234 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody601_231, 601, 32)) (some 609) ([2]) (some (2, optimizedBody601_233, 601, 33))

def optimizedBody601_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody601_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54)]

def optimizedBody601_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54)]

def optimizedBody601_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_237 optimizedBody601_27

def optimizedBody601_239 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody601_236, 601, 34)) (some 472) ([2]) (some (2, optimizedBody601_238, 601, 35))

def optimizedBody601_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (48, 48), (0, 0), (52, 52), (54, 54)]

def optimizedBody601_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_240

def optimizedBody601_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_239 optimizedBody601_241

def optimizedBody601_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_235 optimizedBody601_242

def optimizedBody601_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_137 optimizedBody601_243

def optimizedBody601_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_244

def optimizedBody601_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54)]

def optimizedBody601_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_246

def optimizedBody601_248 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody601_245 optimizedBody601_247

def optimizedBody601_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54)]

def optimizedBody601_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody601_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_235 optimizedBody601_27

def optimizedBody601_252 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody601_250, 601, 36)) (some 613) ([2, 4]) (some (2, optimizedBody601_251, 601, 37))

def optimizedBody601_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody601_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (50, 52), (4, 54)]

def optimizedBody601_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (50, 52), (4, 54)]

def optimizedBody601_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_255 optimizedBody601_27

def optimizedBody601_257 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody601_254, 601, 38)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody601_256, 601, 39))

def optimizedBody601_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (48, 48), (0, 0), (50, 50), (4, 4)]

def optimizedBody601_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_258

def optimizedBody601_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_257 optimizedBody601_259

def optimizedBody601_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_253 optimizedBody601_260

def optimizedBody601_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_136 optimizedBody601_261

def optimizedBody601_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_160 optimizedBody601_262

def optimizedBody601_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_124 optimizedBody601_263

def optimizedBody601_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_159 optimizedBody601_264

def optimizedBody601_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_265

def optimizedBody601_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_252 optimizedBody601_266

def optimizedBody601_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_249 optimizedBody601_267

def optimizedBody601_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_153 optimizedBody601_268

def optimizedBody601_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_135 optimizedBody601_269

def optimizedBody601_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_152 optimizedBody601_270

def optimizedBody601_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_135 optimizedBody601_271

def optimizedBody601_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_272

def optimizedBody601_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_248 optimizedBody601_273

def optimizedBody601_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_136 optimizedBody601_274

def optimizedBody601_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_135 optimizedBody601_275

def optimizedBody601_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_276

def optimizedBody601_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_234 optimizedBody601_277

def optimizedBody601_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_230 optimizedBody601_278

def optimizedBody601_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_279

def optimizedBody601_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_229 optimizedBody601_280

def optimizedBody601_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_225 optimizedBody601_281

def optimizedBody601_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_282

def optimizedBody601_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 54), (48, 48), (50, 2), (52, 52), (54, 56)]

def optimizedBody601_285 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody601_236, 601, 40)) (some 610) ([2]) (some (2, optimizedBody601_238, 601, 41))

def optimizedBody601_286 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody601_250, 601, 42)) (some 613) ([2, 4]) (some (2, optimizedBody601_251, 601, 43))

def optimizedBody601_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody601_288 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody601_254, 601, 44)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody601_256, 601, 45))

def optimizedBody601_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_288 optimizedBody601_259

def optimizedBody601_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_253 optimizedBody601_289

def optimizedBody601_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_287 optimizedBody601_290

def optimizedBody601_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_160 optimizedBody601_291

def optimizedBody601_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_124 optimizedBody601_292

def optimizedBody601_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_159 optimizedBody601_293

def optimizedBody601_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_294

def optimizedBody601_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_286 optimizedBody601_295

def optimizedBody601_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_249 optimizedBody601_296

def optimizedBody601_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_153 optimizedBody601_297

def optimizedBody601_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_135 optimizedBody601_298

def optimizedBody601_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_152 optimizedBody601_299

def optimizedBody601_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_135 optimizedBody601_300

def optimizedBody601_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_301

def optimizedBody601_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_285 optimizedBody601_302

def optimizedBody601_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_284 optimizedBody601_303

def optimizedBody601_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_304

def optimizedBody601_306 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 4) optimizedBody601_283 optimizedBody601_305

def optimizedBody601_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody601_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (46, 48), (48, 50)]

def optimizedBody601_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (48, 50)]

def optimizedBody601_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_309 optimizedBody601_27

def optimizedBody601_311 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_308, 601, 46)) (some 92) ([2, 4]) (some (2, optimizedBody601_310, 601, 47))

def optimizedBody601_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody601_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody601_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 144#64))

def optimizedBody601_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48)]

def optimizedBody601_316 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_162, 601, 48)) (some 77) ([2, 4, 6]) (some (2, optimizedBody601_164, 601, 49))

def optimizedBody601_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_316 optimizedBody601_167

def optimizedBody601_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_315 optimizedBody601_317

def optimizedBody601_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_314 optimizedBody601_318

def optimizedBody601_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_0 optimizedBody601_319

def optimizedBody601_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_313 optimizedBody601_320

def optimizedBody601_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_312 optimizedBody601_321

def optimizedBody601_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_47 optimizedBody601_322

def optimizedBody601_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_46 optimizedBody601_323

def optimizedBody601_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_45 optimizedBody601_324

def optimizedBody601_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_44 optimizedBody601_325

def optimizedBody601_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_21 optimizedBody601_326

def optimizedBody601_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_327

def optimizedBody601_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46), (46, 48)]

def optimizedBody601_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_329

def optimizedBody601_331 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 0) optimizedBody601_328 optimizedBody601_330

def optimizedBody601_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_331 optimizedBody601_167

def optimizedBody601_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_53 optimizedBody601_332

def optimizedBody601_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_7 optimizedBody601_333

def optimizedBody601_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_334

def optimizedBody601_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_311 optimizedBody601_335

def optimizedBody601_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_195 optimizedBody601_336

def optimizedBody601_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_153 optimizedBody601_337

def optimizedBody601_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_307 optimizedBody601_338

def optimizedBody601_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_339

def optimizedBody601_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_306 optimizedBody601_340

def optimizedBody601_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_160 optimizedBody601_341

def optimizedBody601_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_224 optimizedBody601_342

def optimizedBody601_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_122 optimizedBody601_343

def optimizedBody601_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_344

def optimizedBody601_346 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody601_223 optimizedBody601_345

def optimizedBody601_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody601_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody601_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody601_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_349 optimizedBody601_27

def optimizedBody601_351 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_348, 601, 50)) (some 76) ([2]) (some (2, optimizedBody601_350, 601, 51))

def optimizedBody601_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody601_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody601_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody601_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_354 optimizedBody601_27

def optimizedBody601_356 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_353, 601, 52)) (some 73) ([2]) (some (2, optimizedBody601_355, 601, 53))

def optimizedBody601_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody601_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody601_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_358 optimizedBody601_27

def optimizedBody601_360 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_357, 601, 54)) (some 490) ([2]) (some (2, optimizedBody601_359, 601, 55))

def optimizedBody601_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody601_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody601_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_361 optimizedBody601_362

def optimizedBody601_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_136 optimizedBody601_363

def optimizedBody601_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_364

def optimizedBody601_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_360 optimizedBody601_365

def optimizedBody601_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_354 optimizedBody601_366

def optimizedBody601_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_287 optimizedBody601_367

def optimizedBody601_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_368

def optimizedBody601_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_356 optimizedBody601_369

def optimizedBody601_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_352 optimizedBody601_370

def optimizedBody601_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_371

def optimizedBody601_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_351 optimizedBody601_372

def optimizedBody601_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_347 optimizedBody601_373

def optimizedBody601_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_374

def optimizedBody601_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_346 optimizedBody601_375

def optimizedBody601_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_18 optimizedBody601_376

def optimizedBody601_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_17 optimizedBody601_377

def optimizedBody601_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_121 optimizedBody601_378

def optimizedBody601_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_120 optimizedBody601_379

def optimizedBody601_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_119 optimizedBody601_380

def optimizedBody601_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_7 optimizedBody601_381

def optimizedBody601_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_118 optimizedBody601_382

def optimizedBody601_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_0 optimizedBody601_383

def optimizedBody601_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_117 optimizedBody601_384

def optimizedBody601_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_116 optimizedBody601_385

def optimizedBody601_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_115 optimizedBody601_386

def optimizedBody601_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_46 optimizedBody601_387

def optimizedBody601_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_45 optimizedBody601_388

def optimizedBody601_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_44 optimizedBody601_389

def optimizedBody601_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_19 optimizedBody601_390

def optimizedBody601_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_114 optimizedBody601_391

def optimizedBody601_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_18 optimizedBody601_392

def optimizedBody601_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_17 optimizedBody601_393

def optimizedBody601_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_16 optimizedBody601_394

def optimizedBody601_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_7 optimizedBody601_395

def optimizedBody601_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_15 optimizedBody601_396

def optimizedBody601_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_7 optimizedBody601_397

def optimizedBody601_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_14 optimizedBody601_398

def optimizedBody601_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_7 optimizedBody601_399

def optimizedBody601_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_13 optimizedBody601_400

def optimizedBody601_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_7 optimizedBody601_401

def optimizedBody601_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_12 optimizedBody601_402

def optimizedBody601_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_7 optimizedBody601_403

def optimizedBody601_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_11 optimizedBody601_404

def optimizedBody601_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_7 optimizedBody601_405

def optimizedBody601_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_10 optimizedBody601_406

def optimizedBody601_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_7 optimizedBody601_407

def optimizedBody601_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_9 optimizedBody601_408

def optimizedBody601_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_7 optimizedBody601_409

def optimizedBody601_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_8 optimizedBody601_410

def optimizedBody601_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_7 optimizedBody601_411

def optimizedBody601_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_6 optimizedBody601_412

def optimizedBody601_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_5 optimizedBody601_413

def optimizedBody601_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_4 optimizedBody601_414

def optimizedBody601_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_3 optimizedBody601_415

def optimizedBody601_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_2 optimizedBody601_416

def optimizedBody601_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_1 optimizedBody601_417

def optimizedBody601_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_0 optimizedBody601_418

def oracle601 : Option (Spt Nat) :=
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
def optimized601 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(601, 1, optimizedBody601_419)
theorem optimize601_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source601, oracle601) = optimized601 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize601_eq
end InitECandidate.Proofs.WordStages
