import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source553
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles553
def optimizedBody553_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody553_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (0, 2), (6, 6), (44, 44)]

def optimizedBody553_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody553_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody553_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_2 optimizedBody553_3

def optimizedBody553_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody553_1, 553, 2)) (some 477) ([]) (some (2, optimizedBody553_4, 553, 3))

def optimizedBody553_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody553_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 100#64)

def optimizedBody553_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 8), (50, 0), (52, 6)]

def optimizedBody553_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (8, 48), (0, 50), (6, 52)]

def optimizedBody553_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (8, 48), (0, 50), (6, 52)]

def optimizedBody553_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_10 optimizedBody553_3

def optimizedBody553_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody553_9, 553, 4)) (some 472) ([2]) (some (2, optimizedBody553_11, 553, 5))

def optimizedBody553_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody553_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody553_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody553_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 18446744073709551336#64))

def optimizedBody553_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 10)]

def optimizedBody553_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46)]

def optimizedBody553_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody553_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_19 optimizedBody553_3

def optimizedBody553_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody553_18, 553, 6)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody553_20, 553, 7))

def optimizedBody553_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody553_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody553_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody553_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody553_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody553_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody553_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody553_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (4, 4), (8, 8), (44, 44)]

def optimizedBody553_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody553_29, 553, 8)) (some 414) ([2, 4]) (some (2, optimizedBody553_4, 553, 9))

def optimizedBody553_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody553_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody553_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody553_32, 553, 10)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody553_4, 553, 11))

def optimizedBody553_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody553_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody553_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody553_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_36 optimizedBody553_3

def optimizedBody553_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody553_35, 553, 12)) (some 492) ([2]) (some (2, optimizedBody553_37, 553, 13))

def optimizedBody553_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody553_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody553_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody553_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_40 optimizedBody553_41

def optimizedBody553_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_39 optimizedBody553_42

def optimizedBody553_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_6 optimizedBody553_43

def optimizedBody553_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_38 optimizedBody553_44

def optimizedBody553_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_2 optimizedBody553_45

def optimizedBody553_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_34 optimizedBody553_46

def optimizedBody553_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_6 optimizedBody553_47

def optimizedBody553_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_33 optimizedBody553_48

def optimizedBody553_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_31 optimizedBody553_49

def optimizedBody553_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_6 optimizedBody553_50

def optimizedBody553_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_30 optimizedBody553_51

def optimizedBody553_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_28 optimizedBody553_52

def optimizedBody553_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_27 optimizedBody553_53

def optimizedBody553_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_26 optimizedBody553_54

def optimizedBody553_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_25 optimizedBody553_55

def optimizedBody553_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_24 optimizedBody553_56

def optimizedBody553_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_23 optimizedBody553_57

def optimizedBody553_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_22 optimizedBody553_58

def optimizedBody553_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_6 optimizedBody553_59

def optimizedBody553_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_21 optimizedBody553_60

def optimizedBody553_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_17 optimizedBody553_61

def optimizedBody553_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_16 optimizedBody553_62

def optimizedBody553_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_15 optimizedBody553_63

def optimizedBody553_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_14 optimizedBody553_64

def optimizedBody553_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_13 optimizedBody553_65

def optimizedBody553_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_6 optimizedBody553_66

def optimizedBody553_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_12 optimizedBody553_67

def optimizedBody553_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_8 optimizedBody553_68

def optimizedBody553_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_7 optimizedBody553_69

def optimizedBody553_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_6 optimizedBody553_70

def optimizedBody553_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_5 optimizedBody553_71

def optimizedBody553_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody553_0 optimizedBody553_72

def oracle553 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
              22 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
              (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22)) 4 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 25 Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))))
def optimized553 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(553, 1, optimizedBody553_73)
end InitECandidate.Proofs.SmallStages.Oracles553
