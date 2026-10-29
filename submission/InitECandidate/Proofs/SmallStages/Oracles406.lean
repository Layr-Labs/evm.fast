import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source406
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles406
def optimizedBody406_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody406_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody406_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody406_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody406_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551432#64))

def optimizedBody406_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody406_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody406_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody406_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 4)]

def optimizedBody406_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46)]

def optimizedBody406_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody406_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody406_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_10 optimizedBody406_11

def optimizedBody406_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody406_9, 406, 2)) (some 190) ([2, 4, 6]) (some (2, optimizedBody406_12, 406, 3))

def optimizedBody406_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody406_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody406_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody406_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody406_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def optimizedBody406_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody406_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4)]

def optimizedBody406_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 44), (6, 46)]

def optimizedBody406_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46)]

def optimizedBody406_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_22 optimizedBody406_11

def optimizedBody406_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody406_21, 406, 4)) (some 186) ([2, 4]) (some (2, optimizedBody406_23, 406, 5))

def optimizedBody406_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody406_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody406_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody406_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody406_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_27 optimizedBody406_28

def optimizedBody406_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_14 optimizedBody406_29

def optimizedBody406_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody406_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody406_30 optimizedBody406_31

def optimizedBody406_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 8), (46, 6)]

def optimizedBody406_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody406_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody406_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_35 optimizedBody406_11

def optimizedBody406_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody406_34, 406, 6)) (some 398) ([2]) (some (2, optimizedBody406_36, 406, 7))

def optimizedBody406_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody406_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody406_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody406_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_40 optimizedBody406_11

def optimizedBody406_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody406_39, 406, 8)) (some 400) ([2]) (some (2, optimizedBody406_41, 406, 9))

def optimizedBody406_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody406_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_27 optimizedBody406_43

def optimizedBody406_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_14 optimizedBody406_44

def optimizedBody406_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_42 optimizedBody406_45

def optimizedBody406_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_38 optimizedBody406_46

def optimizedBody406_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_14 optimizedBody406_47

def optimizedBody406_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_37 optimizedBody406_48

def optimizedBody406_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_33 optimizedBody406_49

def optimizedBody406_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_14 optimizedBody406_50

def optimizedBody406_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_14 optimizedBody406_51

def optimizedBody406_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_32 optimizedBody406_52

def optimizedBody406_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_26 optimizedBody406_53

def optimizedBody406_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_25 optimizedBody406_54

def optimizedBody406_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_14 optimizedBody406_55

def optimizedBody406_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_24 optimizedBody406_56

def optimizedBody406_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_20 optimizedBody406_57

def optimizedBody406_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_19 optimizedBody406_58

def optimizedBody406_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_18 optimizedBody406_59

def optimizedBody406_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_17 optimizedBody406_60

def optimizedBody406_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_16 optimizedBody406_61

def optimizedBody406_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_15 optimizedBody406_62

def optimizedBody406_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_14 optimizedBody406_63

def optimizedBody406_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_13 optimizedBody406_64

def optimizedBody406_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_8 optimizedBody406_65

def optimizedBody406_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_7 optimizedBody406_66

def optimizedBody406_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_6 optimizedBody406_67

def optimizedBody406_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_5 optimizedBody406_68

def optimizedBody406_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_4 optimizedBody406_69

def optimizedBody406_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_3 optimizedBody406_70

def optimizedBody406_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_2 optimizedBody406_71

def optimizedBody406_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_1 optimizedBody406_72

def optimizedBody406_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody406_0 optimizedBody406_73

def oracle406 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln)) 1
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 2
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 1
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 Flapjack.Spt.ln) 22 Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
def optimized406 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(406, 2, optimizedBody406_74)
end InitECandidate.Proofs.SmallStages.Oracles406
