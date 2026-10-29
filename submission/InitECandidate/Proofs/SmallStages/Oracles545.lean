import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source545
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles545
def optimizedBody545_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody545_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody545_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody545_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody545_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody545_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody545_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_4 optimizedBody545_5

def optimizedBody545_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody545_3, 545, 2)) (some 472) ([2]) (some (2, optimizedBody545_6, 545, 3))

def optimizedBody545_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody545_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody545_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody545_9, 545, 4)) (some 542) ([]) (some (2, optimizedBody545_6, 545, 5))

def optimizedBody545_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody545_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody545_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody545_12, 545, 6)) (some 543) ([2]) (some (2, optimizedBody545_6, 545, 7))

def optimizedBody545_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody545_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody545_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody545_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody545_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody545_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody545_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody545_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody545_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody545_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody545_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody545_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody545_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_25 optimizedBody545_5

def optimizedBody545_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_24 optimizedBody545_26

def optimizedBody545_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_23 optimizedBody545_27

def optimizedBody545_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_22 optimizedBody545_28

def optimizedBody545_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_21 optimizedBody545_29

def optimizedBody545_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_8 optimizedBody545_30

def optimizedBody545_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody545_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody545_31 optimizedBody545_32

def optimizedBody545_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody545_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody545_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody545_3, 545, 8)) (some 540) ([2, 4]) (some (2, optimizedBody545_6, 545, 9))

def optimizedBody545_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody545_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody545_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody545_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_39 optimizedBody545_5

def optimizedBody545_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody545_38, 545, 10)) (some 492) ([2]) (some (2, optimizedBody545_40, 545, 11))

def optimizedBody545_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody545_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody545_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_42 optimizedBody545_43

def optimizedBody545_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_34 optimizedBody545_44

def optimizedBody545_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_8 optimizedBody545_45

def optimizedBody545_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_41 optimizedBody545_46

def optimizedBody545_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_4 optimizedBody545_47

def optimizedBody545_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_37 optimizedBody545_48

def optimizedBody545_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_8 optimizedBody545_49

def optimizedBody545_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_36 optimizedBody545_50

def optimizedBody545_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_35 optimizedBody545_51

def optimizedBody545_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_34 optimizedBody545_52

def optimizedBody545_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_19 optimizedBody545_53

def optimizedBody545_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_8 optimizedBody545_54

def optimizedBody545_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_8 optimizedBody545_55

def optimizedBody545_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_33 optimizedBody545_56

def optimizedBody545_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_20 optimizedBody545_57

def optimizedBody545_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_19 optimizedBody545_58

def optimizedBody545_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_18 optimizedBody545_59

def optimizedBody545_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_17 optimizedBody545_60

def optimizedBody545_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_16 optimizedBody545_61

def optimizedBody545_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_15 optimizedBody545_62

def optimizedBody545_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_14 optimizedBody545_63

def optimizedBody545_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_8 optimizedBody545_64

def optimizedBody545_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_13 optimizedBody545_65

def optimizedBody545_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_11 optimizedBody545_66

def optimizedBody545_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_8 optimizedBody545_67

def optimizedBody545_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_10 optimizedBody545_68

def optimizedBody545_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_3 optimizedBody545_69

def optimizedBody545_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_8 optimizedBody545_70

def optimizedBody545_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_7 optimizedBody545_71

def optimizedBody545_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_2 optimizedBody545_72

def optimizedBody545_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_1 optimizedBody545_73

def optimizedBody545_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody545_0 optimizedBody545_74

def oracle545 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 1
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln)) 0
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.ls 0))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.ls 22))))))
def optimized545 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(545, 1, optimizedBody545_75)
end InitECandidate.Proofs.SmallStages.Oracles545
