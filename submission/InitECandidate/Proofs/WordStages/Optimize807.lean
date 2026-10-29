import InitECandidate.Proofs.WordStages.Optimize791
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source807
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody807_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (6, 4)]

def optimizedBody807_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody807_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (50, 6)]

def optimizedBody807_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (8, 8), (4, 4), (6, 6), (44, 44), (50, 50)]

def optimizedBody807_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50)]

def optimizedBody807_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody807_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_4 optimizedBody807_5

def optimizedBody807_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody807_3, 807, 2)) (some 146) ([2, 4]) (some (2, optimizedBody807_6, 807, 3))

def optimizedBody807_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody807_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody807_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody807_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody807_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551224#64))

def optimizedBody807_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 1344#64))

def optimizedBody807_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody807_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 1352#64))

def optimizedBody807_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 1360#64))

def optimizedBody807_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 1368#64))

def optimizedBody807_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 6), (8, 8), (44, 44), (48, 2), (50, 50), (52, 10), (54, 8), (56, 12), (58, 0), (60, 4),
    (62, 14), (64, 6)]

def optimizedBody807_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (18, 44), (4, 48), (44, 50), (10, 52), (16, 54), (6, 56), (8, 58), (12, 60), (20, 62), (14, 64)]

def optimizedBody807_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (18, 44), (4, 48), (44, 50), (10, 52), (16, 54), (6, 56), (8, 58), (12, 60), (20, 62), (14, 64)]

def optimizedBody807_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_20 optimizedBody807_5

def optimizedBody807_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody807_19, 807, 4)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody807_21, 807, 5))

def optimizedBody807_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody807_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody807_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody807_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody807_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody807_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody807_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody807_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody807_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody807_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2]

def optimizedBody807_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_31 optimizedBody807_32

def optimizedBody807_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_26 optimizedBody807_33

def optimizedBody807_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_30 optimizedBody807_34

def optimizedBody807_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_23 optimizedBody807_35

def optimizedBody807_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_26 optimizedBody807_36

def optimizedBody807_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_29 optimizedBody807_37

def optimizedBody807_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_23 optimizedBody807_38

def optimizedBody807_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_26 optimizedBody807_39

def optimizedBody807_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_28 optimizedBody807_40

def optimizedBody807_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_23 optimizedBody807_41

def optimizedBody807_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_26 optimizedBody807_42

def optimizedBody807_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_27 optimizedBody807_43

def optimizedBody807_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_23 optimizedBody807_44

def optimizedBody807_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_26 optimizedBody807_45

def optimizedBody807_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_25 optimizedBody807_46

def optimizedBody807_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_8 optimizedBody807_47

def optimizedBody807_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 44)]

def optimizedBody807_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody807_48 optimizedBody807_49

def optimizedBody807_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 20), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 18), (46, 46)]

def optimizedBody807_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (10, 2), (8, 8), (12, 44), (0, 46)]

def optimizedBody807_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (0, 46)]

def optimizedBody807_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_53 optimizedBody807_5

def optimizedBody807_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody807_52, 807, 6)) (some 117) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody807_54, 807, 7))

def optimizedBody807_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody807_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody807_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody807_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody807_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody807_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody807_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody807_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody807_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody807_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_31 optimizedBody807_64

def optimizedBody807_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_26 optimizedBody807_65

def optimizedBody807_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_63 optimizedBody807_66

def optimizedBody807_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_62 optimizedBody807_67

def optimizedBody807_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_61 optimizedBody807_68

def optimizedBody807_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_60 optimizedBody807_69

def optimizedBody807_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_59 optimizedBody807_70

def optimizedBody807_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_58 optimizedBody807_71

def optimizedBody807_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_57 optimizedBody807_72

def optimizedBody807_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_56 optimizedBody807_73

def optimizedBody807_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_8 optimizedBody807_74

def optimizedBody807_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_55 optimizedBody807_75

def optimizedBody807_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_51 optimizedBody807_76

def optimizedBody807_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_8 optimizedBody807_77

def optimizedBody807_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_8 optimizedBody807_78

def optimizedBody807_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_50 optimizedBody807_79

def optimizedBody807_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_24 optimizedBody807_80

def optimizedBody807_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_23 optimizedBody807_81

def optimizedBody807_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_8 optimizedBody807_82

def optimizedBody807_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_22 optimizedBody807_83

def optimizedBody807_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_18 optimizedBody807_84

def optimizedBody807_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_17 optimizedBody807_85

def optimizedBody807_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_14 optimizedBody807_86

def optimizedBody807_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_16 optimizedBody807_87

def optimizedBody807_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_14 optimizedBody807_88

def optimizedBody807_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_15 optimizedBody807_89

def optimizedBody807_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_14 optimizedBody807_90

def optimizedBody807_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_13 optimizedBody807_91

def optimizedBody807_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_12 optimizedBody807_92

def optimizedBody807_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_11 optimizedBody807_93

def optimizedBody807_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_10 optimizedBody807_94

def optimizedBody807_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_9 optimizedBody807_95

def optimizedBody807_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_8 optimizedBody807_96

def optimizedBody807_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_7 optimizedBody807_97

def optimizedBody807_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_2 optimizedBody807_98

def optimizedBody807_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_1 optimizedBody807_99

def optimizedBody807_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody807_0 optimizedBody807_100

def oracle807 : Option (Spt Nat) :=
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
def optimized807 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(807, 3, optimizedBody807_101)
theorem optimize807_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source807, oracle807) = optimized807 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize807_eq
end InitECandidate.Proofs.WordStages
