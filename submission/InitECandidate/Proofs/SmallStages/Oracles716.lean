import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source716
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles716
def optimizedBody716_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 24), (12, 12), (0, 0), (26, 2), (4, 4), (6, 6), (8, 8), (10, 10), (14, 14), (16, 16), (18, 18), (20, 20),
    (22, 22)]

def optimizedBody716_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody716_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (12, 12)]

def optimizedBody716_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody716_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody716_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody716_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_4 optimizedBody716_5

def optimizedBody716_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_3 optimizedBody716_6

def optimizedBody716_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_7

def optimizedBody716_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody716_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 24) optimizedBody716_8 optimizedBody716_9

def optimizedBody716_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody716_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_11 optimizedBody716_6

def optimizedBody716_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_12

def optimizedBody716_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_13

def optimizedBody716_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_10 optimizedBody716_14

def optimizedBody716_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_2 optimizedBody716_15

def optimizedBody716_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_16

def optimizedBody716_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 24) optimizedBody716_17 optimizedBody716_9

def optimizedBody716_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (10, 10)]

def optimizedBody716_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 22) optimizedBody716_8 optimizedBody716_9

def optimizedBody716_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_20 optimizedBody716_14

def optimizedBody716_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_19 optimizedBody716_21

def optimizedBody716_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_22

def optimizedBody716_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 22) optimizedBody716_23 optimizedBody716_9

def optimizedBody716_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (8, 8)]

def optimizedBody716_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 20) optimizedBody716_8 optimizedBody716_9

def optimizedBody716_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_26 optimizedBody716_14

def optimizedBody716_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_25 optimizedBody716_27

def optimizedBody716_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_28

def optimizedBody716_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 20) optimizedBody716_29 optimizedBody716_9

def optimizedBody716_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (6, 6)]

def optimizedBody716_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 18) optimizedBody716_8 optimizedBody716_9

def optimizedBody716_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_32 optimizedBody716_14

def optimizedBody716_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_31 optimizedBody716_33

def optimizedBody716_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_34

def optimizedBody716_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 18) optimizedBody716_35 optimizedBody716_9

def optimizedBody716_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (4, 4)]

def optimizedBody716_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 16) optimizedBody716_8 optimizedBody716_9

def optimizedBody716_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_38 optimizedBody716_14

def optimizedBody716_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_37 optimizedBody716_39

def optimizedBody716_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_40

def optimizedBody716_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 16) optimizedBody716_41 optimizedBody716_9

def optimizedBody716_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (26, 26)]

def optimizedBody716_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 26 (Flapjack.WordRegImm.reg 14) optimizedBody716_8 optimizedBody716_9

def optimizedBody716_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_44 optimizedBody716_14

def optimizedBody716_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_43 optimizedBody716_45

def optimizedBody716_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_46

def optimizedBody716_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_47

def optimizedBody716_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_42 optimizedBody716_48

def optimizedBody716_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_37 optimizedBody716_49

def optimizedBody716_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_50

def optimizedBody716_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_51

def optimizedBody716_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_36 optimizedBody716_52

def optimizedBody716_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_31 optimizedBody716_53

def optimizedBody716_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_54

def optimizedBody716_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_55

def optimizedBody716_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_30 optimizedBody716_56

def optimizedBody716_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_25 optimizedBody716_57

def optimizedBody716_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_58

def optimizedBody716_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_59

def optimizedBody716_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_24 optimizedBody716_60

def optimizedBody716_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_19 optimizedBody716_61

def optimizedBody716_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_62

def optimizedBody716_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_1 optimizedBody716_63

def optimizedBody716_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_18 optimizedBody716_64

def optimizedBody716_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody716_0 optimizedBody716_65

def oracle716 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln) 12 Flapjack.Spt.ln))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 12 Flapjack.Spt.ln) 2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 10
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              4 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 13))))
              0 (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 8 Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 11)) 5
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 6 Flapjack.Spt.ln))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 6
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
              13 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 11 (Flapjack.Spt.ls 1)) 9 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              3 (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 7
                (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))))
      Flapjack.Spt.ln))
def optimized716 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(716, 13, optimizedBody716_66)
end InitECandidate.Proofs.SmallStages.Oracles716
