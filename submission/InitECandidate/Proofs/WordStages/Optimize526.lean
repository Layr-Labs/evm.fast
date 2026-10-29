import InitECandidate.Proofs.WordStages.Optimize510
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source526
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody526_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody526_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (8, 8), (4, 4), (44, 44)]

def optimizedBody526_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody526_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody526_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_2 optimizedBody526_3

def optimizedBody526_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody526_1, 526, 2)) (some 475) ([]) (some (2, optimizedBody526_4, 526, 3))

def optimizedBody526_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody526_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 0), (50, 6), (56, 8), (60, 4)]

def optimizedBody526_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 2), (6, 6), (4, 4), (44, 44), (48, 48), (50, 50), (56, 56), (60, 60)]

def optimizedBody526_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (56, 56), (60, 60)]

def optimizedBody526_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_9 optimizedBody526_3

def optimizedBody526_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody526_8, 526, 4)) (some 475) ([]) (some (2, optimizedBody526_10, 526, 5))

def optimizedBody526_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody526_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 8), (48, 48), (50, 50), (52, 0), (54, 6), (56, 56), (58, 4), (60, 60)]

def optimizedBody526_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (46, 48), (48, 50), (0, 52), (6, 54), (50, 56), (4, 58), (52, 60)]

def optimizedBody526_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (8, 46), (46, 48), (48, 50), (0, 52), (6, 54), (50, 56), (4, 58), (52, 60)]

def optimizedBody526_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_15 optimizedBody526_3

def optimizedBody526_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody526_14, 526, 6)) (some 470) ([2]) (some (2, optimizedBody526_16, 526, 7))

def optimizedBody526_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody526_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (0, 46), (6, 48), (8, 50), (4, 52)]

def optimizedBody526_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (8, 50), (4, 52)]

def optimizedBody526_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_20 optimizedBody526_3

def optimizedBody526_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody526_19, 526, 8)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody526_21, 526, 9))

def optimizedBody526_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody526_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody526_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody526_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 44)]

def optimizedBody526_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 46)]

def optimizedBody526_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 46)]

def optimizedBody526_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_28 optimizedBody526_3

def optimizedBody526_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody526_27, 526, 10)) (some 490) ([2]) (some (2, optimizedBody526_29, 526, 11))

def optimizedBody526_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody526_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody526_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_31 optimizedBody526_32

def optimizedBody526_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_24 optimizedBody526_33

def optimizedBody526_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_6 optimizedBody526_34

def optimizedBody526_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_30 optimizedBody526_35

def optimizedBody526_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_26 optimizedBody526_36

def optimizedBody526_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_25 optimizedBody526_37

def optimizedBody526_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_6 optimizedBody526_38

def optimizedBody526_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 0), (6, 6), (8, 8), (4, 4), (44, 44)]

def optimizedBody526_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 2) optimizedBody526_39 optimizedBody526_40

def optimizedBody526_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0)]

def optimizedBody526_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44), (0, 46)]

def optimizedBody526_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (0, 46)]

def optimizedBody526_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_44 optimizedBody526_3

def optimizedBody526_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody526_43, 526, 12)) (some 486) ([2, 4, 6, 8]) (some (2, optimizedBody526_45, 526, 13))

def optimizedBody526_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody526_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody526_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody526_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody526_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody526_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_51 optimizedBody526_3

def optimizedBody526_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_50 optimizedBody526_52

def optimizedBody526_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_49 optimizedBody526_53

def optimizedBody526_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_31 optimizedBody526_54

def optimizedBody526_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_48 optimizedBody526_55

def optimizedBody526_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_6 optimizedBody526_56

def optimizedBody526_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody526_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody526_57 optimizedBody526_58

def optimizedBody526_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody526_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody526_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody526_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody526_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody526_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody526_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody526_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_31 optimizedBody526_66

def optimizedBody526_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_24 optimizedBody526_67

def optimizedBody526_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_65 optimizedBody526_68

def optimizedBody526_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_64 optimizedBody526_69

def optimizedBody526_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_63 optimizedBody526_70

def optimizedBody526_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_62 optimizedBody526_71

def optimizedBody526_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_61 optimizedBody526_72

def optimizedBody526_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_60 optimizedBody526_73

def optimizedBody526_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_6 optimizedBody526_74

def optimizedBody526_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_6 optimizedBody526_75

def optimizedBody526_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_59 optimizedBody526_76

def optimizedBody526_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_24 optimizedBody526_77

def optimizedBody526_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_47 optimizedBody526_78

def optimizedBody526_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_6 optimizedBody526_79

def optimizedBody526_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_46 optimizedBody526_80

def optimizedBody526_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_42 optimizedBody526_81

def optimizedBody526_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_6 optimizedBody526_82

def optimizedBody526_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_6 optimizedBody526_83

def optimizedBody526_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_41 optimizedBody526_84

def optimizedBody526_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_24 optimizedBody526_85

def optimizedBody526_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_23 optimizedBody526_86

def optimizedBody526_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_6 optimizedBody526_87

def optimizedBody526_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_22 optimizedBody526_88

def optimizedBody526_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_18 optimizedBody526_89

def optimizedBody526_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_6 optimizedBody526_90

def optimizedBody526_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_17 optimizedBody526_91

def optimizedBody526_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_13 optimizedBody526_92

def optimizedBody526_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_12 optimizedBody526_93

def optimizedBody526_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_6 optimizedBody526_94

def optimizedBody526_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_11 optimizedBody526_95

def optimizedBody526_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_7 optimizedBody526_96

def optimizedBody526_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_6 optimizedBody526_97

def optimizedBody526_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_5 optimizedBody526_98

def optimizedBody526_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody526_0 optimizedBody526_99

def oracle526 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 Flapjack.Spt.ln) 28
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 5)) Flapjack.Spt.ln))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              22
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 1)) 24
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))
                2 Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln) 25
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs Flapjack.Spt.ln 3
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 30 Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 22 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 30 Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              22 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))))))
def optimized526 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(526, 1, optimizedBody526_100)
theorem optimize526_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source526, oracle526) = optimized526 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize526_eq
end InitECandidate.Proofs.WordStages
