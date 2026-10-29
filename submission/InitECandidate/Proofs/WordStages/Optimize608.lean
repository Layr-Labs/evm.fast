import InitECandidate.Proofs.WordStages.Optimize592
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source608
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody608_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2)]

def optimizedBody608_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody608_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody608_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody608_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_2 optimizedBody608_3

def optimizedBody608_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_1, 608, 2)) (some 390) ([]) (some (2, optimizedBody608_4, 608, 3))

def optimizedBody608_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody608_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody608_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody608_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 4), (46, 0), (48, 2)]

def optimizedBody608_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (54, 54), (46, 46), (0, 48)]

def optimizedBody608_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (46, 46), (0, 48)]

def optimizedBody608_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_11 optimizedBody608_3

def optimizedBody608_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_10, 608, 4)) (some 421) ([2]) (some (2, optimizedBody608_12, 608, 5))

def optimizedBody608_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (54, 54), (46, 46), (48, 0)]

def optimizedBody608_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_10, 608, 6)) (some 425) ([2]) (some (2, optimizedBody608_12, 608, 7))

def optimizedBody608_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (54, 54), (46, 46)]

def optimizedBody608_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (54, 54), (0, 46)]

def optimizedBody608_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (0, 46)]

def optimizedBody608_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_18 optimizedBody608_3

def optimizedBody608_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_17, 608, 8)) (some 430) ([2]) (some (2, optimizedBody608_19, 608, 9))

def optimizedBody608_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (54, 54), (46, 0)]

def optimizedBody608_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (54, 54), (6, 46)]

def optimizedBody608_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (6, 46)]

def optimizedBody608_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_23 optimizedBody608_3

def optimizedBody608_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_22, 608, 10)) (some 606) ([2]) (some (2, optimizedBody608_24, 608, 11))

def optimizedBody608_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody608_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 160#64))

def optimizedBody608_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody608_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody608_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody608_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody608_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody608_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody608_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def optimizedBody608_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody608_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody608_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (48, 44), (50, 2), (54, 54), (52, 4)]

def optimizedBody608_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 48), (0, 50), (4, 52)]

def optimizedBody608_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (50, 50), (8, 54), (52, 52)]

def optimizedBody608_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody608_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_40 optimizedBody608_3

def optimizedBody608_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 (Flapjack.WordStore.temp 0#5)

def optimizedBody608_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 8), (48, 48), (50, 50), (44, 0), (52, 52)]

def optimizedBody608_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (50, 50), (44, 44), (52, 52)]

def optimizedBody608_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (50, 50), (44, 44), (52, 52)]

def optimizedBody608_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_45 optimizedBody608_3

def optimizedBody608_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_44, 608, 13)) (some 391) ([2]) (some (2, optimizedBody608_46, 608, 14))

def optimizedBody608_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (50, 50), (0, 44), (52, 52)]

def optimizedBody608_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (50, 50), (0, 44), (52, 52)]

def optimizedBody608_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_49 optimizedBody608_3

def optimizedBody608_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_48, 608, 15)) (some 474) ([]) (some (2, optimizedBody608_50, 608, 16))

def optimizedBody608_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (48, 48), (50, 50), (52, 52)]

def optimizedBody608_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 48), (0, 50), (4, 52)]

def optimizedBody608_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 48), (0, 50), (4, 52)]

def optimizedBody608_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_54 optimizedBody608_3

def optimizedBody608_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_53, 608, 17)) (some 604) ([2]) (some (2, optimizedBody608_55, 608, 18))

def optimizedBody608_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody608_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody608_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody608_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody608_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody608_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551352#64))

def optimizedBody608_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody608_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody608_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody608_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 0), (4, 4)]

def optimizedBody608_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_64 optimizedBody608_66

def optimizedBody608_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_63 optimizedBody608_67

def optimizedBody608_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_28 optimizedBody608_68

def optimizedBody608_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_65 optimizedBody608_69

def optimizedBody608_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_60 optimizedBody608_70

def optimizedBody608_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_59 optimizedBody608_71

def optimizedBody608_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_58 optimizedBody608_72

def optimizedBody608_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_57 optimizedBody608_73

def optimizedBody608_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_64 optimizedBody608_74

def optimizedBody608_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_63 optimizedBody608_75

def optimizedBody608_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_62 optimizedBody608_76

def optimizedBody608_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_59 optimizedBody608_77

def optimizedBody608_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_58 optimizedBody608_78

