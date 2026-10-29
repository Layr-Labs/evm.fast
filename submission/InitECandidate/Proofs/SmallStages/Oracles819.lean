import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source819
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles819
def optimizedBody819_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (6, 4)]

def optimizedBody819_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody819_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (50, 6)]

def optimizedBody819_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (8, 8), (4, 4), (6, 6), (44, 44), (50, 50)]

def optimizedBody819_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50)]

def optimizedBody819_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody819_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_4 optimizedBody819_5

def optimizedBody819_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody819_3, 819, 2)) (some 146) ([2, 4]) (some (2, optimizedBody819_6, 819, 3))

def optimizedBody819_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody819_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody819_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody819_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody819_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551104#64))

def optimizedBody819_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 1344#64))

def optimizedBody819_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody819_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 1352#64))

def optimizedBody819_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 1360#64))

def optimizedBody819_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 1368#64))

def optimizedBody819_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 6), (8, 8), (44, 44), (48, 2), (50, 50), (52, 10), (54, 8), (56, 12), (58, 0), (60, 4),
    (62, 14), (64, 6)]

def optimizedBody819_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (18, 44), (4, 48), (44, 50), (10, 52), (16, 54), (6, 56), (8, 58), (12, 60), (20, 62), (14, 64)]

def optimizedBody819_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (18, 44), (4, 48), (44, 50), (10, 52), (16, 54), (6, 56), (8, 58), (12, 60), (20, 62), (14, 64)]

def optimizedBody819_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_20 optimizedBody819_5

def optimizedBody819_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
  Flapjack.Spt.ln)), optimizedBody819_19, 819, 4)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody819_21, 819, 5))

def optimizedBody819_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody819_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody819_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody819_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody819_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody819_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody819_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody819_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody819_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody819_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2]

def optimizedBody819_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_31 optimizedBody819_32

def optimizedBody819_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_26 optimizedBody819_33

def optimizedBody819_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_30 optimizedBody819_34

def optimizedBody819_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_23 optimizedBody819_35

def optimizedBody819_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_26 optimizedBody819_36

def optimizedBody819_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_29 optimizedBody819_37

def optimizedBody819_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_23 optimizedBody819_38

def optimizedBody819_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_26 optimizedBody819_39

def optimizedBody819_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_28 optimizedBody819_40

def optimizedBody819_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_23 optimizedBody819_41

def optimizedBody819_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_26 optimizedBody819_42

def optimizedBody819_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_27 optimizedBody819_43

def optimizedBody819_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_23 optimizedBody819_44

def optimizedBody819_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_26 optimizedBody819_45

def optimizedBody819_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_25 optimizedBody819_46

def optimizedBody819_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_8 optimizedBody819_47

def optimizedBody819_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 44)]

def optimizedBody819_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody819_48 optimizedBody819_49

def optimizedBody819_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 20), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 18), (46, 46)]

def optimizedBody819_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (10, 2), (8, 8), (12, 44), (0, 46)]

def optimizedBody819_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (0, 46)]

def optimizedBody819_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_53 optimizedBody819_5

def optimizedBody819_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody819_52, 819, 6)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody819_54, 819, 7))

def optimizedBody819_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody819_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody819_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody819_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody819_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody819_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody819_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody819_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody819_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody819_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_31 optimizedBody819_64

def optimizedBody819_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_26 optimizedBody819_65

def optimizedBody819_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_63 optimizedBody819_66

def optimizedBody819_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_62 optimizedBody819_67

def optimizedBody819_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_61 optimizedBody819_68

def optimizedBody819_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_60 optimizedBody819_69

def optimizedBody819_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_59 optimizedBody819_70

def optimizedBody819_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_58 optimizedBody819_71

def optimizedBody819_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_57 optimizedBody819_72

def optimizedBody819_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_56 optimizedBody819_73

def optimizedBody819_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_8 optimizedBody819_74

def optimizedBody819_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_55 optimizedBody819_75

def optimizedBody819_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_51 optimizedBody819_76

def optimizedBody819_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_8 optimizedBody819_77

def optimizedBody819_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_8 optimizedBody819_78

def optimizedBody819_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_50 optimizedBody819_79

def optimizedBody819_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_24 optimizedBody819_80

def optimizedBody819_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_23 optimizedBody819_81

def optimizedBody819_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_8 optimizedBody819_82

def optimizedBody819_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_22 optimizedBody819_83

def optimizedBody819_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_18 optimizedBody819_84

def optimizedBody819_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_17 optimizedBody819_85

def optimizedBody819_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_14 optimizedBody819_86

def optimizedBody819_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_16 optimizedBody819_87

def optimizedBody819_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_14 optimizedBody819_88

def optimizedBody819_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_15 optimizedBody819_89

def optimizedBody819_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_14 optimizedBody819_90

def optimizedBody819_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_13 optimizedBody819_91

def optimizedBody819_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_12 optimizedBody819_92

def optimizedBody819_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_11 optimizedBody819_93

def optimizedBody819_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_10 optimizedBody819_94

def optimizedBody819_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_9 optimizedBody819_95

def optimizedBody819_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_8 optimizedBody819_96

def optimizedBody819_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_7 optimizedBody819_97

def optimizedBody819_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_2 optimizedBody819_98

def optimizedBody819_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_1 optimizedBody819_99

def optimizedBody819_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_0 optimizedBody819_100

def oracle819 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 4
                (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              1
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                2 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
              3
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 25
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 2))))
              0
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 3)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) (Flapjack.Spt.ls 25))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))))))
def optimized819 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(819, 3, optimizedBody819_101)
end InitECandidate.Proofs.SmallStages.Oracles819
