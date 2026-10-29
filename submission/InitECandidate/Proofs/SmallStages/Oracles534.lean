import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source534
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles534
def optimizedBody534_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody534_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (8, 8), (4, 4), (44, 44)]

def optimizedBody534_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody534_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody534_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_2 optimizedBody534_3

def optimizedBody534_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody534_1, 534, 2)) (some 477) ([]) (some (2, optimizedBody534_4, 534, 3))

def optimizedBody534_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody534_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 8), (8, 6), (6, 4), (4, 0)]

def optimizedBody534_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody534_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody534_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody534_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 32#64)

def optimizedBody534_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody534_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (44, 44), (46, 4), (48, 8),
    (50, 10), (52, 6)]

def optimizedBody534_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (6, 48), (8, 50), (4, 52)]

def optimizedBody534_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (8, 50), (4, 52)]

def optimizedBody534_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_15 optimizedBody534_3

def optimizedBody534_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody534_14, 534, 4)) (some 485) ([2, 4, 6, 8, 10, 12, 14, 16, 18]) (some (2, optimizedBody534_16, 534, 5))

def optimizedBody534_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody534_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody534_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody534_19, 534, 6)) (some 464) ([2, 4, 6, 8]) (some (2, optimizedBody534_4, 534, 7))

def optimizedBody534_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody534_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody534_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody534_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody534_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody534_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody534_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody534_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody534_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody534_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (8, 8), (0, 2), (44, 44)]

def optimizedBody534_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody534_30, 534, 8)) (some 146) ([2, 4]) (some (2, optimizedBody534_4, 534, 9))

def optimizedBody534_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody534_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody534_32, 534, 10)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody534_4, 534, 11))

def optimizedBody534_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody534_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody534_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody534_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_36 optimizedBody534_3

def optimizedBody534_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody534_35, 534, 12)) (some 492) ([2]) (some (2, optimizedBody534_37, 534, 13))

def optimizedBody534_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody534_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody534_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody534_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_40 optimizedBody534_41

def optimizedBody534_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_39 optimizedBody534_42

def optimizedBody534_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_6 optimizedBody534_43

def optimizedBody534_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_38 optimizedBody534_44

def optimizedBody534_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_2 optimizedBody534_45

def optimizedBody534_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_34 optimizedBody534_46

def optimizedBody534_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_6 optimizedBody534_47

def optimizedBody534_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_33 optimizedBody534_48

def optimizedBody534_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_18 optimizedBody534_49

def optimizedBody534_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_6 optimizedBody534_50

def optimizedBody534_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_31 optimizedBody534_51

def optimizedBody534_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_29 optimizedBody534_52

def optimizedBody534_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_28 optimizedBody534_53

def optimizedBody534_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_27 optimizedBody534_54

def optimizedBody534_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_26 optimizedBody534_55

def optimizedBody534_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_25 optimizedBody534_56

def optimizedBody534_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_24 optimizedBody534_57

def optimizedBody534_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_23 optimizedBody534_58

def optimizedBody534_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_22 optimizedBody534_59

def optimizedBody534_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_21 optimizedBody534_60

def optimizedBody534_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_6 optimizedBody534_61

def optimizedBody534_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_20 optimizedBody534_62

def optimizedBody534_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_18 optimizedBody534_63

def optimizedBody534_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_6 optimizedBody534_64

def optimizedBody534_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_17 optimizedBody534_65

def optimizedBody534_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_13 optimizedBody534_66

def optimizedBody534_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_12 optimizedBody534_67

def optimizedBody534_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_11 optimizedBody534_68

def optimizedBody534_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_10 optimizedBody534_69

def optimizedBody534_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_9 optimizedBody534_70

def optimizedBody534_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_8 optimizedBody534_71

def optimizedBody534_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_7 optimizedBody534_72

def optimizedBody534_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_6 optimizedBody534_73

def optimizedBody534_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_5 optimizedBody534_74

def optimizedBody534_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody534_0 optimizedBody534_75

def oracle534 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9))) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 9 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 22
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 2
                (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 1))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 5 (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 8 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 26))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bs Flapjack.Spt.ln 22
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln))))))
def optimized534 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(534, 1, optimizedBody534_76)
end InitECandidate.Proofs.SmallStages.Oracles534
