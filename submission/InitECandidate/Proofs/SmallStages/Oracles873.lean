import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source873
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles873
def optimizedBody873_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2)]

def optimizedBody873_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody873_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody873_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody873_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_2 optimizedBody873_3

def optimizedBody873_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody873_1, 873, 2)) (some 389) ([]) (some (2, optimizedBody873_4, 873, 3))

def optimizedBody873_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody873_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0)]

def optimizedBody873_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (44, 44), (46, 46)]

def optimizedBody873_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody873_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_9 optimizedBody873_3

def optimizedBody873_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody873_8, 873, 4)) (some 567) ([2]) (some (2, optimizedBody873_10, 873, 5))

def optimizedBody873_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody873_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody873_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 70#64)

def optimizedBody873_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody873_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody873_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody873_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody873_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_18 optimizedBody873_3

def optimizedBody873_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_17 optimizedBody873_19

def optimizedBody873_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_16 optimizedBody873_20

def optimizedBody873_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_15 optimizedBody873_21

def optimizedBody873_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_14 optimizedBody873_22

def optimizedBody873_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_6 optimizedBody873_23

def optimizedBody873_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody873_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody873_24 optimizedBody873_25

def optimizedBody873_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody873_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody873_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody873_28, 873, 6)) (some 68) ([2]) (some (2, optimizedBody873_4, 873, 7))

def optimizedBody873_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody873_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody873_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody873_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody873_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody873_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_34 optimizedBody873_3

def optimizedBody873_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody873_33, 873, 8)) (some 872) ([2, 4, 6]) (some (2, optimizedBody873_35, 873, 9))

def optimizedBody873_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody873_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 71#64)

def optimizedBody873_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody873_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody873_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_40 optimizedBody873_20

def optimizedBody873_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_39 optimizedBody873_41

def optimizedBody873_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_38 optimizedBody873_42

def optimizedBody873_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_6 optimizedBody873_43

def optimizedBody873_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody873_44 optimizedBody873_25

def optimizedBody873_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody873_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody873_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_46 optimizedBody873_47

def optimizedBody873_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_6 optimizedBody873_48

def optimizedBody873_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_6 optimizedBody873_49

def optimizedBody873_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_45 optimizedBody873_50

def optimizedBody873_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_31 optimizedBody873_51

def optimizedBody873_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_37 optimizedBody873_52

def optimizedBody873_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_15 optimizedBody873_53

def optimizedBody873_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_6 optimizedBody873_54

def optimizedBody873_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_36 optimizedBody873_55

def optimizedBody873_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_32 optimizedBody873_56

def optimizedBody873_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_31 optimizedBody873_57

def optimizedBody873_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_30 optimizedBody873_58

def optimizedBody873_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_6 optimizedBody873_59

def optimizedBody873_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_29 optimizedBody873_60

def optimizedBody873_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_9 optimizedBody873_61

def optimizedBody873_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_27 optimizedBody873_62

def optimizedBody873_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_6 optimizedBody873_63

def optimizedBody873_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_6 optimizedBody873_64

def optimizedBody873_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_26 optimizedBody873_65

def optimizedBody873_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_13 optimizedBody873_66

def optimizedBody873_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_12 optimizedBody873_67

def optimizedBody873_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_6 optimizedBody873_68

def optimizedBody873_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_11 optimizedBody873_69

def optimizedBody873_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_7 optimizedBody873_70

def optimizedBody873_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_6 optimizedBody873_71

def optimizedBody873_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_5 optimizedBody873_72

def optimizedBody873_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody873_0 optimizedBody873_73

def oracle873 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)) 22
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 23 Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            (Flapjack.Spt.ls 22))))))
def optimized873 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(873, 2, optimizedBody873_74)
end InitECandidate.Proofs.SmallStages.Oracles873
