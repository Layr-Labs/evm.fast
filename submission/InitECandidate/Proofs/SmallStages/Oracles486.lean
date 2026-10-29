import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source486
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles486
def optimizedBody486_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10)]

def optimizedBody486_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody486_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (14, 6)]

def optimizedBody486_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody486_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (4, 4)]

def optimizedBody486_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 4 (Flapjack.WordRegImm.reg 14)))

def optimizedBody486_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody486_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 8), (48, 8)]

def optimizedBody486_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_3 optimizedBody486_7

def optimizedBody486_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (48, 8)]

def optimizedBody486_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_3 optimizedBody486_9

def optimizedBody486_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 6) optimizedBody486_8 optimizedBody486_10

def optimizedBody486_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 2), (14, 14), (2, 10)]

def optimizedBody486_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 14 (Flapjack.WordRegImm.reg 4)))

def optimizedBody486_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 6), (48, 48), (50, 2)]

def optimizedBody486_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (12, 46), (8, 48), (10, 50)]

def optimizedBody486_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (8, 48), (10, 50)]

def optimizedBody486_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody486_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_16 optimizedBody486_17

def optimizedBody486_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody486_15, 486, 2)) (some 77) ([2, 4, 6]) (some (2, optimizedBody486_18, 486, 3))

def optimizedBody486_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (12, 12), (8, 8), (10, 10)]

def optimizedBody486_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_3 optimizedBody486_20

def optimizedBody486_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_19 optimizedBody486_21

def optimizedBody486_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_14 optimizedBody486_22

def optimizedBody486_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_13 optimizedBody486_23

def optimizedBody486_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_12 optimizedBody486_24

def optimizedBody486_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_3 optimizedBody486_25

def optimizedBody486_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_11 optimizedBody486_26

def optimizedBody486_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_6 optimizedBody486_27

def optimizedBody486_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_5 optimizedBody486_28

def optimizedBody486_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_4 optimizedBody486_29

def optimizedBody486_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_3 optimizedBody486_30

def optimizedBody486_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (12, 12), (8, 8), (10, 10)]

def optimizedBody486_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_3 optimizedBody486_32

def optimizedBody486_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 4) optimizedBody486_31 optimizedBody486_33

def optimizedBody486_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 12)]

def optimizedBody486_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody486_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8)]

def optimizedBody486_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 8 (Flapjack.WordRegImm.reg 12)))

def optimizedBody486_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody486_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody486_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody486_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_41 optimizedBody486_17

def optimizedBody486_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody486_40, 486, 4)) (some 78) ([2, 4]) (some (2, optimizedBody486_42, 486, 5))

def optimizedBody486_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody486_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody486_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody486_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_45 optimizedBody486_46

def optimizedBody486_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_44 optimizedBody486_47

def optimizedBody486_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_3 optimizedBody486_48

def optimizedBody486_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_43 optimizedBody486_49

def optimizedBody486_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_39 optimizedBody486_50

def optimizedBody486_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_38 optimizedBody486_51

def optimizedBody486_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_37 optimizedBody486_52

def optimizedBody486_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_36 optimizedBody486_53

def optimizedBody486_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_35 optimizedBody486_54

def optimizedBody486_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_3 optimizedBody486_55

def optimizedBody486_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_34 optimizedBody486_56

def optimizedBody486_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_2 optimizedBody486_57

def optimizedBody486_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_1 optimizedBody486_58

def optimizedBody486_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody486_0 optimizedBody486_59

def oracle486 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))) 5
              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 7 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 3
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3 Flapjack.Spt.ln) 2
              (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 4
              (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 6 (Flapjack.Spt.ls 4))
            (Flapjack.Spt.bs Flapjack.Spt.ln 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))))
def optimized486 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(486, 6, optimizedBody486_60)
end InitECandidate.Proofs.SmallStages.Oracles486
