import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source428
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles428
def optimizedBody428_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 8), (48, 12), (50, 10), (52, 6)]

def optimizedBody428_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (4, 46), (8, 48), (6, 50), (0, 52)]

def optimizedBody428_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (8, 48), (6, 50), (0, 52)]

def optimizedBody428_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody428_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_2 optimizedBody428_3

def optimizedBody428_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody428_1, 428, 2)) (some 394) ([2, 4]) (some (2, optimizedBody428_4, 428, 3))

def optimizedBody428_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody428_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 4), (48, 8), (50, 10), (52, 6), (54, 0)]

def optimizedBody428_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody428_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody428_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_9 optimizedBody428_3

def optimizedBody428_11 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody428_8, 428, 4)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody428_10, 428, 5))

def optimizedBody428_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody428_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody428_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody428_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody428_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody428_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody428_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody428_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 50), (56, 44)]

def optimizedBody428_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 56)]

def optimizedBody428_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 56)]

def optimizedBody428_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_21 optimizedBody428_3

def optimizedBody428_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody428_20, 428, 6)) (some 391) ([2, 4]) (some (2, optimizedBody428_22, 428, 7))

def optimizedBody428_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody428_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody428_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_24 optimizedBody428_25

def optimizedBody428_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_13 optimizedBody428_26

def optimizedBody428_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_6 optimizedBody428_27

def optimizedBody428_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_23 optimizedBody428_28

def optimizedBody428_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_19 optimizedBody428_29

def optimizedBody428_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_18 optimizedBody428_30

def optimizedBody428_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_17 optimizedBody428_31

def optimizedBody428_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_16 optimizedBody428_32

def optimizedBody428_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_15 optimizedBody428_33

def optimizedBody428_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_14 optimizedBody428_34

def optimizedBody428_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_6 optimizedBody428_35

def optimizedBody428_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (44, 44)]

def optimizedBody428_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody428_36 optimizedBody428_37

def optimizedBody428_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody428_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (10, 46), (0, 48), (4, 50), (8, 52), (12, 54)]

def optimizedBody428_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (0, 48), (4, 50), (8, 52), (12, 54)]

def optimizedBody428_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_41 optimizedBody428_3

def optimizedBody428_43 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody428_40, 428, 8)) (some 68) ([2]) (some (2, optimizedBody428_42, 428, 9))

def optimizedBody428_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (12, 12), (0, 0), (8, 8), (10, 10)]

def optimizedBody428_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody428_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (10, 10)]

def optimizedBody428_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody428_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody428_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody428_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody428_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody428_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody428_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody428_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody428_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_54 optimizedBody428_3

def optimizedBody428_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody428_53, 428, 10)) (some 390) ([2, 4, 6]) (some (2, optimizedBody428_55, 428, 11))

def optimizedBody428_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_56 optimizedBody428_28

def optimizedBody428_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_52 optimizedBody428_57

def optimizedBody428_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_18 optimizedBody428_58

def optimizedBody428_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_17 optimizedBody428_59

def optimizedBody428_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_16 optimizedBody428_60

def optimizedBody428_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_15 optimizedBody428_61

def optimizedBody428_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_14 optimizedBody428_62

def optimizedBody428_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_51 optimizedBody428_63

def optimizedBody428_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_50 optimizedBody428_64

def optimizedBody428_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_49 optimizedBody428_65

def optimizedBody428_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_48 optimizedBody428_66

def optimizedBody428_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_47 optimizedBody428_67

def optimizedBody428_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_46 optimizedBody428_68

def optimizedBody428_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_45 optimizedBody428_69

def optimizedBody428_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_44 optimizedBody428_70

def optimizedBody428_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_6 optimizedBody428_71

def optimizedBody428_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_43 optimizedBody428_72

def optimizedBody428_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_9 optimizedBody428_73

def optimizedBody428_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_39 optimizedBody428_74

def optimizedBody428_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_6 optimizedBody428_75

def optimizedBody428_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_6 optimizedBody428_76

def optimizedBody428_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_38 optimizedBody428_77

def optimizedBody428_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_13 optimizedBody428_78

def optimizedBody428_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_12 optimizedBody428_79

def optimizedBody428_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_6 optimizedBody428_80

def optimizedBody428_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_11 optimizedBody428_81

def optimizedBody428_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_7 optimizedBody428_82

def optimizedBody428_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_6 optimizedBody428_83

def optimizedBody428_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_5 optimizedBody428_84

def optimizedBody428_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_0 optimizedBody428_85

def oracle428 : Option (Spt Nat) :=
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
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 26 (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 22 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 22 (Flapjack.Spt.ls 27)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 24 (Flapjack.Spt.ls 26)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 25 (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 27 (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
              (Flapjack.Spt.ls 23)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 26))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 26 (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 27))
              (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 25))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))))))
def optimized428 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(428, 7, optimizedBody428_86)
end InitECandidate.Proofs.SmallStages.Oracles428
