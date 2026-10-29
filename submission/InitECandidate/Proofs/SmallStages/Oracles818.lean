import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source818
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles818
def optimizedBody818_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (0, 0), (4, 4)]

def optimizedBody818_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody818_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody818_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 192#64)

def optimizedBody818_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody818_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody818_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody818_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 47#64)

def optimizedBody818_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 8), (44, 0), (46, 4), (48, 6)]

def optimizedBody818_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody818_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody818_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody818_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_10 optimizedBody818_11

def optimizedBody818_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody818_9, 818, 2)) (some 80) ([2, 4]) (some (2, optimizedBody818_12, 818, 3))

def optimizedBody818_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody818_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody818_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (46, 44)]

def optimizedBody818_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody818_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46)]

def optimizedBody818_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_18 optimizedBody818_11

def optimizedBody818_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody818_17, 818, 4)) (some 778) ([2]) (some (2, optimizedBody818_19, 818, 5))

def optimizedBody818_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody818_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_2 optimizedBody818_21

def optimizedBody818_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_15 optimizedBody818_22

def optimizedBody818_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_23

def optimizedBody818_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_20 optimizedBody818_24

def optimizedBody818_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_16 optimizedBody818_25

def optimizedBody818_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_26

def optimizedBody818_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(4, 4), (6, 6), (44, 44)]

def optimizedBody818_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody818_27 optimizedBody818_28

def optimizedBody818_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (6, 6)]

def optimizedBody818_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_30

def optimizedBody818_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_31

def optimizedBody818_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_29 optimizedBody818_32

def optimizedBody818_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_15 optimizedBody818_33

def optimizedBody818_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_14 optimizedBody818_34

def optimizedBody818_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_35

def optimizedBody818_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_13 optimizedBody818_36

def optimizedBody818_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_8 optimizedBody818_37

def optimizedBody818_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_7 optimizedBody818_38

def optimizedBody818_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_6 optimizedBody818_39

def optimizedBody818_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_5 optimizedBody818_40

def optimizedBody818_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_41

def optimizedBody818_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (4, 4), (6, 6)]

def optimizedBody818_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_43

def optimizedBody818_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody818_42 optimizedBody818_44

def optimizedBody818_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 4)]

def optimizedBody818_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody818_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody818_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_48 optimizedBody818_11

def optimizedBody818_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody818_47, 818, 6)) (some 817) ([2, 4]) (some (2, optimizedBody818_49, 818, 7))

def optimizedBody818_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody818_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody818_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_2 optimizedBody818_52

def optimizedBody818_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_51 optimizedBody818_53

def optimizedBody818_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_54

def optimizedBody818_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody818_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody818_55 optimizedBody818_56

def optimizedBody818_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 6), (46, 4)]

def optimizedBody818_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44), (6, 46)]

def optimizedBody818_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46)]

def optimizedBody818_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_60 optimizedBody818_11

def optimizedBody818_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody818_59, 818, 8)) (some 779) ([2]) (some (2, optimizedBody818_61, 818, 9))

def optimizedBody818_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody818_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_51 optimizedBody818_22

def optimizedBody818_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_64

def optimizedBody818_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody818_65 optimizedBody818_56

def optimizedBody818_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 6)]

def optimizedBody818_68 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 789) ([0, 2]) (none)

def optimizedBody818_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_67 optimizedBody818_68

def optimizedBody818_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_69

def optimizedBody818_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_70

def optimizedBody818_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_66 optimizedBody818_71

def optimizedBody818_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_15 optimizedBody818_72

def optimizedBody818_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_63 optimizedBody818_73

def optimizedBody818_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_74

def optimizedBody818_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_62 optimizedBody818_75

def optimizedBody818_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_58 optimizedBody818_76

def optimizedBody818_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_77

def optimizedBody818_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_78

def optimizedBody818_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_57 optimizedBody818_79

def optimizedBody818_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_51 optimizedBody818_80

def optimizedBody818_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_14 optimizedBody818_81

def optimizedBody818_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_82

def optimizedBody818_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_50 optimizedBody818_83

def optimizedBody818_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_46 optimizedBody818_84

def optimizedBody818_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_4 optimizedBody818_85

def optimizedBody818_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_45 optimizedBody818_86

def optimizedBody818_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_3 optimizedBody818_87

def optimizedBody818_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_2 optimizedBody818_88

def optimizedBody818_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_1 optimizedBody818_89

def optimizedBody818_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody818_0 optimizedBody818_90

def oracle818 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
            2
            (Flapjack.Spt.bs Flapjack.Spt.ln 4
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 Flapjack.Spt.ln) 3
              Flapjack.Spt.ln)
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 1
              (Flapjack.Spt.ls 4)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)) 0 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)) 2 Flapjack.Spt.ln)
              3 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 23 Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 24 Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))
            Flapjack.Spt.ln)))))
def optimized818 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(818, 3, optimizedBody818_91)
end InitECandidate.Proofs.SmallStages.Oracles818