def optimizedBody608_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_57 optimizedBody608_79

def optimizedBody608_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_61 optimizedBody608_80

def optimizedBody608_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_60 optimizedBody608_81

def optimizedBody608_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_59 optimizedBody608_82

def optimizedBody608_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_58 optimizedBody608_83

def optimizedBody608_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_57 optimizedBody608_84

def optimizedBody608_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_85

def optimizedBody608_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_56 optimizedBody608_86

def optimizedBody608_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_52 optimizedBody608_87

def optimizedBody608_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_88

def optimizedBody608_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_51 optimizedBody608_89

def optimizedBody608_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_44 optimizedBody608_90

def optimizedBody608_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_91

def optimizedBody608_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_47 optimizedBody608_92

def optimizedBody608_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_43 optimizedBody608_93

def optimizedBody608_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_42 optimizedBody608_94

def optimizedBody608_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_95

def optimizedBody608_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) optimizedBody608_41 optimizedBody608_96

def optimizedBody608_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_66

def optimizedBody608_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_97 optimizedBody608_98

def optimizedBody608_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_39 optimizedBody608_99

def optimizedBody608_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_38, 608, 12)) (some 607) ([2, 4]) (some (2, optimizedBody608_100, 608, 19))

def optimizedBody608_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def optimizedBody608_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody608_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody608_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody608_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody608_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_105 optimizedBody608_106

def optimizedBody608_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_104 optimizedBody608_107

def optimizedBody608_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_103 optimizedBody608_108

def optimizedBody608_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_102 optimizedBody608_109

def optimizedBody608_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_59 optimizedBody608_110

def optimizedBody608_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_58 optimizedBody608_111

def optimizedBody608_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_57 optimizedBody608_112

def optimizedBody608_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_113

def optimizedBody608_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_101 optimizedBody608_114

def optimizedBody608_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_37 optimizedBody608_115

def optimizedBody608_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_36 optimizedBody608_116

def optimizedBody608_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_35 optimizedBody608_117

def optimizedBody608_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_34 optimizedBody608_118

def optimizedBody608_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_33 optimizedBody608_119

def optimizedBody608_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_32 optimizedBody608_120

def optimizedBody608_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_31 optimizedBody608_121

def optimizedBody608_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_30 optimizedBody608_122

def optimizedBody608_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_29 optimizedBody608_123

def optimizedBody608_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_124

def optimizedBody608_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(44, 44), (10, 54), (46, 4)]

def optimizedBody608_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody608_125 optimizedBody608_126

def optimizedBody608_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (44, 44), (46, 46)]

def optimizedBody608_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody608_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody608_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_130 optimizedBody608_3

def optimizedBody608_132 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody608_129, 608, 20)) (some 391) ([2]) (some (2, optimizedBody608_131, 608, 21))

def optimizedBody608_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody608_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_105 optimizedBody608_133

def optimizedBody608_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_134

def optimizedBody608_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_132 optimizedBody608_135

def optimizedBody608_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_128 optimizedBody608_136

def optimizedBody608_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_137

def optimizedBody608_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_138

def optimizedBody608_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_127 optimizedBody608_139

def optimizedBody608_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_28 optimizedBody608_140

def optimizedBody608_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_27 optimizedBody608_141

def optimizedBody608_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_26 optimizedBody608_142

def optimizedBody608_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_143

def optimizedBody608_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_25 optimizedBody608_144

def optimizedBody608_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_21 optimizedBody608_145

def optimizedBody608_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_146

def optimizedBody608_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_20 optimizedBody608_147

def optimizedBody608_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_16 optimizedBody608_148

def optimizedBody608_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_149

def optimizedBody608_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_15 optimizedBody608_150

def optimizedBody608_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_14 optimizedBody608_151

def optimizedBody608_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_152

def optimizedBody608_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_13 optimizedBody608_153

def optimizedBody608_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_9 optimizedBody608_154

def optimizedBody608_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_8 optimizedBody608_155

def optimizedBody608_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_7 optimizedBody608_156

def optimizedBody608_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_6 optimizedBody608_157

def optimizedBody608_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_5 optimizedBody608_158

def optimizedBody608_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody608_0 optimizedBody608_159

def oracle608 : Option (Spt Nat) :=
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
def optimized608 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(608, 2, optimizedBody608_160)
theorem optimize608_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source608, oracle608) = optimized608 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize608_eq
end InitECandidate.Proofs.WordStages
