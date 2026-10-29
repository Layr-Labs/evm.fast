import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source845
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles845
def optimizedBody845_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody845_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody845_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody845_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody845_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody845_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody845_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody845_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody845_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (48, 4), (50, 2)]

def optimizedBody845_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50)]

def optimizedBody845_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50)]

def optimizedBody845_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody845_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_10 optimizedBody845_11

def optimizedBody845_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody845_9, 845, 2)) (some 467) ([2]) (some (2, optimizedBody845_12, 845, 3))

def optimizedBody845_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody845_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody845_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 120#64)

def optimizedBody845_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody845_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody845_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 600#64)))

def optimizedBody845_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (50, 50)]

def optimizedBody845_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody845_20, 845, 4)) (some 472) ([2]) (some (2, optimizedBody845_12, 845, 5))

def optimizedBody845_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody845_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody845_9, 845, 6)) (some 68) ([2]) (some (2, optimizedBody845_12, 845, 7))

def optimizedBody845_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody845_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 12#64)

def optimizedBody845_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2), (48, 48), (50, 50)]

def optimizedBody845_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (6, 48), (4, 50)]

def optimizedBody845_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (4, 50)]

def optimizedBody845_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_28 optimizedBody845_11

def optimizedBody845_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody845_27, 845, 8)) (some 78) ([2, 4]) (some (2, optimizedBody845_29, 845, 9))

def optimizedBody845_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody845_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 88#64))

def optimizedBody845_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody845_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody845_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0)]

def optimizedBody845_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46)]

def optimizedBody845_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody845_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_37 optimizedBody845_11

def optimizedBody845_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody845_36, 845, 10)) (some 633) ([2, 4, 6]) (some (2, optimizedBody845_38, 845, 11))

def optimizedBody845_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody845_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody845_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody845_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody845_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody845_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody845_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody845_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody845_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody845_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody845_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody845_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody845_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody845_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_51 optimizedBody845_52

def optimizedBody845_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_50 optimizedBody845_53

def optimizedBody845_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_49 optimizedBody845_54

def optimizedBody845_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_15 optimizedBody845_55

def optimizedBody845_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_22 optimizedBody845_56

def optimizedBody845_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_48 optimizedBody845_57

def optimizedBody845_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_47 optimizedBody845_58

def optimizedBody845_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_0 optimizedBody845_59

def optimizedBody845_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_46 optimizedBody845_60

def optimizedBody845_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_45 optimizedBody845_61

def optimizedBody845_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_44 optimizedBody845_62

def optimizedBody845_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_43 optimizedBody845_63

def optimizedBody845_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_42 optimizedBody845_64

def optimizedBody845_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_41 optimizedBody845_65

def optimizedBody845_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_40 optimizedBody845_66

def optimizedBody845_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_14 optimizedBody845_67

def optimizedBody845_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_39 optimizedBody845_68

def optimizedBody845_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_35 optimizedBody845_69

def optimizedBody845_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_34 optimizedBody845_70

def optimizedBody845_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_33 optimizedBody845_71

def optimizedBody845_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_32 optimizedBody845_72

def optimizedBody845_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_31 optimizedBody845_73

def optimizedBody845_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_14 optimizedBody845_74

def optimizedBody845_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_30 optimizedBody845_75

def optimizedBody845_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_26 optimizedBody845_76

def optimizedBody845_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_25 optimizedBody845_77

def optimizedBody845_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_24 optimizedBody845_78

def optimizedBody845_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_14 optimizedBody845_79

def optimizedBody845_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_23 optimizedBody845_80

def optimizedBody845_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_10 optimizedBody845_81

def optimizedBody845_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_22 optimizedBody845_82

def optimizedBody845_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_14 optimizedBody845_83

def optimizedBody845_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_21 optimizedBody845_84

def optimizedBody845_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_10 optimizedBody845_85

def optimizedBody845_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_19 optimizedBody845_86

def optimizedBody845_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_0 optimizedBody845_87

def optimizedBody845_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_18 optimizedBody845_88

def optimizedBody845_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_17 optimizedBody845_89

def optimizedBody845_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_16 optimizedBody845_90

def optimizedBody845_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_15 optimizedBody845_91

def optimizedBody845_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_14 optimizedBody845_92

def optimizedBody845_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_13 optimizedBody845_93

def optimizedBody845_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_8 optimizedBody845_94

def optimizedBody845_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_7 optimizedBody845_95

def optimizedBody845_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_6 optimizedBody845_96

def optimizedBody845_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_5 optimizedBody845_97

def optimizedBody845_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_4 optimizedBody845_98

def optimizedBody845_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_3 optimizedBody845_99

def optimizedBody845_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_2 optimizedBody845_100

def optimizedBody845_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_1 optimizedBody845_101

def optimizedBody845_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_0 optimizedBody845_102

def oracle845 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
              2 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 Flapjack.Spt.ln))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 Flapjack.Spt.ln)))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 0
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              1 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 Flapjack.Spt.ln)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 22 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 24)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))))))))
def optimized845 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(845, 1, optimizedBody845_103)
end InitECandidate.Proofs.SmallStages.Oracles845
